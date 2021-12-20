class Post < ApplicationRecord
    validates :title, presence: true #2=> is expected to validate that :title cannot be empty/falsy
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)} #2=> is expected to validate that :category is either <"Fiction"> or <"Non-Fiction">
    validates :content, length: {minimum: 100} #2=> is expected to validate that the length of :content is at least 100
end
