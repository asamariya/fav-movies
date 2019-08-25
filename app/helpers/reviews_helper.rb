module ReviewsHelper
 def avg_rating_display(movie)
  display = ''
  avg = movie.reviews.average(:rating).round
  avg.times do
    display += '<i class="fas fa-star"></i>'
  end
  (5 - avg).times do
    display += '<i class="far fa-star"></i>'
  end
  display.html_safe
 end
end
