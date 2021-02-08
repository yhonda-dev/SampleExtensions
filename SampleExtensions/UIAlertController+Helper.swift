//
//  UIAlertController+Helper.swift
//  SampleExtensions
//
//  Created by Yutaro Honda on 2021/02/08.
//

import UIKit

protocol Alertable {
    var title: String? { get }
    var message: String? { get }
}

// Sample
enum SampleAlertType: Alertable {
    case typeA
    case typeB
    
    var title: String? {
        switch self {
        case .typeA: return "title A"
        case .typeB: return "title B"
        }
    }
    
    var message: String?  {
        switch self {
        case .typeA: return "message A"
        case .typeB: return "message B"
        }
    }
}

// さも当然のように使う
extension UIAlertController {
    
    convenience init(_ type: Alertable, preferredStyle: UIAlertController.Style) {
        self.init(title: type.title, message: type.message, preferredStyle: preferredStyle)
    }
    
    func addAction(title: String = "ok", action: ((UIAlertAction) -> ())? = nil) {
        addAction(.init(title: title, style: .default, handler: action))
    }
    
    func addCancelAction(title: String = "cancel", action: ((UIAlertAction) -> ())? = nil) {
        addAction(.init(title: title, style: .cancel, handler: action))
    }
    
    func addDestructiveAction(title: String, action: ((UIAlertAction) -> ())? = nil) {
        addAction(.init(title: title, style: .destructive, handler: action))
    }
}

// extension だよねって感じで使う
extension SampleExtension where ExtendedType == UIAlertController {
    
    static func create(_ alertableType: Alertable, preferredStyle: UIAlertController.Style) -> UIAlertController {
        return .init(title: alertableType.title, message: alertableType.message, preferredStyle: preferredStyle)
    }
    
    func addAction(title: String = "ok", action: ((UIAlertAction) -> ())? = nil) {
        type.addAction(.init(title: title, style: .default, handler: action))
    }
    
    func addCancelAction(title: String = "cancel", action: ((UIAlertAction) -> ())? = nil) {
        type.addAction(.init(title: title, style: .cancel, handler: action))
    }
    
    func addDestructiveAction(title: String, action: ((UIAlertAction) -> ())? = nil) {
        type.addAction(.init(title: title, style: .destructive, handler: action))
    }
}
