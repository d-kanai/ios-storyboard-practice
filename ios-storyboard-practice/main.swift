import UIKit

var isTest: Bool {
    return ProcessInfo.processInfo.environment["XCTestConfigurationFilePath"] != nil
}

let argc = CommandLine.argc
let argv = CommandLine.unsafeArgv
let appDelegate = NSStringFromClass(MyAppDelegate.self)
var application: String
if(isTest) {
    application = NSStringFromClass(TestApplication.self)
} else {
    application = NSStringFromClass(MyApplication.self)
}
let code = UIApplicationMain(argc, argv, application, appDelegate)
