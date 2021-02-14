(define (problem attend-injured)
   (:domain hospitalcity)
   (:objects
      i1 i2 - injured
      l1 l2 l3 l4 - location
	  ambulance - ambulance
	  hospital - hospital
   )
   (:init
      (not (full ambulance))
      (link l1 l2) (link l2 l4) (link l4 l3)
      (link l2 l1) (link l4 l2) (link l3 l4)
      (at i1 l4) (at i2 l3) (built hospital l1) (arrived ambulance l1)
   )
   (:goal (and (attend i1 hospital) (attend i2 hospital)))
)


