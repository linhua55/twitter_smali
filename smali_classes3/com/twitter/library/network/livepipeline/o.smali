.class Lcom/twitter/library/network/livepipeline/o;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/library/network/livepipeline/af;

.field final synthetic b:Lcom/twitter/library/network/livepipeline/LivePipeline;


# direct methods
.method constructor <init>(Lcom/twitter/library/network/livepipeline/LivePipeline;Lcom/twitter/library/network/livepipeline/af;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/o;->b:Lcom/twitter/library/network/livepipeline/LivePipeline;

    iput-object p2, p0, Lcom/twitter/library/network/livepipeline/o;->a:Lcom/twitter/library/network/livepipeline/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 192
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/o;->b:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-static {v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->c(Lcom/twitter/library/network/livepipeline/LivePipeline;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 194
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/twitter/library/network/livepipeline/ap;

    iget-object v1, p0, Lcom/twitter/library/network/livepipeline/o;->b:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-static {v1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->d(Lcom/twitter/library/network/livepipeline/LivePipeline;)Landroid/content/Context;

    move-result-object v1

    .line 196
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/library/network/livepipeline/o;->a:Lcom/twitter/library/network/livepipeline/af;

    iget-object v4, p0, Lcom/twitter/library/network/livepipeline/o;->b:Lcom/twitter/library/network/livepipeline/LivePipeline;

    .line 197
    invoke-static {v4}, Lcom/twitter/library/network/livepipeline/LivePipeline;->e(Lcom/twitter/library/network/livepipeline/LivePipeline;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/library/network/livepipeline/ap;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/library/network/livepipeline/af;JLjava/util/Set;)V

    .line 199
    iget-object v1, p0, Lcom/twitter/library/network/livepipeline/o;->b:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-static {v1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->d(Lcom/twitter/library/network/livepipeline/LivePipeline;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 201
    :cond_0
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 187
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/twitter/library/network/livepipeline/o;->a(Ljava/util/List;)V

    return-void
.end method
