//
//  PlaylistSongView.swift
//  spotify-ui
//
//  Created by Ryan Bowers on 8/27/24.
//

import SwiftUI

struct PlaylistSongView: View {
    let song: Song
    var body: some View {
        VStack{
            HStack{
                AsyncImage(url: URL(string: song.cover_url)) { image in
                   image.resizable()
                    } placeholder: {
                Image("liked")
                    }
                   .frame(width: 50, height: 50)
                VStack{
                    Text("\(song.title)").frame(maxWidth: 400, alignment: .leading)
                    HStack{
                        Image(systemName: "arrow.down.circle.fill").font(.system(size: 20)).foregroundColor(Color.spotgreen)
                    
                        Text("\(song.artist)").frame(maxWidth: 400, alignment: .leading).font(.subheadline)
                    }
                }
                Spacer()
                
                Image(systemName: "ellipsis").font(.system(size: 20)).padding(.horizontal)
            }
        }
    }
}

#Preview {
    PlaylistSongView(song: testSongs[0])
}
