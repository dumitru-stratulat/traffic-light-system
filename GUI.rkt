#lang racket/gui
(define target (make-bitmap 500 500)) 
(define dc (new bitmap-dc% [bitmap target]))

(define frame (new frame%
                   [label "Example"]
                   [width 500]
                   [height 500]
                   
                   ))

(define red "red")
(define amber "yellow")
(define green "green")
(define black "black")
(define pedestrianButton #t)

(define lightX1Rect1 "black")
(define lightX1Rect2 "black")
(define lightX1Rect3 "black")
(define lightX2Rect1 "black")
(define lightX2Rect2 "black")
(define lightX2Rect3 "black")
(define lightYRect1 "black")
(define lightYRect2 "black")
(define lightYRect3 "black")
(define lightZRect1 "black")
(define lightZRect2 "black")
(define lightZRect3 "black")

(define (lightX1 dc posX posY width height)
  (send dc set-brush lightX1Rect1 'solid)
              (send dc draw-rectangle posX posY width height)
              (send dc set-brush lightX1Rect2 'solid)
              (send dc draw-rectangle posX (+ posY height) width height)
              (send dc set-brush lightX1Rect3 'solid)
              (send dc draw-rectangle posX (+ posY height height) width height)
  )

(define (lightX2 dc posX posY width height)
  (send dc set-brush lightX2Rect1 'solid)
              (send dc draw-rectangle posX posY width height)
              (send dc set-brush lightX2Rect2 'solid)
              (send dc draw-rectangle posX (+ posY height) width height)
              (send dc set-brush lightX2Rect3 'solid)
              (send dc draw-rectangle posX (+ posY height height) width height)
  )

(define (lightY dc posX posY width height)
  (send dc set-brush lightYRect1 'solid)
              (send dc draw-rectangle posX posY width height)
              (send dc set-brush lightYRect2 'solid)
              (send dc draw-rectangle posX (+ posY height) width height)
              (send dc set-brush lightYRect3 'solid)
              (send dc draw-rectangle posX (+ posY height height) width height)
  )
(define (lightZ dc posX posY width height)
  (send dc set-brush lightZRect1 'solid)
              (send dc draw-rectangle posX posY width height)
              (send dc set-brush lightZRect2 'solid)
              (send dc draw-rectangle posX (+ posY height) width height)
              (send dc set-brush lightZRect3 'solid)
              (send dc draw-rectangle posX (+ posY height height) width height)
  )




(define paint(new canvas% [parent frame]
            [paint-callback
            (lambda (canvas dc)
              ;(firstLight dc )
              ;(secondLight dc "var")
              (lightX1 dc 20 50 20 20)
              (lightX2 dc 430 200 20 20)
              (lightY dc 150 250 20 20)
              (lightZ dc 340 200 15 15)
              
            
              (send dc draw-line 330 100 330 200)
              (send dc draw-line 370 100 370 200)
              
              (send dc draw-line 50 100 450 100)
              (send dc draw-line 50 200 180 200)
              (send dc draw-line 320 200 450 200)
              (send dc draw-line 180 200 180 400)
              (send dc draw-line 320 200 320 400)
                )])) 

(new button% [parent frame]
             [label "Click Me"]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         ;(send (send paint get-dc) set-brush "green" 'solid)
                         (map (lambda (x)
                         (set! lightZRect1 red) ;red light for pedestrian cross
                         (set! lightYRect1 red) 
                                
                         (set! lightX1Rect1 red)
                         (set! lightX1Rect2 black)
                         (set! lightX1Rect3 black)

                         (set! lightX2Rect1 red)
                         (set! lightX2Rect2 amber)
                         (set! lightX2Rect3 black)
                                
                         (send paint refresh)

                         (sleep/yield 2)

     
                                

                         (set! lightX2Rect1 black)
                         (set! lightX2Rect2 black)
                         (set! lightX2Rect3 green)

                         (set! lightYRect1 red)
                         (send paint refresh)
                        
                                
                         (sleep/yield 4)
                                
                         (set! lightX1Rect1 red)
                         (set! lightX1Rect2 amber)
                         (set! lightX1Rect3 black)

                         (set! lightX2Rect1 black)
                         (set! lightX2Rect2 amber)
                         (set! lightX2Rect3 black)
                                
                         (send paint refresh)
                         (sleep/yield 2)
                         
                         (set! lightX1Rect1 black)
                         (set! lightX1Rect2 black)
                         (set! lightX1Rect3 green)

                                
                         (set! lightX2Rect1 red)
                         (set! lightX2Rect2 black)
                         (set! lightX2Rect3 black)
                                
                         (send paint refresh)
                         (sleep/yield 2)
                                
                         (set! lightX1Rect1 black)
                         (set! lightX1Rect2 amber)
                         (set! lightX1Rect3 black)
                         (send paint refresh)  
                         (sleep/yield 2)

                         (set! lightX1Rect1 red)
                         (set! lightX1Rect2 black)
                         (set! lightX1Rect3 black)
                                
                         (send paint refresh)  
                         (sleep/yield 2)
                                
                         (set! lightYRect1 red)
                         (set! lightYRect2 amber)
                         (set! lightYRect3 black)
                         (send paint refresh)  
                         (sleep/yield 2)
                         
                
                         (set! lightYRect1 black)
                         (set! lightYRect2 black)
                         (set! lightYRect3 green)

                         (send paint refresh)  
                         (sleep/yield 5)
                                
                         (set! lightYRect1 black)
                         (set! lightYRect2 amber)
                         (set! lightYRect3 black)

                         (send paint refresh)  
                         (sleep/yield 2)
                                
                         (set! lightYRect1 red)
                         (set! lightYRect2 black)
                         (set! lightYRect3 black)

                         (send paint refresh)
                                 
                         (cond ((false? pedestrianButton)
                                (set! lightZRect1 black)
                                (set! lightZRect3 green)
                                (send paint refresh)
                                (sleep/yield 5)
                                (set! lightZRect1 red)
                                (set! lightZRect3 black)
                                (send paint refresh)
                                )
                               )
                      
                                
                           ) (range 10))
                         
                       
                         )])
(new button% [parent frame]
             [label "Pedestrian"]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         ;(send (send paint get-dc) set-brush "green" 'solid)
                       
                         (set! pedestrianButton #f)
                         
                       
                         )])

(send frame show #t)