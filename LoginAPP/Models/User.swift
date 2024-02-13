//
//  User.swift
//  LoginAPP
//
//  Created by User on 13.02.2024.
//

struct User {
    let userName: String
    let password: String
    let author: Author
    
    static func getUser() -> User {
        User(
            userName: "1",
            password: "1",
            author: Author(
                fullName: "Попов Станислав Олегович",
                dayOfBirth: "28.06.1992",
                gender: .man,
                city: "Ханты-Мансийск",
                speciality: "1С программист",
                photo: "photo",
                description:
"   Родился в июне 1992 г. Закончил школу в 2009, информационный класс, учавствовал"
+ " в окружной олимпиаде по информатике. В сентябре поступил в Югорский государственный"
+ " университет на специальность АСОИУ. 2014-2015 отслужил на северном флоте в г. Североморск."
+ " На данный момент работаю программистом 1С. В ноябре 2023 записался на курсы по"
+ " IOS разработке. На данный момент прохожу обучение и надеюсь закончить курсы и"
+ " попробовать себя в роли разработчика мобильных предложений"

            )
        )
    }
}

struct Author {
    let fullName: String
    let dayOfBirth: String
    let gender: Gender
    let city: String
    let speciality: String
    let photo: String
    let description: String
}

enum Gender: String {
    case man = "муж"
    case woman = "жен"
}
