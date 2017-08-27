require 'rails_helper'
RSpec.describe "Articles" do
  describe "article#destroy" do
    it "user can delete an article" do
      article = Article.create(title: "Article_1", body: "something about the the article goes here")
      article_2 = Article.create(title: "Article_2", body: "this is where we would write something")

      visit "articles/#{article.id}"

      expect(page).to have_content("Article_1")
      click_link("Delete Article")

      expect(page).to have_no_content("Article_1")
    end
  end
end
