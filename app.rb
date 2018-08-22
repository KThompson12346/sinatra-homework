require "sinatra"
require "sinatra/contrib"
require "sinatra/reloader" if development?


# create our first route
get "/countries" do
  "I am a local server about countries.
  This is the home page that you will initially see when you come to my web address.
  This is the first of the RESTful states within the table which will just return all
  of the countries on my website."
end

get "/countries/new" do
  "Form to add a new country
  This is the second RESTful state that will return a new a form to the client allowing
  them to enter a new country on my website. In order to submit the new entry to my website
  the client will have to click the submit button on the form which will then trigger a call
  to the post RESTful state which is in the form of a submit button."
end

post "/countries" do
  "Adds the new country that was added in form"
end

get "/countries/:id" do
  id = params[:id]
  "Displays a specific country #{id}"
end

get "/countries/:id/edit" do
  id = params[:id]
  "You want to edit country #{id}"
end

put "/countries/:id" do
  id = params[:id]
  "You want to update this country #{id}"
end

delete "countries/:id" do
  "You wanted to delete country #{id}"
end
