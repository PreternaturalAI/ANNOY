//
// Copyright (c) Vatsal Manot
//

import CAnnoy
import Foundation

public enum AnnoyIndexError: Error, LocalizedError {
    case invalidVectorLength(message: String)
    
    case failedToAddItem
    
    case failedToBuild
    case failedToBuildOnDisk
    case failedToUnbuild
    
    case failedToSave
    case failedToLoad
    
    case unsupportedDataType(Any.Type)
    
    public var errorDescription: String? {
        switch self {
            case .invalidVectorLength(let message):
                return message
            case .failedToAddItem:
                return "Adding item to index failed."
            case .failedToBuild, .failedToBuildOnDisk:
                return nil
            case .failedToUnbuild:
                return nil
            case .failedToSave:
                return nil
            case .failedToLoad:
                return nil
            case .unsupportedDataType(let type):
                return "Unsupported data type: \(type)"
        }
    }
}
