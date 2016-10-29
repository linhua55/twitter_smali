.class public Lcom/twitter/model/timeline/bh;
.super Lcom/twitter/model/timeline/ay;
.source "Twttr"

# interfaces
.implements Lcom/twitter/model/timeline/bc;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/timeline/cd;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lcom/twitter/model/timeline/o;

.field public final o:Lcom/twitter/model/timeline/t;


# direct methods
.method private constructor <init>(Lcom/twitter/model/timeline/bj;I)V
    .locals 4

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/twitter/model/timeline/ay;-><init>(Lcom/twitter/model/timeline/az;I)V

    .line 22
    iget-wide v0, p0, Lcom/twitter/model/timeline/bh;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 23
    invoke-static {p1}, Lcom/twitter/model/timeline/bj;->a(Lcom/twitter/model/timeline/bj;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/model/timeline/bh;->a(Ljava/util/List;)V

    .line 27
    :cond_0
    invoke-static {p1}, Lcom/twitter/model/timeline/bj;->a(Lcom/twitter/model/timeline/bj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 28
    invoke-static {p1}, Lcom/twitter/model/timeline/bj;->a(Lcom/twitter/model/timeline/bj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/cf;

    .line 29
    iget-object v3, p0, Lcom/twitter/model/timeline/bh;->b:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v3}, Lcom/twitter/model/timeline/cf;->b(Ljava/lang/String;)Lcom/twitter/model/timeline/az;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/cf;

    .line 31
    invoke-virtual {v0}, Lcom/twitter/model/timeline/cf;->q()Ljava/lang/Object;

    move-result-object v0

    .line 29
    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/twitter/model/timeline/bh;->a:Ljava/util/List;

    .line 34
    invoke-static {p1}, Lcom/twitter/model/timeline/bj;->b(Lcom/twitter/model/timeline/bj;)Lcom/twitter/model/timeline/o;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/timeline/bh;->n:Lcom/twitter/model/timeline/o;

    .line 35
    invoke-static {p1}, Lcom/twitter/model/timeline/bj;->c(Lcom/twitter/model/timeline/bj;)Lcom/twitter/model/timeline/t;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/timeline/bh;->o:Lcom/twitter/model/timeline/t;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/timeline/bj;ILcom/twitter/model/timeline/bi;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/twitter/model/timeline/bh;-><init>(Lcom/twitter/model/timeline/bj;I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 3
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
    .line 41
    iget-object v0, p0, Lcom/twitter/model/timeline/bh;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 42
    iget-object v0, p0, Lcom/twitter/model/timeline/bh;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/cd;

    .line 43
    iget-object v0, v0, Lcom/twitter/model/timeline/cd;->a:Lcom/twitter/model/core/cs;

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
