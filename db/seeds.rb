Recipe.delete_all
Ingredient.delete_all
User.delete_all

tim = User.create(:name => 'Tim',  email: "tim.garcia@generalassemb.ly", password: "foobar123", password_confirmation: "foobar123")
rafi = User.create(:name => 'Raphael', :email => "rafi.sofaer@generalassemb.ly", :password => "asdasd", :password_confirmation => "asdasd")

r1 = Recipe.create(:name => 'Banana Pancakes', :course => 'Dessert', :cooktime => 10, :servingsize => 4, :instructions => 'Cook in pan', :image => 'http://hostedmedia.reimanpub.com/TOH/Images/Photos/37/exps1053_BB2406671D07_20_3b.jpg')
r2 = Recipe.create(:name => 'French Chicken', :course => 'Main', :cooktime => 125, :servingsize => 3, :instructions => 'Heat Oven', :image => 'http://img4-3.myrecipes.timeinc.net/i/recipes/ck/96/11/french-chicken-ck-222717-l.jpg')
r3 = Recipe.create(:name => 'French Onion Soup', :course => 'Apps', :cooktime => 35, :servingsize => 1, :instructions => '', :image => 'http://hostedmedia.reimanpub.com/TOH/Images/Photos/37/exps36687_HC1154010B12_06_1b.jpg')

i1 = Ingredient.create(:name => 'Flour', :brand => 'Gold Medal', :image => 'http://3.bp.blogspot.com/_Iel3IXJ_g7A/RzIFHOZyqRI/AAAAAAAACvk/f6zlHQ_QFSA/s400/flour.jpg')
i2 = Ingredient.create(:name => 'Eggs', :brand => 'Clover', :image => 'http://images.elephantjournal.com/wp-content/uploads/2010/04/eggs1.jpg')
i3 = Ingredient.create(:name => 'Sugar', :brand => 'C&H', :image => 'http://verifiedafricanmango.com/wp-content/uploads/2012/08/Sugar.jpg')
i4 = Ingredient.create(:name => 'Milk', :brand => 'Clover', :image => 'http://images.wisegeek.com/pitcher-of-milk.jpg')
i5 = Ingredient.create(:name => 'Butter', :brand => 'Land-O-Lakes', :image => 'http://www.cheesemaking.com/images/recipes/35Butter/Pics/pic51.jpg')
i6 = Ingredient.create(:name => 'Bacon', :brand => 'Kirkland Signature',:image => 'http://4.bp.blogspot.com/-HX7l3B-dPXY/UN0FeGidWHI/AAAAAAAADZE/FF9svNR700I/s1600/crispy-bacon.jpg')

r1.ingredients = [i1, i2, i4]
r2.ingredients = [i1, i2, i4, i5, i6]
r3.ingredients = [i2, i3, i4]

tim.recipes << r1
tim.recipes << r2

rafi.recipes << r3

