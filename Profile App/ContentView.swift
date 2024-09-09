//
//  ContentView.swift
//  Profile App
//
//  Created by Jerry Joy on 2024-09-09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background").resizable().edgesIgnoringSafeArea(.all) // to remove the notches
            VStack(alignment: .center){
                Spacer()
                VStack(alignment: .center, spacing: 20){
                    Image("myImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180,
                               alignment: .top)
                        .clipShape(Circle())
                        .shadow(color: .pink, radius: 5, x: 5, y: 5)
                    Text("Jerry Joy")
                        .font(.system(size: 30))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white) // deprecated
                        .font(.system(.largeTitle))
                        .shadow(radius: 5)
                    Text("IOS | Front End Developer")
                        .foregroundStyle(.white)
                        .font(.body)
                    HStack(spacing: 40) {
                        Image(systemName: "heart.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "network")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "message.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "phone.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    .foregroundStyle(.white)
                    .frame(width: 250, height: 50, alignment: .center)
                    .shadow(color: .pink, radius: 5, y: 8)
                }
                .padding()
                Spacer()
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 30){
                    RoundedRectangle(cornerRadius: 120)
                        .frame(width: 200, height: 50, alignment: .center)
                        .foregroundStyle(.white)
                        .shadow(color: .pink, radius: 8, y: 8)
                        .overlay(Text("Follow")
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .foregroundStyle(.pink)
                        )
                    HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 60) {
                        VStack(){
                            Text("222")
                                .font(.title)
                                .foregroundStyle(.pink)
                            Text("Appretiations")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        VStack(){
                            Text("222")
                                .font(.title)
                                .foregroundStyle(.pink)
                            Text("Appretiations")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        VStack(){
                            Text("222")
                                .font(.title)
                                .foregroundStyle(.pink)
                            Text("Appretiations")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                    }
                    Text("About Me")
                        .font(.system(size: 30)) // size
                        .font(.system(.largeTitle)) // default
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("I am a iOS Developer. Welcome to my IOS Course, I hope you enjoy my Course.")
                        .font(.body)
                        .foregroundStyle(.black)
                        .multilineTextAlignment(.center)
                        .lineLimit(4)
                        .opacity(0.7)
                        .padding(.all)
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
