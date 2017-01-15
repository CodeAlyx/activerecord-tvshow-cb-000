def highest_rating
  Shows.maximum(:rating)
end

def most_popular_show
  highest_rating.name
end

def lowest_rating
  Shows.minimum(:rating)
end

def least_popular_show
  lowest_rating.name
end

def ratings_sum
  Shows.sum(:rating)
end

def popular_shows
  Shows.where("rating > ?", 5)
end

def shows_by_alphabetical_order
  Shows.order()
end
