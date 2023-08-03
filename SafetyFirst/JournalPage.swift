//
//  JournalPage.swift
//  SafetyFirst
//
//  Created by scholar on 7/31/23.
//

import SwiftUI

struct JournalPage: View {
    @State var text = ""
    var body: some View {
        NavigationStack {
        ZStack {
            Image("Background 1")
                .resizable(resizingMode: .stretch)
                .ignoresSafeArea()
            RoundedRectangle(cornerRadius: 20)
                .padding(.top, 120.0)
                .frame(width: 310, height: 480)
                .foregroundColor(.white)
            TextField("Start typying here...", text: $text, axis: .vertical)
                .frame(width: 290.0, height: 200.0)
                .multilineTextAlignment(.leading)
                .padding(.vertical, 100.0)
                .lineLimit(10, reservesSpace: true)
            VStack {
                Spacer()
                HStack {
                    NavigationLink(destination: ContentView()) {
                        Image("Home")
                            .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                            .frame(width: 50.0, height: 50.0)
                    }
                    Spacer()
                    
                    
                    Image("pencilcolor")
                        .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                        .frame(width: 65.0, height: 55.0)
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

struct JournalPage_Previews: PreviewProvider {
    static var previews: some View {
        JournalPage()
    }
}
