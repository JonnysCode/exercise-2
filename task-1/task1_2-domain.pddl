(define (domain task1Domain)

    (:requirements
        :typing
    )

    (:types
        inhabitant
        room 
        time 
        maintenanceWorker
    )


    (:predicates
        (stayIn ?s - inhabitant ?si - room)
        (arriveTime ?t - time ?tr - room)
        (setup ?p - inhabitant)
        (available ?a - time ?ta - maintenanceWorker)
        (unlocked ?u - room ?ur - time ?ut - maintenanceWorker)
        (joined ?j - room ?jr - time ?jt - maintenanceWorker)
    )
    
    (:action unlockRoom
        :parameters (?t - time ?w - maintenanceWorker ?r - room)
        :precondition (and (available ?t ?w) (arriveTime ?t ?r))
        :effect (and (unlocked ?r ?t ?w) (not (available ?t ?w)))
    )
    
    (:action joinInhabitant
        :parameters (?t - time ?w - maintenanceWorker ?r - room)
        :precondition (unlocked ?r ?t ?w)
        :effect (joined ?r ?t ?w)
    )

    (:action showRoom
        :parameters (?t - time ?i - inhabitant ?w - maintenanceWorker ?r - room)
        :precondition (and (joined ?r ?t ?w) (stayIn ?i ?r))
        :effect (and (setup ?i) (not (available ?t ?w)))
    )
)