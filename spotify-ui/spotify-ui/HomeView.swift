//
//  HomeView.swift
//  spotify-ui
//
//  Created by Ryan Bowers on 8/27/24.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color.gradientlight, Color.gradientdark], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            VStack{
//                Tag Bar
                HStack{
                    Image("pfp")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            
                
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.spotgreen)
                                    .frame(width: 50, height: 30)
                                Text("All").font(.subheadline).foregroundColor(.gradientdark)
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.accent)
                                    .frame(width: 70, height: 30)
                                Text("Music").font(.subheadline)
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
                                    .frame(width: 100, height: 30)
                                Text("Audiobooks").font(.subheadline)
                            }
                        }
                    }
                }.padding(.horizontal)
                
                ScrollView{
                    //                Playlists
                    HStack{
                        
                        VStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 10).frame(width: 180, height: 60)
                                HStack{
                                    Image("liked").resizable()
                                        .scaledToFit().frame(width: 60, height: 60)
                                    Text("Liked Songs").foregroundColor(.white).font(.system(size: 10)).bold()
                                    Spacer()
                                    Image(systemName: "ellipsis").foregroundColor(.spotgreen).padding(.horizontal).frame(width: 25)
                                }.frame(width: 180, height: 60)
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius: 10).frame(width: 180, height: 60)
                                HStack{
                                    Image("pop").resizable()
                                        .scaledToFit().frame(width: 60, height: 60)
                                    Text("Pop Mix").foregroundColor(.white).font(.system(size: 10)).bold()
                                    Spacer()
                                    
                                }.frame(width: 180, height: 60)
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius: 10).frame(width: 180, height: 60)
                                HStack{
                                    Image("indie").resizable()
                                        .scaledToFit().frame(width: 60, height: 60)
                                    Text("Indie Mix").foregroundColor(.white).font(.system(size: 10)).bold()
                                    Spacer()
                                    
                                }.frame(width: 180, height: 60)
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius: 10).frame(width: 180, height: 60)
                                HStack{
                                    Image("hmi").resizable()
                                        .scaledToFit().frame(width: 60, height: 60)
                                    Text("Hacked My Instagram").foregroundColor(.white).font(.system(size: 10)).bold()
                                    Spacer()
                                    
                                }.frame(width: 180, height: 60)
                            }
                        }.foregroundColor(.accent)
                        VStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 10).frame(width: 180, height: 60)
                                HStack{
                                    Image("zb").resizable()
                                        .scaledToFit().frame(width: 60, height: 60)
                                    Text("Zach Bryan Mix").foregroundColor(.white).font(.system(size: 10)).bold()
                                    Spacer()
                                    
                                }.frame(width: 180, height: 60)
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius: 10).frame(width: 180, height: 60)
                                HStack{
                                    Image("ravyn").resizable()
                                        .scaledToFit().frame(width: 60, height: 60)
                                    Text("Ravyn Lenae Mix").foregroundColor(.white).font(.system(size: 10)).bold()
                                    Spacer()
                                    
                                }.frame(width: 180, height: 60)
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius: 10).frame(width: 180, height: 60)
                                HStack{
                                    Image("2021").resizable()
                                        .scaledToFit().frame(width: 60, height: 60)
                                    Text("Your Top Songs 2021").foregroundColor(.white).font(.system(size: 10)).bold()
                                    Spacer()
                                    
                                }.frame(width: 180, height: 60)
                            }
                            NavigationLink{PlaylistView(playlist: recPlaylist)} label :{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10).frame(width: 180, height: 60)
                                    HStack{
                                        Image("daylist").resizable()
                                            .scaledToFit().frame(width: 60, height: 60)
                                        Text("daylist").foregroundColor(.white).font(.system(size: 10)).bold()
                                        Spacer()
                                        
                                    }.frame(width: 180, height: 60)
                                }
                            }
                        }.foregroundColor(.accent)
                    }.padding()
                    
                    HStack{
                        Text("Jump Back In").frame(maxWidth: 400 ,alignment: .leading).font(.title2).bold()
                    }.padding()
                    
                    HStack{
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                VStack{
                                    Image("2021").resizable().frame(width: 125, height: 125)
                                    Text("Your Top Songs 2021").font(.footnote)
                                }
                                
                                NavigationLink{PlaylistView(playlist: recPlaylist)} label :{
                                    VStack{
                                        Image("daylist").resizable().frame(width: 125, height: 125)
                                        Text("Classical Violin tue...").font(.footnote)
                                    }
                                }
                                
                                VStack{
                                    Image("hmi").resizable().frame(width: 125, height: 125)
                                    Text("Hacked My Instagram").font(.footnote)
                                }
                                
                                VStack{
                                    Image("liked").resizable().frame(width: 125, height: 125)
                                    Text("Liked Songs").font(.footnote)
                                }
                            }
                        }
                    }.padding(.horizontal)
                    
                    
                    HStack{
                        Text("Your Top Mixes").frame(maxWidth: 400 ,alignment: .leading).font(.title2).bold()
                    }.padding()
                    
                    HStack{
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                VStack{
                                    Image("ravyn").resizable().frame(width: 125, height: 125)
                                    Text("Ravyn Lenae and more").font(.system(size: 8))
                                }
                                
                                VStack{
                                    Image("zb").resizable().frame(width: 125, height: 125)
                                    Text("Zach Bryan and more").font(.system(size: 8))
                                }
                                
                                VStack{
                                    Image("indie").resizable().frame(width: 125, height: 125)
                                    Text("MGMT and more").font(.system(size: 8))
                                }
                                
                                VStack{
                                    Image("pop").resizable().frame(width: 125, height: 125)
                                    Text("Gracie Abrams and more").font(.system(size: 8))
                                }
                                
                        
                            }
                        }
                    }.padding(.horizontal)
                    
                    
                    Spacer()
                }
                
                HStack{
                    Spacer()
                    
                        VStack{
                            Image(systemName:"house.fill").resizable().frame(width: 30, height: 30)
                            Text("Home")
                        }.foregroundColor(.white).frame(width: 100)
                    
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
                        }.foregroundColor(.gray).frame(width: 100)
                    }

                    Spacer()
                }.padding(.horizontal)
            }.foregroundColor(.white).navigationBarBackButtonHidden(true)
            
          
        }
    }
}

#Preview {
    HomeView()
}
