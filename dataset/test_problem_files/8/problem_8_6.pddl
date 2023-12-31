(define
    (problem problem_8_6)
    (:domain cube3)
    (:objects Y W B G O R)
    (:init
 (cube1 W G O)
(cube2 Y R G)
(cube3 B W R)
(cube4 Y O G)
(cube5 B Y O)
(cube6 O B W)
(cube7 Y R B)
(cube8 W G R)
(edge12 R W)
(edge13 W O)
(edge15 B Y)
(edge24 Y G)
(edge26 G W)
(edge34 O B)
(edge37 O Y)
(edge48 R Y)
(edge56 B W)
(edge57 R G)
(edge68 O G)
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