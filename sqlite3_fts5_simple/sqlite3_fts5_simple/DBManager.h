//
//  DBManager.h
//
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DBManager : NSObject

+ (instancetype)shareDataBase;

- (void)openDB;

- (void)createTable;

-(void)insert;

- (void)sqlData;
/**
 删除数据
 */
- (void)deleteSQLData:(NSString*)tableName;
/**
 更新数据
 */
- (void)updateSQLData:(NSString*)tableName;
/**
 删除表
 */
- (void)dropTableName:(NSString*)tableName;
@end

NS_ASSUME_NONNULL_END
