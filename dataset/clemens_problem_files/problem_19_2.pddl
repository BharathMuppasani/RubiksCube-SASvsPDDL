(define
    (problem problem_19_2)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 G R Y)
(cube2 R W G)
(cube3 Y B R)
(cube4 Y B O)
(cube5 O G W)
(cube6 W B R)
(cube7 B W O)
(cube8 Y G O)
(edge12 W R)
(edge13 B Y)
(edge15 R Y)
(edge24 W G)
(edge26 G Y)
(edge34 W O)
(edge37 B O)
(edge48 O G)
(edge56 Y O)
(edge57 R G)
(edge68 R B)
(edge78 W B)
        
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