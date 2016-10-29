.class public Lbbk;
.super Lcmx;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmx",
        "<",
        "Lcom/twitter/database/schema/b;",
        "Lcom/twitter/model/drafts/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcmx;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/schema/b;)Lcom/twitter/model/drafts/d;
    .locals 4

    .prologue
    .line 15
    new-instance v0, Lcom/twitter/model/drafts/e;

    invoke-direct {v0}, Lcom/twitter/model/drafts/e;-><init>()V

    .line 16
    invoke-interface {p1}, Lcom/twitter/database/schema/b;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/drafts/e;->a(J)Lcom/twitter/model/drafts/e;

    move-result-object v0

    .line 17
    invoke-interface {p1}, Lcom/twitter/database/schema/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->a(Ljava/lang/String;)Lcom/twitter/model/drafts/e;

    move-result-object v0

    .line 18
    invoke-interface {p1}, Lcom/twitter/database/schema/b;->f()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->a(Ljava/util/List;)Lcom/twitter/model/drafts/e;

    move-result-object v0

    .line 19
    invoke-interface {p1}, Lcom/twitter/database/schema/b;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/drafts/e;->b(J)Lcom/twitter/model/drafts/e;

    move-result-object v0

    .line 20
    invoke-interface {p1}, Lcom/twitter/database/schema/b;->i()Lcom/twitter/model/geo/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->a(Lcom/twitter/model/geo/g;)Lcom/twitter/model/drafts/e;

    move-result-object v0

    .line 21
    invoke-interface {p1}, Lcom/twitter/database/schema/b;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1}, Lcom/twitter/database/schema/b;->h()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/model/drafts/e;->a(Ljava/util/List;J)Lcom/twitter/model/drafts/e;

    move-result-object v0

    .line 22
    invoke-interface {p1}, Lcom/twitter/database/schema/b;->d()Lcss;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->a(Lcss;)Lcom/twitter/model/drafts/e;

    move-result-object v0

    .line 23
    invoke-interface {p1}, Lcom/twitter/database/schema/b;->e()Lcom/twitter/model/core/ay;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->a(Lcom/twitter/model/core/ay;)Lcom/twitter/model/drafts/e;

    move-result-object v0

    .line 24
    invoke-interface {p1}, Lcom/twitter/database/schema/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->b(Ljava/lang/String;)Lcom/twitter/model/drafts/e;

    move-result-object v0

    .line 25
    invoke-interface {p1}, Lcom/twitter/database/schema/b;->k()Lclp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->a(Lclp;)Lcom/twitter/model/drafts/e;

    move-result-object v0

    .line 26
    invoke-interface {p1}, Lcom/twitter/database/schema/b;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->a(Z)Lcom/twitter/model/drafts/e;

    move-result-object v0

    .line 27
    invoke-interface {p1}, Lcom/twitter/database/schema/b;->m()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->b(Ljava/util/List;)Lcom/twitter/model/drafts/e;

    move-result-object v0

    .line 28
    invoke-interface {p1}, Lcom/twitter/database/schema/b;->n()Lcom/twitter/model/timeline/cx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->a(Lcom/twitter/model/timeline/cx;)Lcom/twitter/model/drafts/e;

    move-result-object v0

    .line 29
    invoke-interface {p1}, Lcom/twitter/database/schema/b;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->c(Ljava/lang/String;)Lcom/twitter/model/drafts/e;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/twitter/model/drafts/e;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/d;

    .line 15
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lcom/twitter/database/schema/b;

    invoke-virtual {p0, p1}, Lbbk;->a(Lcom/twitter/database/schema/b;)Lcom/twitter/model/drafts/d;

    move-result-object v0

    return-object v0
.end method
