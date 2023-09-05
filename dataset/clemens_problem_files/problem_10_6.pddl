(define
    (problem problem_10_6)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 O G Y)
(cube2 W O G)
(cube3 W R B)
(cube4 G R Y)
(cube5 B O W)
(cube6 Y R B)
(cube7 R G W)
(cube8 B Y O)
(edge12 Y G)
(edge13 O Y)
(edge15 R Y)
(edge24 W B)
(edge26 W O)
(edge34 B O)
(edge37 O G)
(edge48 G R)
(edge56 R B)
(edge57 Y B)
(edge68 W R)
(edge78 W G)
        
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