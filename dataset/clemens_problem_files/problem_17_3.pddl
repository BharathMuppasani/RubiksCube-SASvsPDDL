(define
    (problem problem_17_3)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 G Y O)
(cube2 G R W)
(cube3 B R Y)
(cube4 Y G R)
(cube5 O W B)
(cube6 G O W)
(cube7 B O Y)
(cube8 W R B)
(edge12 W R)
(edge13 Y O)
(edge15 O W)
(edge24 R B)
(edge26 B Y)
(edge34 O B)
(edge37 W B)
(edge48 G O)
(edge56 G W)
(edge57 Y G)
(edge68 Y R)
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