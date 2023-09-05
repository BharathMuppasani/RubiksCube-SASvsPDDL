(define
    (problem problem_2_7)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 O Y B)
(cube2 R Y B)
(cube3 O W B)
(cube4 R W B)
(cube5 Y R G)
(cube6 W R G)
(cube7 Y O G)
(cube8 W O G)
(edge12 Y B)
(edge13 O B)
(edge15 R W)
(edge24 R B)
(edge26 O W)
(edge34 W B)
(edge37 R Y)
(edge48 O Y)
(edge56 R G)
(edge57 Y G)
(edge68 W G)
(edge78 O G)
        
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