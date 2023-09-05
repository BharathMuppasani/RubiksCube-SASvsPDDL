(define
    (problem problem_16_1)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 Y G R)
(cube2 B Y O)
(cube3 G O Y)
(cube4 R W B)
(cube5 R W G)
(cube6 B W O)
(cube7 R B Y)
(cube8 W O G)
(edge12 O B)
(edge13 B W)
(edge15 R G)
(edge24 G W)
(edge26 Y O)
(edge34 R Y)
(edge37 W O)
(edge48 O G)
(edge56 W R)
(edge57 G Y)
(edge68 B Y)
(edge78 B R)
        
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