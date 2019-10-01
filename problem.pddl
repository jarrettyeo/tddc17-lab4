(define (problem problem_0)
  
    (:domain 
        shakey
    )

    (:objects

        cargo-room store-room inspection-room holding-room - Room
        door-1 door-2 door-3 door-4 - Door
        switch-1 switch-2 switch-3 - Switch

        shakey - Robot
        gripper-1 gripper-2 - Gripper 

        ball-1 ball-2 - Object ; can be carried
        box-1 box-2 box-3 - Object ; can be pushed and climbed

    )

    (:init
        
        (isSwitch switch-1)
        (isSwitch switch-2)
        (isSwitch switch-3)
        (isSwitch switch-4)
        (isInside switch-1 cargo-room) 
        (isInside switch-2 store-room) 
        (isInside switch-3 inspection-room) 

        (isGripper gripper-1) 
        (isGripper gripper-2)
        (isFree gripper-1)
        (isFree gripper-2)

        (isConnectionBetween door-1 cargo-room store-room) 
        (isConnectionBetween door-1 store-room cargo-room)
        (isConnectionBetween door-2 store-room inspection-room) 
        (isConnectionBetween door-2 inspection-room store-room)
        (isConnectionBetween door-3 cargo-room inspection-room) 
        (isConnectionBetween door-3 inspection-room cargo-room)
        (isConnectionBetween door-4 inspection-room holding-room)
        (isConnectionBetween door-4 holding-room inspection-room)
        
        (isWide door-1) 
        (isWide door-3)
        (isWide door-4)

        (isInside shakey cargo-room)
        (isMovable shakey)

        (isInside ball-1 cargo-room)
        (isCarriable ball-1)
        (isInside ball-2 cargo-room)
        (isCarriable ball-2)

        (isInside box-1 cargo-room)
        (isPushable box-1)
        (isClimbable box-1)
        (isInside box-2 cargo-room)
        (isPushable box-2)
        (isClimbable box-2)
        (isInside box-3 cargo-room)
        (isPushable box-3)
        (isClimbable box-3)

    )

    (:goal 
        (and
            (isInside shakey cargo-room)
            (isInside ball-1 holding-room)
            (isInside ball-2 store-room)
            (isInside box-1 inspection-room)
            (isInside box-2 holding-room)
        )
    )

)