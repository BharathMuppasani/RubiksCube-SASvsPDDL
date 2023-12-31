(define
    (problem problem_7_3)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 W R G)
(cube2 G Y R)
(cube3 W R B)
(cube4 Y O G)
(cube5 B Y O)
(cube6 G O W)
(cube7 W O B)
(cube8 Y B R)
(edge12 G O)
(edge13 B W)
(edge15 G Y)
(edge24 G R)
(edge26 O B)
(edge34 R B)
(edge37 W O)
(edge48 Y B)
(edge56 Y O)
(edge57 R Y)
(edge68 G W)
(edge78 W R)
        
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