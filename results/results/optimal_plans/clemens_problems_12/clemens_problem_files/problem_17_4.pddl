(define
    (problem problem_17_4)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 B R W)
(cube2 B Y O)
(cube3 R Y B)
(cube4 Y O G)
(cube5 G Y R)
(cube6 G W R)
(cube7 W G O)
(cube8 W B O)
(edge12 R W)
(edge13 Y B)
(edge15 Y G)
(edge24 G R)
(edge26 W O)
(edge34 Y O)
(edge37 B W)
(edge48 G W)
(edge56 O G)
(edge57 B O)
(edge68 B R)
(edge78 Y R)
        
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