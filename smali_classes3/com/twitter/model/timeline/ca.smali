.class public Lcom/twitter/model/timeline/ca;
.super Lcom/twitter/model/timeline/ay;
.source "Twttr"

# interfaces
.implements Lcom/twitter/model/timeline/ba;
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

.field public final n:Lcom/twitter/model/timeline/aa;

.field public final o:Lcom/twitter/model/timeline/t;


# direct methods
.method private constructor <init>(Lcom/twitter/model/timeline/cc;I)V
    .locals 4

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/twitter/model/timeline/ay;-><init>(Lcom/twitter/model/timeline/az;I)V

    .line 24
    iget-wide v0, p0, Lcom/twitter/model/timeline/ca;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 25
    invoke-static {p1}, Lcom/twitter/model/timeline/cc;->a(Lcom/twitter/model/timeline/cc;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/model/timeline/ca;->a(Ljava/util/List;)V

    .line 28
    :cond_0
    invoke-static {p1}, Lcom/twitter/model/timeline/cc;->a(Lcom/twitter/model/timeline/cc;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 29
    invoke-static {p1}, Lcom/twitter/model/timeline/cc;->a(Lcom/twitter/model/timeline/cc;)Ljava/util/List;

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

    .line 30
    iget-object v3, p0, Lcom/twitter/model/timeline/ca;->b:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v3}, Lcom/twitter/model/timeline/cf;->b(Ljava/lang/String;)Lcom/twitter/model/timeline/az;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/cf;

    .line 32
    invoke-virtual {v0}, Lcom/twitter/model/timeline/cf;->q()Ljava/lang/Object;

    move-result-object v0

    .line 30
    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/twitter/model/timeline/ca;->a:Ljava/util/List;

    .line 35
    invoke-static {p1}, Lcom/twitter/model/timeline/cc;->b(Lcom/twitter/model/timeline/cc;)Lcom/twitter/model/timeline/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/timeline/ca;->n:Lcom/twitter/model/timeline/aa;

    .line 36
    invoke-static {p1}, Lcom/twitter/model/timeline/cc;->c(Lcom/twitter/model/timeline/cc;)Lcom/twitter/model/timeline/t;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/timeline/ca;->o:Lcom/twitter/model/timeline/t;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/timeline/cc;ILcom/twitter/model/timeline/cb;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/twitter/model/timeline/ca;-><init>(Lcom/twitter/model/timeline/cc;I)V

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
    .line 42
    iget-object v0, p0, Lcom/twitter/model/timeline/ca;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 43
    iget-object v0, p0, Lcom/twitter/model/timeline/ca;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/cd;

    .line 44
    iget-object v0, v0, Lcom/twitter/model/timeline/cd;->a:Lcom/twitter/model/core/cs;

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public b()Lcss;
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/twitter/model/timeline/ca;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/cd;

    .line 53
    iget-object v0, v0, Lcom/twitter/model/timeline/cd;->a:Lcom/twitter/model/core/cs;

    .line 54
    invoke-virtual {v0}, Lcom/twitter/model/core/cs;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    iget-object v0, v0, Lcom/twitter/model/core/cs;->w:Lcss;

    .line 58
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
