// ---- test for calling convension ----
// ---- Francis Yao | 1300011063@pku.edu.cn ---- 

// -- see the corresponding .asm file 

int x[10] = {[0 ... 9] = 5};

int foo(int x)
{
    return x + 5;
}

int main()
{
    foo(x[5]);
    return 0;
}
