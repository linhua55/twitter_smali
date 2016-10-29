.class public Lcom/twitter/model/timeline/cr;
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
            "Lcom/twitter/model/timeline/ay;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lctl;


# direct methods
.method private constructor <init>(Lcom/twitter/model/timeline/ct;I)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/twitter/model/timeline/ay;-><init>(Lcom/twitter/model/timeline/az;I)V

    .line 26
    invoke-static {p1}, Lcom/twitter/model/timeline/ct;->a(Lcom/twitter/model/timeline/ct;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/timeline/cr;->a:Ljava/util/List;

    .line 27
    invoke-static {p1}, Lcom/twitter/model/timeline/ct;->b(Lcom/twitter/model/timeline/ct;)Lctl;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/timeline/cr;->n:Lctl;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/timeline/ct;ILcom/twitter/model/timeline/cs;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/twitter/model/timeline/cr;-><init>(Lcom/twitter/model/timeline/ct;I)V

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
    .line 33
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 34
    iget-object v0, p0, Lcom/twitter/model/timeline/cr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/ay;

    .line 35
    invoke-static {v0}, Lcom/twitter/model/timeline/ay;->a(Lcom/twitter/model/timeline/ay;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
