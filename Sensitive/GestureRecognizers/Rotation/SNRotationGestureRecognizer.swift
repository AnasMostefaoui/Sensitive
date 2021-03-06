//
//  SNRotationGestureRecognizer.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 04.01.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

open class SNRotationGestureRecognizer: UIRotationGestureRecognizer {
    
    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    public init(handlerBlock: @escaping SNRotationGestureRecognizerHandlerBlock) {
        // Create handler
        
        let handler = SNRotationGestureRecognizerHandler(handlerBlock: handlerBlock)
        
        
        // Call super init
        
        super.init(target: handler, action: #selector(SNRotationGestureRecognizerHandler.runHandlerBlock))
        
        
        // Update handler
        
        handler.rotationGestureRecognizer = self
        
        
        // Initialize private handler variable
        
        _handler = handler
    }
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Variables & properties
    
    fileprivate var _handler: SNRotationGestureRecognizerHandler!
    
    fileprivate var handler: SNRotationGestureRecognizerHandler {
        get {
            return _handler
        }
    }
    
    
    // MARK: Public methods
    
    
    // MARK: Private methods
    
    
    // MARK: Protocol methods
    
}

