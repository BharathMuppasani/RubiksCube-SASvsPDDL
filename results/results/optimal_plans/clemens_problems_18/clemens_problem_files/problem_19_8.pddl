(define
    (problem problem_19_8)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 W G O)
(cube2 Y G O)
(cube3 G R W)
(cube4 B R W)
(cube5 R Y B)
(cube6 B O Y)
(cube7 W O B)
(cube8 G Y R)
(edge12 G O)
(edge13 Y R)
(edge15 R W)
(edge24 O B)
(edge26 W B)
(edge34 Y G)
(edge37 R G)
(edge48 Y B)
(edge56 W G)
(edge57 B R)
(edge68 Y O)
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