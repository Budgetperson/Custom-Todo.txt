#!/usr/bin/env ruby

# CONSTANTS
# ===============
TODO_FILE_NAME = "todo.txt"


# DATA RECORD CLASSES
# ===================
class TodoList
	attr_accessor :todos, :text
	def initialize
		@todos = []
		@text = File.open(TODO_FILE_NAME, "r").read
	end

	def filter(query)
		result = ""
		case query
			when String
				@text.split("\n").each do |todo|
					if(todo.index(query))
						result += todo
						result += "\n"
					end
				end
			when Hash
		end

		return result
	end



end


todo_list = TodoList.new

if ARGV[0] == "ls"
	puts todo_list.text unless ARGV[1]
	puts todo_list.filter(ARGV[1]) if ARGV[1]
end

