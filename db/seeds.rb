# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
Product.create(title: 'Bananas (6)',
               description:
                   %{<p>
        No fruit 'n' veg service would be complete without the banana. One of the oldest of all cultivated plants they remain a favourite with gorillas, monkeys and professional tennis players.
      </p>},
               image_url:   'bananas.jpg',
               price: 1.50)
# . . .
Product.create(title: 'Apples - Imported (6)',
               description:
                   %{<p>
        Irish eating apples are only available for a short season in the autumn but we have the best imported varieties year round. Our most popular are the red varieties such as Jonagold, Pink Lady and Royal Gala but our stock changes on a weekly basis depending on availability and quality.
      </p>},
               image_url: 'apples.jpg',
               price: 2.00)
# . . .

Product.create(title: 'Oranges - Mandarins (6)',
               description:
                   %{<p>
        Mandarins come in many varieties including clementines, satsumas and tangerines. Ours are mostly imported from Spain and we ensure that only the tastiest will make their way into Flynn's deliveries.
      </p>},
               image_url: 'mandarins.jpg',
               price: 2.00)

Product.create(title: 'Pears (Punnet)',
               description:
                   %{<p>
        We stock the juiciest pears imported from around the world as they are a great source of fibre and vitamin C. As they are less allergenic than other fruits, pear is often one of the first fruits given to infants.
      </p>},
               image_url: 'pears.jpg',
               price: 2.50)

Product.create(title: 'Cabbage',
               description:
                   %{<p>
        One of the rare Irish vegetables that is locally available year round, cabbage needs no introduction to those reared on a traditional "meat and 2 veg" diet . The York cabbage is our most popular variety for boiling/steaming although we also supply white and red cabbage on request.
      </p>},
               image_url: 'cabbage.jpg',
               price: 1.00)

Product.create(title: 'Carrots (500g)',
               description:
                   %{<p>
        This is the most popular Irish root vegetables of all. Very versatile and an excellent source of vitamin A which, as every child knows, can help you see in the dark. Flynn's carrots have also been used by a leading Dublin rabbit fancier to feed his prize show rabbits which won best in breed at the UK Championships 2012 following their switch to Flynn's!
      </p>},
               image_url: 'carrots.jpg',
               price: 1.00)

Product.create(title: 'Cauliflower)',
               description:
                   %{<p>
    Another Irish favourite which is delicious boiled or served with a cheese sauce. Cauliflower been studied for its cancer-preventing potential and antioxidant properties. Cauliflower contains many nutrients, making it an excellent addition to any diet.
      </p>},
               image_url: 'cauliflower.jpg',
               price: 1.00)

Product.create(title: 'Green Beans (250g)',
               description:
                   %{<p>
    Irish green beans are only available for a short season but they really are worth the wait compared to the imported varieties. Delicious when lightly boiled and either served on their own or mixed with garlic or blue cheese.
      </p>},
               image_url: 'greenbeans.jpg',
               price: 2.00)

Product.create(title: 'Lettuce',
               description:
                   %{<p>
    Our Irish butterhead lettuce are available year round and are a vital part of any salad. Easy to prepare, they only need to be washed and added to a sandwich. The ultimate convenience food.
      </p>},
               image_url: 'lettuce.jpg',
               price: 1.00)

Product.create(title: 'Mushrooms (250g)',
               description:
                   %{<p>
    Highly versatile and available all year, mushrooms come in a wide range of varieties to suit all tastes. While we mostly deal in the ever popular cup mushroom, don't be afraid to ask for shitake, chestnut, Portobello or wild mushrooms if you would like us to source them for you.
      </p>},
               image_url: 'mushrooms.jpg',
               price: 1.00)

Product.create(title: 'Onions (6)',
               description:
                   %{<p>
    Another versatile veggie often used in cooked meat dishes as well as vegetarian cooking.
      </p>},
               image_url: 'onions.jpg',
               price: 1.00)

Product.create(title: 'Parsnips (500g)',
               description:
                   %{<p>
    Another versatile veggie often used in cooked meat dishes as well as vegetarian cooking.
      </p>},
               image_url: 'onions.jpg',
               price: 1.50)