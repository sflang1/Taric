module Validations
  def validate_region(region)
    raise Taric::InvalidInput.new("The region must be one of #{Taric.region_list.join(', ')}") unless Taric.region_list.include? region
  end

  def validate_queue(queue)
    raise Taric::InvalidInput.new("The queue must be one of #{Taric.queue_list.join(', ')}") unless Taric.queue_list.include? queue
  end

  def validate_tier(tier)
    raise Taric::InvalidInput.new("The tier must be one of #{Taric.tier_list.join(', ')}") unless Taric.tier_list.include? tier
  end

  def validate_division(division)
    raise Taric::InvalidInput.new("The division must be one of #{Taric.division_list.join(', ')}") unless Taric.division_list.include? division
  end
end