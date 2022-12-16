//
//  DBManager.m
//  test1111
//
//  Created by 天丰互联 on 2022/12/8.
//

#import "DBManager.h"
#include "sqlite3/sqlite3.h"
//
////#ifdef __cplusplus
////extern "C" {
////#endif
////
////void sqlite3_simple_init(sqlite3 *db, char **pzErrMsg, const sqlite3_api_routines *pApi);
////
////#ifdef __cplusplus
////}
////#endif
//
////声明数据库对象
static sqlite3 *db = nil;
////sqlite数据库基于C语言的底层数据库
//
////#define kJiebaPath          [[NSBundle mainBundle] pathForResource:@"JIEBA" ofType:@"bundle"]
//
//@interface DBManager()
//
//@property(nonatomic,strong)NSString * databasePath;
//
//@end
//
@implementation DBManager

+ (instancetype)shareDataBase{
    static DBManager *dataBase = nil;
    if (dataBase == nil) {
        dataBase = [[DBManager alloc] init];
//        sqlite3_auto_extension((void (*)(void))sqlite3_simple_init);

    }
    return dataBase;
}
////打开数据库
- (void)openDB{
    if (db != nil) {
        NSLog(@"数据库己经打开");
        return;
    }
    //打开数据库
    //参数1:数据库文件
    //参数2:数据库对象
    NSString *sqlfile = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSString *sqlPath = [sqlfile stringByAppendingPathComponent:@"message.sqlite"];
    // 打开数据库文件(如果数据库文件不存在,那么该函数会自动创建数据库文件)
    BOOL result = sqlite3_open(sqlPath.UTF8String ,&db);
    //打开成功时,result == 0,所以判断时要判断 result == SQLITE_OK
    NSLog(@"===== %@", sqlPath);
    NSLog(@"result == %d", result);
    if (result == SQLITE_OK) {
        NSLog(@"打开成功");
//        sqlite3_key(db,"********",8);
    }else {
        NSLog(@"打开失败");
    }
//    NSString *jiebaPath = kJiebaPath;
//    NSString * sql = [NSString stringWithFormat:@"select jieba_dict('%@')", jiebaPath];
//    BOOL result1 = sqlite3_exec(db, sql.UTF8String, NULL, NULL, NULL);
//    if (result1 == SQLITE_OK) {
//        NSLog(@"创建jieba_dict成功");
//    }else{
//        NSLog(@"创建jieba_dict失败");
//    }

}
////创建表
//- (void)createTable{
//
//    char *errMsg = NULL;
//
//    NSString *sql = @"CREATE VIRTUAL TABLE t_school USING fts5(name, content, tokenize='wcicu')";
//    BOOL result = sqlite3_exec(db, sql.UTF8String, NULL, NULL, &errMsg);
//    if (result == SQLITE_OK) {
//        NSLog(@"创建表成功");
//    }else{
//        NSLog(@"创建表失败");
//
//        printf("创表失败---%s----%s---%d",errMsg,__FILE__,__LINE__);
//
//    }
//
////    NSString * sql1 = @"CREATE VIRTUAL TABLE data USING fts5(tokenize= porter)";
////    BOOL result1 = sqlite3_exec(db, sql1.UTF8String, NULL, NULL, &errMsg);
////    if (result1 == SQLITE_OK) {
////        NSLog(@"创建全文检索表成功");
////    }else{
////        NSLog(@"创建全文检索表失败");
////        printf("创表失败---%s----%s---%d",errMsg,__FILE__,__LINE__);
////    }
//
//
//}
//-(void)insert{
//
//    NSString *sql = @"insert into t_school(name, content) VALUES ('河北京东', '我是河北京东')";
//    BOOL result = sqlite3_exec(db, sql.UTF8String, NULL, NULL, NULL);
//    if (result == SQLITE_OK) {
//        NSLog(@"插入成功");
//    }else{
//        NSLog(@"插入失败");
//    }
//
//}
//- (void)querySQLData:(NSString*)tableName{
//
//
//}
//- (void)deleteSQLData:(NSString*)tableName{
//
//    NSString *sql = [NSString stringWithFormat:@"delete from Student where name = %@",tableName];
//    BOOL result = sqlite3_exec(db, sql.UTF8String, NULL, NULL, NULL);
//    if (result == SQLITE_OK) {
//        NSLog(@"删除成功");
//    }else{
//        NSLog(@"删除失败");
//    }
//
//}
//- (void)updateSQLData:(NSString*)tableName{
//
//    NSString *sql = @"update t_school set name = '河北京' where name = '河北京东'";
//    BOOL result = sqlite3_exec(db, sql.UTF8String, NULL, NULL, NULL);
//    if (result == SQLITE_OK) {
//        NSLog(@"更新成功");
//    }else{
//        NSLog(@"更新失败");
//    }
//
//}
//
///**
// 删除表
// */
//- (void)dropTableName:(NSString*)tableName{
//
//    NSString *sql = @" drop table t_school";
//    BOOL result = sqlite3_exec(db, sql.UTF8String, NULL, NULL, NULL);
//    if (result == SQLITE_OK) {
//        NSLog(@"删除表成功");
//    }else{
//        NSLog(@"删除表失败");
//    }
//
//}
//
//
//- (void)sqlData {
//
//    // sql语句
//    const char *sql = "select * from t_school where name match jieba_query('he')";
//    sqlite3_stmt *stmt = NULL;
//
//    // 进行查询前的准备工作
//    if (sqlite3_prepare_v2(db, sql, -1, &stmt, NULL) == SQLITE_OK) {   // sql语句没有问题
//        NSLog(@"sql语句没有问题");
//
//        // 每调用一次sqlite3_step函数，stmt就会指向下一条记录
//        while (sqlite3_step(stmt) == SQLITE_ROW) {  // 找到一条记录
//            // 取出数据
//            NSLog(@"%s  %s",(const char *)sqlite3_column_text(stmt, 0),(const char *)sqlite3_column_text(stmt, 1));
//            NSString * title = [NSString stringWithUTF8String:(const char *)sqlite3_column_text(stmt, 0)];
//
//            NSString * body = [NSString stringWithUTF8String:(const char *)sqlite3_column_text(stmt, 1)];
//            NSLog(@"title:%@       body:%@",title,body);
//        }
//    } else {
//        NSLog(@"查询语句有问题");
//    }
//}


@end
