

// ExerciseView Modigied
//  ExerciseView.swift
//  Chapter10
//
//  Created by Student Account on 8/10/23.
//

import Foundation

import SwiftUI
struct ExerciseView: View {
    @State var message = ""
    var body: some View {
        VStack {
            Text(message)
                .padding()
            
            Link("Click here to go to Apple.com", destination: URL(string: "https://www.apple.com")!)
                           .padding()
                       
            Menu("Options") {
                Button("Open ", action: openFile)
                Button("Find", action: findFile)
                Button("Delete...", action: deleteFile)
                Menu("Submenu") {
                    Button("Copy Format", action: copyFormat)
                    Button("Paste Format", action: pasteFormat)
                }
            }
            Spacer()
        }
    }
    func openFile() {
        message = "Open chosen"
    }
    func findFile() {
        message = "Find chosen"
    }
    func deleteFile() {
        message = "Delete chosen"
    }
    func copyFormat() {
        message = "Copy format chosen"
    }
    func pasteFormat() {
        message = "Paste format chosen"
    }
}
struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
