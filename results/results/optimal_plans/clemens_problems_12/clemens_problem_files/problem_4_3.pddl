(define
    (problem problem_4_3)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 O W G)
(cube2 B Y O)
(cube3 R W G)
(cube4 G Y O)
(cube5 G Y R)
(cube6 R W B)
(cube7 B Y R)
(cube8 O W B)
(edge12 W G)
(edge13 R G)
(edge15 O W)
(edge24 O B)
(edge26 B Y)
(edge34 Y O)
(edge37 R W)
(edge48 G Y)
(edge56 Y R)
(edge57 O G)
(edge68 R B)
(edge78 W B)
        
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