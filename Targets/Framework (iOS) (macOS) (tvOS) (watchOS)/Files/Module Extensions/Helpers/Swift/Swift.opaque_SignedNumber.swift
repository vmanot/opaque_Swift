//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias SignedNumber2 = opaque_SignedNumber & SignedNumber

public protocol opaque_SignedNumber: opaque_Comparable
{
    var negated: opaque_SignedNumber { get }
}

extension opaque_SignedNumber where Self: SignedNumber
{
    public var negated: opaque_SignedNumber
    {
        return -self
    }
}
