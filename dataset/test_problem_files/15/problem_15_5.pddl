(define
    (problem problem_15_5)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 Y O G)
(cube2 R B W)
(cube3 Y B R)
(cube4 G O W)
(cube5 O B Y)
(cube6 B W O)
(cube7 Y G R)
(cube8 G R W)
(edge12 W O)
(edge13 B W)
(edge15 Y B)
(edge24 Y R)
(edge26 O Y)
(edge34 R B)
(edge37 Y G)
(edge48 G O)
(edge56 G W)
(edge57 R G)
(edge68 B O)
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