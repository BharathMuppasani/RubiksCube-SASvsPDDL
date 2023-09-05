(define
    (problem problem_13_3)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 Y G R)
(cube2 B W R)
(cube3 R Y B)
(cube4 W G O)
(cube5 W B O)
(cube6 G Y O)
(cube7 Y B O)
(cube8 G R W)
(edge12 R B)
(edge13 O Y)
(edge15 R W)
(edge24 G R)
(edge26 O W)
(edge34 B O)
(edge37 R Y)
(edge48 W B)
(edge56 B Y)
(edge57 G Y)
(edge68 G O)
(edge78 G W)
        
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