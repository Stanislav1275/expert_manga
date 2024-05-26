(defrule manga-gender-question
   =>
   (bind ?response (ask-question-with-options "What is the gender of the main character? (1 - Male, 2 - Female)" "1" "2"))
   (switch ?response
      (case "1" then
         (assert (MaleCharacter))
         (printout t "Male character selected" crlf
                   "-----------------" crlf))
      (case "2" then
         (assert (FemaleCharacter))
         (printout t "Female character selected" crlf
                   "----------------" crlf))
      (default
         (printout t "Invalid response. Please select a valid option." crlf))
   )
)