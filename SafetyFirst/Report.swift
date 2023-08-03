//
//  Report.swift
//  SafetyFirst
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct Report: View {
    @State var text = ""
    @State var textt = ""
    @State private var selection = ""
    let choices = ["Select", "Leering", "Honking", "Whistling", "Vulgar gestures", "Sexually explicit comments"]
    var body: some View {
        NavigationStack {
            ZStack {
                Image("Background 5")
                    .resizable(resizingMode: .stretch)
                    .ignoresSafeArea()
                
                
                VStack {
                    HStack {
                        NavigationLink(destination: Map()) {
                            Image("ARROWW")
                                .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                                .frame(width: 50.0, height: 68.0)
                        }
                        Spacer()

                        
                    }
                    Spacer()
                    Picker("Select a paint color", selection: $selection) {
                                    ForEach(choices, id: \.self) {
                                        Text($0)
                                    }
                                }
                                .pickerStyle(.menu)
                                .position(x: 180, y: 278)
                                .accentColor(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/)
                    
                    TextField("Start typying here...", text: $text, axis: .vertical)
                        .frame(width: 290.0, height: 10)
                        .multilineTextAlignment(.leading)
                        .padding(.vertical, 70.0)
                        .lineLimit(4, reservesSpace: true)
                    
                    TextField("Start typying here...", text: $textt, axis: .vertical)
                        .frame(width: 290.0, height: 9)
                        .multilineTextAlignment(.leading)
                        .padding(.vertical, 70.0)
                        .lineLimit(4, reservesSpace: true)

                    NavigationLink(destination: Map()) {
                        Text("Submit")
                            .fontWeight(.bold)
                            .bold()
                            .frame(width: 73.0, height: 15)
                            .foregroundColor(.red)
                            .background(Color.white)
                            .cornerRadius(15.0)
                    }
                }
                .padding(.top)
                .padding(.leading)
            
            }

        }
    }
}

struct Report_Previews: PreviewProvider {
    static var previews: some View {
        Report()
    }
}
