(define
    (problem problem_13_1)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 R B Y)
(cube2 O G W)
(cube3 G O Y)
(cube4 O B W)
(cube5 G Y R)
(cube6 W R G)
(cube7 B R W)
(cube8 B Y O)
(edge12 O Y)
(edge13 Y B)
(edge15 R W)
(edge24 Y G)
(edge26 O W)
(edge34 W B)
(edge37 R G)
(edge48 B O)
(edge56 G W)
(edge57 B R)
(edge68 G O)
(edge78 R Y)
        
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