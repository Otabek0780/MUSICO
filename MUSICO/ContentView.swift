//
//  ContentView.swift
//  MUSICO
//
//  Created by kim jong moon on 09/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var timer: CGFloat = 70
    @State var isPlaying = false
    
    var body: some View {
        
        ZStack{
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            VStack{
                
                HStack{
                    
                    Spacer()
                    Button(action: {
                        
                    },
                    label: {
                        ZStack{
                            Circle()
                                .frame(width: 50, height: 50)
                                .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                                .shadow(color: Color(#colorLiteral(red: 0.569602657, green: 0.569602657, blue: 0.569602657, alpha: 0.8463184932)), radius: 6, x: 6, y: 6)
                                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 6, x: -6, y: -6)
                            Image(systemName: "arrow.left")
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(Color(#colorLiteral(red: 0.5080526371, green: 0.3687520727, blue: 1, alpha: 1)))
                            
                        }
                    })
                    Spacer()
                    Text("Playing \(Image(systemName: "applelogo")) Now...")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color(#colorLiteral(red: 0.5080526371, green: 0.3687520727, blue: 1, alpha: 1)))
                        .padding(.leading,3)
                    Spacer()
                    Button(action: {
                        
                    },
                    label: {
                        ZStack{
                            Circle()
                                .frame(width: 50, height: 50)
                                .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                                .shadow(color: Color(#colorLiteral(red: 0.569602657, green: 0.569602657, blue: 0.569602657, alpha: 0.8463184932)), radius: 6, x: 6, y: 6)
                                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 6, x: -6, y: -6)
                            Image(systemName: "line.horizontal.3")
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(Color(#colorLiteral(red: 0.5080526371, green: 0.3687520727, blue: 1, alpha: 1)))
                            
                        }
                    })
                    Spacer()
                    
                    
                }
                
                Spacer()
                Image("img_player")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .padding(10)
                    .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .clipShape(Circle())
                    .shadow(color: Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)), radius: 10, x: 10, y: 15)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 15, x: -20, y: -20)
                Text("Fire Quick")
                    .fontWeight(.medium)
                    .font(.headline)
                    .padding(.top)
                Text("Follow me guys \(Text("americanboy_13tm").foregroundColor(.blue))")
                    .fontWeight(.light)
                    .font(.body)
                    .foregroundColor(.gray)
                    .padding(.all,5)
                
                ZStack(alignment: (.init(horizontal: .leading, vertical: .center)), content: {
                    Capsule()
                        .frame(width: UIScreen.main.bounds.width - 50, height: 7)
                        .foregroundColor(Color(#colorLiteral(red: 0.8642800828, green: 0.8642800828, blue: 0.8642800828, alpha: 0.8399507705)))
                    Capsule()
                        .frame(width: timer, height: 8, alignment: .leading)
                        .foregroundColor(Color(#colorLiteral(red: 0.5080526371, green: 0.3687520727, blue: 1, alpha: 1)))
                        .gesture(DragGesture().onChanged({(value) in
                            if value.location.x <= UIScreen.main.bounds.width - 50 && value.location.x >= 0{
                                self.timer = value.location.x
                            }
                        }))
                    
                })
                .padding(.top)
                
                VStack{

                    HStack{
                        
                        Spacer()
                        Button(action: {
                            
                        },
                        label: {
                            ZStack{
                                Circle()
                                    .frame(width: 70, height: 70)
                                    .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                                    .shadow(color: Color(#colorLiteral(red: 0.569602657, green: 0.569602657, blue: 0.569602657, alpha: 0.8463184932)), radius: 8, x: 8, y: 8)
                                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 8, x: -8, y: -8)
                                Image(systemName: "backward.fill")
                                    .font(.system(size: 18, weight: .bold))
                                    .foregroundColor(Color(#colorLiteral(red: 0.5080526371, green: 0.3687520727, blue: 1, alpha: 1)))
                                
                            }
                        })
                        Spacer()
                        
                        Button(action: {
                            self.isPlaying.toggle()
                        },
                        label: {
                            if self.isPlaying == true {
                                ZStack{
                                    Circle()
                                        .frame(width: 70, height: 70)
                                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                                        .shadow(color: Color(#colorLiteral(red: 0.569602657, green: 0.569602657, blue: 0.569602657, alpha: 0.8463184932)), radius: 8, x: 8, y: 8)
                                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 8, x: -8, y: -8)
                                    Image(systemName: "pause.fill")
                                        .font(.system(size: 18, weight: .bold))
                                        .foregroundColor(Color(#colorLiteral(red: 0.5080526371, green: 0.3687520727, blue: 1, alpha: 1)))
                                    
                                }
                            }else {
                                ZStack{
                                    Circle()
                                        .frame(width: 70, height: 70)
                                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                                        .shadow(color: Color(#colorLiteral(red: 0.569602657, green: 0.569602657, blue: 0.569602657, alpha: 0.8463184932)), radius: 8, x: 8, y: 8)
                                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 8, x: -8, y: -8)
                                    Image(systemName: "play.fill")
                                        .font(.system(size: 18, weight: .bold))
                                        .foregroundColor(Color(#colorLiteral(red: 0.5080526371, green: 0.3687520727, blue: 1, alpha: 1)))
                                    
                                }
                            }
                            
                        })
                        
                        Spacer()
                        Button(action: {
                            
                        },
                        label: {
                            ZStack{
                                Circle()
                                    .frame(width: 70, height: 70)
                                    .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                                    .shadow(color: Color(#colorLiteral(red: 0.569602657, green: 0.569602657, blue: 0.569602657, alpha: 0.8463184932)), radius: 8, x: 8, y: 8)
                                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 8, x: -8, y: -8)
                                Image(systemName: "forward.fill")
                                    .font(.system(size: 18, weight: .bold))
                                    .foregroundColor(Color(#colorLiteral(red: 0.5080526371, green: 0.3687520727, blue: 1, alpha: 1)))
                                
                            }
                        })
                        Spacer()
                        
                        
                    }
                    .padding(.top, 30)
                    
                }
            
                Spacer()
                
            }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
