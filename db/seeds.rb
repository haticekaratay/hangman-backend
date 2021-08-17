
Word.create([
    {name: "Forrest Gump",category: "movie"},
    {name: "The Shawshank Redemption",category: "movie"},
    {name: "The Godfather",category: "movie"},
    {name: "The Matrix",category: "movie"},
    {name: "Gladiator",category: "movie"},
    {name: "Jurassic Park",category: "movie"},
    {name: "The Dark Knight",category: "movie"},
    {name: "Interstellar",category: "movie"},
    {name: "Inception",category: "movie"},
    {name: "Star Wars",category: "movie"},
    {name: "Saving Private Ryan",category: "movie"},
    {name: "Life Is Beautiful",category: "movie"},
    {name: "Joker",category: "movie"},
    {name: "Shutter Island",category: "movie"},
    {name: "Toy Story",category: "movie"},
    {name: "Marie Curie", category: "scientists/mathematician"},
    {name: "Isaac Newton", category: "scientists/mathematician"},
    {name: "Albert Einstein", category: "scientists/mathematician"},
    {name: "Neil deGrasse Tyson", category:"scientists/mathematician"},
    {name: "Stephen Hawking", category:"scientists/mathematician"},
    {name: "Nikola Tesla", category:"scientists/mathematician"}
])

Player.create(name: "Haley")
Player.create(name: "Jack")
Game.create(player_id: 1, score: 330)
Game.create(player_id: 2, score: 280)
