fifty = Artist.create(name:"50 cent",bio:"i'm a rapper")
rap = Genre.create(name:"rap")
song = Song.create(name: "in da club", artist_id: fifty.id, genre_id: rap.id)