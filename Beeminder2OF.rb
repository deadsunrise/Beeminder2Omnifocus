require 'beeminder'
require 'otask'

# We need access to some more attributes of the goals
module Beeminder
  class Goal
    attr_reader :frozen # to filter out finished/derailed goals
    attr_reader :lane
    attr_reader :yaw # lane*yaw to get the dangerous goals (yellow or red dot)
    attr_reader :losedate # duedate
    attr_reader :headsum # details about task
  end
end


# Configuration

# You can change the name of the omnifocus project, its loosely matched. ie: "beemindr "" would match "Beeminder Goals"
project_name = 'Beeminder'

# Put your token a dotfile in your homefolder. Should be located at
# /Users/username/.beeminder
token = File.read("#{ENV["HOME"]}/.beeminder")


bee = Beeminder::User.new "#{token.strip}"

# Unfrozen goals on the wrong lane
goals = bee.goals.select{|g| !g.frozen && g.lane*g.yaw < 1}

# For each beeminder goal create a new omnifocus task
goals.each{|g| puts g.title
  system "otask -g '#{g.title} ##{project_name} due(#{g.losedate}) (#{g.headsum} \n https://www.beeminder.com/#{bee.name}/goals/#{g.slug})'"
}
