#!/usr/bin/python

import json
from optparse import OptionParser
from collections import OrderedDict

parser = OptionParser(usage='Imput parameters')
parser.add_option('-i', dest="ifilename", help='input file')
parser.add_option('-o', dest="ofilename", help='input file')
parser.add_option('-d', action='store_true', dest="debug", default=False, help='debug')

(args, ooo ) = parser.parse_args()


if not args.ifilename:
	print "give input file"
	exit()

#Read JSON data into the datastore variable
if args.ifilename:
    with open(str(args.ifilename), 'r') as f:
        datastore = json.load(f,object_pairs_hook=OrderedDict,strict=False)
    f.close()

if args.debug:
	
	print json.dumps(datastore,indent=1)

if args.ofilename:
	with open(str(args.ofilename), 'w') as f:
		json.dump(datastore, f, indent=1)
else:
	with open(args.ifilename, 'w') as f:
		json.dump(datastore, f, indent=1)

exit()