namespace :sample do
  desc "Create sample data for article vs category and comments"
  task data: :environment do
    (1..100).each do |item|
      category = Category.create({name: "category_#{item}"})
      category.articles.create({name: "article_#{item}"})
    end

    (1..100).each do |item|
      article = Article.find(item)
      (1..rand(40)).each do |index|
        article.comments.create({name: "comment_#{index}}", email: "phamkhanh90#{index}@gmail.com"})
      end
    end
  end

end
