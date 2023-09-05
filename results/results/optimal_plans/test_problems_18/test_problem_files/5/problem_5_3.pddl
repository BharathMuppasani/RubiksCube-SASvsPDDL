(define
    (problem problem_5_3)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 Y G R)
(cube2 W R B)
(cube3 O B Y)
(cube4 R B Y)
(cube5 G O Y)
(cube6 O W G)
(cube7 W R G)
(cube8 B O W)
(edge12 R B)
(edge13 Y R)
(edge15 R W)
(edge24 W B)
(edge26 O W)
(edge34 B Y)
(edge37 G Y)
(edge48 B O)
(edge56 O Y)
(edge57 W G)
(edge68 O G)
(edge78 R G)
        
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