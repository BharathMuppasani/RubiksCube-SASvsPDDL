(define
    (problem problem_11_5)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 G Y O)
(cube2 Y R G)
(cube3 W G R)
(cube4 W B R)
(cube5 Y O B)
(cube6 G O W)
(cube7 W O B)
(cube8 Y B R)
(edge12 R G)
(edge13 Y B)
(edge15 R Y)
(edge24 B O)
(edge26 B W)
(edge34 O G)
(edge37 W O)
(edge48 Y G)
(edge56 R B)
(edge57 O Y)
(edge68 G W)
(edge78 R W)
        
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