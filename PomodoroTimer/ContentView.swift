//
//  ContentView.swift
//  PomodoroTimer
//
//  Created by Arken Sarsenov on 09.12.2021.
//

import SwiftUI

struct ContentView: View {
    @State var progressValue: Float = 0.0
    var body: some View {
        TabView {
            Main().tabItem {
                MainButton()
            }
            Settings().tabItem {
                SettingsButton()
                Text("Settings").font(.system(size: 12)) .frame(width: 38, height: 12)
            }
            History().tabItem {
                HistoryButton()
            }
        }

       
    }
}

struct MainButton: View {
    var body: some View {
        VStack {
            Image("Main").frame(width: 90, height: 90).cornerRadius(30)
            Text("Main").font(.system(size: 16)).foregroundColor(.white)
        }
        
    }
}

struct SettingsButton: View {
    var body: some View {
        VStack{
            ZStack {
                Circle().fill(Color.white).frame(width: 30, height: 30)
                Image("Settings")
            }
        }
        Text("Settings").font(.system(size: 10)).foregroundColor(Color.white)
    }
}


struct HistoryButton: View {
    var body: some View {
        Color.black
        VStack {
            ZStack {
                Circle().foregroundColor(.white).frame(width: 30, height: 30).opacity(0.2)
                Image("History")
            }
            Text("History").font(.system(size: 10)).foregroundColor(Color.white)
        }
    }
}








struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//
