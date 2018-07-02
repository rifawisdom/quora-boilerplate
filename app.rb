require_relative './config/init.rb'

set :run, true

enable :sessions

get '/' do
	erb :"home"
end

get '/sign_up' do
	erb :"sign_up"

end

post '/sign_up' do
	# p "Hello Worldddddd"
	# p params[:email]
	# p params[:password] 
	
	  # p params
	x = User.new(email: params[:user][:email], password: params[:user][:password])
	

	x.save


	redirect '/'
end

get '/sign_in' do

	erb :"sign_in"
end

get '/user/:id' do
	
	@user = User.find(params[:id])
	erb :"profile_page"
	
end

post '/sign_in' do
	user = User.find_by(email: params[:user][:email])
# p user
# p user.authenticate(params[:user][:password]) 

	if user && user.authenticate(params[:user][:password]) 
		session[:user_id] = user.id

		redirect "/user/#{user.id}"
	else 
		redirect back
	end
  # apply a authentication method to check if a user has entered a valid email and password
  # if a user has successfully been authenticated, you can assign the current user id to a session
end

get '/sign_out' do
	sign_out

	# session[:user_id]=nil
	redirect '/'
end

get '/question/:id' do

	@question = Question.find(params[:id])
	erb :"question_page"
end


post '/question' do
	
	x = Question.new(description: params[:question][:description], user_id: current_user.id)

	x.save
	

	redirect '/'

end

patch '/question/:id' do
	question = Question.find(params[:id])
	question.update(description: params[:description])

	redirect back
end

 




# post '/logout' do

# 		enable :sessions

# 		get '/' do
# 		  "value = " << session[:value].inspect
# 		end

# 		get '/:value' do
# 		  session['value'] = params['value']
# 		end
# end
  # kill a session when a user chooses to logout, for example, assign nil to a session
  # redirect to the appropriate page













# get '/' do
#   @name = "Ariff Azmi"
#   erb :"home"
# end

#  # Example of loop running on .erb file
#  # Notice when <% %> is used and when <%= %> is used
#  <% @students.all.each do |student| %>
#    <li><%= student.name %></li>
#  <% end %>



