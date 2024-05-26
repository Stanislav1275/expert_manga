(defrule what-genre-of-manga-do-you-prefer-to-read?
   =>
   (bind ?response (ask-question-with-options "What genre of manga do you prefer to read? 1 - Comedy, 2 - Horror, 3 - Everyday Life, 4 - Fantasy" "1" "2" "3" "4"))
   (switch ?response
      (case 1 then
         (assert (Comedy))
         (printout t "Comedy" crlf
                   "------" crlf))
      (case 2 then
         (assert (Horror))
         (printout t "Horror" crlf
                   "------" crlf))
      (case 3 then
         (assert (EverydayLife))
         (printout t "Everyday Life" crlf
                   "----------------" crlf))
      (case 4 then
         (assert (Fantasy))
         (printout t "Fantasy" crlf
                   "-------" crlf))
      (default
         (printout t "Invalid response. Please select a valid genre." crlf))
   )
)
