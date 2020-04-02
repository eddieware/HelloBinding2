//
//  ContentView.swift
//  HelloBinding2
//
//  Created by EDUARDO MEJIA on 02/04/20.
//  Copyright © 2020 EDDIEWARE. All rights reserved.

//TWO Way Binding

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    private func printName(){
        print(self.name)
    }
    
    var body: some View {
        VStack{
            Text(name)
            TextField("Enter your Name", text: $name) //el place holder Enter name en text se guarda lo que escribimos $name y se lo pasa a name normal y se renderiza
            .padding(12)
            Button(action: printName){
                Text("Show Name Value")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
