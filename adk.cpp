#include "adk.hpp"
#include <iostream>
#include <fstream>
#include <string>

//! 文件操作   写文件
void test()
{
    //todo 写文件

    //? 1. 包含头文件

    //? 2. 创建流对象

    std::ofstream ofs;

    //? 3. 指定打开方式
    ofs.open("test.txt", std::ios::out);

    //? 4. 写内容
    ofs << "写文件" << std::endl;

    //? 5. 关闭文件
    ofs.close();


}

//! 文件操作：   读文件
void test01()
{
    //? 1. 包含头文件

    //? 2. 创建流对象

    std::ifstream ifs;

    //? 3. 打开文件，并且判断是否打开成功

    ifs.open("test.txt",std::ios::in);
    if(!ifs.is_open())
    {
        std::cout << "文件打开失败" << std::endl;
        return ; //? 不会再进行后面的代码
    }

    //? 4. 读数据
    
    //TODO 第一种
    // char buf[1024] = { 0 };
    // while( ifs >> buf)
    // {
    //     std::cout << buf << std::endl;
    // }

    //todo 第二种（getline,一行一行读）
    char buf[1024] = { 0 };
    while( ifs.getline(buf,sizeof(buf)))
    {
        std::cout << buf << std::endl;
    }

    //todo 第三种
    // std::string buf;
    // while(getline(ifs,buf))
    // {
    //     std::cout << buf << std::endl;
    // }

    //todo 第四种（一个一个读，效率慢，不推荐）
    // char c;
    // while( (c = ifs.get()) != EOF) //? end of file
    // {
    //     std::cout << c;
    // }

    //? 5. 关闭文件
    ifs.close();
}
