(define
    (problem problem_6_5)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 Y B O)
(cube2 Y G O)
(cube3 W B O)
(cube4 R B Y)
(cube5 B W R)
(cube6 W R G)
(cube7 G R Y)
(cube8 W O G)
(edge12 O B)
(edge13 R W)
(edge15 Y B)
(edge24 Y O)
(edge26 B R)
(edge34 Y R)
(edge37 W B)
(edge48 O W)
(edge56 R G)
(edge57 G Y)
(edge68 W G)
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