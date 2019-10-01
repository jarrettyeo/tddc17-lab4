(define (domain shakey)

    (:requirements 
        :strips
    )

    (:types
        Room
        Door
        Object  
        Switch
        Robot
        Gripper
    )

    (:predicates
        
        ; Define a switch
        (isSwitch 
            ?switch - Switch)
        
        ; Define a gripper
        (isGripper 
            ?gripper - Gripper)

        ; Which door is between which two rooms?
        (isConnectionBetween 
            ?door - Door
            ?room-1 ?room-2 - Room)
        
        ; Which door is wide?
        (isWide 
            ?door - Door)
        
        ; What object is pushable?
        (isPushable 
            ?item - Object)
        
        ; What object is climbable?
        (isClimbable 
            ?item - Object)
        
        ; What object is carriable?
        (isCarriable 
            ?item - Object)
        
        ; What object is movable?
        (isMovable 
            ?object - Object)
                
        ; Which object is which gripper carrying?
        (isCarrying 
            ?item - Object 
            ?gripper - Gripper)

        ; Which gripper is free?
        (isFree 
            ?gripper - Gripper)
        
        ; Which object is inside which room?
        (isInside 
            ?what - Object 
            ?room - Room)
        
        ; Is a switch turned on?    
        (isTurnedOn 
            ?switch - Switch)
        
        ; Is the robot climbing on top of an object?
        (isClimbingOnTopOfAnObject
            ?robot - Robot)
    )

    ; Robot moves from one room to another room through a door
    (:action travel 
        
        :parameters 
            (?robot ?thisRoom ?anotherRoom ?door)
        
        :precondition 
            (and 
                (isConnectionBetween ?door ?thisRoom ?anotherRoom)
                (isInside ?robot ?thisRoom)
                (isMovable ?robot)
                (not (isClimbingOnTopOfAnObject ?robot))
            ) 
        
        :effect 
            (and 
                (isInside ?robot ?anotherRoom)
                (not (isInside ?robot ?thisRoom))
            ) 

    )

    ; Robot can push a movable object to another room
    (:action push

        :parameters 
            (?robot ?item ?thisRoom ?anotherRoom ?door)
    
        :precondition 
            (and
                (isConnectionBetween ?door ?thisRoom ?anotherRoom)
                (isInside ?robot ?thisRoom)
                (isMovable ?robot)
                (isInside ?item ?thisRoom)
                (isPushable ?item)
                (isWide ?door)
                (not (isClimbingOnTopOfAnObject ?robot))
            ) 
    
        :effect 
            (and 
                (isInside ?robot ?anotherRoom)
                (isInside ?item ?anotherRoom)
                (not (isInside ?robot ?thisRoom))
                (not (isInside ?item ?thisRoom))
            )
    
    )

    ; Robot can ascend a box
    (:action ascend
    
        :parameters 
            (?robot ?box ?room)
    
        :precondition 
            (and 
                (isInside ?robot ?room)
                (isInside ?box ?room)
                (isMovable ?robot)
                (isClimbable ?box)
                (not (isClimbingOnTopOfAnObject ?robot)) 
            )
    
        :effect
            (isClimbingOnTopOfAnObject ?robot)
    
    )

    ; Robot can descend a box
    (:action descend
    
        :parameters 
            (?robot)
    
        :precondition 
            (and
                (isClimbingOnTopOfAnObject ?robot)
                (isMovable ?robot)
            )
    
        :effect
            (not (isClimbingOnTopOfAnObject ?robot))
    
    )

    ; Robot can turn on a switch in the room while on top of a box
    (:action on
    
        :parameters
            (?robot ?switch ?room)
    
        :precondition
            (and
                (isClimbingOnTopOfAnObject ?robot)
                (isInside ?robot ?room)
                (isInside ?switch ?room)
                (isSwitch ?switch)
                (not (isTurnedOn ?switch))
            )
    
        :effect
            (isTurnedOn ?switch)
    
    )

    ; Robot can carry object
    (:action carry
    
        :parameters
            (?robot ?item ?room ?switch ?gripper)
    
        :precondition
            (and
                (isInside ?robot ?room)
                (isInside ?switch ?room)
                (isInside ?item ?room)
                (isTurnedOn ?switch)
                (isCarriable ?item)
                (isMovable ?robot)
                (isGripper ?gripper)
                (isFree ?gripper)
                (not (isClimbingOnTopOfAnObject ?robot)) 
            )
    
        :effect
            (and
                (isCarrying ?item ?gripper)
                (not (isInside ?item ?room))
                (not (isFree ?gripper))
            )
    
    )

    ; Robot can release a carried item
    (:action release
    
        :parameters
            (?robot ?item ?room ?gripper)
    
        :precondition
            (and
                (isGripper ?gripper)
                (isCarrying ?item ?gripper)
                (isMovable ?robot)
                (isInside ?robot ?room)
                (not (isClimbingOnTopOfAnObject ?robot))
            )
    
        :effect
            (and
                (isFree ?gripper)
                (isInside ?item ?room)
                (not (isCarrying ?item ?gripper))
            )
    
    )

)