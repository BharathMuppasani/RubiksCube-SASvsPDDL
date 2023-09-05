(define
    (problem problem_18_3)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 W B R)
(cube2 Y O B)
(cube3 R Y B)
(cube4 O G Y)
(cube5 O W B)
(cube6 W G O)
(cube7 W R G)
(cube8 Y R G)
(edge12 R G)
(edge13 B O)
(edge15 G O)
(edge24 Y B)
(edge26 O W)
(edge34 Y G)
(edge37 R Y)
(edge48 B R)
(edge56 W B)
(edge57 W G)
(edge68 Y O)
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