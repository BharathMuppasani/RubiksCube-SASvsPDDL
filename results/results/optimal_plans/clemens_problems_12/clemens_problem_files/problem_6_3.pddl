(define
    (problem problem_6_3)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 G Y O)
(cube2 R B W)
(cube3 G Y R)
(cube4 O B W)
(cube5 B Y O)
(cube6 R G W)
(cube7 B Y R)
(cube8 O G W)
(edge12 Y O)
(edge13 O B)
(edge15 B Y)
(edge24 R W)
(edge26 O G)
(edge34 Y R)
(edge37 G Y)
(edge48 R G)
(edge56 W B)
(edge57 R B)
(edge68 O W)
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