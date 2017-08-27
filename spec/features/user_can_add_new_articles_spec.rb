require 'rails_helper'

RSpec.describe "Articles" do
  describe "article#new" do
    it "user can add a new article" do
      article = Article.create(title: "Article_1", body: "something about the the article goes here")
      article_2 = Article.create(title: "Article_2", body: "this is where we would write something")

      visit '/articles/new'

      fill_in("Title", with: "Article_3")
      fill_in("Body", with: "This is really cool stuff in the body")
      click_on("Create Article")

      expect(page).to have_content("Article_3")
    end
  end
end
