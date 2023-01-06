//
//  ContentView.swift
//  04Opgaver
//
//

import SwiftUI

struct TapGesture: View {
    
    @State private var movies = [
        "The Matrix",
        "Inception",
        "Blade Runner 2049",
        "Edge of Tomorrow",
        "Alita"
    ]
    
    @State private var tap = false
    var body: some View {
    Image("Edge of Tomorrow")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: tap ? 100 : 150)
            .onTapGesture {
                tap.toggle()
            }
    }


}

struct Rotation: View {
    @State var angle = Angle(degrees: 0.0)
    
    var rote: some Gesture {
        RotationGesture()
            .onChanged { angle in self.angle = angle }
    }
    var body: some View {
        Image("Edge of Tomorrow")
            .frame(width: 200, height: 200, alignment: .center)
            .rotationEffect(self.angle)
            .gesture(rote)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TapGesture()
        
    }
}
