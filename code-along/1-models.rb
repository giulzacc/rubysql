# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/1-models.rb

# **************************
# Don't change or move
Company.destroy_all
# **************************

# 1a. check out the schema file
# in the terminal go .sqlite3 then .schema or check out the schema.rb in the db 

# 1b. check out the model file
# go to app -> models 


# 2. create new companies
values = {name: "Apple", 
    url: "apple.com", 
    city: "Cupertino", 
    state: "California"
}
company = Company.new(values)
company.save


values = {name: "Amazon", 
    url: "amazon.com", 
    city: "Seattle", 
    state: "Washington"
}
company = Company.new(values)
company.save

company = Company.new
company.write_attribute(:name, "Tesla")
company.write_attribute(:url, "tesla.com")
company.write_attribute(:city, "Palo Alto")
company.write_attribute(:state, "California")
company.save

# puts Company.all.count
# rails runner data.rb gives the info about the models 

# 3. query companies table
# puts Company.all.inspect

ca_companies = Company.where({state: "California", name: "Apple"})
puts ca_companies.inspect

apple = Company.where({state: "California", name: "Apple"})[0]
puts apple.inspect

# 4. read column values from row
puts apple.read_attribute(:url)

puts apple.write_attribute(:slogan,  "Think Different")
apple.slogan = "Think Different"
apple.save
puts apple.inspect

# 5. update attribute value
