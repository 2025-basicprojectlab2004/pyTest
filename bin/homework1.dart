import 'dart:io';

void main() {
  stdout.write("정수를 입력하세요: ");
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print("입력이 비어있습니다.");
    return;
  }

  int? number = int.tryParse(input);

  if (number == null) {
    print("유효한 정수가 아닙니다.");
    return;
  }

  // 음수는 그대로 출력
  if (number < 0) {
    print("출력: $number");
    return;
  }

  // 양수일 때 각 자리수 합 계산
  int sum = 0;
  for (int i = 0; i < input.length; i++) {
    sum += int.parse(input[i]);
  }

  print("각 자리수의 합: $sum");
}
