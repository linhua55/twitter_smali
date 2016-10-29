.class public Lbbl;
.super Lcmx;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmx",
        "<",
        "Lbew;",
        "Lcom/twitter/model/core/cm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcmx;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbew;)Lcom/twitter/model/core/cm;
    .locals 4

    .prologue
    .line 17
    invoke-interface {p1}, Lbew;->g()[B

    move-result-object v0

    sget-object v1, Lcom/twitter/model/topic/e;->b:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/topic/e;

    .line 18
    new-instance v1, Lcom/twitter/model/core/cn;

    invoke-direct {v1}, Lcom/twitter/model/core/cn;-><init>()V

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/twitter/model/topic/e;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 19
    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/model/core/cn;->b(Z)Lcom/twitter/model/core/cn;

    move-result-object v0

    .line 20
    invoke-interface {p1}, Lbew;->i()Lbeq;

    move-result-object v1

    invoke-interface {v1}, Lbeq;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cn;->a(Ljava/lang/String;)Lcom/twitter/model/core/cn;

    move-result-object v0

    .line 21
    invoke-interface {p1}, Lbew;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cn;->b(Ljava/lang/String;)Lcom/twitter/model/core/cn;

    move-result-object v0

    .line 22
    invoke-interface {p1}, Lbew;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cn;->c(Ljava/lang/String;)Lcom/twitter/model/core/cn;

    move-result-object v0

    .line 23
    invoke-interface {p1}, Lbew;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/cn;->a(J)Lcom/twitter/model/core/cn;

    move-result-object v0

    .line 24
    invoke-interface {p1}, Lbew;->h()Lbdu;

    move-result-object v1

    invoke-interface {v1}, Lbdu;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/cn;->b(J)Lcom/twitter/model/core/cn;

    move-result-object v0

    .line 25
    invoke-interface {p1}, Lbew;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/cn;->c(J)Lcom/twitter/model/core/cn;

    move-result-object v0

    .line 26
    invoke-interface {p1}, Lbew;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cn;->d(Ljava/lang/String;)Lcom/twitter/model/core/cn;

    move-result-object v0

    .line 27
    invoke-interface {p1}, Lbew;->i()Lbeq;

    move-result-object v1

    invoke-interface {v1}, Lbeq;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cn;->e(Ljava/lang/String;)Lcom/twitter/model/core/cn;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/twitter/model/core/cn;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cm;

    .line 18
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    check-cast p1, Lbew;

    invoke-virtual {p0, p1}, Lbbl;->a(Lbew;)Lcom/twitter/model/core/cm;

    move-result-object v0

    return-object v0
.end method
