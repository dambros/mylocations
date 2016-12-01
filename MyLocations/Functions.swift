//
//  Functions.swift
//  MyLocations
//
//  Created by Mario D'Ambros Filho on 28/11/16.
//  Copyright © 2016 Dambros apps. All rights reserved.
//

import Foundation
import Dispatch

let applicationDocumentDirectory: URL = {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    return paths[0]
}()

let myManagedObjectContextSaveDidFailNotification = Notification.Name(rawValue: "MyManagedObjectContextSaveDidFailNotification")

func afterDelay(_ seconds: Double, closure: @escaping () -> ()) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: closure)
}

func fatalCoreDataError(_ error: Error) {
    print("*** Fatal Error: \(error)")
    NotificationCenter.default.post(name: myManagedObjectContextSaveDidFailNotification, object: nil)
}

