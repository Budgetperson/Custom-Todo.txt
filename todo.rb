#!/usr/bin/env ruby

# CONSTANTS
# ===============
TODO_FILE_NAME = "todo.txt"


# DATA RECORD CLASSES
# ==================
class TodoList
	attr_accessor :todos, :text
	def initialize
		@todos = []
		@text = File.open(TODO_FILE_NAME, "rb").read
	end

	def to_s
		todotxt = ""
		@todos.each do |todo|
			if todo[:priority] && todo[:priority] ~= /[A-Z]/
				todotxt += "(#{todo[:priority]}) "
			end

			todo[:task] ? todotxt += (todo[:task] + " ") : return false

			todotxt += (todo[:project] + " ") if todo[:project]

			if todo[:contexts] todo[:contexts].each { |context| todotxt += "@#{context} " }

			

		end
	end


end


todo_list = TodoList.new

if ARGV[0] == "ls"
	puts todo_list.text
end