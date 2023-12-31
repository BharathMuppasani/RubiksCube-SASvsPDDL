(define
    (problem problem_18_1)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 G W R)
(cube2 Y B R)
(cube3 R G Y)
(cube4 W B R)
(cube5 B Y O)
(cube6 W O B)
(cube7 G Y O)
(cube8 O G W)
(edge12 O W)
(edge13 O G)
(edge15 W R)
(edge24 W G)
(edge26 B O)
(edge34 G R)
(edge37 O Y)
(edge48 W B)
(edge56 Y B)
(edge57 B R)
(edge68 Y G)
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