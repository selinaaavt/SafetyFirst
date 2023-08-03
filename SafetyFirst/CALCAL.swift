//
//  CALCAL.swift
//  SafetyFirst
//
//  Created by scholar on 8/2/23.
//

import SwiftUI
struct Event: Identifiable {
  let id = UUID()
  let date: Date
  let description: String
}
struct CALCAL: View {
    @State private var selectedDate = Date()
    @State private var events: [Event] = []
    @State private var eventDescription: String = ""
    
    
    
    private var formattedSelectedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        return dateFormatter.string(from: selectedDate)
    }
    private func addEvent() {
        events.append(Event(date: selectedDate, description: eventDescription))
        eventDescription = ""
    }
    var body: some View {
        NavigationStack {
            ZStack {
                Image("Background4")
                    .resizable(resizingMode: .stretch)
                    .ignoresSafeArea()
                VStack {
                    DatePicker(
                        "Select a date",
                        selection: $selectedDate,
                        displayedComponents: [.date]
                    )
                    .frame(width: 330, height: 0)
                    .position(x: 190, y: 260).datePickerStyle(GraphicalDatePickerStyle())
                        .padding(.trailing)
                    
//                        VStack {
                            Text("Add Event")
                                .font(.headline)
                                .padding(.top, 400.0)
                            TextField("Event description", text: $eventDescription)
                                .padding(.horizontal)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            Button("Save Event") {
                                addEvent()
                            }
                            .padding()
                            
                            ScrollView {
                                ForEach(events) { event in
                                    Text("\(event.date, formatter: DateFormatter.monthDay): \(event.description)")
                                        .font(.body)
                                    
                                }
                            }
                            
//                        }
                        
                    
                    
                    Divider()
                    
                    
                    VStack(alignment: .leading, spacing: 10) {
                       
                        
                            HStack {
                            
                                    Image("Home")
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
                                
                                    Image("calcolor")
                                        .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                                        .frame(width: 75.0, height: 50.0)
                                
                                Spacer()
                                NavigationLink(destination: Map()) {
                                    Image("Map")
                                        .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                                        .frame(width: 50.0, height: 50.0)
                                    
                                }
                                Spacer()
                            

                            }
                        
                        }
                        .padding(.horizontal)
                        .padding(.bottom)
                    }
                }
            }
        }
    }
extension DateFormatter {
  static let monthDay: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "MMM d"
    return formatter
  }()
}
struct CustomCalendarView_Previews: PreviewProvider {
  static var previews: some View {
    CALCAL()
  }
}







