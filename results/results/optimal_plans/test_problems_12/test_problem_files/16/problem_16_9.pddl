(define
    (problem problem_16_9)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 G W R)
(cube2 G Y R)
(cube3 G O Y)
(cube4 Y B O)
(cube5 O G W)
(cube6 W B R)
(cube7 W O B)
(cube8 B R Y)
(edge12 G R)
(edge13 B W)
(edge15 O G)
(edge24 R Y)
(edge26 R W)
(edge34 B R)
(edge37 W O)
(edge48 B Y)
(edge56 B O)
(edge57 Y G)
(edge68 G W)
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