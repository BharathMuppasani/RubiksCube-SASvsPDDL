(define
    (problem problem_10_5)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 W R G)
(cube2 Y G O)
(cube3 R Y B)
(cube4 O B W)
(cube5 B W R)
(cube6 R Y G)
(cube7 O Y B)
(cube8 O G W)
(edge12 R G)
(edge13 W B)
(edge15 O W)
(edge24 R W)
(edge26 W G)
(edge34 Y B)
(edge37 Y R)
(edge48 O G)
(edge56 O Y)
(edge57 B R)
(edge68 B O)
(edge78 G Y)
        
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