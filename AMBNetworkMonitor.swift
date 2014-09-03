//
//  AMBNetworkMonitor.swift
//  Jarvis
//
//  Created by Test User on 01/09/2014.
//  Copyright (c) 2014 Adam Bulmer. All rights reserved.
//

import Foundation

class AMBNetworkMonitor {
    
    // Instance Variables
    var _delegate:AMBNetworkMonitorProtocol
    
    // Setup the delegate and do the first call to checkNetwork
    init(delegate:AMBNetworkMonitorProtocol) {
        _delegate = delegate;
        checkNetwork()
    }
    
    // Do the check agasint the network
    func checkNetwork() {
        
        AFNetworkReachabilityManager.sharedManager().startMonitoring()
        
        AFNetworkReachabilityManager.sharedManager().setReachabilityStatusChangeBlock({(status:AFNetworkReachabilityStatus) in
            
            // Network Available
            if ( status == AFNetworkReachabilityStatus.ReachableViaWWAN ) || (status == AFNetworkReachabilityStatus.ReachableViaWiFi ) {
            
                self._delegate.handleNetworkAvailable()
                
            // Network not available
            } else {
                
                self._delegate.handleNetworkNotAvailable()
                
            }
            
        })
        
        AFNetworkReachabilityManager.sharedManager().stopMonitoring()
        
    }
    
    
    
}
