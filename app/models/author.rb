class Author < ApplicationRecord
  has_many :book_authors
  has_many :books, throush: :book_authors
end
