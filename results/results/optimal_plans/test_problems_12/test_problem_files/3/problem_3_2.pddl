(define
    (problem problem_3_2)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 W O B)
(cube2 Y O B)
(cube3 W R B)
(cube4 Y R B)
(cube5 O Y G)
(cube6 R Y G)
(cube7 O W G)
(cube8 R W G)
(edge12 O B)
(edge13 W B)
(edge15 R W)
(edge24 Y B)
(edge26 O W)
(edge34 R B)
(edge37 R Y)
(edge48 O Y)
(edge56 Y G)
(edge57 O G)
(edge68 R G)
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