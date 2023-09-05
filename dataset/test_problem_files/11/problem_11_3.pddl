(define
    (problem problem_11_3)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 G W R)
(cube2 W R B)
(cube3 O G W)
(cube4 B Y R)
(cube5 B Y O)
(cube6 Y G R)
(cube7 G Y O)
(cube8 W B O)
(edge12 O B)
(edge13 G R)
(edge15 B Y)
(edge24 O G)
(edge26 O Y)
(edge34 G W)
(edge37 R W)
(edge48 W B)
(edge56 G Y)
(edge57 W O)
(edge68 Y R)
(edge78 R B)
        
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