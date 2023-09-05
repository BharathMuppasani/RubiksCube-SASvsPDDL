(define
    (problem problem_9_9)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 O W G)
(cube2 W R B)
(cube3 O B Y)
(cube4 W O B)
(cube5 R G Y)
(cube6 R B Y)
(cube7 G Y O)
(cube8 W G R)
(edge12 B O)
(edge13 O Y)
(edge15 W R)
(edge24 W B)
(edge26 W G)
(edge34 G Y)
(edge37 R B)
(edge48 G O)
(edge56 R G)
(edge57 Y B)
(edge68 R Y)
(edge78 O W)
        
    )
    (:goal
        (and
            (cube1 R W B)
            (cube2 O W B)
            (cube3 R Y B)
            (cube4 O Y B)
            (cube5 R W G)
            (cube6 O W G)
            (cube7 R Y G)
            (cube8 O Y G)

            (edge12 W B)
            (edge24 O B)
            (edge34 Y B)
            (edge13 R B)

            (edge15 R W)
            (edge26 O W)
            (edge48 O Y)
            (edge37 R Y)

            (edge56 W G)
            (edge68 O G)
            (edge78 Y G)
            (edge57 R G)
 
        )
    )
)