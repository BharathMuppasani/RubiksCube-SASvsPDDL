(define
    (problem problem_1_3)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 G W R)
(cube2 B R Y)
(cube3 Y O B)
(cube4 W O B)
(cube5 G W O)
(cube6 B R W)
(cube7 R Y G)
(cube8 O Y G)
(edge12 W R)
(edge13 Y B)
(edge15 G W)
(edge24 W B)
(edge26 B R)
(edge34 O B)
(edge37 R Y)
(edge48 O Y)
(edge56 W O)
(edge57 R G)
(edge68 O G)
(edge78 Y G)
        
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