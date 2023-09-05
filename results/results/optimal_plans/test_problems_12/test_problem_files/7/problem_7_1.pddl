(define
    (problem problem_7_1)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 R Y G)
(cube2 G W O)
(cube3 O Y G)
(cube4 R B Y)
(cube5 W B O)
(cube6 G W R)
(cube7 R W B)
(cube8 Y O B)
(edge12 O B)
(edge13 G R)
(edge15 W B)
(edge24 R Y)
(edge26 G W)
(edge34 G Y)
(edge37 R W)
(edge48 Y O)
(edge56 O G)
(edge57 R B)
(edge68 O W)
(edge78 Y B)
        
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