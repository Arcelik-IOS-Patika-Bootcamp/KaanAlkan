import UIKit

class university{
    var name: String = "metu"
    var yearBuilt: Int? = 1956
    lazy var studentAccess: String? = "\(name)"+".edu.tr"
    var type: faculty
    
    init(_ name:String,_ yearBuilt:Int,type: faculty) {
        self.name = name
        self.yearBuilt = yearBuilt
        self.type = type
        self.studentAccess = studentAccess!
    }

    
    func giveInfo() -> String {
        return "The university is called \(name), it's built in \(yearBuilt ?? 1923)"
    }
}


enum faculty {
    case engineeringFac
    case economicsFac
    case lawFac
}


var uni = university("metu",1956,type: .engineeringFac)

uni.giveInfo()

print("You can access website from: \(uni.studentAccess!)")

let lessons = ["calculus","literature","dynamics","world history"]

switch uni.type {
case .engineeringFac:
print("You should take \(lessons[0]) & \(lessons[2]) ")
case .economicsFac:
    print("You should take \(lessons[0]) & \(lessons.last!) ")
case .lawFac:
    print("You should take \(lessons[1]) & \(lessons[3]) ")
}



