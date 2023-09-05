(define
    (problem problem_7_7)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 Y R B)
(cube2 W O G)
(cube3 R G Y)
(cube4 W R G)
(cube5 W B O)
(cube6 G Y O)
(cube7 B R W)
(cube8 B Y O)
(edge12 G O)
(edge13 R Y)
(edge15 R W)
(edge24 W G)
(edge26 W O)
(edge34 W B)
(edge37 R G)
(edge48 B Y)
(edge56 B O)
(edge57 Y G)
(edge68 R B)
(edge78 O Y)
        
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