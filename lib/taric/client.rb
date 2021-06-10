require 'faraday'
require_relative 'api/summoner'
require_relative 'exceptions'
require 'pry'
require 'json'

class Taric
  class Client
    include Summoner

    def initialize(key)
      create_faraday_connection(key)
    end

    def api_key=(key)
      create_faraday_connection(key)
    end

    def perform(url)
      raise Taric::NoValidApiKey.new('No API key has been provided') if @connection.headers['X-Riot-Token'].length == 0

      response = @connection.get(url)
      return JSON.parse(response.body) if response.status == 200

      raise Taric::UnsuccessfulRequest.new(custom_message(response))
    end

    private
    def custom_message(response)
      case response.status
      when 400
        'Bad Request'
      when 401
        'Authorized'
      when 403
        'Forbidden. Maybe your key is bad written or has expired?'
      when 404
        'Data not found'
      when 405
        'Method not allowed'
      when 415
        'Unsupported media type'
      when 429
        'Rate limit excedeed'
      when 500
        'Internal server error'
      when 502
        'Bad gateway'
      when 503
        'Service unavailable'
      when 504
        'Gateway timeout'
      else
        "Unknown error: #{response.body}"
      end
    end

    def create_faraday_connection(key)
      @connection = Faraday.new(
        headers: {
          'X-Riot-Token': key
        }
      )
    end
  end
end
