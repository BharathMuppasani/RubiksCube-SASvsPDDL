(define
    (problem problem_11_10)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 G W R)
(cube2 W B O)
(cube3 O Y G)
(cube4 B R W)
(cube5 G W O)
(cube6 Y R B)
(cube7 G R Y)
(cube8 Y O B)
(edge12 B O)
(edge13 G R)
(edge15 G W)
(edge24 Y R)
(edge26 B W)
(edge34 R W)
(edge37 Y B)
(edge48 R B)
(edge56 W O)
(edge57 G Y)
(edge68 O G)
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