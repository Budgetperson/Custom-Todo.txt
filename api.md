What API do I want?
====================

Finding
-----------
	todo.rb ls: list all tasks
	todo.rb ls [string]: basically a find in file (can search by single param)
	todo.rb ls [key1 value1] [key2 value2] ... : do a more specific find (todo.rb ls context home project calculus text review)

	todo.rb listproj: list all projects
	todo.rb listcontexts: list all contexts
	todo.rb listtags: list all tags (# sign)
	todo.rb today: list all tasks that need to be completed today
	todo.rb due [date]: find all tasks due on a date (MM/DD/YY)
	todo.rb due [start date] [end date]: find all tasks due in a date range (MM/DD/YY)

Editing
-----------
	todo.rb done [number]: complete a task

Misc
---------
	todo.rb clear: remove (archive?) all completed tasks and renumber exisiting tasks

Information/Thoughts
----------
As priority goes, tasks due today will have the highest priority, tasks with a defined priority will be next, and the rest is a crapshoot.