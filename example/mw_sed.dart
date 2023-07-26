// readline.dart
//
// Demonstrates a simple command-line interface that does not require line
// editing services from the shell.

import 'dart:io';

import 'package:dart_console/dart_console.dart';

final console = Console.scrolling();

const prompt = '>>> ';

// Inspired by
// http://www.lihaoyi.com/post/BuildyourownCommandLinewithANSIescapecodes.html#writing-a-command-line
// as a test of the Console class capabilities

void main() {
  console.write('Sed for ');
  console.setForegroundColor(ConsoleColor.brightYellow);
  console.writeLine('Markword!');
  console.resetColorAttributes();

  while (true) {
    console.write(prompt);
    final response = console.readLine(cancelOnBreak: true);
    if (response == null || response.isEmpty) {
      exit(0);
    } else {
      console.writeLine('YOU SAID: ${response.toUpperCase()}');
      console.writeLine();
    }
  }
}
