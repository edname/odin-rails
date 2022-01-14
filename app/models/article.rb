class Article < ApplicationRecord

    has_rich_text :content

    include Visible
    has_many :comments, dependent: :destroy

    validates :title, presence: true, uniqueness: true
    validates :body, presence: true, uniqueness: true

    def self.search(search)
        if search
            article_type = Article.find_by(title: seach)
                if article_type
                    self.where(article_id: article_type)
                else
                    @article = Article.all
                end
        else
            @article = Article.all
        end
    end
end
