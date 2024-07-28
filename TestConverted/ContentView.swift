//
//  ContentView.swift
//  TestConverted
//
//  Created by 津本拓也 on 2024/07/28.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: ViewModel
    @State var text: String = ""
    @State var result: String = ""
    
    var body: some View {
        VStack {
            TextField("money imput", text: $text)
        }
        Button(action: {
            result = viewModel.caluclation(money: text)
        }, label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
        })
        Text("\(result)")
        .padding()
    }
}
