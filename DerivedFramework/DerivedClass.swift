import Foundation
import BaseFramework

@available(iOS 9.0, *) // causes: `Method cannot be marked @objc because the type of the parameter cannot be represented in Objective-C`
//@available(iOS 13.0, *) // works
@objcMembers @objc(DFDerivedClass) open class DerivedClass: BaseClass {

  @objc func functionWithDerivedClassArgument(_ derivedClass: DerivedClass) {}
}

@available(iOS 9.0, *) // causes: `'@objc' instance method in extension of subclass of 'BaseClass' requires iOS 13.0.0`
//@available(iOS 13.0, *) // works
extension BaseClass {

  @objc open func extensionInDerivedFramework() {}
}
