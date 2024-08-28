//
//  NewPlaylist.swift
//  spotify-ui
//
//  Created by Ryan Bowers on 8/27/24.
//

import SwiftUI

struct NewPlaylist: View {
    @State var cover_url: String = ""
    @State var playlist_title: String = ""
    var body: some View {
        
        VStack{
            Text("Give Your Playlist a Name").font(.title2).bold().foregroundColor(.white)
            TextField("Enter the Playlist Title", text: $playlist_title).frame(height: 40).padding().foregroundColor(.white)
            Text("Enter the Cover Image URL").font(.title2).bold().foregroundColor(.white)
            TextField("Enter the Cover URL", text: $cover_url).frame(height: 40).padding().foregroundColor(.white)
            
            ZStack{
                RoundedRectangle(cornerRadius: 30).frame(height: 80).foregroundColor(.spotgreen)
                
                Text("Create").font(.title)
            }
        }.padding().border(.spotgreen).background(.gradientdark)
        
        
    }
}

#Preview {
    NewPlaylist()
}
