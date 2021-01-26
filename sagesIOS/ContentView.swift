//
//  ContentView.swift
//  sagesIOS
//
//  Created by Nikhel Krishna on 1/25/21.
//

import SwiftUI
import UIKit

func validate() {}
struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isEditing = false
    var body: some View {
        

        VStack(alignment: .leading){
            Text("Email or Username")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
                .padding()
            
            TextField(
                    "",
                     text: $username
                ) { isEditing in
                    self.isEditing = isEditing
                } onCommit: {
                    print("hi")
                }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
                .autocapitalization(.none)
                .disableAutocorrection(true)
            
            
            
  
            
            Text("Password")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
                .padding()
            
            SecureField(
                    "",
                     text: $password
                )
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
                .autocapitalization(.none)
                .disableAutocorrection(true)
                
            
            Button(action: validate) {
                Text("Sign in")
            }
            .foregroundColor(.black)
            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
            .padding()
            .buttonStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Button Style@*/DefaultButtonStyle()/*@END_MENU_TOKEN@*/)
        
            
            
        }
    }
}




struct ContentView_Previews: PreviewProvider{
    static var previews: some View {
        ContentView()
    
}
}
