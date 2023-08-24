//
//  EuropaTimeZone.swift
//  NuevosFormatosDeFecha
//
//  Created by Eduardo Gersai Garcia Ventura on 24/08/23.
//

import SwiftUI

struct EuropeTimeZone: View {
    @State private var currentTime = Date()
    var formatosDeFechas: FormatosDeFechas
    
    var body: some View {
        List {
            VStack {
                Text("Hora actual en Europa: (paris)")
                    .font(.headline)
                
                Text("\(formatosDeFechas.formattedTime2_EEEE_MMM_d_yyyy(currentTime, timeZone: TimeZone(identifier: "Europe/Paris")!))")
                    .font(.largeTitle)
                    .padding()
                
            }
        }
        
        
        .onAppear {
            updateClock()
        }
        .onReceive(Timer.publish(every: 1, on: .main, in: .common).autoconnect()) { _ in
            updateClock()
        }
    }
    
    func updateClock() {
        currentTime = Date()
    }
}

struct EuropeTimeZone_Previews: PreviewProvider {
    static var previews: some View {
        EuropeTimeZone(formatosDeFechas: FormatosDeFechas())
    }
}

