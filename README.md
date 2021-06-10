# Taric

Taric intends to provide a simple interface for the Riot API written in the language Ruby.

It has been based in the existing libraries [Orianna](https://github.com/meraki-analytics/orianna) for Java and [Cassiopeia](https://github.com/meraki-analytics/cassiopeia) for Python

## Setting API key

The API key is loaded by default from the environment, just set the variable `ENV['RIOT_API_KEY']` accordingly.

If you don't wish to use the default method for setting the Riot API key, you can use the following:

```(ruby)
Taric.api_key = 'YOUR API KEY'
```

If you are using the Ruby on Rails framework, you can set this up in an initializer.

## Available endpoints

### Summoner

```(ruby)
Taric.summoner_by_encrypted_account_id(region, encrypted_account_id)
Taric.summoner_by_encrypted_summoner_id(region, encrypted_summoner_id)
Taric.summoner_by_puuid(region, puuid)
Taric.summoner_by_name(region, summoner_name)
```

## License
This gem is free software, and it is distributed under the MIT license