(define
    (problem problem_8_1)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 R B Y)
(cube2 W O G)
(cube3 Y R G)
(cube4 W R G)
(cube5 Y O B)
(cube6 Y O G)
(cube7 B W O)
(cube8 W R B)
(edge12 B Y)
(edge13 O W)
(edge15 R W)
(edge24 B O)
(edge26 W B)
(edge34 R G)
(edge37 O Y)
(edge48 R Y)
(edge56 O G)
(edge57 W G)
(edge68 Y G)
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