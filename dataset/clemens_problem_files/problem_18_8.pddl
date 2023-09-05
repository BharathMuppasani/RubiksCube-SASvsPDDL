(define
    (problem problem_18_8)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 B R W)
(cube2 G W O)
(cube3 G Y R)
(cube4 Y B O)
(cube5 G R W)
(cube6 O B W)
(cube7 Y O G)
(cube8 Y B R)
(edge12 W R)
(edge13 O W)
(edge15 G Y)
(edge24 G O)
(edge26 G R)
(edge34 B R)
(edge37 W G)
(edge48 B W)
(edge56 Y B)
(edge57 Y O)
(edge68 R Y)
(edge78 B O)
        
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