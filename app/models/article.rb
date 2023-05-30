# frozen_string_literal: true

class Article < ApplicationRecord
  validates :title, presence: { message: "Title can't be blank" }
  validates :content, presence: { message: "Content can't be blank" }
end
