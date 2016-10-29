.class public Laex;
.super Lcom/twitter/app/common/inject/e;
.source "Twttr"


# static fields
.field private static final a:Lcom/twitter/database/lru/LruPolicy;

.field private static final b:Lcom/twitter/database/lru/al;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 57
    new-instance v0, Lcom/twitter/database/lru/LruPolicy;

    sget-object v1, Lcom/twitter/database/lru/LruPolicy$Type;->a:Lcom/twitter/database/lru/LruPolicy$Type;

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/twitter/database/lru/LruPolicy;-><init>(Lcom/twitter/database/lru/LruPolicy$Type;I)V

    sput-object v0, Laex;->a:Lcom/twitter/database/lru/LruPolicy;

    .line 58
    new-instance v0, Lcom/twitter/database/lru/al;

    sget-object v1, Laex;->a:Lcom/twitter/database/lru/LruPolicy;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    .line 59
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/database/lru/al;-><init>(Lcom/twitter/database/lru/LruPolicy;J)V

    sput-object v0, Laex;->b:Lcom/twitter/database/lru/al;

    .line 58
    return-void
.end method

.method static a(Lcom/twitter/database/schema/TwitterSchema;)Lacj;
    .locals 1

    .prologue
    .line 117
    invoke-static {p0}, Lacj;->a(Lcom/twitter/database/model/l;)Lacj;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/twitter/library/client/Session;)Laeo;
    .locals 1

    .prologue
    .line 77
    invoke-static {p0, p1}, Laeo;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;)Laeo;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;)Lcom/twitter/android/moments/data/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/twitter/android/moments/data/d",
            "<",
            "Lavh;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/moments/viewmodels/d;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Laey;

    invoke-direct {v0, p0}, Laey;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v1, Lcom/twitter/android/moments/data/d;

    invoke-direct {v1, v0}, Lcom/twitter/android/moments/data/d;-><init>(Lcom/twitter/util/object/i;)V

    return-object v1
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
            "Lcqx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {}, Lcom/twitter/database/lru/u;->b()Lcom/twitter/database/lru/u;

    move-result-object v0

    const-string/jumbo v1, "moment_maker_unassociated_page_data_groups"

    .line 67
    invoke-virtual {v0, v1}, Lcom/twitter/database/lru/u;->a(Ljava/lang/String;)Lcom/twitter/database/lru/u;

    move-result-object v0

    sget-object v1, Lcqx;->a:Lcom/twitter/util/serialization/ah;

    .line 68
    invoke-virtual {v0, v1}, Lcom/twitter/database/lru/u;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/database/lru/u;

    move-result-object v0

    sget-object v1, Laex;->b:Lcom/twitter/database/lru/al;

    .line 69
    invoke-virtual {v0, v1}, Lcom/twitter/database/lru/u;->a(Lcom/twitter/database/lru/al;)Lcom/twitter/database/lru/u;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/twitter/database/lru/u;->c()Lcom/twitter/database/lru/t;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Lbbq;->a(Lcom/twitter/database/lru/t;)Lcom/twitter/database/lru/am;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcet;)Lcom/twitter/util/object/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/library/client/Session;",
            "Lcet;",
            ")",
            "Lcom/twitter/util/object/c",
            "<",
            "Ljava/lang/Long;",
            "Lbpx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Laez;

    invoke-direct {v0, p0, p1, p2}, Laez;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcet;)V

    return-object v0
.end method
