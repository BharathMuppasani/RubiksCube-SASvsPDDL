(define
    (problem problem_9_4)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 W B R)
(cube2 G Y R)
(cube3 G O Y)
(cube4 W O B)
(cube5 O G W)
(cube6 W R G)
(cube7 B O Y)
(cube8 Y B R)
(edge12 R B)
(edge13 W O)
(edge15 R W)
(edge24 W B)
(edge26 B Y)
(edge34 O Y)
(edge37 O B)
(edge48 R G)
(edge56 R Y)
(edge57 Y G)
(edge68 W G)
(edge78 O G)
        
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