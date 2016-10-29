.class public Lbvr;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbvs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbvr;->a:Ljava/util/List;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;)Lbvr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lbvs;",
            ">;)",
            "Lbvr;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lbvr;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    return-object p0
.end method

.method public a(Lbvq;)V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lbvr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbvs;

    .line 43
    invoke-virtual {v0, p1}, Lbvs;->b(Lbvq;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v0, p1}, Lbvs;->c(Lbvq;)V

    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method
