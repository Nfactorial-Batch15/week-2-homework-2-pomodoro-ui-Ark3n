//
//  Main.swift
//  PomodoroTimer
//
//  Created by Arken Sarsenov on 10.12.2021.
//

import SwiftUI

struct Main: View {
    @State var progressValue: Float = 0.0
    var body: some View {
        ZStack {
            VStack(spacing: 60) {
                FocusCategory()
                ZStack {
                    ProgressBar(progress: self.$progressValue).frame(width: 248, height: 248).padding(20).onAppear() {
                        self.progressValue = 0.10
                    }
                    Timer()
                }
                HStack(alignment: .center, spacing:80 ) {
                    PlayButton()
                    StopButton()
                    
                }
      
            }
      
        }.background(Image("bg").resizable().edgesIgnoringSafeArea(.all)
         .frame(width: UIScreen.main.bounds.width,
                        height: UIScreen.main.bounds.height))
    }
}


struct ProgressBar: View {
    @Binding var progress: Float
    var color: Color = Color.white
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 8)
                .foregroundColor(Color.white).opacity(0.4)
            
            Circle().trim(from: 0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 8.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(color).rotationEffect(Angle(degrees: 270))
                .animation(.easeInOut(duration: 2.0))
        }
    }
}


struct FocusCategory: View {
    var body: some View {
        Button(action: {}) {
            ZStack {
                RoundedRectangle(cornerRadius: 24).fill(Color.white).opacity(0.4).frame(width: 170, height: 36)
                HStack {
                    Image("penicon").frame(width: 12, height: 12).foregroundColor(.white)
                    Text("Focus Category").font(.system(size: 16)).fontWeight(.heavy).foregroundColor(.white)
                }
            }
        }
    }
}



struct PlayButton: View {
    var body: some View {
        Button(action: {}) {
            ZStack {
                Circle().foregroundColor(.white).opacity(0.4).frame(width: 56, height: 56)
                Image("play")
            }
        }
    }
}

struct StopButton: View {
    var body: some View {
        Button(action: {}) {
            ZStack {
                Circle().foregroundColor(.white).opacity(0.4).frame(width: 56, height: 56)
                Image("stop")
            }
        }
    }
}



struct Timer: View {
    var timer = "25:00"
    var label  = "Focus on your task"
    var body: some View {
        VStack {
            Text(timer).font(.system(size: 44)).fontWeight(.bold).frame(width: 200, height: 56).foregroundColor(.white)
            Text(label).font(.system(size: 16)).frame(width: 200, height: 24).foregroundColor(.white)
            
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
