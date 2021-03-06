//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol Forwarder: AnyProtocol
{
    associatedtype Forwarded
    
    var forwarded: Forwarded { get }
    
    init?(forwarding _: Forwarded)
}

public protocol MutableForwarder: Forwarder
{
    var forwarded: Forwarded { get set }
}
