//
//  AnimalInfo.swift
//  Anisel
//
//  Created by Василий Гайсен on 07.09.2022.
//

import Foundation


public class AnimalInfo {
    var breed : String;
    var age : Float;
    var gender : Gender;
    
    init(breed: String, age: Float, gender: Gender){
        self.breed = breed;
        self.age = age;
        self.gender = gender;
    }
}
