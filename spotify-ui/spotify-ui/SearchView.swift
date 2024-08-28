//
//  SearchView.swift
//  spotify-ui
//
//  Created by Ryan Bowers on 8/27/24.
//

import SwiftUI

struct SearchView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var text: String = ""
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color.gradientlight, Color.gradientdark], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack{
                HStack{
                    Image("pfp")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    
                    Text("Search").bold().font(.title)
                    Spacer()
                    
                    
                    HStack{
                        Image(systemName: "camera").resizable().frame(width: 40, height: 30)
                        
                    }.frame(width: 70)
                
                }.padding(.horizontal)
                
                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).frame(width: 350, height: 60)
                        
                        HStack{
                            Image(systemName: "magnifyingglass").resizable().frame(width: 30, height: 30).foregroundColor(.black).padding(.horizontal)
                            
                            TextField("What do you want to listen to?", text: $text).foregroundColor(.black).font(.subheadline)
                            
                            Spacer()
                        }.frame(width: 350, height: 60).padding(.horizontal)
                    }
                }
                
                ScrollView{
                    HStack{
                        Text("Start Browsing").frame(maxWidth: 400 ,alignment: .leading).font(.title2).bold()
                    }.padding()
                    
                    HStack{
                        
                        VStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 10).frame(width: 180, height: 75).foregroundColor(.pink)
                                Text("Music").font(.title3).bold().frame(maxWidth: 180, alignment: .leading).padding(.horizontal)
                            }
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 10).frame(width: 180, height: 75).foregroundColor(.darkblue)
                                Text("Audiobooks").font(.title3).bold().frame(maxWidth: 180, alignment: .leading).padding(.horizontal)
                            }
                        }.frame(height: 170)
                        Spacer()
                        VStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 10).frame(width: 180, height: 75).foregroundColor(.green)
                                Text("Podcasts").font(.title3).bold().frame(maxWidth: 180, alignment: .leading).padding(.horizontal)
                            }
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 10).frame(width: 180, height: 75).foregroundColor(.purple)
                                Text("Live Events").font(.title3).bold().frame(maxWidth: 180, alignment: .leading).padding(.horizontal)
                            }
                        }.frame(height: 170)
                        
                    }.frame(width: 380,height: 170).padding(.horizontal)
                    
                    HStack{
                        Text("Explore Your Genres").frame(maxWidth: 400 ,alignment: .leading).font(.title2).bold()
                    }.padding()
                    
                    HStack{
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 10).frame(width: 100, height: 175).foregroundColor(.blue)
                            VStack{
                                Spacer()
                                Text("#classical").font(.subheadline).bold()
                            }.padding()
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 10).frame(width: 100, height: 175).foregroundColor(.cyan)
                            VStack{
                                Spacer()
                                Text("#wistful").font(.subheadline).bold()
                            }.padding()
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 10).frame(width: 100, height: 175).foregroundColor(.mint)
                            VStack{
                                Spacer()
                                Text("#hyperpop").font(.subheadline).bold()
                            }.padding()
                        }
                        
                    }.frame(width: 380,height: 170).padding()
                    
                    HStack{
                        Text("Browse All").frame(maxWidth: 400 ,alignment: .leading).font(.title2).bold()
                    }.padding()
                    
                    HStack{
                        
                        VStack{
                            NavigationLink{PlaylistView(playlist: madeforyou)} label :{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10).frame(width: 180, height: 75).foregroundColor(.indigo)
                                    Text("Made For You").font(.title3).bold().frame(maxWidth: 180, alignment: .leading).padding(.horizontal)
                                }
                            }
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 10).frame(width: 180, height: 75).foregroundColor(.orange)
                                Text("New Releases").font(.title3).bold().frame(maxWidth: 180, alignment: .leading).padding(.horizontal)
                            }
                        }.frame(height: 170)
                        Spacer()
                        VStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 10).frame(width: 180, height: 75).foregroundColor(.green)
                                Text("Summer").font(.title3).bold().frame(maxWidth: 180, alignment: .leading).padding(.horizontal)
                            }
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 10).frame(width: 180, height: 75).foregroundColor(.red)
                                Text("Video").font(.title3).bold().frame(maxWidth: 180, alignment: .leading).padding(.horizontal)
                            }
                        }.frame(height: 170)
                        
                    }.frame(width: 380,height: 170).padding(.horizontal)
                }
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Image(systemName:"house").resizable().frame(width: 30, height: 30)
                        Text("Home")
                    }.foregroundColor(.gray).frame(width: 100)
                    Spacer()
                    VStack{
                        Image(systemName:"magnifyingglass.circle.fill").resizable().frame(width: 30, height: 30)
                        Text("Search")
                    }.foregroundColor(.white).frame(width: 100)

                    Spacer()
                    Button(action: {
                        // Trigger the back action
                        presentationMode.wrappedValue.dismiss()
                    }) {
                    VStack{
                        
                            Image(systemName:"book.pages").resizable().frame(width: 30, height: 30)
                            Text("Your Library")
                        }
                    }.foregroundColor(.gray).frame(width: 100)

                    Spacer()
                }.padding(.horizontal)
            }.padding(.horizontal).padding(.vertical, 3)
        }.foregroundColor(.white).navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SearchView()
}
