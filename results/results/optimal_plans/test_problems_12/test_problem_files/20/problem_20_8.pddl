(define
    (problem problem_20_8)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 B W O)
(cube2 B Y O)
(cube3 Y R G)
(cube4 R W B)
(cube5 Y B R)
(cube6 O G Y)
(cube7 G O W)
(cube8 G R W)
(edge12 B O)
(edge13 B R)
(edge15 R W)
(edge24 R Y)
(edge26 B Y)
(edge34 O W)
(edge37 G R)
(edge48 G Y)
(edge56 Y O)
(edge57 G O)
(edge68 W G)
(edge78 B W)
        
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