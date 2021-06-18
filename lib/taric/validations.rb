module Validations
  def validate_region(region)
    raise Taric::InvalidInput, "The region must be one of #{Taric.region_list.join(', ')}" unless Taric.region_list.include? region
  end

  def validate_queue(queue)
    raise Taric::InvalidInput, "The queue must be one of #{Taric.queue_list.join(', ')}" unless Taric.queue_list.include? queue
  end

  def validate_tier(tier)
    raise Taric::InvalidInput, "The tier must be one of #{Taric.tier_list.join(', ')}" unless Taric.tier_list.include? tier
  end

  def validate_division(division)
    raise Taric::InvalidInput, "The division must be one of #{Taric.division_list.join(', ')}" unless Taric.division_list.include? division
  end

  def validate(**kwargs)
    validate_region(kwargs[:region]) if kwargs.key?(:region)
    validate_queue(kwargs[:queue]) if kwargs.key?(:queue)
    validate_tier(kwargs[:tier]) if kwargs.key?(:tier)
    validate_division(kwargs[:division]) if kwargs.key?(:division)
  end
end
