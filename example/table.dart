import 'dart:io';

import 'package:dart_console/dart_console.dart';

const earlyPresidents = [
  [
    1,
    'April 30, 1789 - March 4, 1797',
    'George Washington',
    'unaffiliated',
  ],
  [
    2,
    'March 4, 1797 - March 4, 1801',
    'John Adams',
    'Federalist',
  ],
  [
    3,
    'March 4, 1801 - March 4, 1809',
    'Thomas Jefferson',
    'Democratic-Republican',
  ],
  [
    4,
    'March 4, 1809 - March 4, 1817',
    'James Madison',
    'Democratic-Republican',
  ],
  [
    5,
    'March 4, 1817 - March 4, 1825',
    'James Monroe',
    'Democratic-Republican',
  ],
];

void main() {
  final table = Table()
    ..insertColumn(header: 'Number', alignment: TextAlignment.center)
    ..insertColumn(header: 'Presidency', alignment: TextAlignment.right)
    ..insertColumn(header: 'President')
    ..insertColumn(header: 'Party')
    ..addRows(earlyPresidents)
    ..borderStyle = BorderStyle.square
    ..borderColor = ConsoleColor.brightBlue
    ..borderType = BorderType.vertical
    ..headerStyle = FontStyle.bold;
  print(table);
  print(table.render(plainText: true));

  final golden = File('golden.txt').openSync(mode: FileMode.writeOnly);
  golden.writeStringSync(table.render(plainText: true));
  golden.closeSync();
}
