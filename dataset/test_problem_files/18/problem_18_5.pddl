(define
    (problem problem_18_5)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 B W O)
(cube2 O B Y)
(cube3 R B W)
(cube4 R Y G)
(cube5 R Y B)
(cube6 R G W)
(cube7 G O W)
(cube8 O Y G)
(edge12 W R)
(edge13 Y R)
(edge15 R B)
(edge24 O B)
(edge26 G O)
(edge34 Y O)
(edge37 B Y)
(edge48 W G)
(edge56 G Y)
(edge57 W B)
(edge68 R G)
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