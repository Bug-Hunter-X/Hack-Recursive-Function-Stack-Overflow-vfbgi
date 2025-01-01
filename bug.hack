function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

This code will cause a stack overflow error when called with large values of x.  The recursive calls to foo() consume stack space without limit.  Hack's stack size is limited, and the program will crash before completing.