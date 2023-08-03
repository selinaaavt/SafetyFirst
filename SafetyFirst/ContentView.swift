//
//  ContentView.swift
//  SafetyFirst
//
//  Created by scholar on 7/31/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {

            ZStack {
                Image("Background")
                    .resizable(resizingMode: .stretch)
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    HStack {
                            Image("homecolor")
                                .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                                .frame(width: 50.0, height: 50.0)
                    
                        Spacer()
                        NavigationLink(destination: JournalPage()) {
                            Image("Pencil")
                                .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                                .frame(width: 65.0, height: 55.0)
                        }
                        Spacer()
                        NavigationLink(destination: ResourcesPag3()) {
                            Image("Paper")
                                .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                                .frame(width: 80.0, height: 70.0)
                        }
                        Spacer()
                        NavigationLink(destination: CALCAL()) {
                            Image("Calender")
                                .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                                .frame(width: 75.0, height: 50.0)
                        }
                        Spacer()
                        NavigationLink(destination: Map()) {
                            Image("Map")
                                .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                                .frame(width: 50.0, height: 50.0)
                            
                        }
                        Spacer()
                    }
                    .padding(.top)
                    .padding(.leading)



                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
