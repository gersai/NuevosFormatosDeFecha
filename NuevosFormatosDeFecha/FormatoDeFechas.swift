//
//  FormatoDeFechas.swift
//  NuevosFormatosDeFecha
//
//  Created by Eduardo Gersai Garcia Ventura on 24/08/23.
//

import Foundation


class FormatosDeFechas {
    
    func formattedTime1_HH_mm_ss(_ date: Date, timeZone: TimeZone) -> String {
        let formatter = DateFormatter()
        formatter.timeZone = timeZone
        formatter.dateFormat = "HH:mm:ss"
        return formatter.string(from: date)
    }
    
    func formattedTime2_EEEE_MMM_d_yyyy(_ date: Date, timeZone: TimeZone) -> String {
        let formatter = DateFormatter()
        formatter.timeZone = timeZone
        formatter.dateFormat = "EEEE, MMM d, yyyy"
        return formatter.string(from: date)
    }
    
    func formattedTime3_MM_dd_yyyy_HH_mm(_ date: Date, timeZone: TimeZone) -> String {
        let formatter = DateFormatter()
        formatter.timeZone = timeZone
        formatter.dateFormat = "MM-dd-yyyy HH:mm"
        return formatter.string(from: date)
    }
    
    
    func formattedTime4_MMMM_yyyy(_ date: Date, timeZone: TimeZone) -> String {
        let formatter = DateFormatter()
        formatter.timeZone = timeZone
        formatter.dateFormat = "MMMM yyyy"
        return formatter.string(from: date)
    }
    
    
    func formattedTime5_E_d_MMM_yyyy_HH_mm_ss_Z(_ date: Date, timeZone: TimeZone) -> String {
        let formatter = DateFormatter()
        formatter.timeZone = timeZone
        formatter.dateFormat = "E, d MMM yyyy HH:mm:ss Z"
        return formatter.string(from: date)
    }
    
    func formattedTime6_dd_MM_yy(_ date: Date, timeZone: TimeZone) -> String {
        let formatter = DateFormatter()
        formatter.timeZone = timeZone
        formatter.dateFormat = "dd.MM.yy"
        return formatter.string(from: date)
    }
    
    func formattedTime_HH_mm_ss_SSS(_ date: Date, timeZone: TimeZone) -> String {
        let formatter = DateFormatter()
        formatter.timeZone = timeZone
        formatter.dateFormat = "HH:mm:ss.SSS"
        return formatter.string(from: date)
    }
}
