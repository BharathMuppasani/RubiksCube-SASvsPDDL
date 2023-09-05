(define
    (problem problem_6_6)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 W G O)
(cube2 G R W)
(cube3 B Y O)
(cube4 W O B)
(cube5 R Y B)
(cube6 G Y O)
(cube7 R W B)
(cube8 G Y R)
(edge12 R W)
(edge13 R B)
(edge15 W G)
(edge24 W B)
(edge26 R G)
(edge34 O B)
(edge37 B Y)
(edge48 G Y)
(edge56 Y O)
(edge57 O W)
(edge68 O G)
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