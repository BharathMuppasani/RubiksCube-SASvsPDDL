(define
    (problem problem_15_6)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 B W O)
(cube2 Y B R)
(cube3 R W G)
(cube4 W G O)
(cube5 O Y G)
(cube6 O Y B)
(cube7 G R Y)
(cube8 R B W)
(edge12 B R)
(edge13 Y G)
(edge15 Y O)
(edge24 Y R)
(edge26 B W)
(edge34 W R)
(edge37 O B)
(edge48 G O)
(edge56 R G)
(edge57 Y B)
(edge68 G W)
(edge78 W O)
        
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