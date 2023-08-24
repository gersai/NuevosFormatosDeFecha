//
//  AustraliaTimeZone .swift
//  NuevosFormatosDeFecha
//
//  Created by Eduardo Gersai Garcia Ventura on 24/08/23.
//

import SwiftUI

struct AustraliaZoneTimeView: View {
    @State private var currentTime = Date()
    var formatosDeFechas: FormatosDeFechas
    
    var body: some View {
        List {
            
            
            
            
            VStack {
                Text("Hora actual en Australia: (Sydney)")
                    .font(.headline)
                
                Text("\(formatosDeFechas.formattedTime5_E_d_MMM_yyyy_HH_mm_ss_Z(currentTime, timeZone: TimeZone(identifier: "Australia/Sydney")!))")
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

struct AustraliaZoneTimeView_Previews: PreviewProvider {
    static var previews: some View {
        AustraliaZoneTimeView(formatosDeFechas: FormatosDeFechas())
    }
}
