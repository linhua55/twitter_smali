.class public Lbbj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbbf;


# static fields
.field public static final a:Lbbg;


# instance fields
.field b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lbbg;

    const-string/jumbo v1, "DATABASE"

    invoke-direct {v0, v1}, Lbbg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lbbj;->a:Lbbg;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lbbj;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lbbb;)V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lbbj;->a:Lbbg;

    invoke-virtual {p1, v0}, Lbbb;->a(Lbbg;)Lbbb;

    .line 23
    invoke-virtual {p0, p1}, Lbbj;->b(Lbbb;)V

    .line 24
    return-void
.end method

.method public b(Lbbb;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 27
    .line 30
    :try_start_0
    iget-object v0, p0, Lbbj;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "sqlite_master"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "name"

    aput-object v4, v2, v3

    const-string/jumbo v3, "type = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "table"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 32
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lbbi;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    new-instance v2, Lbbb;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "<table>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lbbj;->a:Lbbg;

    invoke-direct {v2, v3, v4}, Lbbb;-><init>(Ljava/lang/String;Lbbg;)V

    .line 38
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3, v0}, Lbbb;->a(Ljava/lang/String;Ljava/lang/String;)Lbbb;

    .line 39
    invoke-virtual {p1, v2}, Lbbb;->a(Lbbb;)Lbbb;

    move-result-object v0

    .line 40
    invoke-virtual {p0, v0}, Lbbj;->c(Lbbb;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_1

    .line 44
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 43
    :cond_2
    if-eqz v1, :cond_3

    .line 44
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 47
    :cond_3
    return-void

    .line 43
    :catchall_1
    move-exception v0

    move-object v1, v9

    goto :goto_1
.end method

.method public c(Lbbb;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 50
    .line 53
    :try_start_0
    iget-object v0, p0, Lbbj;->b:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pragma table_info("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-virtual {p1, v3}, Lbbb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 54
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    new-instance v3, Lbbb;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<column>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lbbj;->a:Lbbg;

    invoke-direct {v3, v4, v5}, Lbbb;-><init>(Ljava/lang/String;Lbbg;)V

    .line 58
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4, v0}, Lbbb;->a(Ljava/lang/String;Ljava/lang/String;)Lbbb;

    .line 59
    const-string/jumbo v0, "type"

    invoke-virtual {v3, v0, v2}, Lbbb;->a(Ljava/lang/String;Ljava/lang/String;)Lbbb;

    .line 60
    invoke-virtual {p1, v3}, Lbbb;->a(Lbbb;)Lbbb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 64
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 63
    :cond_1
    if-eqz v1, :cond_2

    .line 64
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 67
    :cond_2
    return-void
.end method
