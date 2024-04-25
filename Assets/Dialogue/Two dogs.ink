VAR isbuseight = true

-> main

=== main ===
"Bzzt Bzzzt! Bzzt! Bzzzt!"
You are woken up by your friend's call
"Hello? I'm Dylan.I have to see my dentist today."
"Can you help me walk the dog this morning?"

    * [Yes,for sure]
        -> Accept
    * [No!!!]
        -> Refuse
    * [Let me think about it]
        ->Hesitate

===Accept===
I love dogs
But, I never walked dog.So I'm worried about they're going to bite me
* [Can you give me five minutes to think about it?]
->Thinking 

===Thinking===
Five mintues later...."So are you coming? I have to go now
     * [Let me finish the tutorial first]
       I will let you know after that
     ->Waiting
     * [Yeah.I'm coming...]
     ->Bus

=== Waiting ===
"Bzzt Bzzzt!"
"I have to go now!Have you made up your mind?"
    * [Yeah.I think I can figure out how to do.I will take a bus soon]
    -> Bus
    * [You better find someone else]
-> END

===Bus===
By the way, which bus should I take?
*[I think I just take bus eight.]
~isbuseight = true
{isbuseight:Your bus will arrive in 10 mins | It's not your bus}
You had fun with the dogs.
-> END
*[I think the train can go there as well.]
~isbuseight = false
-> Waitingforbus

===Waitingforbus===
"The train doesn't go here.You better get off the train now"
*[Get off the train]
-> Bus
*[I messed up everything]
 You went somewhere you don't know
 And enjoyed your day alone.
-> END

===Hesitate===
It's rainning outside, to be honest, I don't want to get wet
Besides that, I need sleep more.
* [But are you talking about walking dogs?]
  I'm interested.
  Let me check the bus.
-> Bus 

===Refuse===
*[Sorry! But I afraid I don't have time today]
  I would like to help you next time!
  You hang up the phone and go back to bed
-> END


