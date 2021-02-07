//
//  SampleExtended.swift
//  SampleExtensions
//
//  Created by Yutaro Honda on 2021/02/06.
//


public struct SampleExtension<ExtendedType> {
    /// Stores the type or meta-type of any extended type.
    public private(set) var type: ExtendedType

    /// Create an instance from the provided value.
    ///
    /// - Parameter type: Instance being extended.
    public init(_ type: ExtendedType) {
        self.type = type
    }
}

/// Protocol describing the `af` extension points for Alamofire extended types.
public protocol SampleExtended {
    /// Type being extended.
    associatedtype ExtendedType

    /// Static Alamofire extension point.
    static var sp: SampleExtension<ExtendedType>.Type { get set }
    /// Instance Alamofire extension point.
    var sp: SampleExtension<ExtendedType> { get set }
}

extension SampleExtended {
    /// Static Alamofire extension point.
    public static var sp: SampleExtension<Self>.Type {
        get { SampleExtension<Self>.self }
        set {}
    }

    /// Instance Alamofire extension point.
    public var sp: SampleExtension<Self> {
        get { SampleExtension(self) }
        set {}
    }
}


/// Protocol describing the `af` extension points for Alamofire extended types.
public protocol SampleObjectExtended: AnyObject {
    /// Type being extended.
    associatedtype ExtendedType

    /// Static Alamofire extension point.
    static var sp: SampleExtension<ExtendedType>.Type { get set }
    /// Instance Alamofire extension point.
    var sp: SampleExtension<ExtendedType> { get set }
}

extension SampleObjectExtended {
    /// Static Alamofire extension point.
    public static var sp: SampleExtension<Self>.Type {
        get { SampleExtension<Self>.self }
        set {}
    }

    /// Instance Alamofire extension point.
    public var sp: SampleExtension<Self> {
        get { SampleExtension(self) }
        set {}
    }
}

//////////////////////

public class SOExtension<ExtendedType> {
    /// Stores the type or meta-type of any extended type.
    public private(set) var type: ExtendedType

    /// Create an instance from the provided value.
    ///
    /// - Parameter type: Instance being extended.
    public init(_ type: ExtendedType) {
        self.type = type
    }
}

/// Protocol describing the `af` extension points for Alamofire extended types.
public protocol SOExtended {
    /// Type being extended.
    associatedtype ExtendedType

    /// Static Alamofire extension point.
    static var sop: SOExtension<ExtendedType>.Type { get set }
    /// Instance Alamofire extension point.
    var sop: SOExtension<ExtendedType> { get set }
}

extension SOExtended {
    /// Static Alamofire extension point.
    public static var sop: SOExtension<Self>.Type {
        get { SOExtension<Self>.self }
        set {}
    }

    /// Instance Alamofire extension point.
    public var sop: SOExtension<Self> {
        get { SOExtension(self) }
        set {}
    }
}

/////

public struct SExtension<ExtendedType> {
    /// Stores the type or meta-type of any extended type.
    public private(set) var type: ExtendedType

    /// Create an instance from the provided value.
    ///
    /// - Parameter type: Instance being extended.
    public init(_ type: ExtendedType) {
        self.type = type
    }
}

/// Protocol describing the `af` extension points for Alamofire extended types.
public protocol SExtended {
    /// Type being extended.
    associatedtype ExtendedType

    /// Static Alamofire extension point.
    static var sss: SExtension<ExtendedType>.Type { get set }
    /// Instance Alamofire extension point.
    var sss: SExtension<ExtendedType> { get set }
}

extension SExtended {
    /// Static Alamofire extension point.
    static public var sss: SExtension<Self>.Type {
        get { SExtension<Self>.self }
        set {}
    }

    /// Instance Alamofire extension point.
    public var sss: SExtension<Self> {
        get { SExtension(self) }
        set {}
    }
}

struct Test<TT> {
    let t: TT
}


protocol TE {
    associatedtype TT
    
    var ttt: Test<Self> { get }
}

extension TE {
    
    var ttt: Test<Self> {
        return Test(t: self)
    }
}
