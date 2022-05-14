//
//  RouteContentViewController.swift
//  Maps
//
//  Created by Bikram Aryal on 14/05/2022.
//

import Foundation
import AppKit
import MapKit

class RouteContentViewController: NSViewController {
    private var route: MKRoute
    
    init(route: MKRoute) {
        self.route = route
        super.init(nibName: nil, bundle: nil)
    }
    
    override func loadView() {
        // self.view = RouteCall
        self.view = NSView(frame: NSRect(x: 0, y: 0, width: 300, height: 300))
    }
    
    required init?(coder: NSCoder) {
        fatalError("Not implemented....")
    }
}
