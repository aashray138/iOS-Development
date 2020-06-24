//
//  ContentView.swift
//  AashrayCard
//
//  Created by aashray Shrestha on 6/23/20.
//  Copyright © 2020 Aashray Shrestha. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
     
        VStack {
            ZStack {
                Color(red: 0.45, green: 0.73, blue: 1.00, opacity: 0.55)
                    .edgesIgnoringSafeArea(.all)
                
    VStack {
        HStack {
            Image("LinekdIN")
            .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150.0, height: 150)
            .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 5)
            )
  
        }
                    
                    Text("Aashray Shrestha")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue)
                    
                    
                    Text("Software Engineer")
                        .foregroundColor(.blue)
                        .fontWeight(.bold)
                        .font(.system(size:20))
        
                Divider()
        InfoView(text:"+1 (571) 525-8277", imageName : "phone.fill" )
                
                Divider()
        
        InfoView2()
                }
             
            }
          
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    let text : String
    let imageName : String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(Color.white)
            .frame(height: 50)
            .padding()
            .overlay(HStack {
                Image(systemName: "phone.fill")
                    .foregroundColor(.blue)
                Text("+1 (571) 525-8277")
                    .foregroundColor(.black)
            })
    }
}

struct InfoView2: View {

    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(Color.white)
            .frame(height: 50)
            .padding()
            .overlay(HStack {
                Image(systemName: "envelope.fill")
                    .foregroundColor(.blue)
                Text("aashray.138@gmail.com")
                    .foregroundColor(.black)
            })
    }
}
