//
//  Extend.swift
//  SampleExtensions
//
//  Created by Yutaro Honda on 2021/02/06.
//

import UIKit

extension String: SampleExtended {}
extension Int: SampleExtended {}
extension TestClass: SampleExtended {}
extension String: SExtended {}

extension UIColor: SampleObjectExtended {}
extension UIColor: SOExtended {}

//extension UIViewController: SampleObjectExtended {}
extension UIViewController: SampleExtended {}

extension UIAlertController: SampleExtended {}
