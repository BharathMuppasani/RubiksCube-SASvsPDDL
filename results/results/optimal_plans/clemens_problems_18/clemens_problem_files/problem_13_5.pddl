(define
    (problem problem_13_5)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 R B Y)
(cube2 B W R)
(cube3 G R W)
(cube4 Y G R)
(cube5 W O G)
(cube6 O Y B)
(cube7 W O B)
(cube8 Y G O)
(edge12 R B)
(edge13 Y R)
(edge15 G Y)
(edge24 G O)
(edge26 B W)
(edge34 Y B)
(edge37 O W)
(edge48 Y O)
(edge56 R W)
(edge57 R G)
(edge68 O B)
(edge78 G W)
        
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