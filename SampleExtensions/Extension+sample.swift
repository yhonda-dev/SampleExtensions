//
//  Extension+sample.swift
//  SampleExtensions
//
//  Created by Yutaro Honda on 2021/02/06.
//

import UIKit

extension SampleExtension where ExtendedType == String {
    
    var test: Int {
        return type.count
    }
    
    func print() -> String {
        let split = type.split(separator: "-")
        return split.joined(separator: "@")
    }
}

extension SampleExtension where ExtendedType == Int {
    
    var test: String {
        return type.description
    }
    
    func print() -> String {
        let text = type.description
        return text + "Int on int"
    }
}

extension SampleExtension where ExtendedType == TestClass {
    
    var test: String {
        return "TestClass for sp"
    }
    
    func print() -> String {
        return "Func on TestClass for sp"
    }
    
    static var test: String {
        return "Static TestClass for sp"
    }
    
    static func print() -> String {
        return "Static Func on TestClass for sp"
    }
}

extension SampleExtension where ExtendedType == UIColor {
    
    var test: UIColor {
        return #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
    }
    
    func print() -> UIColor {
        return #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
    }
    
    static var test: UIColor {
        return #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
    }
    
    static func print() -> UIColor {
        return #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
    }
}

extension SampleExtension where ExtendedType == UIViewController {
    
    var test: String {
        return "vc"
    }
    
    func print() -> String {
        return TestClass.print() + "on vc"
    }
    
    static var test: String {
        return "Static TestClass for sp"
    }
    
    static func print() -> String {
        return "Static Func on TestClass for sp"
    }
}


extension SOExtension where ExtendedType == UIColor {
    
    var test: UIColor {
        return #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
    }

    func print() -> UIColor {
        return #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
    }

    class var test: UIColor {
        return #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
    }

    class func print() -> UIColor {
        return #colorLiteral(red: 0.3176470697, green: 0.07450980693, blue: 0.02745098062, alpha: 1)
    }
}

extension SExtension where ExtendedType == String {
    
    var test: String {
        return "s on s"
    }
    
    func print() -> String {
        return "s on s func"
    }
}

