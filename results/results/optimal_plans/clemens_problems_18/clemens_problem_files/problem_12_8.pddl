(define
    (problem problem_12_8)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 Y B O)
(cube2 Y R G)
(cube3 B R Y)
(cube4 R W B)
(cube5 G W O)
(cube6 B W O)
(cube7 G Y O)
(cube8 W G R)
(edge12 B Y)
(edge13 O G)
(edge15 G W)
(edge24 R G)
(edge26 B R)
(edge34 Y R)
(edge37 G Y)
(edge48 W B)
(edge56 W O)
(edge57 B O)
(edge68 R W)
(edge78 Y O)
        
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