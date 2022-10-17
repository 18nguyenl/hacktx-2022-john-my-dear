//
//  ContentView.swift
//  John My Dear
//
//  Created by Long Nguyen on 10/15/22.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    var body: some View {
            ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()
//        let secondBoxAnchor = try! SecondExperience.loadBox()
//        if let boxScene = try? Experience.loadBox() {
//            let box = boxScene.steelBox
////            box?.transform.scale *= 10000
//        }
        
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
//        arView.scene.anchors.append(secondBoxAnchor)
//        if let box = arView.scene.findEntity(named: "Steel Box") {
//            let anim = FromToByAnimation(from: 1, to: 10, duration: 10, bindTarget: .transform)
//        }
        
        
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
