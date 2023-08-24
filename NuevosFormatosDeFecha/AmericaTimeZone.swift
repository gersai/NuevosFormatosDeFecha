//
//  AmericaTimeZone.swift
//  NuevosFormatosDeFecha
//
//  Created by Eduardo Gersai Garcia Ventura on 24/08/23.
//

//
//  AmericaTimeZone.swift
//  FormatosDeFecha
//
//  Created by Eduardo Gersai Garcia Ventura on 23/08/23.
//

import SwiftUI

struct AmericaTimeZone: View {
    @State private var currentTime = Date()
    var formatosDeFechas: FormatosDeFechas
    
    var body: some View {
        List {
            VStack {
                Text("Hora actual en America: (cdmx)")
                    .font(.headline)
                
                Text("\(formatosDeFechas.formattedTime_HH_mm_ss_SSS(currentTime, timeZone: TimeZone(identifier: "America/Mexico_City")!))")
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

struct AmericaTimeZone_Previews: PreviewProvider {
    static var previews: some View {
        AmericaTimeZone(formatosDeFechas: FormatosDeFechas())
    }
}






