//
//  DateStore.swift
//  PlantCare
//
//  Created by Atheer abdullah on 05/06/1443 AH.
//


import CoreData

class DataStore {
    
    var viewContext: NSManagedObjectContext {
        return container.viewContext
    }
    
    func newBackgroundContext() -> NSManagedObjectContext {
        return container.newBackgroundContext()
    }
    
    func newChildViewContext() -> NSManagedObjectContext {
        return newChildContext(for: viewContext)
    }
    
    func newChildContext(for context: NSManagedObjectContext) -> NSManagedObjectContext {
        let childContext = NSManagedObjectContext(concurrencyType: context.concurrencyType)
        childContext.parent = context
        return childContext
    }
    
    let container = NSPersistentContainer(name: "PlantModel")
    
    func loadPersistentStores(_ handler: @escaping (NSPersistentContainer) -> ()) {
        container.loadPersistentStores { (description, error) in
            guard error == nil else {
                fatalError("Failed to load persistent store")
            }
            
            DispatchQueue.main.async { handler(self.container) }
        }
    }
    
}
