//
// Copyright (c) Vatsal Manot
//

import Swift

/// A data type currently supported by ANNOY.
public protocol _AnnoyIndexSupported: BinaryFloatingPoint {
    
}

// MARK: - Implementations

extension Double: _AnnoyIndexSupported {
    
}

extension Float: _AnnoyIndexSupported {
    
}
