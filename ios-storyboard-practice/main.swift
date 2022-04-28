import UIKit

let argc = CommandLine.argc
let argv = CommandLine.unsafeArgv
let appDelegate = NSStringFromClass(MyAppDelegate.self)
let application = NSStringFromClass(MyApplication.self)
let code = UIApplicationMain(argc, argv, application, appDelegate)
