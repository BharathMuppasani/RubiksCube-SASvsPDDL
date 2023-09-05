(define
    (problem problem_3_8)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 W O B)
(cube2 Y O B)
(cube3 W R B)
(cube4 G R Y)
(cube5 R W G)
(cube6 Y O G)
(cube7 B Y R)
(cube8 O G W)
(edge12 O B)
(edge13 W B)
(edge15 R W)
(edge24 G Y)
(edge26 Y O)
(edge34 R B)
(edge37 B Y)
(edge48 O G)
(edge56 W G)
(edge57 R G)
(edge68 O W)
(edge78 Y R)
        
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