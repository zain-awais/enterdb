class Movie < ApplicationRecord
    has_many :movie_genres
    has_many :genres, through: :movie_genres


    include PgSearch::Model

    pg_search_scope :search_by_name,
                    against: [:name],
                    using: {
                      tsearch: { prefix: true } # Use prefix search
                    }
end
