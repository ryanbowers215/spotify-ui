//
//  Song.swift
//  spotify-ui
//
//  Created by Ryan Bowers on 8/27/24.
//

import Foundation

struct Song: Identifiable {
    let id: Int
    let title: String
    let artist: String
    let totaltime: Double
    let cover_url: String
    
}

var testSongs: [Song] = [
    Song(
        id: 1,
        title: "Hacked My Instagram",
        artist: "Pi'erre Bourne",
        totaltime: 121.0,
        cover_url: "https://media.pitchfork.com/photos/5a872a9c000dc822199a6daa/1:1/w_800,h_800,c_limit/Hacked%20My%20Instagram.jpg"
    ),
    Song(
        id: 2,
        title: "Genius",
        artist: "Ravyn Lenae",
        totaltime: 155.0,
        cover_url: "https://upload.wikimedia.org/wikipedia/en/9/99/Ravyn_Lenae_-_Bird%27s_Eye.png"
    ),
    
    Song(
        id: 3,
        title: "Disaster",
        artist: "Kxllswxtch",
        totaltime: 139.0,
        cover_url: "https://i1.sndcdn.com/artworks-BvbkwvpRmCiLounn-Gqki0g-t500x500.jpg"
    ),
    
    Song(
        id: 4,
        title: "no sense",
        artist: "Baby Keem",
        totaltime: 173.0,
        cover_url: "https://upload.wikimedia.org/wikipedia/en/thumb/9/90/TheMelodicBlueCover.jpeg/220px-TheMelodicBlueCover.jpeg"
    ),
    
    Song(
        id: 5,
        title: "Chicago",
        artist: "Sufjan Stevens",
        totaltime: 364.0,
        cover_url: "https://f4.bcbits.com/img/a1535970238_10.jpg"
    ),
]

var recs: [Song] = [
    Song(
        id: 6,
        title: "Chinese Satellite",
        artist: "Phoebe Bridgers",
        totaltime: 217.0,
        cover_url: "https://upload.wikimedia.org/wikipedia/en/2/23/Phoebe_Bridgers_Punisher_%282020%29.png"
    ),
    Song(
        id: 7,
        title: "Supercut",
        artist: "Lorde",
        totaltime: 277.0,
        cover_url: "https://upload.wikimedia.org/wikipedia/en/b/b2/Lorde_-_Melodrama.png"
    ),
    
    Song(
        id: 8,
        title: "ILoveUIHateU",
        artist: "Playboi Carti",
        totaltime: 135.0,
        cover_url: "https://upload.wikimedia.org/wikipedia/en/6/6c/Playboi_Carti_-_Whole_Lotta_Red.png"
    ),
    
    Song(
        id: 9,
        title: "Kill V. Maim",
        artist: "Grimes",
        totaltime: 173.0,
        cover_url: "https://upload.wikimedia.org/wikipedia/en/d/d9/Grimes_-_Art_Angels.png"
    ),
    
    Song(
        id: 10,
        title: "Private Presley",
        artist: "Peach Pit",
        totaltime: 339.0,
        cover_url: "https://i.scdn.co/image/ab67616d0000b27300b39b4a73d28536690b355c"
    ),
]
