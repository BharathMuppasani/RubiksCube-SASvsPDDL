(define
    (problem problem_7_0)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 W B R)
(cube2 B O W)
(cube3 Y G O)
(cube4 W R G)
(cube5 G Y R)
(cube6 G O W)
(cube7 B Y R)
(cube8 Y O B)
(edge12 Y O)
(edge13 Y B)
(edge15 W B)
(edge24 B R)
(edge26 G O)
(edge34 R G)
(edge37 Y G)
(edge48 R Y)
(edge56 W R)
(edge57 W G)
(edge68 O W)
(edge78 O B)
        
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