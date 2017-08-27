require 'rails_helper'

RSpec.describe "Articles" do
  describe "article#edit" do
    it "user can edit an article" do
      article = Article.create(title: "Article_1", body: "something about the the article goes here")
      article_2 = Article.create(title: "Article_2", body: "this is where we would write something")

      visit "/articles/#{article.id}/edit"
      fill_in("Title", with: "Article_A")
      click_on("Update Article")

      expect(page).to have_content("Article_A")
    end
  end
end
