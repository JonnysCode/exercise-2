(define (problem setup-problem)

    (:domain 
        task1Domain
    )
    
    (:objects 
        room1 room2 room3 room4 room5 - room
        inhabitant1 inhabitant2 inhabitant3 inhabitant4 inhabitant5 - inhabitant
        x9am x10am x11am x12am - time
        maintenanceWorker1 maintenanceWorker2 - maintenanceWorker
    )
    
    (:init 
        (available x9am maintenanceWorker1) 
        (available x10am maintenanceWorker1)
        (available x11am maintenanceWorker1)
        (available x12am maintenanceWorker1) 
        (available x9am maintenanceWorker2) 
        (available x10am maintenanceWorker2)
        (available x11am maintenanceWorker2)
        (available x12am maintenanceWorker2) 
        
        (arriveTime x9am room1) (arriveTime x10am room1)
        (arriveTime x10am room2) (arriveTime x11am room2)
        (arriveTime x10am room3) (arriveTime x12am room3)
        (arriveTime x9am room4) (arriveTime x11am room4)
        (arriveTime x11am room5) (arriveTime x12am room5)
        
        (stayIn inhabitant1 room1) 
        (stayIn inhabitant2 room2)
        (stayIn inhabitant3 room3)
        (stayIn inhabitant4 room4)
        (stayIn inhabitant5 room5)
    )
    
    (:goal 
        (and 
            (setup inhabitant1)
            (setup inhabitant2)
            (setup inhabitant3)
            (setup inhabitant4)
            (setup inhabitant5)
        )
    )
    
    
)