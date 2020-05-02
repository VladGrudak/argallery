//
//  ViewController.swift
//  ARGallery
//
//  Created by Владислав Ралка on 24.04.2020.
//  Copyright © 2020 Grudak team. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {
    
    @IBOutlet weak var sceneView: MyARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set the view’s delegate
        sceneView.delegate = self
        // Create a new scene
        let scene = SCNScene()
        let box = SCNBox(width: 0.2, height: 0.2, length: 0.2, chamferRadius: 0)
        let boxNode = SCNNode(geometry: box)
        boxNode.position = SCNVector3(0,0,-0.5)
        scene.rootNode.addChildNode(boxNode)
        // Set the scene to the view
        sceneView.scene = scene
    }
}


