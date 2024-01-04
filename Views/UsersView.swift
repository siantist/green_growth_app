import SwiftUI

struct UserModel {
  let displayName : String
  let userName : String
  let followerCount : Int
  let isVerified : Bool
}

struct UsersView: View {
  @State var users: [UserModel] = [
  UserModel(displayName:"Nick", userName:"nick123", followerCount:100, points:100, isVerified:true),
  UserModel(displayName:"Serena", userName:"serena456", followerCount:10, points:200, isVerified:true) ]

  var body: some View {
    NavigationView {
      List {
        ForEach(users) { user in 
            HStack(spacing: 15.0) {
              Circle()
              .frame(width: 35, height: 35) 
              VStack(alignment: .leading) {
                Text(user.displayName)
                .font(.headline)
                Text(user.userName)
                .foregroundColor(.gray)
                .font(.caption)
              }
              Spacer()
              VStack {
                Text("\(user.followerCount)")
                .font(.headline)
                Text("followers  points")
                .foregroundColor(.gray)
                .font(.caption)
              }
            }
        }
      }
    }
  }
}
