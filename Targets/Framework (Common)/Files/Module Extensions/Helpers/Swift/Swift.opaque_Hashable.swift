//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias Hashable2 = opaque_Hashable & Hashable

public protocol opaque_Hashable: opaque_Equatable
{
    var hashValue: Int { get }
}

@_transparent public func == <T: opaque_Hashable>(lhs: T, rhs: T) -> Bool
{
    return lhs.hashValue == rhs.hashValue
}
