require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:my_webapp_database.sqlite3"

require './models'


get '/' do 
	erb :home
end

get "/pic" do 
	# @rabbit = User.last
	@answers = Choice.all
	# puts @answers
	erb :pic
end

get "/login-failed" do
	erb :fail
end

get "/layout" do
	erb :layout
end

# post "/" do
# 	puts "my params are:" + params.inspect
# 	@rabbit = User.where(username: params[:username]).last
# 	if @rabbit && @rabbit.password == params[:password]   
# 		session[:user_id] = @rabbit.id
# 		redirect '/user'   
# 	else    
# 		redirect '/'  
# 	end 
# end

post "/" do
	# puts "my params are:" + params.inspect
	@answer = Choice.new(question1: params[:answerone], question2: params[:answertwo], question3: params[:answerthree], question4: params[:answerfour]) #assigning question1 in the schema to question1 in the form, or assigning the parameter from question 1 vin the form to question1 in the schema
	# p @answer
	if @answer.save
		#session[:user_id] = @rabbit.id
		redirect '/pic'
		# show img url = " "
		 #if the q1 params are equal to true then save this as a new choice 
		#<!--  -->  
	else   
		redirect '/'  
	end 




	# puts "my params are:" + params.inspect
	# @answertwo = Choice.new(question2: params[:answertwo])

	# if @answertwo.save

	# 	redirect "/pic"

	# else 
	# 	redirect "/"
	# end



	# puts "my params are:" + params.inspect
	# @answerthree = Choice.new()

	# if @answerthree.save

	# 	redirect "/pic"

	# else 
	# 	redirect "/"
	# end



	# # puts "my params are:" + params.inspect
	# @answerfour = Choice.new()
	# p @answerfour
	# if @answerfour.save

	# 	redirect "/pic"

	# else 
	# 	redirect "/"
	# end
end


# def current_user
# 	if session[:user_id]
# 		@current_user = User.find(session[:user_id])
# 	end


# end
