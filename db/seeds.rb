# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Trick.find_or_create_by(:name => "OLIIE(1月)", :month => 1)
Trick.find_or_create_by(:name => "SHOVEIT(2月)", :month => 2)
Trick.find_or_create_by(:name => "FLIP(3月)", :month => 3)
Trick.find_or_create_by(:name => "SLIDE(4月)", :month => 4)
Trick.find_or_create_by(:name => "FREE STYLE(5月)", :month => 5)
Trick.find_or_create_by(:name => "STREET(６月)", :month => 6)
Trick.find_or_create_by(:name => "OLIIE(7月)", :month => 7)
Trick.find_or_create_by(:name => "SHOVEIT(8月)", :month => 8)
Trick.find_or_create_by(:name => "FLIP(9月)", :month => 9)
Trick.find_or_create_by(:name => "SLIDE(10月)", :month => 10)
Trick.find_or_create_by(:name => "FREE STYLE(11月)", :month => 11)
Trick.find_or_create_by(:name => "STREET(12月)", :month => 12)

Home.find_or_create_by(:title => "ToDay Clip", :challenge => "OLIIE", :video => "TFy8YZLfczs")

User.find_or_create_by(:email => "test@test", :name => "test", :password => "123456")

Clip.find_or_create_by(:user_id => 1, :video => "TFy8YZLfczs", :title => "test", :body => "test", :trick_id => 1)

Favorite.find_or_create_by(:user_id => 1, :clip_id => 1)





Location.find_or_create_by(:name => "北海道")
Location.find_or_create_by(:name => "東北")
Location.find_or_create_by(:name => "関東")
Location.find_or_create_by(:name => "東海・北陸")
Location.find_or_create_by(:name => "近畿")
Location.find_or_create_by(:name => "中国")
Location.find_or_create_by(:name => "四国・九州")





