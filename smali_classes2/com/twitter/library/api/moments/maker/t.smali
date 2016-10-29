.class public Lcom/twitter/library/api/moments/maker/t;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/api/moments/maker/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/library/api/moments/maker/d",
        "<",
        "Lcom/twitter/model/moments/maker/ar;",
        "Lcom/twitter/model/core/cj;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/twitter/library/api/moments/maker/t;->a:J

    .line 26
    iput-wide p3, p0, Lcom/twitter/library/api/moments/maker/t;->b:J

    .line 27
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    const-string/jumbo v0, "moments"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "set_cover"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/twitter/library/api/moments/maker/t;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "set_cover"

    return-object v0
.end method

.method public d()Lcom/twitter/library/api/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/library/api/t",
            "<",
            "Lcom/twitter/model/moments/maker/ar;",
            "Lcom/twitter/model/core/cj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    const-class v0, Lcom/twitter/model/moments/maker/ar;

    invoke-static {v0}, Lcom/twitter/library/api/v;->a(Ljava/lang/Class;)Lcom/twitter/library/api/v;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/twitter/model/json/common/b;
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/twitter/library/api/moments/maker/t;->b:J

    invoke-static {v0, v1}, Lcom/twitter/model/json/moments/maker/JsonSetMediaIdAsCoverRequest;->a(J)Lcom/twitter/model/json/moments/maker/JsonSetMediaIdAsCoverRequest;

    move-result-object v0

    return-object v0
.end method
