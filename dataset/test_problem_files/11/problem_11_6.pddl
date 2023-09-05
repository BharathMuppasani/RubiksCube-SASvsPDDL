(define
    (problem problem_11_6)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 Y G R)
(cube2 R Y B)
(cube3 B W R)
(cube4 O W G)
(cube5 B Y O)
(cube6 G Y O)
(cube7 R G W)
(cube8 O W B)
(edge12 Y B)
(edge13 W R)
(edge15 B O)
(edge24 R B)
(edge26 W O)
(edge34 G Y)
(edge37 B W)
(edge48 G R)
(edge56 W G)
(edge57 G O)
(edge68 Y O)
(edge78 R Y)
        
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