//
//  Movie.swift
//  Movies
//
//  Created by LIU SHANG WEI on 2021/4/13.
//

import Foundation

struct Movie {
    var name: String
    var years: String
    var imageName: String
    var introduction: String
}

extension Movie {
    static var favorite: [Self] {
        [
            Movie(name: "花木蘭", years: "2020", imageName: "pic1", introduction: "A young Chinese maiden disguises herself as a male warrior in order to save her father."),
            Movie(name: "復仇者聯盟：終局之戰", years: "2019", imageName: "pic2", introduction: "After the devastating events of 復仇者聯盟：無限之戰 (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos' actions and restore balance to the universe."),
            Movie(name: "哥吉拉大戰金剛", years: "2021", imageName: "pic3", introduction: "The epic next chapter in the cinematic Monsterverse pits two of the greatest icons in motion picture history against one another - the fearsome Godzilla and the mighty Kong - with humanity caught in the balance.")
        ]
    }
    static var horror: [Self] {
        [
            Movie(name: "吸血鬼就在隔壁", years: "2011", imageName: "pic4", introduction: "When a nice new neighbor moves in next door, Charley discovers that he is an ancient vampire who preys on the community. Can he save his neighborhood from the creature with the help of the famous \"vampire killer\", Peter Vincent?"),
            Movie(name: "小精靈2", years: "1990", imageName: "pic5", introduction: "The Gremlins are back, and this time, they've taken control of a New York City media mogul's high-tech skyscraper."),
            Movie(name: "His Name Was Jason", years: "2009", imageName: "pic6", introduction: "A documentary exploring 30 years of the \"Friday The 13th\" film series featuring all new interviews with cast and crew from all 12 films and various horror fans and filmmakers.")
        ]
    }
    static var drama: [Self] {
        [
            Movie(name: "歌舞青春", years: "2006", imageName: "pic7", introduction: "A popular high-school athlete and an academically-gifted girl get roles in the school musical and develop a friendship that threatens East High's social order."),
            Movie(name: "勇闖斷頭谷", years: "2004", imageName: "pic8", introduction: "After the local ghost story is told to a pre-Halloween crowd, the eve's full of pranks and teenagers disappear at the graveyard. It continues on Halloween. Is the legend true?"),
            Movie(name: "為愛起程", years: "2009", imageName: "pic9", introduction: "A historical drama that illustrates Russian author Leo Tolstoy's (Christopher Plummer's) struggle to balance fame and wealth with his commitment to a life devoid of material things.")
        ]
    }
}
