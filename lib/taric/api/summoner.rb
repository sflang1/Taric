module Summoner
  def summoner_by_encrypted_account_id(region, encrypted_account_id)
    perform(**{ region: region, encrypted_account_id: encrypted_account_id }) do
      "https://#{region}.api.riotgames.com/lol/summoner/v4/summoners/by-account/#{encrypted_account_id}"
    end
  end

  def summoner_by_encrypted_summoner_id(region:, encrypted_summoner_id:)
    perform(**{ region: region, encrypted_summoner_id: encrypted_summoner_id }) do
      "https://#{region}.api.riotgames.com/lol/summoner/v4/summoners/#{encrypted_summoner_id}"
    end
  end

  def summoner_by_puuid(region:, puuid:)
    perform(**{ region: region, puuid: puuid }) do
      "https://#{region}.api.riotgames.com/lol/summoner/v4/summoners/by-puuid/#{puuid}"
    end
  end

  def summoner_by_name(region:, summoner_name:)
    perform(**{ region: region, summoner_name: summoner_name }) do
      "https://#{region}.api.riotgames.com/lol/summoner/v4/summoners/by-name/#{summoner_name}"
    end
  end
end
