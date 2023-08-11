//TextEditorView Modifier
//  TextEditorView.swift
//  Chapter10
//
//  Created by Student Account on 8/11/23.
//

import SwiftUI

struct TextEditorView: View {
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            Menu("Options") {
                Button("Find", action: findAction)
                Button("Print", action: printAction)
                
                Menu("File") {
                    Button("Save", action: saveAction)
                    Button("Save As", action: saveAsAction)
                    Button("Delete File", action: deleteAction)
                }
            }
            
            TextEditor(text: $text)
                .border(Color.gray)
                .padding()
        }
    }
    
    func findAction() {
        print("Find option selected")
    }
    
    func printAction() {
        print("Print option selected")
    }
    
    func saveAction() {
        print("Save option selected")
    }
    
    func saveAsAction() {
        print("Save As option selected")
    }
    
    func deleteAction() {
        print("Delete File option selected")
    }
}

struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorView()
    }
}
