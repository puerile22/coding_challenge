hash={
	:favourite_book,'Gourd of the Flies',
	:author,'J.W.Gourding'
}
array=["favourite book:Gourd of the Flies","author:J.W.Gourding"]
library={
	"Design Patterns"=>["Richard Helm", "Ralph Johnson", "Erich Gamma"],
	"Patterns of Enterprise Application Architecture"=>["Martin Fowler"],
	"Domain Driven Design"=>["Eric Evans"]
}


arr_library=[
  {:name,"Design Patterns",:author,["Richard Helm", "Ralph Johnson", "Erich Gamma"]},
  {:name,"Patterns of Enterprise Application",:author,["Matrin Fowler"]},
  {:name,"Domain Driven Design",:author,["Eric Evans"]}
]

# Ruby 1.9+
# {name: "Design Patterns"}
# {:name => "Design Patterns"}




dogood={
	:name,'Alice',:age,25,:phone_number,"555-555-5555",
	:position,"event receptionist position"
}
do_good=[
{:name,"Alice"},{:age,25},{:phone_number,"555-555-5555"},
{:position,"event receptionist position"}
]


number_5={
	:name,'Patrick',
	:laptop,"Apple MacBook Air",
	:drive,"256GB solid state drive",
	:ram,"8GB",
	:display,"Retina",:processor,"i7",:preloaded_software,"iPhoto, Safari, iMovie, iMessage"
}
number_5_arr=["Patrick",'Apple MacBook Air','256GB solid state drive','8GB of ram','Retina display','i7 processor','iPhoto, Safari, iMovie, iMessage']


number_6=[
{:name,"Maple",:age,4,:breed,"pitbull",:favourite_game,"tug-o-war",:love,'swimming in the lake'},
{:name,'Atlas',:age,3,:breed,"boxer",:favourite_game,'fetch',:love,'swimming in the lake'}
]








number_7={
	"favourite_restaurant"=>{:name,"Patrick's Piza Palace",:address,"716 Congress",:health_score,100},
	"nick"=>{:appetizer,'mozarella sticks',:entree,'chicken parmigiana',:dessert,'tiramisu'},
	"kate"=>{:appetizer,'calzone',:entree,'a slice of pizza',:dessert,'cannoli'},
	"harsh"=>{:appetizer,'garlic knots',:entree,'spaghetti & eggplant',:dessert,'cheesecake'}
}
#number_7=[favourite_restaurant,nick,kate,harsh]






class Restaurant
	def self.infor
		puts "Patrick's Pizaa Palace is at 716 Congress, and we have a health socre of 100!"
	end
	def self.nick
		print "Nick's favourite meal is "
		menu(0)
	end
	def self.kate
		print "Kate's favourite meal is "
		menu(1)
	end
	def self.harsh
		print "Harsh's favourite meal is "
		menu(2)
	end
	def self.menu(i)
		arr={"app"=>['mozarella sticks','calzone','garlic knots'],
		     "entree"=>['chicken parmigiana','a slice of pizza','spaghetti & eggplant'],
		     "dessert"=>['tiramisu','cannoli','cheesecake']
		 }
		 puts "#{arr["app"][i]} for appetizer, #{arr["entree"][i]} for entree, and #{arr['dessert'][i]} for dessert."
	end
end

