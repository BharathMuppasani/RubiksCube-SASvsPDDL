(define
    (problem problem_9_10)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 G R Y)
(cube2 B R Y)
(cube3 O W B)
(cube4 W G O)
(cube5 Y O B)
(cube6 G W R)
(cube7 Y O G)
(cube8 W R B)
(edge12 O G)
(edge13 G Y)
(edge15 W O)
(edge24 R G)
(edge26 O Y)
(edge34 B R)
(edge37 R W)
(edge48 W G)
(edge56 W B)
(edge57 Y R)
(edge68 B Y)
(edge78 B O)
        
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