//
//  AllPlaylistsView.swift
//  spotify-ui
//
//  Created by Ryan Bowers on 8/27/24.
//

import SwiftUI

struct AllPlaylistsView: View {
    @State private var showSheet = false
    @State var playlists: [Playlist] = [testPlaylist]
    @State var cover_url: String = ""
    @State var playlist_title: String = ""
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(colors: [Color.gradientlight, Color.gradientdark], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                
                VStack{
                    
                    ZStack{
                        
                        HStack{
                            Image("pfp")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                          
                            Text("Your Library").bold().font(.title)
                            Spacer()
                            
                            
                            HStack{
                                    Image(systemName: "magnifyingglass").resizable().frame(width: 20, height: 20)
                                
                                Spacer()
                                Button {showSheet.toggle()} label : {
                                    Image(systemName: "plus").resizable().frame(width: 20, height: 20)
                                }
                                
                            }.frame(width: 70)
                            
                            
                        }.padding(.horizontal)
                        
                        
                    }.frame(height: 80)
                    
                    
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.accent)
                                    .frame(width: 90, height: 30)
                                Text("Playlists").font(.subheadline)
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.accent)
                                    .frame(width: 90, height: 30)
                                Text("Podcasts").font(.subheadline)
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.accent)
                                    .frame(width: 90, height: 30)
                                Text("Albums").font(.subheadline)
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.accent)
                                    .frame(width: 90, height: 30)
                                Text("Artists").font(.subheadline)
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.accent)
                                    .frame(width: 120, height: 30)
                                Text("Downloaded").font(.subheadline)
                            }
                        }
                        }.padding(.horizontal)
                    
                        .sheet(isPresented: $showSheet){
                            VStack{
                                Text("Give Your Playlist a Name").font(.title2).bold().foregroundColor(.white)
                                TextField("Enter the Playlist Title", text: $playlist_title).frame(height: 40).padding().foregroundColor(.white).font(.title3)
                                Text("Enter the Cover Image URL").font(.title2).bold().foregroundColor(.white)
                                TextField("Enter the Cover URL", text: $cover_url).frame(height: 40).padding().foregroundColor(.white).font(.title3)
                                
                                
                               
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 30).frame(height: 80).foregroundColor(.spotgreen)
                                        
                                        Button {
                                            createPlaylist()
                                            showSheet = false
                                        } label: {
                                            Text("Create").font(.title).bold()
                                        }
                                    
                                }
                            }.padding().frame(height: 600).presentationDetents([.medium]).ignoresSafeArea().background(.gradientdark)
                        }
                    
                    
                    
                    ScrollView(showsIndicators: false) {
                        HStack{
                            HStack{
                                Image(systemName: "arrow.up.arrow.down").resizable().frame(width: 15, height: 15)
                                Text("Recents").font(.subheadline)
                            }
                            Spacer()
                            Image(systemName: "square.grid.2x2").resizable().frame(width: 15, height: 15).bold()
                            
                            
                        }.padding(.horizontal).padding(.vertical, 3)
                        
                        VStack(){
                            ForEach(playlists) { playlist in
                                NavigationLink{
                                    PlaylistView(playlist: playlist)
                                } label: {PlaylistsPlaylistView(playlist: playlist)}
                            }
                        }.padding(.horizontal, 3)
                    }
                    
                    
                    HStack{
                        Spacer()
                        NavigationLink{HomeView()} label: {
                            VStack{
                                Image(systemName:"house").resizable().frame(width: 30, height: 30)
                                Text("Home")
                            }.foregroundColor(.gray).frame(width: 100)
                        }
                        Spacer()
                        NavigationLink{SearchView()} label: {
                            VStack{
                                Image(systemName:"magnifyingglass").resizable().frame(width: 30, height: 30)
                                Text("Search")
                            }
                        }.foregroundColor(.gray).frame(width: 100)

                        Spacer()
                        VStack{
                            Image(systemName:"book.pages.fill").resizable().frame(width: 30, height: 30)
                            Text("Your Library")
                        }.foregroundColor(.white).frame(width: 100)

                        Spacer()
                    }.padding(.horizontal)
                    
                  
                    
                    
                }.foregroundColor(.white)
                
            }
        }
    }
    
    private func createPlaylist() {
        let newPlaylist = Playlist(id: playlists.count + 1, title: playlist_title, cover_url: cover_url, songs: [])
            playlists.append(newPlaylist)
            // Reset the form fields
            playlist_title = ""
            cover_url = ""
        }
}

#Preview {
    AllPlaylistsView()
}
