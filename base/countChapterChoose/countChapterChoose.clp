(defrule manga-length-question
   =>
   (bind ?response (ask-question-with-options "What is the length of the manga" "20-200" "200+"))
   (switch ?response
      (case "1" then
         (assert (ShortManga))
         (printout t "20-200 chapters" crlf
                   "-----------------" crlf))
      (case "2" then
         (assert (LongManga))
         (printout t "200+ chapters" crlf
                   "----------------" crlf))
      (default
         (printout t "Invalid response. Please select a valid option." crlf))
   )
)