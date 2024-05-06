//
//  Alert.swift
//  BarcodeScanner
//
//  Created by PowerMac on 03.05.2024.
//

import Foundation
import SwiftUI


struct AlertItem : Identifiable{
    let id: UUID = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidData = AlertItem(title: Text("Server Error"),
                                       message: Text("The data received from the server was invalid. Please contact support."),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                           message: Text("Invalid response from the server was invalid. Please contact support."),
                                           dismissButton: .default(Text("OK")))
    
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                      message: Text("There was an issue connecting to the server. If this persists, please contact support."),
                                      dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete your request at this time. Please check your network connection"),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                            message: Text("Unable to save email"),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidField = AlertItem(title: Text("Unfilled field"),
                                            message: Text("Some of the fields did not filled"),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidUserData = AlertItem(title: Text("Profile error"),
                                           message: Text("Some of the fields had wrong data type"),
                                           dismissButton: .default(Text("OK")))
    
    static let userSaveSuccess = AlertItem(title: Text("Profile Saved"),
                                           message: Text("Your profile information was succesfully saved."),
                                           dismissButton: .default(Text("OK")))
    
}
