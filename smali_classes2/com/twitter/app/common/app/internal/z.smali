.class public Lcom/twitter/app/common/app/internal/z;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method static a(Lbbo;)Lcom/twitter/database/lru/schema/LruSchema;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lbbo;->d()Lcom/twitter/database/lru/schema/LruSchema;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/twitter/library/provider/s;)Lcom/twitter/database/schema/DraftsSchema;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/twitter/library/provider/s;->d()Lcom/twitter/database/schema/DraftsSchema;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/twitter/library/provider/dm;)Lcom/twitter/database/schema/TwitterSchema;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/twitter/library/provider/dm;->d()Lcom/twitter/database/schema/TwitterSchema;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/twitter/app/common/account/UserIdentifier;)Lcom/twitter/library/provider/dm;
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v0

    return-object v0
.end method

.method static b(Landroid/content/Context;Lcom/twitter/app/common/account/UserIdentifier;)Lcom/twitter/library/provider/s;
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/twitter/library/provider/s;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/s;

    move-result-object v0

    return-object v0
.end method

.method static c(Landroid/content/Context;Lcom/twitter/app/common/account/UserIdentifier;)Lbbo;
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lbbo;->a(Landroid/content/Context;J)Lbbo;

    move-result-object v0

    return-object v0
.end method
