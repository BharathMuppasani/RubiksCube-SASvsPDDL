(define
    (problem problem_7_1)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 R B Y)
(cube2 O G W)
(cube3 B W R)
(cube4 R G W)
(cube5 R G Y)
(cube6 B O Y)
(cube7 W O B)
(cube8 O Y G)
(edge12 R G)
(edge13 R Y)
(edge15 R B)
(edge24 O W)
(edge26 B O)
(edge34 G W)
(edge37 B W)
(edge48 O Y)
(edge56 W R)
(edge57 Y B)
(edge68 O G)
(edge78 Y G)
        
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