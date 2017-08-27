require 'rails_helper'

RSpec.describe "Articles" do
  describe "article#show" do
    it "user can see a requested article" do
      article = Article.create(title: "Article_1", body: "something about the the article goes here")
      article_2 = Article.create(title: "Article_2", body: "this is where we would write something")

      visit "/articles/#{article.id}"

      expect(current_path).to eq(article_path(article))

      expect(page).to have_content("Article_1")
      expect(page).to have_no_content("this is where we would write something")
    end
  end
end
