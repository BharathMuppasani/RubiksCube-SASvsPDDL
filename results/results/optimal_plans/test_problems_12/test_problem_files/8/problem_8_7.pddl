(define
    (problem problem_8_7)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 O B W)
(cube2 G W O)
(cube3 B W R)
(cube4 O Y B)
(cube5 R G Y)
(cube6 G W R)
(cube7 Y O G)
(cube8 Y B R)
(edge12 B W)
(edge13 Y B)
(edge15 B R)
(edge24 G R)
(edge26 G W)
(edge34 Y O)
(edge37 R Y)
(edge48 G Y)
(edge56 O W)
(edge57 W R)
(edge68 B O)
(edge78 O G)
        
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