(define
    (problem problem_5_4)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 R B Y)
(cube2 B Y O)
(cube3 Y G O)
(cube4 W O B)
(cube5 B W R)
(cube6 G R Y)
(cube7 G O W)
(cube8 R W G)
(edge12 Y O)
(edge13 R Y)
(edge15 R B)
(edge24 W B)
(edge26 G R)
(edge34 Y B)
(edge37 Y G)
(edge48 R W)
(edge56 W O)
(edge57 G W)
(edge68 O B)
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