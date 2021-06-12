require 'singleton'
require_relative 'taric/client'
require_relative 'taric/constants'

class Taric
  include Singleton
  extend  Constants

  class << self
    def respond_to_missing?(name, include_private = false)
      instance.respond_to?(name, include_private)
    end

    def method_missing(method, *args, &block)
      instance.public_send(method, *args, &block)
    end
  end

  def client
    @client ||= Client.new(ENV.fetch('RIOT_API_KEY', ''))
  end

  def respond_to_missing?(name, include_private = false)
    client.respond_to?(name, include_private)
  end

  def method_missing(method, *args, &block)
    client.public_send(method, *args, &block)
  end
end