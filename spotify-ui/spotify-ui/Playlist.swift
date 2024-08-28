//
//  Playlist.swift
//  spotify-ui
//
//  Created by Ryan Bowers on 8/27/24.
//

import Foundation

struct Playlist: Identifiable {
    let id: Int
    let title: String
    let cover_url: String
    var songs: [Song]
}

var testPlaylist: Playlist = Playlist(
    id: 1,
    title: "Playlist 1",
    cover_url: "https://marketplace.canva.com/EAEdeiU-IeI/1/0/1600w/canva-purple-and-red-orange-tumblr-aesthetic-chill-acoustic-classical-lo-fi-playlist-cover-jGlDSM71rNM.jpg",
    songs: testSongs
    
)

var recPlaylist: Playlist = Playlist(
    id: 2,
    title: "daylist",
    cover_url: "https://storage.googleapis.com/pr-newsroom-wp/1/2023/09/Morning-1024x1024.png",
    songs: recs
    
)

var madeforyou: Playlist = Playlist(
    id: 3,
    title: "Made For You",
    cover_url: "https://pbs.twimg.com/media/F5bmzxXbYAETzsd.png:large",
    songs: recs
    
)
