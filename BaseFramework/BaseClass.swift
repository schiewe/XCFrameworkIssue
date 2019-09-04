import Foundation

@available(iOS 9.0, *)
@objcMembers @objc(BFBaseClass) open class BaseClass: NSObject {

  @objc func functionWithBaseClassArgument(_ baseClass: BaseClass) {}
}

@available(iOS 9.0, *)
extension BaseClass {

  @objc open func extensionInBaseFramework() {}
}
