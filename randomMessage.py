import random

### Here are all the possible messages
messages = [
   "A long time ago in a galaxy far far away...",
   "Space... the final frontier",
   "Welcome",
   "--P  |-  P",
   "(P |- Q ^ -Q) |- -P",
   "P ^ Q |- P",
   "P ^ Q |- Q",
   "P, Q |- P ^ Q",
   "P V Q, P -> R, Q -> R |- R",
   "P |- P V Q",
   "P -> Q, P |- Q",
   "(P |- Q) |- P -> Q",
   "P <-> Q |- P -> Q",
   "P -> Q, Q -> P |- P <-> Q",
   "STAR WARS",
   "STAR TREK",
   "Atomic Retro",
   "Ron",
   "Pop! OS",
   "BIG DICK",
   "COCKSUCKER!",
   "Oh My!"
   ]

print( random.choice(messages) )

