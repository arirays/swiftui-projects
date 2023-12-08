import Foundation

struct Student {
  let name: String
  let favoriteTeacherID: Int
}

struct Teacher {
  let id: Int
  let name: String
  let hairColor: String?
  let email: String?
}

struct School {
  let name: String
  let teachers: [Teacher]

  func getTeacher(withID id: Int) -> Teacher? {
    for teacher in teachers {
      if teacher.id == id {
      return teacher
      }
  }
  return nil
}


func printFavoriteTeacherInfo(for student: Student) {
  guard let favoriteTeacher = getTeacher(withID: student.favoriteTeacherID) else {
    print("Teacher isn't found. Try again")
    return
  }
  print("Your favorite teacher is: \(favoriteTeacher.name)")
  print("Your favorite teacher hair color is: \(favoriteTeacher.hairColor ?? "no")")

  if let email = favoriteTeacher.email {
    print("Your teacher's email is \(email)")
  } else {
    print("Email is not found.")
  }
}
}

let teachers = [
  Teacher(id: 1, name: "Spider Man", hairColor: nil, email: "peterparker@gmail.com"),
  Teacher(id: 2, name: "Iron Man", hairColor: "brown", email: nil),
  Teacher(id: 3, name: "Doctor Strange", hairColor: "black with a hint of gray", email: "nycsanctumsupremesourcerer@yahoo.com" )
]


let kahalaHigh = School(name: "Wai Kahala High School", teachers: teachers)

let batu = Student(name: "Ghost Shell", favoriteTeacherID: 3)

kahalaHigh.printFavoriteTeacherInfo(for: batu)
