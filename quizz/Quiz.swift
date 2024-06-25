//
//  Quiz.swift
//  quizz
//
//  Created by Scholar on 6/24/24.
//

import Foundation



class Quiz : ObservableObject{

    let questions = ["What's your favorite type of weather?", "What kind of scenery do you like ", "What is your favorite activity", "Pick a meal"]

    let answers = [["Warm", "Hot", "Cold"], ["City" ,"Beach", "Mountains"], ["Sightseeing", "Swimming", "Skiing"], ["Burger", "Fruit", "Chocolate"]]

    @Published var index = 0

    @Published var row = 0

    @Published var col = 0

    

    func asker () -> String

    {

        

        return questions[index]

    }

    func printer () -> Int

    {

        return index

    }

    

    

    func adder ()

    {

        if index < questions.count - 1 {

                    index += 1

                } else {

                    index = -1 // Reset to first question if at the end

                }

    }

    

    

    

    func quizzer ()

    {

        while true

        {

            if index < questions.count

            {

                print(asker())

            }

        }

    }

    

    

}
