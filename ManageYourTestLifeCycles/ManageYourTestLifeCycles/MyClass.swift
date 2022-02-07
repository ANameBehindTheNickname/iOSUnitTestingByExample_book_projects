//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

final class MyClass {
    private static var allInstances = 0
    private let instance: Int
    
    init() {
        MyClass.allInstances += 1
        self.instance = MyClass.allInstances
        print(">> MyClass.init() #\(self.instance)")
    }
    
    deinit {
        print(">> MyClass.deinit #\(self.instance)")
    }
    
    func methodOne() {
        print(">> methodOne")
    }
    
    func methodTwo() {
        print(">> methodTwo")
    }
}
