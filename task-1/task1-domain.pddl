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
        ;(arrived ?a - inhabitant)
        (stayIn ?s - inhabitant ?si - room)
        (arriveTime ?t - time ?tr - room)
        (setup ?p - inhabitant)
        (available ?a - time ?ta - maintenanceWorker)
    )

    (:action setupRoom
        :parameters (?t - time ?i - inhabitant ?w - maintenanceWorker ?r - room)
        :precondition (and (available ?t ?w) (stayIn ?i ?r) (arriveTime ?t ?r)) ;(arrived ?x)
        :effect (and (setup ?i) (not (available ?t ?w)))
    )
)