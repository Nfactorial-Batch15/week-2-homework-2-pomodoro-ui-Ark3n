//
//  FocusCategoryApp.swift
//  PomodoroTimer
//
//  Created by Arken Sarsenov on 10.12.2021.
//

import SwiftUI

struct FocusCategoryApp: View {
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
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 16).foregroundColor(.white)
                    VStack {
                        HStack {
                            Spacer()
                            Image(systemName: "xmark")
                        }.padding()
                        Spacer()
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 16).frame(width: 172, height: 60).foregroundColor(.gray).opacity(0.2)
                                Text("Work")
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 16).frame(width: 172, height: 60).foregroundColor(.gray).opacity(0.2)
                                Text("Study")
                            }
                            
                        }
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 16).frame(width: 172, height: 60).foregroundColor(.gray).opacity(0.2)
                                Text("Workout")
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 16).frame(width: 172, height: 60).foregroundColor(.gray).opacity(0.2)
                                Text("Reading")
                            }
                            
                        }
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 16).frame(width: 172, height: 60).foregroundColor(.gray).opacity(0.2)
                                Text("Meditation")
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 16).frame(width: 172, height: 60).foregroundColor(.gray).opacity(0.2)
                                Text("Others")
                            }
                            
                        }
                        Spacer()
                        
                        
                    }
                    
                }.edgesIgnoringSafeArea(.all)
            }
            
        }.background(Image("bg").resizable().edgesIgnoringSafeArea(.all)
         .frame(width: UIScreen.main.bounds.width,
                        height: UIScreen.main.bounds.height))
    }
}













struct FocusCategoryApp_Previews: PreviewProvider {
    static var previews: some View {
        FocusCategoryApp()
    }
}
