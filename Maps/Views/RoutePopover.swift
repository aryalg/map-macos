//
//  RoutePopover.swift
//  Maps
//
//  Created by Bikram Aryal on 14/05/2022.
//

import Foundation
import AppKit


class RoutePopover: NSPopover {
    init(contoller: RouteContentViewController) {
        super.init()
        self.contentViewController = contoller
        self.behavior = .transient
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
