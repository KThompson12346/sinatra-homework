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
  "Form to add a new country.
  This is the second RESTful state that will return a new a form to the client allowing
  them to enter a new country on my website. In order to submit the new entry to my website
  the client will have to click the submit button on the form which will then trigger a call
  to the post RESTful state which is in the form of a submit button."
end

post "/countries" do
  "Adds the new country that was added in form that was requested in the above get method.
  The third RESTful state, this path is the same as the first RESTful state because this
  will post the form above to the home page.
  The above get method is directly related to this post method and this post method will
  not work without first getting the form (with the above get method) that the client will
  then fill out and click the submit button and then the new country is added to the website."
end

get "/countries/:id" do
  id = params[:id]
  "Displays a specific country #{id}.
  This is the fourth RESTful state where the get method will return a country that corresponds
  to the given id in the path.
  The method will first go to countries and then it will search for the country with the specified
  id given in the path name."
end

get "/countries/:id/edit" do
  id = params[:id]
  "You want to edit country #{id}.
  This is the fifth RESTful state, what this does is that it will bring up a form that allows the
  client to then edit the country with the given id in the path. When the client is ready to submit
  they will then click the submit button and this will then call make a request to the next RESTful
  state which is below (put)."
end

put "/countries/:id" do
  id = params[:id]
  "You want to update this country #{id}.
  This is the sixth RESTful state that will then send back the data taken by the above get method
  (i.e. the data entered by the client). Like the post method the put method can only be used after
  the get method has been requested to get a form for editing. The put method is used when you want to
  edit the whole of the data on the form/page, this is in contrast with the patch method that is
  used when you only want to edit one specific thing on the form/page."
end

delete "countries/:id" do
  "You wanted to delete country #{id}.
  This is the last RESTful state that is used to delete the specified id in the path."
end
