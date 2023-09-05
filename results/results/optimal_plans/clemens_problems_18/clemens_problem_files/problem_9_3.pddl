(define
    (problem problem_9_3)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 B R W)
(cube2 B Y O)
(cube3 W O G)
(cube4 W O B)
(cube5 R W G)
(cube6 G R Y)
(cube7 O G Y)
(cube8 R Y B)
(edge12 R W)
(edge13 B W)
(edge15 B O)
(edge24 R Y)
(edge26 B Y)
(edge34 Y G)
(edge37 W O)
(edge48 O G)
(edge56 W G)
(edge57 O Y)
(edge68 R B)
(edge78 R G)
        
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