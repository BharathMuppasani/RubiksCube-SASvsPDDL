(define
    (problem problem_19_9)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 O G Y)
(cube2 Y R G)
(cube3 G R W)
(cube4 B W O)
(cube5 Y O B)
(cube6 B R W)
(cube7 O W G)
(cube8 R Y B)
(edge12 W B)
(edge13 R B)
(edge15 O Y)
(edge24 Y B)
(edge26 R Y)
(edge34 R G)
(edge37 B O)
(edge48 Y G)
(edge56 W O)
(edge57 O G)
(edge68 R W)
(edge78 W G)
        
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