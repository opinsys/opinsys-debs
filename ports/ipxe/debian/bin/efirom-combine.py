#!/usr/bin/python3

import argparse
import logging


class FileBinary:
    pass


class FileEfi:
    pass


class Main:
    argparser = argparse.ArgumentParser()
    argparser.add_argument('-o', '--output')
    argparser.add_argument('-v', '--vendor')
    argparser.add_argument('-d', '--device')
    argparser.add_argument('-D', '--debug', action='store_true')
    argparser.add_argument('-V', '--verbose', action='store_true')
    argparser.add_argument('files', nargs='+', metavar='FILE')

    def __init__(self, args):
        pass


if __name__ == '__main__':
    args = Main.argparser.parse_args()
    logging.basicConfig(level=args.debug and logging.DEBUG or
                        args.verbose and logging.INFO or
                        logging.WARN)
    main = Main(args)
