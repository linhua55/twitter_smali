.class Lcom/twitter/library/network/livepipeline/a;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/network/livepipeline/af;


# instance fields
.field final synthetic a:Lcom/twitter/library/network/livepipeline/LivePipeline;


# direct methods
.method constructor <init>(Lcom/twitter/library/network/livepipeline/LivePipeline;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/a;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/a;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-static {v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Lcom/twitter/library/network/livepipeline/LivePipeline;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/a;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-static {v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Lcom/twitter/library/network/livepipeline/LivePipeline;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/a;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-static {v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->b(Lcom/twitter/library/network/livepipeline/LivePipeline;)Lrx/subjects/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/subjects/e;->r()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
