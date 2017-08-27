require 'rails_helper'

RSpec.describe "Articles" do
  describe "article#index" do
    it "user can see all articles" do
      Article.create(title: "Article_1", body: "something about the the article goes here")
      Article.create(title: "Article_2", body: "this is where we would write something")

      visit '/articles'

      expect(current_path).to eq(articles_path)

      expect(page).to have_content("Article_1")
      expect(page).to have_content("Article_2")
    end
  end
end
