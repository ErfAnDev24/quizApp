import 'package:quiz/screens/dtos/QuestionDto.dart';

List<QuestionDto> getQuestions() {
  var q1 = QuestionDto();
  q1.title = 'who is the best magician?';
  q1.imageNumber = '1';
  q1.answerList = [
    'ErfAn Pezeshkpour',
    'Fatemeh Rafiei',
    'Ali karimi',
    'Lebron James',
  ];
  q1.correctAnswer = 0;

  var q2 = QuestionDto();

  q2.title = 'Who is the first astronaut in the world?';
  q2.imageNumber = '2';
  q2.answerList = [
    'ErfAn Pezeshkpour',
    'Nahid Sheykhi',
    'Ehsan Pezeshkpour',
    'Morteza Pashaie',
  ];
  q2.correctAnswer = 0;

  var q3 = QuestionDto();
  q3.title = "What is the best way to make money?";
  q3.imageNumber = '3';
  q3.answerList = [
    'Developing Flutter',
    'Developing Java',
    'Playing Basketball',
    'Steeling money',
  ];
  q3.correctAnswer = 0;

  var q4 = QuestionDto();
  q4.title = 'What is the best way in protecting ourseleves from Sharks?';
  q4.imageNumber = '4';
  q4.answerList = [
    'Reporing Mr.Rubick',
    'Praying Atol korsi',
    'Stay Calm',
    'fighting',
  ];
  q4.correctAnswer = 0;

  var q5 = QuestionDto();
  q5.title = 'how to do fishing?';
  q5.imageNumber = '5';
  q5.answerList = [
    'Going to beach',
    'Providing gun',
    'Reporing Mr.Rubick',
    'Twitting to Donald Trump',
  ];
  q5.correctAnswer = 0;

  var q6 = QuestionDto();
  q6.title = 'Who was the creater of Alcohol?';
  q6.imageNumber = '6';
  q6.answerList = [
    'Abas bo azar',
    'Baqal sare koche',
    'Zakaria Razi',
    'Hassan Rouhani',
  ];
  q6.correctAnswer = 0;

  var q7 = QuestionDto();
  q7.title = "Who is the first javelin throw champion?";
  q7.imageNumber = '7';
  q7.answerList = [
    'Saeed Daravar Panah',
    'Mohammad Salah',
    'ErfAn Pezeshkpour',
    'Mark Zuckerburg',
  ];
  q7.correctAnswer = 0;

  var q8 = QuestionDto();
  q8.title = 'Who was the first person that went to space?';
  q8.imageNumber = '8';
  q8.answerList = [
    'Nill Amestedam',
    'Mohammad and his Hourse',
    'Someone who consume Drugs',
    'ErfAn Pezeshkpour',
  ];
  q8.correctAnswer = 0;

  var q9 = QuestionDto();
  q9.title = 'How to find the Moon?';
  q9.answerList = [
    'Calling ErfAn Pezeshkpour',
    'use Telescope',
    'Report Mr.Rubick',
    'Playing the Last of us',
  ];
  q9.imageNumber = '9';
  q9.correctAnswer = 0;

  var questions = [q1, q2, q3, q4, q5, q6, q7, q8, q9];

  return questions;
}
