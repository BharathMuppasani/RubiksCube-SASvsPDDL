(define
    (problem problem_11_5)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 B Y R)
(cube2 R W G)
(cube3 B Y O)
(cube4 R W B)
(cube5 O W B)
(cube6 G Y O)
(cube7 O W G)
(cube8 G Y R)
(edge12 B W)
(edge13 B O)
(edge15 Y O)
(edge24 R G)
(edge26 Y B)
(edge34 R Y)
(edge37 W R)
(edge48 W O)
(edge56 G W)
(edge57 B R)
(edge68 G Y)
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