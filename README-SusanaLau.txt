Susana Lau Hou 
MSIT-SM


Website Application name: mentorsapp
Github account: SusanaLauH


With Panama Mentors, students will find the resources they need to start building their career path. One of the resources they will have is to be able to connect to a mentor.
 
As a visitor user, you can create an account, login and sign out (logout).
As a visitor user, you can access information provided in the website, such as articles, conferences dates, etc. 
As a user with an account, you can connect to a mentor.
As a user, after you are signed in, you can view your profile and view your mentor information. 
As a user, you can restore your password, through a link sent to your email. 

As an admin, you can create, edit and delete users.
As an admin, you can create, edit and delete mentors. 


AJAX operation: Implemented Turbolinks


Unit tests found in: spec/model/user_spec.rb for the user model
	             spec/model/mentor_spec.rb for the mentor model 
		     	             
Integration tests found in: spec/requests/page_flows_spec.rb


Functional tests found in: spec/controllers/users_controller_spec.rb for the Users controller
			   spec/controllers/mentors_controller_spec.rb  for the Mentors controller 
			

The test for the XML request to the REST API xml is in the functional test file (of the Mentors controller) 

Note: Some of the tests were adapted from examples taken from the Ruby on Rails Tutorial and from Stack Overflow examples. 