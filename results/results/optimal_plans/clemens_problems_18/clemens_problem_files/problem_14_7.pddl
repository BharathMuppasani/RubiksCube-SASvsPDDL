(define
    (problem problem_14_7)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 Y O G)
(cube2 G R W)
(cube3 B W R)
(cube4 O Y B)
(cube5 G W O)
(cube6 R Y G)
(cube7 B Y R)
(cube8 B O W)
(edge12 W O)
(edge13 R G)
(edge15 O B)
(edge24 G W)
(edge26 R Y)
(edge34 Y O)
(edge37 G O)
(edge48 Y B)
(edge56 B R)
(edge57 R W)
(edge68 B W)
(edge78 Y G)
        
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