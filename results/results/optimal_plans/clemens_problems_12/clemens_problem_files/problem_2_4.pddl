(define
    (problem problem_2_4)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 G R Y)
(cube2 O W B)
(cube3 G O Y)
(cube4 B Y R)
(cube5 R B W)
(cube6 O W G)
(cube7 R G W)
(cube8 B Y O)
(edge12 W B)
(edge13 G Y)
(edge15 R B)
(edge24 O B)
(edge26 O W)
(edge34 Y R)
(edge37 R G)
(edge48 B Y)
(edge56 W G)
(edge57 R W)
(edge68 O G)
(edge78 Y O)
        
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