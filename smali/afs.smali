.class public Lafs;
.super Lcom/twitter/app/common/inject/e;
.source "Twttr"


# static fields
.field private static final a:Lcom/twitter/database/lru/LruPolicy;

.field private static final b:Lcom/twitter/database/lru/al;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    new-instance v0, Lcom/twitter/database/lru/LruPolicy;

    sget-object v1, Lcom/twitter/database/lru/LruPolicy$Type;->a:Lcom/twitter/database/lru/LruPolicy$Type;

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/twitter/database/lru/LruPolicy;-><init>(Lcom/twitter/database/lru/LruPolicy$Type;I)V

    sput-object v0, Lafs;->a:Lcom/twitter/database/lru/LruPolicy;

    .line 23
    new-instance v0, Lcom/twitter/database/lru/al;

    sget-object v1, Lafs;->a:Lcom/twitter/database/lru/LruPolicy;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/database/lru/al;-><init>(Lcom/twitter/database/lru/LruPolicy;J)V

    sput-object v0, Lafs;->b:Lcom/twitter/database/lru/al;

    return-void
.end method

.method static a(Lbbq;)Lcom/twitter/database/lru/am;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbbq;",
            ")",
            "Lcom/twitter/database/lru/am",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/maker/y;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {}, Lcom/twitter/database/lru/u;->b()Lcom/twitter/database/lru/u;

    move-result-object v0

    const-string/jumbo v1, "moment_maker_local_operations"

    .line 32
    invoke-virtual {v0, v1}, Lcom/twitter/database/lru/u;->a(Ljava/lang/String;)Lcom/twitter/database/lru/u;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/moments/maker/y;->a:Lcom/twitter/util/serialization/ah;

    .line 33
    invoke-virtual {v0, v1}, Lcom/twitter/database/lru/u;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/database/lru/u;

    move-result-object v0

    sget-object v1, Lafs;->b:Lcom/twitter/database/lru/al;

    .line 34
    invoke-virtual {v0, v1}, Lcom/twitter/database/lru/u;->a(Lcom/twitter/database/lru/al;)Lcom/twitter/database/lru/u;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/twitter/database/lru/u;->c()Lcom/twitter/database/lru/t;

    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lbbq;->a(Lcom/twitter/database/lru/t;)Lcom/twitter/database/lru/am;

    move-result-object v0

    return-object v0
.end method
