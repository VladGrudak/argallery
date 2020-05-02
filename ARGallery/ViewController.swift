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
        let sphere = SCNSphere(radius: 0.2)
        let sphereNode = SCNNode(geometry: sphere)
        sphereNode.position = SCNVector3(0,0,-0.7)
        
        //Придаём материал для кубика
        let material = SCNMaterial()
        material.diffuse.contents = UIImage(named: "earth.png")
        sphere.materials = [material]

        sphereNode.position = SCNVector3(0,0,-0.5)
        scene.rootNode.addChildNode(sphereNode)
        // Set the scene to the view
        sceneView.scene = scene
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
}


