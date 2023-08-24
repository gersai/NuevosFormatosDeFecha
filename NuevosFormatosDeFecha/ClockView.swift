//
//  ClockView.swift
//  NuevosFormatosDeFecha
//
//  Created by Eduardo Gersai Garcia Ventura on 24/08/23.
//

import SwiftUI
import Foundation

struct ClockView: View {
    var body: some View {
        TabView {
            AmericaTimeZone(formatosDeFechas: FormatosDeFechas())
                .tabItem {
                    Label("America", systemImage: "timelapse")
                }
            EuropeTimeZone(formatosDeFechas: FormatosDeFechas())
                .tabItem {
                    Label("Eropa", systemImage: "timelapse")
                }
            AustraliaZoneTimeView(formatosDeFechas: FormatosDeFechas())
                .tabItem {
                    Label("Autralia", systemImage: "timelapse")
                }
        }
    }
}
struct ClockView_Previews: PreviewProvider {
    static var previews: some View {
        ClockView()
    }
}

