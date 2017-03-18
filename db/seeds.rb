# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

recipe_list = [
  ["Butternut Squash Pie", 
    "2 large eggs plus 2 egg yolks \n
      1 ½ teaspoons vanilla extract \n
      ½ cup/100 grams dark brown sugar \n
      ¼ cup/50 grams granulated sugar \n
      ¼ teaspoon fine sea salt \n
      1 ½ teaspoons ground ginger \n
      1 ½ teaspoons ground cinnamon \n
      ½ teaspoon ground nutmeg \n
      Pinch cayenne pepper \n
      1 ½ cups/355 grams roasted squash purée (see note) \n
      1 ¼ cups/295 milliliters heavy cream \n
      Whipped cream, for garnish (optional)
    ",
    "Combine eggs, vanilla, sugars, salt and spices in food processor, and process until smooth. Add squash purée, and process until smooth. With machine running, pour in heavy cream, and process to combine. \n
      Scrape filling into hot prebaked shell, and bake on pizza stone for 20 minutes. Turn the oven up to 325 degrees and continue baking for another 20 to 25 minutes until filling is set two-thirds of the way in from the perimeter and the center still jiggles, about 40 to 45 minutes total (custard will continue to cook after pie is removed from oven). Tent edges loosely with foil if browning too quickly.
    ",
    "sweet",
    "yummy and ready within the next 2 hours"
  ],
  ["Lemon Tart", 
    "1 cup (250 ml) freshly-squeezed lemon juice \n
      grated zest of two lemons, preferably unsprayed \n
      3/4 cup (150 g) sugar \n
      12 tablespoons (170 g) butter, salted or unsalted, cut into cubes \n
      4 large eggs \n
      4 large egg yolks
    ",
    "In a medium-sized non-reactive saucepan, heat the lemon juice, zest, sugar, butter, eggs and egg yolks. Have a mesh strainer nearby.\n
      Stir until the butter is melted, then whisk the mixture continuously until the mixture thickens and holds its shape when you lift some of it up with the whisk and it visibly mounds up when dropped back down over the rest of the mixture in the saucepan. It should just take a few minute. \n
      Pour the warm lemon curd though a strainer into a bowl (or directly into the tart shell), scraping with a rubber spatula to press it through. \n
      Smooth the lemon filling in the prebaked tart shell and pop it in the oven until the curd is just set. It’ll take about 5 to 6 minutes. \n
    ",
    "sweet",
    "yummy and ready within the next 2 hours"
  ],
  ["3-Ingredient Stovetop Macaroni and Cheese", 
    "6 ounces (170g) elbow macaroni \n
      6 ounces (180ml) evaporated milk \n
      6 ounces (170g) grated mild or medium cheddar cheese, or any good melting cheese, such as Fontina, Gruyère, or Jack
    ",
    "Place macaroni in a medium saucepan or skillet and add just enough cold water to cover. Add a pinch of salt and bring to a boil over high heat, stirring frequently. Continue to cook, stirring, until water has been almost completely absorbed and macaroni is just shy of al dente, about 6 minutes. \n
      Immediately add evaporated milk and bring to a boil. Add cheese. Reduce heat to low and cook, stirring continuously, until cheese is melted and liquid has reduced to a creamy sauce, about 2 minutes longer. Season to taste with more salt and serve immediately.
    ",
    "savoury",
    "quick and easy"
  ],
  ["French Tart Dough", 
    "85g (3 ounces) unsalted butter, cut into pieces \n
      1 tablespoon vegetable oil, I used canola \n
      3 tablespoons water \n
      1 tablespoon sugar \n
      1/8 teaspoon salt \n
      160g (5.5oz, or 1 rounded cup) flour
    ",
    "In a medium-sized ovenproof bowl, such as a Pyrex bowl, combine the butter, oil, water, sugar, and salt. \n
      Place the bowl in the oven for 15 minutes, until the butter is bubbling and starts to brown just around the edges. \n
      When done, remove the bowl from oven (and be careful, since the bowl will be hot and the mixture might sputter a bit), dump in the flour and stir it in quickly, until it comes together and forms a ball which pulls away from the sides of the bowl \n
      Transfer the dough to a 9-inch (23 cm) tart mold with a removable bottom and spread it a bit with a spatula. \n
      Once the dough is cool enough to handle, pat it into the shell with the heel of your hand, and use your fingers to press it up the sides of the tart mold. Reserve a small piece of dough, about the size of a raspberry, for patching any cracks. \n
      Prick the dough all over with the tines of a fork about ten times, then bake the tart shell in the oven for 15 minutes, or until the dough is golden brown.\n
      Remove from the oven and if there are any sizable cracks, use the bits of reserved dough to fill in and patch them
    ",
    "sweet",
    "quick and easy"
  ],
]

recipe_list.each do |name, ingredients, instruction, food_type, time_taken|
  Recipe.create(name: name, ingredients: ingredients, instruction: instruction, food_type: food_type, time_taken: time_taken)
end