import Foundation
final class UserModel {
    
    struct User {
        var username: String
        var password: String
    }
    
    var model: [User] = [
       User(username: "zico", password: "1234"),
       User(username: "dean", password: "5678"),
       User(username: "penomeco", password: "0101")
    ]
    
    func findUser(name: String, pwd: String) -> Bool {
        for user in model {
            if user.username == name && user.password == pwd {
                return true
            }
        }
        return false
    }
    
    func addUser(name: String, pwd: String) {
        let newUser = User(username: name, password: pwd)
        model.append(newUser)
    }
    
    // 210615. 로그인 유저 정보 추가
    static var loginUser: User?
    
    static func setCurrentUser(name: String, pwd: String) {
        loginUser = User(username: name, password: pwd)
    }
    
    static func getCurrentUser() -> User? {
        return loginUser
    }
    
    static func logout() {
        loginUser = nil
    }
}



