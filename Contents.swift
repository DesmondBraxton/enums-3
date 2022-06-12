import UIKit
import Darwin
import CoreGraphics

// Using eums as raw values
// as associated values
// question
// The raw value in this case is a string about the associated sesame street character


// Case iterable allows us to iterate through the enum

enum Color:String, CaseIterable {
    case green =  "OscarTheGrouch  this guy is grumpy."
    case red = "elmo the main guy definitely"
    case blue = "cookieMonster Ohn Nom Nom"
    case yellow = "bigBird He is tall"
    case brown = "snuffleupugus C'mon thats an elephant"
}


func getDesmondsOpinion(on color: Color ) {
switch color{
case .green:
    print("Leaves,trees,money")
case .red:
     print("Blood,koolaid, hearts")
case .blue:
    print("Sky,ocean,chasebank")
case .yellow:
    print("Dandylions,sunflowers,bumblebees")
case .brown:
    print("my skin, dead leaves")
    }
}

func getDesmondsRealOpinion(on color: Color) {
        print(color.rawValue)
}

getDesmondsRealOpinion(on: .red)
          
// ENUMS AS ASSOCIATED VALUES

enum SocialMediaPlatform {
    case youtube(subscribers: Int)
    case facebook(friends: Int)
    case twitter
    case instagram(followers: Int)
}

func getSponsorshipDeal(for platform: SocialMediaPlatform){
    switch platform {
        
    case .youtube(let subscribers) where subscribers > 25_000:
        print("Eliglible for sponsorship")
        
    case .facebook(let friends) where friends > 200_000:
        print("Eliglible for sponsorship")
              
    case .instagram(let followers) where followers > 100_000:
        print("Eliglible for sponsorship")
              
    case .twitter, .instagram, .youtube, .facebook:
        print("Not eligible")
    }
}
              
// testing my function

getSponsorshipDeal(for: .youtube(subscribers: 30_000))
          
          
          
          

          

