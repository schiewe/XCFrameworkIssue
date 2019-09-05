# XCFrameworkIssue

This repo demonstrates two issues when using XCFramework for inter-framework dependencies with Objective-C compatibility which did not cause any problems when creating *normal* frameworks. It seems that the XCFramework issues can only be resolved when targeting iOS 13.0.

In order to demonstrate the issues just build the `DerivedFramework` target with Xcode 11.0.

Issue 1) https://github.com/schiewe/XCFrameworkIssue/blob/f84ec25145f63f93badbe845a282bb21e18967eb/DerivedFramework/DerivedClass.swift#L8 causes a `Method cannot be marked @objc because the type of the parameter cannot be represented in Objective-C` error.

Issue 2) https://github.com/schiewe/XCFrameworkIssue/blob/f84ec25145f63f93badbe845a282bb21e18967eb/DerivedFramework/DerivedClass.swift#L15 causes a `'@objc' instance method in extension of subclass of 'BaseClass' requires iOS 13.0.0` error.

It would be quite convenient to have these issues resolved in order to distribute libraries compiled and bundled as XCFrameworks without sacrificing backwards compatibility for any iOS version older than iOS 13.
