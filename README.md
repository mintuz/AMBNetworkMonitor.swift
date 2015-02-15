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

## License
```
The MIT License (MIT)

Copyright (c) 2015 Adam Bulmer

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```
