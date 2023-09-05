(define
    (problem problem_2_6)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 R W B)
(cube2 O G W)
(cube3 G Y R)
(cube4 O B W)
(cube5 R W G)
(cube6 B O Y)
(cube7 G Y O)
(cube8 B R Y)
(edge12 W B)
(edge13 R B)
(edge15 R W)
(edge24 O W)
(edge26 O G)
(edge34 Y R)
(edge37 G Y)
(edge48 O B)
(edge56 W G)
(edge57 R G)
(edge68 B Y)
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