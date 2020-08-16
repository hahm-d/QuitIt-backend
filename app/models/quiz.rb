class Quiz < ApplicationRecord
    has_many :questions

    def to_param
        unique_code
    end
end
