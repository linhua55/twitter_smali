.class public Lcom/twitter/model/timeline/cu;
.super Lcom/twitter/model/timeline/ay;
.source "Twttr"

# interfaces
.implements Lcom/twitter/model/timeline/ba;
.implements Lcom/twitter/model/timeline/bc;
.implements Lcom/twitter/model/timeline/bd;


# instance fields
.field public final a:Lcom/twitter/model/timeline/df;

.field public final n:Lcom/twitter/model/timeline/t;


# direct methods
.method private constructor <init>(Lcom/twitter/model/timeline/cw;I)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/twitter/model/timeline/ay;-><init>(Lcom/twitter/model/timeline/az;I)V

    .line 21
    iget-object v0, p1, Lcom/twitter/model/timeline/cw;->a:Lcom/twitter/model/timeline/df;

    iput-object v0, p0, Lcom/twitter/model/timeline/cu;->a:Lcom/twitter/model/timeline/df;

    .line 22
    iget-object v0, p1, Lcom/twitter/model/timeline/cw;->m:Lcom/twitter/model/timeline/t;

    iput-object v0, p0, Lcom/twitter/model/timeline/cu;->n:Lcom/twitter/model/timeline/t;

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/timeline/cw;ILcom/twitter/model/timeline/cv;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/twitter/model/timeline/cu;-><init>(Lcom/twitter/model/timeline/cw;I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/cs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/twitter/model/timeline/cu;->a:Lcom/twitter/model/timeline/df;

    iget-object v0, v0, Lcom/twitter/model/timeline/df;->b:Ljava/util/List;

    return-object v0
.end method

.method public b()Lcss;
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/model/timeline/cu;->a:Lcom/twitter/model/timeline/df;

    iget-object v0, v0, Lcom/twitter/model/timeline/df;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cs;

    .line 41
    invoke-virtual {v0}, Lcom/twitter/model/core/cs;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    iget-object v0, v0, Lcom/twitter/model/core/cs;->w:Lcss;

    .line 52
    :goto_0
    return-object v0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/twitter/model/timeline/cu;->a:Lcom/twitter/model/timeline/df;

    iget-object v0, v0, Lcom/twitter/model/timeline/df;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 47
    iget-object v2, v0, Lcom/twitter/model/core/TwitterUser;->B:Lcss;

    if-eqz v2, :cond_2

    .line 48
    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->B:Lcss;

    goto :goto_0

    .line 52
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/twitter/model/timeline/cu;->a:Lcom/twitter/model/timeline/df;

    iget-object v0, v0, Lcom/twitter/model/timeline/df;->a:Ljava/util/List;

    return-object v0
.end method
