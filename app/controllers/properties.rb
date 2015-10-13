# show all
get '/properties' do
  @properties = Property.all
  erb :property_show_all
end


# new
get '/properties/new' do
  erb :property_new
end

# show property
get '/properties/:id' do
  @property = Property.find(params[:id])
  erb :property_show
end


# delete
post '/properties/:id/delete' do
  @property = Property.find params[:id]
  @property.destroy
  redirect to '/properties'
end


# create
post '/properties/new' do
  @property = Property.new(params[:property])
  @property.save
  redirect to "/properties"
end


# edit page
get "/properties/:id/edit" do
  @property = Property.find(params[:id])
  erb :property_edit
end

# edit
post '/properties/:id' do
  @property = Property.find(params[:id])
  @property.update(params[:property])
  @property.save
  redirect to "/properties"
end

