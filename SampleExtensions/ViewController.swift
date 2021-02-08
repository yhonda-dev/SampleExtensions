//
//  ViewController.swift
//  SampleExtensions
//
//  Created by Yutaro Honda on 2021/02/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let testClass = TestClass()
        
        print("123456789".sp.test)
        print("test-gmail.com".sp.print())
        print(123456789.sp.test)
        print(123456789.sp.print())
        print(testClass.test)
        print(testClass.print())
        print(TestClass.test)
        print(TestClass.print())
        print(testClass.sp.test)
        print(testClass.sp.print())
        print(TestClass.sp.test)
        print(TestClass.sp.print())
        print("123456789".sss.test)
        print("test-gmail.com".sss.print())
        
        
        let view1 = UIView(frame: .zero)
        view1.backgroundColor = UIColor().sp.test
        stackView.addArrangedSubview(view1)
        
        let view2 = UIView(frame: .zero)
        view2.backgroundColor = UIColor().sp.print()
        stackView.addArrangedSubview(view2)
        
        let view3 = UIView(frame: .zero)
        view3.backgroundColor = UIColor.sp.test
        stackView.addArrangedSubview(view3)
        
        let view4 = UIView(frame: .zero)
        view4.backgroundColor = UIColor.sp.print()
        stackView.addArrangedSubview(view4)
        
        let view5 = UIView(frame: .zero)
        view5.backgroundColor = UIColor().sop.test
        stackView.addArrangedSubview(view5)
        
        let view6 = UIView(frame: .zero)
        view6.backgroundColor = UIColor().sop.print()
        stackView.addArrangedSubview(view6)
        
        let view7 = UIView(frame: .zero)
        view7.backgroundColor = UIColor.sop.test
        stackView.addArrangedSubview(view7)
        
        let view8 = UIView(frame: .zero)
        view8.backgroundColor = UIColor.sop.print()
        stackView.addArrangedSubview(view8)
        
        
        print(UIViewController().sp.test)
        print(UIViewController().sp.print())
//        print(sp.test)
//        print(sp.print())
        
//        let vc
        
        let alertType = SampleAlertType.typeA
        
        // 元々あるかのように使う
        let alertA = UIAlertController(alertType, preferredStyle: .alert)
        alertA.addAction()
        alertA.addCancelAction()
        present(alertA, animated: true, completion: nil)
        
        // extensionだとわかるように使う（spってのが「.ex」的な意味）
        let alertB = UIAlertController.sp.create(alertType, preferredStyle: .alert)
        alertB.sp.addAction()
        alertB.sp.addCancelAction()
        present(alertB, animated: true, completion: nil)
    }
}

final class TestClass {
        
    
    var test: String {
        return "TestClass"
    }
    
    func print() -> String {
        return "Func on TestClass"
    }
    
    static var test: String {
        return "Static TestClass"
    }
    
    static func print() -> String {
        return "Static Func on TestClass"
    }
    
    public class var black: UIColor { return #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) } // 0.0
}

extension UIColor {
    
    class UIColorInClass {
        
    }
    
    struct UIColorInStruct {
        
    }
    
    class var testColor: UIColor { return #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) }
    
    class var classInClass: UIColorInClass { return UIColorInClass() }
    class var classInStruct: UIColorInStruct { return UIColorInStruct() }
}

extension  UIColor.UIColorInClass {
    
    static var testColor: UIColor { return #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) }
}

extension  UIColor.UIColorInStruct {
    
    static var testColor: UIColor { return #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) }
}

