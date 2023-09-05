(define
    (problem problem_10_3)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 Y O G)
(cube2 Y B R)
(cube3 B Y O)
(cube4 R G W)
(cube5 R G Y)
(cube6 O W G)
(cube7 R W B)
(cube8 O W B)
(edge12 W G)
(edge13 R B)
(edge15 G O)
(edge24 Y R)
(edge26 W R)
(edge34 O B)
(edge37 W O)
(edge48 Y B)
(edge56 G Y)
(edge57 G R)
(edge68 O Y)
(edge78 W B)
        
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