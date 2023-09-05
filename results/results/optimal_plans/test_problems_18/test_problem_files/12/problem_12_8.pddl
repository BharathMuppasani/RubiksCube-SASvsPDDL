(define
    (problem problem_12_8)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 W R G)
(cube2 B Y O)
(cube3 G Y R)
(cube4 Y O G)
(cube5 G W O)
(cube6 R W B)
(cube7 W O B)
(cube8 R Y B)
(edge12 Y O)
(edge13 B W)
(edge15 Y G)
(edge24 R G)
(edge26 Y R)
(edge34 B R)
(edge37 W G)
(edge48 R W)
(edge56 B O)
(edge57 B Y)
(edge68 O G)
(edge78 O W)
        
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