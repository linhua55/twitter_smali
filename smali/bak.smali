.class public abstract Lbak;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Twttr"


# static fields
.field private static a:Lbal;

.field private static b:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lbak;->b:Z

    if-eqz v0, :cond_0

    const-string/jumbo p2, ":memory:"

    :cond_0
    sget-object v0, Lbay;->a:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 29
    const-class v0, Lbak;

    invoke-static {v0}, Lcvp;->a(Ljava/lang/Class;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected b()V
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lbak;->a:Lbal;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lbak;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 59
    sget-object v1, Lbak;->a:Lbal;

    invoke-interface {v1, v0}, Lbal;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 61
    :cond_0
    return-void
.end method

.method public bn_()Lcom/twitter/database/model/l;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method protected c()V
    .locals 5

    .prologue
    .line 67
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lbak;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lbak;->bn_()Lcom/twitter/database/model/l;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_0

    .line 71
    new-instance v2, Lbbi;

    invoke-interface {v1}, Lcom/twitter/database/model/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lbbi;-><init>(Ljava/lang/String;)V

    new-instance v1, Lbbj;

    invoke-direct {v1, v0}, Lbbj;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 72
    invoke-virtual {v2, v1}, Lbbi;->a(Lbbf;)Lbbd;

    move-result-object v0

    new-instance v1, Lbba;

    .line 73
    invoke-virtual {p0}, Lbak;->bn_()Lcom/twitter/database/model/l;

    move-result-object v2

    invoke-direct {v1, v2}, Lbba;-><init>(Lcom/twitter/database/model/l;)V

    invoke-virtual {v0, v1}, Lbbd;->a(Lbbf;)Lbbd;

    move-result-object v0

    new-instance v1, Lbbh;

    invoke-direct {v1}, Lbbh;-><init>()V

    .line 74
    invoke-virtual {v0, v1}, Lbbd;->a(Lbbe;)Lbbd;

    move-result-object v0

    new-instance v1, Lbbc;

    const/4 v2, 0x2

    new-array v2, v2, [Lbbg;

    const/4 v3, 0x0

    sget-object v4, Lbbj;->a:Lbbg;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lbba;->a:Lbbg;

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lbbc;-><init>([Lbbg;)V

    .line 75
    invoke-virtual {v0, v1}, Lbbd;->a(Lbbe;)Lbbd;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lbbd;->a()Lbbd;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lbbd;->b()Lbbd;

    .line 80
    :cond_0
    return-void
.end method
