(define
    (problem problem_10_8)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 G W R)
(cube2 B Y O)
(cube3 R Y B)
(cube4 B W O)
(cube5 G Y R)
(cube6 Y O G)
(cube7 W B R)
(cube8 O G W)
(edge12 Y O)
(edge13 W R)
(edge15 G Y)
(edge24 Y B)
(edge26 G R)
(edge34 W O)
(edge37 R Y)
(edge48 B W)
(edge56 O G)
(edge57 W G)
(edge68 O B)
(edge78 R B)
        
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