.class public Lcom/twitter/library/api/moments/maker/r;
.super Lcom/twitter/library/service/b;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/service/b",
        "<",
        "Lcom/twitter/library/api/t",
        "<",
        "Lcom/twitter/model/moments/maker/af;",
        "Lcom/twitter/model/core/cj;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:J

.field private b:Lcom/twitter/library/api/moments/maker/RecommendationType;

.field private c:Lcom/twitter/model/moments/maker/af;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcom/twitter/library/api/moments/maker/RecommendationType;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 50
    const-class v0, Lcom/twitter/library/api/moments/maker/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 38
    sget-object v0, Lcom/twitter/model/moments/maker/af;->a:Lcom/twitter/model/moments/maker/af;

    iput-object v0, p0, Lcom/twitter/library/api/moments/maker/r;->c:Lcom/twitter/model/moments/maker/af;

    .line 51
    iput-wide p3, p0, Lcom/twitter/library/api/moments/maker/r;->a:J

    .line 52
    iput-object p5, p0, Lcom/twitter/library/api/moments/maker/r;->b:Lcom/twitter/library/api/moments/maker/RecommendationType;

    .line 53
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/library/service/d;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/twitter/library/api/moments/maker/r;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "X-Twitter-UTCOffset"

    .line 59
    invoke-static {}, Lcom/twitter/util/al;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "moments"

    aput-object v2, v1, v3

    .line 60
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->b([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "get_recommended_tweets"

    aput-object v2, v1, v3

    .line 61
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "momentId"

    iget-wide v2, p0, Lcom/twitter/library/api/moments/maker/r;->a:J

    .line 62
    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "recommendation_types"

    iget-object v2, p0, Lcom/twitter/library/api/moments/maker/r;->b:Lcom/twitter/library/api/moments/maker/RecommendationType;

    .line 63
    invoke-virtual {v2}, Lcom/twitter/library/api/moments/maker/RecommendationType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "count"

    const-wide/16 v2, 0x32

    .line 64
    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->a()Lcom/twitter/library/service/d;

    move-result-object v0

    .line 58
    return-object v0
.end method

.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/network/HttpOperation;",
            "Lcom/twitter/library/service/aa;",
            "Lcom/twitter/library/api/t",
            "<",
            "Lcom/twitter/model/moments/maker/af;",
            "Lcom/twitter/model/core/cj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p3}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/t;

    invoke-virtual {v0}, Lcom/twitter/library/api/t;->b()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/moments/maker/af;->a:Lcom/twitter/model/moments/maker/af;

    .line 79
    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/af;

    iput-object v0, p0, Lcom/twitter/library/api/moments/maker/r;->c:Lcom/twitter/model/moments/maker/af;

    .line 82
    :cond_0
    invoke-virtual {p2, p1}, Lcom/twitter/library/service/aa;->a(Lcom/twitter/internal/network/HttpOperation;)V

    .line 83
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 0

    .prologue
    .line 28
    check-cast p3, Lcom/twitter/library/api/t;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/library/api/moments/maker/r;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/t;)V

    return-void
.end method

.method protected b()Lcom/twitter/library/api/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/library/api/t",
            "<",
            "Lcom/twitter/model/moments/maker/af;",
            "Lcom/twitter/model/core/cj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    const-class v0, Lcom/twitter/model/moments/maker/af;

    invoke-static {v0}, Lcom/twitter/library/api/v;->a(Ljava/lang/Class;)Lcom/twitter/library/api/v;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/twitter/model/moments/maker/af;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/twitter/library/api/moments/maker/r;->c:Lcom/twitter/model/moments/maker/af;

    return-object v0
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/twitter/library/api/moments/maker/r;->b()Lcom/twitter/library/api/t;

    move-result-object v0

    return-object v0
.end method
