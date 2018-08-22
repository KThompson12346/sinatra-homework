require "sinatra"
require "sinatra/contrib"
require "sinatra/reloader" if development?


# create our first route
get "/countries" do
  "I am as local server about countries"
end

get "/countries/new" do
  "Form to add a new country"
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
  "You want to delete country #{id}"
end

put "countries/:id" do
  "You want to update this country #{id}"
end

delete "countries/:id" do
  "You wanted to delete country #{id}"
end
