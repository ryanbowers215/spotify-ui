//
//  PlaylistView.swift
//  spotify-ui
//
//  Created by Ryan Bowers on 8/27/24.
//

import SwiftUI

struct PlaylistView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var shuffled: Bool = false
    @State private var playing: Bool = false
    @State private var showSheet: Bool = false
    @State var playlist: Playlist
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color.gradientlight, Color.gradientdark], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            
            VStack{
                ZStack{
                    LinearGradient(colors: [Color.darkblue, Color.gradientdark], startPoint: .top, endPoint: .center).ignoresSafeArea()
                    
                    ScrollView {
                        HStack{
                      
                                
                                VStack{
                                    HStack{
                                        VStack{
                                            
                                            Button(action: {
                                                // Trigger the back action
                                                presentationMode.wrappedValue.dismiss()
                                            }) {
                                                Image(systemName: "chevron.left")
                                                    .font(.system(size: 25))
                                            }
                                            Spacer()
                                            
                                        }
                                        Spacer()
                                        
                                        AsyncImage(url: URL(string: playlist.cover_url)) { image in
                                           image.resizable()
                                            } placeholder: {
                                                Image("liked").resizable().frame(width: 250, height: 250)
                                            }
                                           .frame(width: 250, height: 250)
                                                                                                                
                                        Spacer()
                                        
                                        Spacer()
                                    }
                                    
                                    .sheet(isPresented: $showSheet){
                                        VStack{
                                            Text("Add a Song to this Playlist!").font(.title2).bold().foregroundColor(.white)
                                            Text(" ")
                                            Text("For You").font(.subheadline).bold().foregroundColor(.white)
                                            VStack{
                                                ForEach(recs) { song in
                                                    Button {
                                                        playlist.songs.append(song)
                                                        showSheet = false
                                                    } label: {
                                                        PlaylistSongView(song: song)
                                                    }
                                                }
                                            }
                                            
                                            
                                           
                                                
                                        }.padding().frame(height: 600).presentationDetents([.medium]).ignoresSafeArea().background(.gradientdark)
                                    }
                                    
                                    HStack{
                                        VStack{
                                            Text("\(playlist.title)").frame(maxWidth: 400, alignment: .leading).font(.title).bold()
                                            
                                            
                                            HStack{
                                                Image("pfp")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 30, height: 30)
                                                    .clipShape(Circle())
                                                
                                                Text("Ryan").frame(maxWidth: 400, alignment: .leading).font(.title3)
                                                
                                            }
                                            
                                            HStack{
                                                HStack{
                                                    Image(systemName: "arrow.down.circle.fill").font(.system(size: 30)).foregroundColor(Color.spotgreen)
                                                    Spacer()
                                                    Button {showSheet = true} label : {
                                                        Image(systemName: "plus").font(.system(size: 30)).foregroundColor(.gray)
                                                    }
                                                    Spacer()
                                                    Image(systemName: "ellipsis").font(.system(size: 30)).foregroundColor(.gray)
                                                }.frame(width: 150)
                                                
                                                Spacer()
                                                
                                                HStack{
                                                    Button(){
                                                        shuffled = !shuffled
                                                    } label: {
                                                        Image(systemName: "shuffle").resizable().frame(width: 30, height: 30).foregroundColor(shuffled ? Color.spotgreen : .gray)
                                                    }
                                                    Spacer()
                                                    Button() {
                                                        playing = !playing
                                                    } label: {
                                                        Image(systemName:
                                                                playing ? "pause.circle.fill" : "play.circle.fill").resizable().frame(width: 60, height: 60).foregroundColor(.spotgreen)
                                                    }
                                                }.frame(width: 110)
                                                
                                            }
                                        }
                                    }
                                    
                                }.padding(.horizontal)
                            .frame(height: 400).foregroundColor(.white)
                        }
                        
                        VStack(){
                            ForEach(playlist.songs) { song in
                                NavigationLink{ContentView(song: song)} label: {
                                    PlaylistSongView(song: song)
                                }
                            }
                            
                        }.padding()
                        
                        
                        
                        
                        
                    }.foregroundColor(.white)
                    
                    
                }
                HStack{
                    Spacer()
                    VStack{
                        Image(systemName:"house").resizable().frame(width: 30, height: 30)
                        Text("Home")
                    }.foregroundColor(.gray).frame(width: 100)
                    Spacer()
                    NavigationLink{SearchView()} label: {
                        VStack{
                            Image(systemName:"magnifyingglass").resizable().frame(width: 30, height: 30)
                            Text("Search")
                        }
                    }.foregroundColor(.gray).frame(width: 100)
                    
                    Spacer()
                    Button(action: {
                        // Trigger the back action
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        VStack{
                            Image(systemName:"book.pages").resizable().frame(width: 30, height: 30)
                            Text("Your Library")
                        }.foregroundColor(.white).frame(width: 100)
                    }
                    
                    Spacer()
                }.padding(.horizontal)
            }
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    PlaylistView(playlist: testPlaylist)
}
