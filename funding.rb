require_relative 'random'
class Funding
    def initialize(project, funds = 0)
        @project = project
        @funds = funds
        @projects_last_balance = {"Help Kids": 1540, "Help small businesses": 12350, "Support athletes": 3490}
        @projects_goals = {"Help Kids": 10000, "Help small businesses": 100000, "Support athletes": 30000}
        @rand = Random.new
    end
    def pledges
        @projects_last_balance.each do |project, funds|
            if @project == project
                @projects_last_balance[@project] = funds + @funds
                style()
            end
        end
    end
    def time
        Time.new.strftime("%I:%M:%S")
    end
    def style

        puts "The #{@project} project has #{@funds + (@rand.roll* 100)}$ raised in this round and the current balance is #{@projects_last_balance[@project]}$ as of #{time} and the goal is #{@projects_goals[@project]}$ "
    end
   
end

