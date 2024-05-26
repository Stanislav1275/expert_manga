(defrule is-the-manga-ongoing-or-completed?
   =>
   (bind ?response (ask-question-with-options "Is the manga ongoing or completed?" "ongoing completed"))
   (switch ?response
      (case ongoing then
         (assert (Ongoing))
         (printout t "Ongoing" crlf
                   "-------" crlf))
      (case completed then
         (assert (Completed))
         (printout t "Completed" crlf
                   "---------" crlf))
      (default
         (printout t "Invalid response. Please select a valid status." crlf))
   )
)
