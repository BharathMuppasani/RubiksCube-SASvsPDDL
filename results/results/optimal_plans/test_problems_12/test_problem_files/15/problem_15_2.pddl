(define
    (problem problem_15_2)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 W G O)
(cube2 O B Y)
(cube3 W B O)
(cube4 R G W)
(cube5 Y G O)
(cube6 Y G R)
(cube7 R B Y)
(cube8 R B W)
(edge12 O G)
(edge13 O Y)
(edge15 R Y)
(edge24 Y B)
(edge26 B R)
(edge34 R G)
(edge37 W B)
(edge48 B O)
(edge56 W O)
(edge57 Y G)
(edge68 G W)
(edge78 R W)
        
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