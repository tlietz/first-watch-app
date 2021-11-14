//
//  SecondView.swift
//  codeTutorials-watchOS-timerBasics WatchKit Extension
//
//  Created by Theodore Lietz on 11/14/21.
//

import SwiftUI

struct SecondView: View {
    @Binding var secondScreenShown:Bool
    @State var timerVal = 1
    var body: some View {
        VStack {
            Text("Time remaining")
            Text("\(timerVal)")
                .font(.system(size: 40))
                .onAppear(){
                    Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
                        if self.timerVal > 0 {
                            self.timerVal -= 1
                        }
                    }
                }
            Text("seconds")
            if timerVal > 0 {
                Button(action: {self.secondScreenShown = false}) {
                    Text("Cancel")
                        .foregroundColor(.red)
                }
            } else {
                Button(action: {self.secondScreenShown = false}) {
                    Text("Done")
                        .foregroundColor(.green)
                }
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(secondScreenShown: .constant(true), timerVal: 5)
    }
}
