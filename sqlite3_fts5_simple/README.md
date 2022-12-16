# IM 自研 本地数据库设计方案


## 采用sqlite3 fts5 全文搜索

1. simple 分词器 说明文档
https://zhuanlan.zhihu.com/p/352178774

2. 支持拼音和中文搜索

3. 聊天表设计为 chat_+会话ID  每个会话生成一个聊天信息表 聊天信息不支持拼音搜索，因为无法区分拼音和英文字母，微信也是如此

4. 好友和群聊 备注 支持拼音搜索

5. 数据库安全可设计 密码链接
参考资料
https://www.likecs.com/show-341177.html

6. 单聊和群聊 各自生成一个 fts5 全文搜索 虚拟表  通过trigger 的方式来维护索引的这张表
触发器的文档
https://www.cnblogs.com/zfyouxi/p/4332069.html
https://www.learnfk.com/sqlite/sqlite-trigger-after-insert.html

7. 数据流加密方式 最安全的方式是端到端的加密方式 文档参考




