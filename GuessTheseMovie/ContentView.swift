//
//  ContentView.swift
//  GuessTheseMovie
//
//  Created by Benny Rinaldo on 02/12/22.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    var body: some View {
        
        
        VStack {
            Text("Guess These Movies")
                .fontWeight(.bold)
                .font(.system(.title, design: .rounded))
            
            Text("Can you guess the movie from these emojis?\n Tap the button to find out the answers")
                .multilineTextAlignment(.center)
            
            Button {
                speak(text: "I don't know")
                
            } label: {
                Text("👦🏻 👴🏻 🚗 ⌚️")
                    .fontWeight(.bold)
                    .font(.system(.title, design: .rounded))
            }
            .padding()
            .background(Color.green)
            .cornerRadius(20)
            
            Button {
                speak(text: "Frozen")
            } label: {
                Text("🏰 👭 🌀 ❄️ ⛄️")
                    .fontWeight(.bold)
                    .font(.system(.title, design: .rounded))
            }
            .padding()
            .background(Color.yellow)
            .cornerRadius(20)
            
            Button {
                speak(text: "Ocean Eleven")
            } label: {
                Text("🌊 1️⃣ 1️⃣")
                    .fontWeight(.bold)
                    .font(.system(.title, design: .rounded))
            }
            .padding()
            .background(Color.blue)
            .cornerRadius(20)
            
            Button {
                speak(text: "Spider Man")
            } label: {
                Text("🕷 🏃")
                    .fontWeight(.bold)
                    .font(.system(.title, design: .rounded))
            }
            .padding()
            .background(Color.brown)
            .cornerRadius(20)
            
        }
    }
    
    func speak(text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
