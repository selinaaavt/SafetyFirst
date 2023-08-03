//
//  ResourcesPag.swift
//  SafetyFirst
//
//  Created by scholar on 7/31/23.
//

import SwiftUI

struct ResourcesPag3: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("Background3")
                    .resizable(resizingMode: .stretch)
                    .ignoresSafeArea()
                
                Link("Purchase", destination: URL(string: "https://www.amazon.com/SABRE-Pepper-Spray-Quick-Release/dp/B000UVTDLG/ref=zg_bs_g_3222129011_sccl_1/132-6157398-1149414?th=1")!)
                    .fontWeight(.bold)
                    .bold()
                    .frame(width: 83.0, height: 22)
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(15.0)
                    .position(x: 300, y: 157)
                
                Link("Purchase", destination: URL(string: "https://www.amazon.com/Personal-KOSIN-Security-Keychain-Emergency/dp/B07DMT8SLQ/ref=sr_1_3?keywords=sound+alarm&qid=1690983998&sr=8-3")!)
                    .fontWeight(.bold)
                    .bold()
                    .frame(width: 83.0, height: 22)
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(15.0)
                    .position(x: 300, y: 184)
                
                Link("Purchase", destination: URL(string: "https://www.apple.com")!)
                    .fontWeight(.bold)
                    .bold()
                    .frame(width: 83.0, height: 22)
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(15.0)
                    .position(x: 300, y: 211)
                
                
                Link("Click me", destination: URL(string: "https://plan-international.org/girls-get-equal/how-to-handle-catcallers/#:~:text=When%20in%20doubt%2C%20just%20ignore,feel%20bad%20ignoring%20street%20harassment.")!)
                    .fontWeight(.bold)
                    .bold()
                    .frame(width: 83.0, height: 22)
                    .foregroundColor(.red)
                    .background(Color.white)
                    .cornerRadius(15.0)
                    .position(x: 313, y: 520)
                
                Link("Click me", destination: URL(string: "https://blog.joinfightcamp.com/training/self-defense-5-effective-moves-for-beginners/")!)
                    .fontWeight(.bold)
                    .bold()
                    .frame(width: 83.0, height: 22)
                    .foregroundColor(.red)
                    .background(Color.white)
                    .cornerRadius(15.0)
                    .position(x: 313, y: 548)
                
                Link("Click me", destination: URL(string: "https://everydayfeminism.com/2015/09/self-care-street-harassment/")!)
                    .fontWeight(.bold)
                    .bold()
                    .frame(width: 83.0, height: 22)
                    .foregroundColor(.red)
                    .background(Color.white)
                    .cornerRadius(15.0)
                    .position(x: 313, y: 575)
                
                VStack {
                    Spacer()
                    
                    HStack {
                        NavigationLink(destination: ContentView()) {
                            Image("Home")
                                .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                                .frame(width: 50.0, height: 50.0)
                        }
                        Spacer()
                        
                        NavigationLink(destination: JournalPage()) {
                            Image("Pencil")
                                .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                                .frame(width: 65.0, height: 55.0)
                        }
                        Spacer()
                        
                        Image("resourcecolor")
                            .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                            .frame(width: 80.0, height: 70.0)
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

    
    struct ResourcesPag_Previews: PreviewProvider {
        static var previews: some View {
            ResourcesPag3()
        }
    }
}
