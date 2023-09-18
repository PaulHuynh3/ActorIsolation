//
//  ContentView.swift
//  Actor Isolation
//
//  Created by Paul Huynh on 2023-09-18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .onAppear {
                    print("These are the same: \(Teacher.compare(teacher1, teacher2))")
                    
                    var teachers: [Teacher: [Subject]] = [:]

                    teachers[teacher1] = [
                        Subject(title: "Maths"),
                        Subject(title: "English")
                    ]

                    teachers[teacher2] = [
                        Subject(title: "P.E"),
                        Subject(title: "Geography")
                    ]
                  
                    let teacher1Subjects = teachers[teacher1]?
                        .compactMap { $0.title }
                        .joined(separator: ",")
                    
                    if let subjects = teacher1Subjects {
                        print("Teacher 1 teaches: \(subjects)")
                    }
                    
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
