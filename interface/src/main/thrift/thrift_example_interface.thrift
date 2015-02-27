namespace java net.winter.example

enum Operation {
    ADD = 1,
    SUB = 2
}

struct OperateRequest {
    1: string logId;
    2: i64 firstNum;
    3: i64 secondNum;
    4: Operation operation;
}

struct OperateResponse {
    1: string logId;
    2: i64 result;
}

exception InvalidOperation {
    1: string message;
}

service Calculator {
    OperateResponse work(1:OperateRequest operateRequest) throws (1:InvalidOperation e);
}
