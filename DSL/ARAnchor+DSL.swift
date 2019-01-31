//
//  ARAnchor+DSL.swift
//  ARKitDSL
//
//  Created by Maxim Volgin on 31/01/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import ARKit

extension ARAnchor {
    
    public static func anchor(name: String, transform: simd_float4x4, apply closure: (ARAnchor) -> Void) -> ARAnchor {
        let anchor = ARAnchor(name: name, transform: transform)
        closure(anchor)
        return anchor
    }
    
}

