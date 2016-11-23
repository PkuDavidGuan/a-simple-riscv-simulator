// ---- test for calling convension ----
// ---- Francis Yao | 1300011063@pku.edu.cn ---- 

// -- see the corresponding .asm file 

int x = 1;
int y = 2;
int z = 3;
int w = 4;

int foo(int x, int y,  int z, int w)
{
    return x + y + z + w;
}

int main()
{
    foo(x, y, z, w);
    return 0;
}
