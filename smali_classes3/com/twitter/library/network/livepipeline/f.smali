.class Lcom/twitter/library/network/livepipeline/f;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldje;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/twitter/library/network/livepipeline/LivePipeline;


# direct methods
.method constructor <init>(Lcom/twitter/library/network/livepipeline/LivePipeline;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/f;->b:Lcom/twitter/library/network/livepipeline/LivePipeline;

    iput-object p2, p0, Lcom/twitter/library/network/livepipeline/f;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/f;->b:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-static {v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->c(Lcom/twitter/library/network/livepipeline/LivePipeline;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/library/network/livepipeline/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/f;->b:Lcom/twitter/library/network/livepipeline/LivePipeline;

    iget-object v1, p0, Lcom/twitter/library/network/livepipeline/f;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->d(Lcom/twitter/library/network/livepipeline/LivePipeline;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/f;->b:Lcom/twitter/library/network/livepipeline/LivePipeline;

    iget-object v1, p0, Lcom/twitter/library/network/livepipeline/f;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->e(Lcom/twitter/library/network/livepipeline/LivePipeline;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/f;->b:Lcom/twitter/library/network/livepipeline/LivePipeline;

    iget-object v1, p0, Lcom/twitter/library/network/livepipeline/f;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->c(Lcom/twitter/library/network/livepipeline/LivePipeline;Ljava/lang/String;)V

    .line 445
    :cond_0
    return-void
.end method
