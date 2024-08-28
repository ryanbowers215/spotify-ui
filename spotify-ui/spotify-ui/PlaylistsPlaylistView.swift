//
//  PlaylistsPlaylistView.swift
//  spotify-ui
//
//  Created by Ryan Bowers on 8/27/24.
//

import SwiftUI

struct PlaylistsPlaylistView: View {
    let playlist: Playlist
    var body: some View {
        VStack{
            HStack{
                AsyncImage(url: URL(string: playlist.cover_url)) { image in
                   image.resizable()
                    } placeholder: {
                        Image("liked").resizable().frame(width: 80, height: 80)
                    }
                   .frame(width: 80, height: 80)
                VStack{
                    Text("\(playlist.title)").frame(maxWidth: 400, alignment: .leading).font(.title3)
                    HStack{
                        Image(systemName: "arrow.down.circle.fill").font(.system(size: 20)).foregroundColor(Color.spotgreen)
                    
                        Text("Playlist").frame(maxWidth: 400, alignment: .leading).font(.subheadline)
                    }
                }
                Spacer()
                
                Image(systemName: "ellipsis").font(.system(size: 30)).padding(.horizontal)
            }
        }
    }
}

#Preview {
    PlaylistsPlaylistView(playlist: testPlaylist)
}
