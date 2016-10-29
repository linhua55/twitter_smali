.class public Lcom/twitter/android/dm/e;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method private static a(Lcom/twitter/android/dm/g;)Lcom/twitter/library/service/z;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/twitter/android/dm/f;

    invoke-direct {v0, p0}, Lcom/twitter/android/dm/f;-><init>(Lcom/twitter/android/dm/g;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;JLcom/twitter/android/dm/g;)V
    .locals 5

    .prologue
    .line 22
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 23
    invoke-static {p0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    new-instance v2, Lcom/twitter/library/api/dm/requests/l;

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide p1, v3, v4

    invoke-direct {v2, p0, v0, v3}, Lcom/twitter/library/api/dm/requests/l;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;[J)V

    .line 24
    invoke-static {p3}, Lcom/twitter/android/dm/e;->a(Lcom/twitter/android/dm/g;)Lcom/twitter/library/service/z;

    move-result-object v0

    .line 23
    invoke-virtual {v1, v2, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/android/dm/g;)V
    .locals 4

    .prologue
    .line 29
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 30
    invoke-static {p0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    new-instance v2, Lcom/twitter/library/api/dm/requests/l;

    .line 31
    invoke-static {p1}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcom/twitter/library/api/dm/requests/l;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/util/Collection;)V

    invoke-static {p2}, Lcom/twitter/android/dm/e;->a(Lcom/twitter/android/dm/g;)Lcom/twitter/library/service/z;

    move-result-object v0

    .line 30
    invoke-virtual {v1, v2, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 32
    return-void
.end method
