(define
    (problem problem_9_8)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 O G Y)
(cube2 B Y O)
(cube3 W O G)
(cube4 G R Y)
(cube5 R W G)
(cube6 O B W)
(cube7 B Y R)
(cube8 R B W)
(edge12 W G)
(edge13 W B)
(edge15 R G)
(edge24 O B)
(edge26 Y B)
(edge34 O G)
(edge37 R W)
(edge48 R B)
(edge56 Y G)
(edge57 O W)
(edge68 R Y)
(edge78 O Y)
        
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