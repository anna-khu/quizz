//
//  ContentView.swift
//  quizz
//
//  Created by Scholar on 6/24/24.
//


import SwiftUI



struct ContentView: View {



    @StateObject var quiz = Quiz()



@State var a = 0



@State var b = 0



@State var c = 0



@State var row = 0



var body: some View {



if quiz.printer() > -1



{



Text(quiz.asker())



HStack{



Button(quiz.answers[row][0])

{



a = a + 1



quiz.adder()



row = row + 1



}



Button(quiz.answers[row][1])

{



b = b + 1



quiz.adder()



row = row + 1



}



Button(quiz.answers[row][2])

{



c = c + 1



quiz.adder()



row = row + 1



}



}



}



else



{



if a > b && a > b



{



Text(" You should go to New York City")



}



if b > a && b > c



{



Text(" You should go to the Maldives!")



}



if c > a && c > b



{



Text(" You should go to Switzerland")



}



}



}



}



#Preview {



ContentView()



}
