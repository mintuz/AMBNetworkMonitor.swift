# Usage

1. Install AFNetworking as a dependency.
1. Make an instance of AMBNetworkMonitor passing in your delegate class.
2. Make your view controller/class implement the AMBNetworkMonitorProtocol
4. Implement your code in the delegate on the methods required.

# Code Examples

## Delegate Class Implementation
```
import Foundation

class DelegateClass: AMBNetworkMonitorProtocol {

    // Instance Variables
    var _networkMonitor: AMBNetworkMonitor!
    var _delegate:AMBServiceAvailabilityProtocol!

    init(delegate:AMBServiceAvailabilityProtocol) {
        _delegate = delegate
    }

    // Makes sure network is available and then call the request object
    func checkServices() {
        _networkMonitor = AMBNetworkMonitor(delegate:self)
    }

    // Called when the network is available
    func handleNetworkAvailable() {
        NSLog("Network available");
    }

    // Called when the network is not available
    func handleNetworkNotAvailable() {
        NSLog("Network not available");
    }

}
```
