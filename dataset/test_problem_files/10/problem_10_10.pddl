(define
    (problem problem_10_10)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 R Y G)
(cube2 R Y B)
(cube3 O Y G)
(cube4 O W G)
(cube5 W B O)
(cube6 O Y B)
(cube7 W R G)
(cube8 B W R)
(edge12 G Y)
(edge13 O G)
(edge15 W G)
(edge24 B O)
(edge26 W B)
(edge34 O Y)
(edge37 R Y)
(edge48 R B)
(edge56 W R)
(edge57 G R)
(edge68 Y B)
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