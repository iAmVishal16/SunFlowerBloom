//
//  ContentView.swift
//  SunFlowerBloom
//
//  Created by Vishal Paliwal on 06/05/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animatePlant = false
    @State private var animateLeaf = false
    @State var animateFlower = false
    
    var body: some View {
        ZStack(alignment: .top) {
            
            Image("moon")
                .resizable()
                .offset(x: animatePlant ? 0 : UIScreen.main.bounds.size.width)
                .scaleEffect(animatePlant ? 1 : 0)
                .opacity(animatePlant ? 1 : 0.5)
                .animation(Animation.easeIn(duration: 3).delay(0.0).speed(0.8), value: animatePlant)
                .opacity(animateFlower ? 1.0 : 0.8)
                .animation(Animation.easeIn(duration: 3).delay(2.5).repeatForever(autoreverses: true), value: animateFlower)
                .edgesIgnoringSafeArea(.all)
            
            Image("sun")
                .resizable()
                .opacity(animatePlant ? 1.0 : 0.0)
                .animation(Animation.easeIn(duration: 3).delay(4), value: animatePlant)
                .opacity(animateFlower ? 1.0 : 0.0)
                .animation(Animation.easeIn(duration: 3).delay(2.5).repeatForever(autoreverses: true), value: animateFlower)
                .edgesIgnoringSafeArea(.all)
            
            Group {
                Image("leaf")
                    .resizable()
                    .frame(width: 49, height: 100, alignment: .center)
                    .rotationEffect(.degrees(-60))
                    .offset(x: -50 ,y: animateLeaf ? 500 : 800)
                    .animation(Animation.easeIn(duration: 1.9).delay(0.0), value: animateLeaf)
                
                Image("leaf")
                    .resizable()
                    .frame(width: 49, height: 100, alignment: .center)
                    .rotationEffect(.degrees(60))
                    .offset(x: 50 ,y: animateLeaf ? 550 : 800)
                    .animation(Animation.easeIn(duration: 1.9).delay(0.0), value: animateLeaf)
            }
            
            Capsule()
                .trim(from: 0, to: 1.0)
                .frame(width: 16, height: 400, alignment: .center)
                .foregroundColor(Color("ColorPlant"))
                .offset(y:animatePlant ? 400 : 800)
                .animation(Animation.easeIn(duration: 1.9).delay(0), value: animateLeaf)
            
            ZStack {
                SunFlower(animate: $animateFlower)
                SunFlower(animate: $animateFlower)
                    .rotationEffect(.degrees(25))
            }
            .offset(y: 320)
            
            VStack {
                Spacer()
                
                GeometryReader { geo in
                    ZStack {
                        Wave(waveHeight: 30, phase: Angle(degrees: (Double(geo.frame(in: .global).minY) + 45) * -8 * 0.7))
                            .foregroundColor(Color("ColorSoilBorder"))
                            .opacity(1.0)
                        Wave(waveHeight: 30, phase: Angle(degrees: (Double(geo.frame(in: .global).minY) + 45) * -1 * 0.2))
                            .foregroundColor(Color("ColorSoil1"))
                            .opacity(1.0)
                        Wave(waveHeight: 30, phase: Angle(degrees: Double(geo.frame(in: .global).minY) * 0.2))
                            .foregroundColor(Color("ColorSoil2"))
                    }
                }.frame(height: 70, alignment: .center)
                
            }
            .edgesIgnoringSafeArea(.bottom)
        }
        .background(Color.black)
        .onAppear {
            animateLeaf.toggle()
            animatePlant.toggle()
            animateFlower.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .preferredColorScheme(.dark)
    }
}
