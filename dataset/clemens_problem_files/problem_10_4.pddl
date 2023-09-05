(define
    (problem problem_10_4)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 O G Y)
(cube2 R Y B)
(cube3 B Y O)
(cube4 W R G)
(cube5 R B W)
(cube6 G R Y)
(cube7 O B W)
(cube8 O G W)
(edge12 Y B)
(edge13 W G)
(edge15 B W)
(edge24 W R)
(edge26 G Y)
(edge34 R G)
(edge37 G O)
(edge48 R Y)
(edge56 Y O)
(edge57 W O)
(edge68 O B)
(edge78 R B)
        
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