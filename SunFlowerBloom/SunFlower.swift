//
//  SunFlower.swift
//  SunFlowerBloom
//
//  Created by Vishal Paliwal on 06/05/23.
//

import SwiftUI

struct SunFlower: View {
    
    @Binding var animate: Bool
    
    var body: some View {
        ZStack {
            // Center Top
            Group {
                Image("leafTop")
                    .resizable()
                    .frame(width: animate ? 50 : 0, height: animate ? 100 : 0, alignment: .center)
                    .rotationEffect(.degrees(0), anchor: .bottom)
                    .offset(y: animate ? -80 : 0)
                    .animation(Animation.easeIn(duration: 3).delay(2.5).repeatForever(autoreverses: true), value: animate)
                
                //             topTrailing
                Image("leafTop")
                    .resizable()
                    .frame(width: animate ? 50 : 0, height: animate ? 100 : 0, alignment: .center)
                    .rotationEffect(.degrees(45), anchor: .topTrailing)
                    .offset(x: animate ? 80 : 0, y: animate ? -20 : 0)
                    .animation(Animation.easeIn(duration: 3).delay(2.5).repeatForever(autoreverses: true), value: animate)
                //
                //                // bottomTrailing
                Image("leafTop")
                    .resizable()
                    .frame(width: animate ? 50 : 0, height: animate ? 100 : 0, alignment: .center)
                    .rotationEffect(.degrees(125), anchor: .bottomTrailing)
                    .offset(x: animate ? -20 : 0, y: animate ? 0 : 0)
                    .animation(Animation.easeIn(duration: 3).delay(2.5).repeatForever(autoreverses: true), value: animate)
                //
                //                //             Center Right
                Image("leafTop")
                    .resizable()
                    .frame(width: animate ? 50 : 0, height: animate ? 100 : 0, alignment: .center)
                    .rotationEffect(.degrees(90), anchor: .center)
                    .offset(x: animate ? 70 : 0, y: 2)
                    .animation(Animation.easeIn(duration: 3).delay(2.5).repeatForever(autoreverses: true), value: animate)
                //
                //                //             Center Left
                Image("leafTop")
                    .resizable()
                    .frame(width: animate ? 50 : 0, height: animate ? 100 : 0, alignment: .center)
                    .rotationEffect(.degrees(-90), anchor: .center)
                    .offset(x: animate ? -80 : 0)
                    .animation(Animation.easeIn(duration: 3).delay(2.5).repeatForever(autoreverses: true), value: animate)
                //
                //                //             topLeading
                Image("leafTop")
                    .resizable()
                    .frame(width: animate ? 50 : 0, height: animate ? 100 : 0, alignment: .center)
                    .rotationEffect(.degrees(-45), anchor: .topLeading)
                    .offset(x: animate ? -80 : 0, y: animate ? -20 : 0)
                    .animation(Animation.easeIn(duration: 3).delay(2.5).repeatForever(autoreverses: true), value: animate)
                //
                //                //             bottomLeading
                Image("leafTop")
                    .resizable()
                    .frame(width: animate ? 50 : 0, height: animate ? 100 : 0, alignment: .center)
                    .rotationEffect(.degrees(-125), anchor: .bottomLeading)
                    .offset(x: animate ? 20 : 0, y: animate ? -5 : 0)
                    .animation(Animation.easeIn(duration: 3).delay(2.5).repeatForever(autoreverses: true), value: animate)
                //
                //                //                 Bottom Center
                Image("leafTop")
                    .resizable()
                    .frame(width: animate ? 50 : 0, height: animate ? 100 : 0, alignment: .center)
                    .rotationEffect(.degrees(180), anchor: .bottom)
                    .offset(y: animate ? -20 : 0)
                    .animation(Animation.easeIn(duration: 3).delay(2.5).repeatForever(autoreverses: true), value: animate)
                
                ZStack {
                    Image("center3")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .opacity(animate ? 1 : 0)
                        .animation(Animation.easeInOut(duration: 1).delay(2), value: animate)
                }
            }
        }
    }
}

struct SunFlower_Previews: PreviewProvider {
        
    static var previews: some View {
        SunFlower(animate: .constant(false))
    }
}
