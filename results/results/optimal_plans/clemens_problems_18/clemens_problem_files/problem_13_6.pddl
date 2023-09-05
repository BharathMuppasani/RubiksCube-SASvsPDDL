(define
    (problem problem_13_6)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 B W O)
(cube2 R B W)
(cube3 B Y O)
(cube4 Y R B)
(cube5 O G W)
(cube6 G Y O)
(cube7 R G W)
(cube8 R G Y)
(edge12 R W)
(edge13 Y O)
(edge15 Y B)
(edge24 G Y)
(edge26 R B)
(edge34 W G)
(edge37 O G)
(edge48 O B)
(edge56 G R)
(edge57 B W)
(edge68 R Y)
(edge78 O W)
        
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