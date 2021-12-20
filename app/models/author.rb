class Author < ApplicationRecord
    validates :name, presence: true #1=> is expected to validate that :name cannot be empty/falsy
    validates :email, uniqueness: {case_sensitive: true} #1=> is expected to validate that :email is case-senstively unique
end
