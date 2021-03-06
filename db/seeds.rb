# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# found
post1 = Post.new
post1.title = "found"
post1.kind = "image"
post1.content = "http://www.buncee.com/files/uploads/image/Finding%20Nemo%203.jpg"
post1.save

6.times do
	post1.hearts.create
end

# killer
post2 = Post.new(title: "killer", kind: "image")
post2.content = "http://realanimalslife.com/data_images/killer-whale/killer-whale-08.jpg"
post2.save

26.times { post2.hearts.create }

# asian carp: the enemy
post3 = Post.create(
	title: "asian carp: the enemy",
	kind: "image",
	content: "http://media.mlive.com/mudpuppy/photo/asian-carp-great-lakesptjpg-a0eb3f8e922a41c3.jpg"
	)

19.times { post3.hearts.create }

#california sushi
post4 = Post.new(title: "california sushi", kind: "text")
post4.content = <<CONTENT 
	Ingredients:
Juice of 1/2 lemon
1 medium avocado, peeled, pitted, and sliced into 1/4-inch thick pieces
4 sheets nori
1/2 batch sushi rice, recipe follows
1/3 cup sesame seeds, toasted
1 small cucumber, peeled, seeded, and cut into matchstick-size pieces
4 crabsticks, torn into pieces
Pickled ginger, for serving
Wasabi, for serving
Soy sauce, for serving
Directions
Squeeze the lemon juice over the avocado to prevent browning.

Cover a bamboo rolling mat with plastic wrap. Cut nori sheets in half crosswise. Lay 1 sheet of nori, shiny side down, on the plastic covered mat. Wet your fingers with water and spread about 1/2 cup of the rice evenly onto the nori. Sprinkle the rice with sesame seeds. Turn the sheet of nori over so that the rice side is down. Place 1/8 of the cucumber, avocado and crab sticks in the center of the sheet. Grab the edge of the mat closest to you, keeping the fillings in place with your fingers, and roll it into a tight cylinder, using the mat to shape the cylinder. Pull away the mat and set aside. Cover with a damp cloth. Repeat until all of the rice has been used. Cut each roll into 6 pieces. Serve with pickled ginger, wasabi and soy sauce.

Sushi Rice:
2 cups sushi or short grain rice
2 cups water, plus extra for rinsing rice
2 tablespoons rice vinegar
2 tablespoons sugar
1 tablespoon kosher salt
Place the rice into a mixing bowl and cover with cool water. Swirl the rice in the water, pour off and repeat 2 to 3 times or until the water is clear.

Place the rice and 2 cups of water into a medium saucepan and place over high heat. Bring to a boil, uncovered. Once it begins to boil, reduce the heat to the lowest setting and cover. Cook for 15 minutes. Remove from the heat and let stand, covered, for 10 minutes.

Combine the rice vinegar, sugar and salt in a small bowl and heat in the microwave on high for 30 to 45 seconds. Transfer the rice into a large wooden or glass mixing bowl and add the vinegar mixture. Fold thoroughly to combine and coat each grain of rice with the mixture. Allow to cool to room temperature before using to make sushi or sashimi.

Yield: 4 cups
CONTENT

post4.save

87.times { post4.hearts.create }