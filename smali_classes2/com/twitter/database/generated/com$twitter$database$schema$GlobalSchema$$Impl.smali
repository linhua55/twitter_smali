.class public final Lcom/twitter/database/generated/com$twitter$database$schema$GlobalSchema$$Impl;
.super Lcom/twitter/database/internal/f;
.source "Twttr"

# interfaces
.implements Lcom/twitter/database/schema/GlobalSchema;


# annotations
.annotation build Latx;
.end annotation


# static fields
.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/p;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/p;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/q;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/q;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/r;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/r;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$GlobalSchema$$Impl;->b:Ljava/util/Map;

    .line 38
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$GlobalSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbdn;

    const-class v2, Lcom/twitter/database/generated/de;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$GlobalSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbbt;

    const-class v2, Lcom/twitter/database/generated/aa;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$GlobalSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbbv;

    const-class v2, Lcom/twitter/database/generated/ae;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$GlobalSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbcj;

    const-class v2, Lcom/twitter/database/generated/bc;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$GlobalSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbiq;

    const-class v2, Lcom/twitter/database/generated/pf;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$GlobalSchema$$Impl;->c:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$GlobalSchema$$Impl;->d:Ljava/util/Map;

    .line 49
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$GlobalSchema$$Impl;->d:Ljava/util/Map;

    const-class v1, Lbdp;

    const-class v2, Lcom/twitter/database/generated/di;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$GlobalSchema$$Impl;->d:Ljava/util/Map;

    const-class v1, Lbbx;

    const-class v2, Lcom/twitter/database/generated/ai;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$GlobalSchema$$Impl;->d:Ljava/util/Map;

    const-class v1, Lbcl;

    const-class v2, Lcom/twitter/database/generated/bg;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/twitter/database/model/b;)V
    .locals 0
    .annotation build Latx;
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/twitter/database/internal/f;-><init>(Lcom/twitter/database/model/b;)V

    .line 57
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, "global"

    return-object v0
.end method

.method protected final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/p;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/p;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 68
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$GlobalSchema$$Impl;->b:Ljava/util/Map;

    return-object v0
.end method

.method protected final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/q;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/q;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 74
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$GlobalSchema$$Impl;->c:Ljava/util/Map;

    return-object v0
.end method

.method protected final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/r;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/r;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 80
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$GlobalSchema$$Impl;->d:Ljava/util/Map;

    return-object v0
.end method
