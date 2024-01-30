# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

puts "Salespeople: #{Salesperson.all.count}"

# 2. insert 1-2 rows in salespeople table.

# initialize an empty salesperson row (aka hash)

salesperson = Salesperson.new

#assign values to each key (aka column) of the hash

salesperson ["first_name"] = "Ben"
salesperson ["last_name"] = "Block"
salesperson ["email"] = "block@hey.com"

# insert (aka save) aka insert the new hash (aka row) into the table

salesperson.save 

#repeat
salesperson = Salesperson.new

salesperson ["first_name"] = "Brian"
salesperson ["last_name"] = "Eng"
salesperson ["email"] = "eng@hey.com"
salesperson.save 



# 3. write code to display how many salespeople rows are in the database

# ---------------------------------
# Salespeople: 2

puts "Salespeople: #{Salesperson.all.count}"

# 4. modify/update column data for a row in the salespeople table.

brian = Salesperson.find_by({"first_name" => "Brian", "last_name" => "Eng"})
brian["last_name"] = "Taco"
brian.save

# CHALLENGE:
# 5. write code to display each salesperson's full name

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng

# puts "Ben Block" (cheating)

# puts "Brian Eng" (cheating)

salespeople = Salesperson.all
for salesperson in salespeople
    puts "#{person["first_name"],["last_name"]}"