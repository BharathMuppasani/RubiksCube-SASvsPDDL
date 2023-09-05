(define
    (problem problem_13_1)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 O B W)
(cube2 Y G O)
(cube3 R Y B)
(cube4 Y G R)
(cube5 R B W)
(cube6 R G W)
(cube7 G O W)
(cube8 Y O B)
(edge12 Y B)
(edge13 O G)
(edge15 R B)
(edge24 R Y)
(edge26 O Y)
(edge34 B O)
(edge37 B W)
(edge48 R G)
(edge56 W O)
(edge57 G W)
(edge68 R W)
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