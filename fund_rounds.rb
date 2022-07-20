require_relative 'funding'
projects_pledge23 = {"Help Kids": 400, "Help small businesses": 1000, "Support athletes": -540}
projects_pledge23.each do |project, fund|
    fund_round_23 = Funding.new(project,fund)
    fund_round_23.pledges
end