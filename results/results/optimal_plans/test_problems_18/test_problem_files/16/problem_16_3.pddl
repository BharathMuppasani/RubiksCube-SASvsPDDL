(define
    (problem problem_16_3)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 G W R)
(cube2 W O G)
(cube3 O W B)
(cube4 R W B)
(cube5 Y G O)
(cube6 Y R B)
(cube7 B O Y)
(cube8 Y R G)
(edge12 Y R)
(edge13 B R)
(edge15 O W)
(edge24 B O)
(edge26 R W)
(edge34 W B)
(edge37 B Y)
(edge48 R G)
(edge56 O Y)
(edge57 G O)
(edge68 G W)
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