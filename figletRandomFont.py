import random
import os
import argparse
import subprocess

if __name__ == '__main__':
   parser = argparse.ArgumentParser(description='Print a message in a random figlet font.')
   parser.add_argument('-d', metavar='directoryName', nargs='?',
                       default='/usr/share/figlet',
                       help='font file directory')
   parser.add_argument('msg', metavar='messageString', nargs='?',
                       default='',
                       help='the message to be printed')
   args = parser.parse_args()

   if args.msg == '':
       msg = input()
   else:
       msg = args.msg

   fileList = os.listdir(args.d)

   # Get a listing of all the font filenames
   found = False
   while not found:
      font = random.choice(fileList)
      if font[-4:] == '.flf':
          found = True

   print( "    Font: ", font )
   result = subprocess.run( ['figlet', '-f', font, '-d', args.d,
                                ' {0}'.format(msg)] )

