//
//  History.swift
//  PomodoroTimer
//
//  Created by Arken Sarsenov on 10.12.2021.
//

import SwiftUI

struct History: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack(){
                Text("History").font(.system(size: 17)).fontWeight(.bold).frame(width: 130, height: 22).foregroundColor(.white)
                Spacer()
                Group{
                    HStack {
                    Text("21.11.21").font(.system(size: 17)).fontWeight(.bold).frame(width: 130, height: 22, alignment: .leading).foregroundColor(.white)
                }
                HStack(spacing: 200) {
                    Text("Focus Time").font(.system(size: 17)).frame(width: 100, height: 22).foregroundColor(.white)
                    Text("5:00").font(.system(size: 17)).frame(width: 47, height: 22).foregroundColor(.white)
                }.padding()
                Divider().background(Color.white)
                HStack(spacing: 200) {
                    Text("Break time").font(.system(size: 17)).frame(width: 100, height: 22).foregroundColor(.white)
                    Text("5:00").font(.system(size: 17)).frame(width: 47, height: 22).foregroundColor(.white)
                }.padding()
                Divider().background(Color.white)
                HStack(spacing: 200) {
                    Text("Sessions").font(.system(size: 17)).frame(width: 100, height: 22).foregroundColor(.white)
                    Text("5:00").font(.system(size: 17)).frame(width: 47, height: 22).foregroundColor(.white)
                }.padding()
                }
                Group{
                HStack {
                    Text("21.11.21").font(.system(size: 17)).fontWeight(.bold).frame(width: 130, height: 22).foregroundColor(.white)
                }
                HStack(spacing: 200) {
                    Text("Focus Time").font(.system(size: 17)).frame(width: 100, height: 22).foregroundColor(.white)
                    Text("5:00").font(.system(size: 17)).frame(width: 47, height: 22).foregroundColor(.white)
                }.padding()
                Divider().background(Color.white)
                HStack(spacing: 200) {
                    Text("Break time").font(.system(size: 17)).frame(width: 100, height: 22).foregroundColor(.white)
                    Text("5:00").font(.system(size: 17)).frame(width: 47, height: 22).foregroundColor(.white)
                }.padding()
                Divider().background(Color.white)
                HStack(spacing: 200) {
                    Text("Sessions").font(.system(size: 17)).frame(width: 100, height: 22).foregroundColor(.white)
                    Text("5:00").font(.system(size: 17)).frame(width: 47, height: 22).foregroundColor(.white)
                }.padding()
                }
                Group{
                HStack {
                    Text("21.11.21").font(.system(size: 17)).fontWeight(.bold).frame(width: 130, height: 22).foregroundColor(.white)
                }
                HStack(spacing: 200) {
                    Text("Focus Time").font(.system(size: 17)).frame(width: 100, height: 22).foregroundColor(.white)
                    Text("5:00").font(.system(size: 17)).frame(width: 47, height: 22).foregroundColor(.white)
                }.padding()
                Divider().background(Color.white)
                HStack(spacing: 200) {
                    Text("Break time").font(.system(size: 17)).frame(width: 100, height: 22).foregroundColor(.white)
                    Text("5:00").font(.system(size: 17)).frame(width: 47, height: 22).foregroundColor(.white)
                }.padding()
                Divider().background(Color.white)
                HStack(spacing: 200) {
                    Text("Sessions").font(.system(size: 17)).frame(width: 100, height: 22).foregroundColor(.white)
                    Text("5:00").font(.system(size: 17)).frame(width: 47, height: 22).foregroundColor(.white)
                }.padding()
                }
                Divider().background(Color.white)
                Spacer()
                
                }
        }
        }
    }

struct History_Previews: PreviewProvider {
    static var previews: some View {
        History()
    }
}
