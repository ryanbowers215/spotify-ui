//
//  ContentView.swift
//  spotify-ui
//
//  Created by Ryan Bowers on 4/4/24.
//

import SwiftUI

struct ContentView: View {
    let song: Song
    @State private var playtime: Double = 0.0
    @State private var isLiked: Bool = true
    @State private var isPlaying: Bool = false
    @State private var shuffled: Bool = false
    @State private var repeating: Int = 0
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        
        ZStack{
            LinearGradient(colors: [Color.accent, Color.gradientdark], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            VStack {
                HStack{
                    Button(action: {
                                    // Trigger the back action
                                    presentationMode.wrappedValue.dismiss()
                                }) {
                                    Image(systemName: "chevron.down")
                                        .font(.system(size: 25))
                                }
                    Spacer()
                    
                    Text("Liked Songs").fontWeight(.bold).font(.body)
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis").font(.system(size: 25))
                    
                }.padding(.horizontal, 20)
                
                Spacer()
                
                HStack{
                    AsyncImage(url: URL(string: song.cover_url)) { image in
                       image.resizable()
                        } placeholder: {
                    Image("liked").frame(width: 380, height: 380)
                        }
                       .frame(width: 380, height: 380)
                    
                }.padding()
                
                Spacer()
                
                HStack{
                    VStack{
                        Text("\(song.title)").frame(maxWidth: 400, alignment: .leading).font(.title2).bold()
                        Text("\(song.artist)").frame(maxWidth: 400, alignment: .leading).foregroundColor(Color.artist).font(.headline)
                    }
                    Spacer()
                    
                    Button(){isLiked = !isLiked} label: {
                        Image(systemName: isLiked ? "checkmark.circle.fill" : "suit.heart").font(.system(size: 30)).foregroundColor(isLiked ? Color.spotgreen : .white)
                    }}.padding()
                Spacer()
                
                HStack{
                    Slider(value: $playtime, in: 0...song.totaltime, step: 1).accentColor(.white).font(.body)
                }.padding(.horizontal)
                
                HStack{
                    Text("\(floor(playtime / 60).formatted(.number.precision(.fractionLength(0)))):\(String(format: "%02d",(Int(playtime) % 60)))").foregroundColor(Color.artist).padding(.vertical, -10)
                    
                    
                    Spacer()
                    Text("-\(floor((song.totaltime - playtime) / 60).formatted(.number.precision(.fractionLength(0)))):\(String(format: "%02d", Int(song.totaltime - playtime) % 60))").padding(.vertical, -10)
                }.font(.system(size: 12)).padding(.horizontal).foregroundColor(Color.artist)
                
                Spacer()
                
                HStack{
                    Button(){
                        shuffled = !shuffled
                    } label: {
                        Image(systemName: "shuffle").resizable().frame(width: 30, height: 30).foregroundColor(shuffled ? Color.spotgreen : .white)
                    }
                    Spacer()
                    Image(systemName: "backward.end.fill").resizable().frame(width: 30, height: 30)
                    Spacer()
                    
                    Button() {
                        isPlaying = !isPlaying
                    } label: {
                        Image(systemName:
                                isPlaying ? "pause.circle.fill" : "play.circle.fill").resizable().frame(width: 60, height: 60)
                    }
                    
                    
                    Spacer()
                    
                    
                    Image(systemName: "forward.end.fill").resizable().frame(width: 30, height: 30)
                    Spacer()
                    
                    Button() {
                        repeating += 1
                    } label : {
                        Image(systemName: (repeating % 3 != 2) ? "repeat" : "repeat.1" ).resizable().frame(width: 30, height: 30).foregroundColor(repeating % 3 == 0 ? .white : Color.spotgreen)
                        
                    }
                    
                }.padding(.horizontal, 40)
                
                Spacer()
                
                HStack{
                    
                    Image(systemName: "hifispeaker.2").resizable().frame(width: 30, height: 30)
                    
                    
                    
                    Spacer()
                    Image(systemName: "square.and.arrow.up").resizable().frame(width: 20, height: 30).padding(.horizontal, 25)
                    Image(systemName: "list.bullet.below.rectangle").resizable().frame(width: 20, height: 25)
                }.padding(.horizontal, 20)
                
            }
            .padding().foregroundColor(.white)
        }.navigationBarBackButtonHidden(true)
    }
}


#Preview {
    ContentView(song: testSongs[0])
}
