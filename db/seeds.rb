#Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed } All seeds at once in alphabetical order

#No Requirments
load 'db/seeds/role.rb'
load 'db/seeds/paddle.rb'
load 'db/seeds/post.rb'
load 'db/seeds/user.rb'
load 'db/seeds/faq_category.rb'
load 'db/seeds/composite.rb'
load 'db/seeds/alumni_news_letter.rb'

#Order matters
load 'db/seeds/gallery.rb' #Depends on post
load 'db/seeds/position.rb' #Depends on role and user
load 'db/seeds/image.rb' #Depends on post and gallery
load 'db/seeds/faq_question.rb' #Depends on faq category
load 'db/seeds/community_service.rb' #Depends on user
load 'db/seeds/alumni_eternal_story.rb' #Depends on alumni_eternal and user
load 'db/seeds/alumni_eternal.rb' #Depends on user