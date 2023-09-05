(define
    (problem problem_7_9)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 R Y G)
(cube2 O Y G)
(cube3 O W B)
(cube4 W G O)
(cube5 B R Y)
(cube6 G W R)
(cube7 O Y B)
(cube8 R B W)
(edge12 Y G)
(edge13 O B)
(edge15 O W)
(edge24 R W)
(edge26 R B)
(edge34 W B)
(edge37 W G)
(edge48 O Y)
(edge56 R Y)
(edge57 O G)
(edge68 R G)
(edge78 Y B)
        
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