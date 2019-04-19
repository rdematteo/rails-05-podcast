puts "Start of Seeding..."
Podcast.destroy_all
10.times do
  params = {
    name: Faker::Science.scientist,
    genre: Faker::Music.genre,
    explicit_content: Faker::Boolean.boolean
    
  }
  puts "Creating Podcast: #{params[:name]}"
  podcast = Podcast.new(params)
  podcast.save

  reviews = rand(5)
  reviews.times do
    params = {
      title: Faker::FunnyName.unique.name,
      show_notes: Faker::TvShows::DumbAndDumber.quote,
      mp3_file: Faker::Boolean.boolean,
      podcast_id: podcast.id
    }
    puts "Creating episode: #{params[:title]}"
    episode = Episode.new(params)
    episode.save
  end
end


puts "Seeding Over"
