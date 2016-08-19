User.destroy_all
Film.destroy_all

User.create(email: "sean@goggle.com", username: "seanwars", password: "password")
User.create(email: "jay@goggle.com", username: "luke-jaywalker", password: "password")
User.create(email: "matt@goggle.com", username: "matttheforcebewithyou", password: "password")
User.create(email: "kim@goggle.com", username: "duchesskim", password: "password")
User.create(email: "tom@goggle.com", username: "obitomkenobi", password: "password")
User.create(email: "cj@goggle.com", username: "cj3-po", password: "password")
User.create(email: "court@goggle.com", username: "queencourt", password: "password")
User.create(email: "boone@goggle.com", username: "bb-8", password: "password")
User.create(email: "rojo@goggle.com", username: "rojo-d2", password: "password")
User.create(email: "jess@goggle.com", username: "gorejesswars", password: "catlover")

film_list = Tatooine::Film.list
film_list.each do |film|
  Film.create(title: film.title, episode: film.episode_id, opening_crawl: film.opening_crawl)
end
