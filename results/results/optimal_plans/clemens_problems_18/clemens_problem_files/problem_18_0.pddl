(define
    (problem problem_18_0)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 G R Y)
(cube2 O Y G)
(cube3 W G R)
(cube4 B W O)
(cube5 O G W)
(cube6 R W B)
(cube7 R B Y)
(cube8 Y O B)
(edge12 B Y)
(edge13 B W)
(edge15 O Y)
(edge24 Y R)
(edge26 G O)
(edge34 W G)
(edge37 O W)
(edge48 O B)
(edge56 R W)
(edge57 G Y)
(edge68 R B)
(edge78 G R)
        
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