.class Lcom/twitter/library/network/livepipeline/t;
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
        "Lcom/twitter/model/livepipeline/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/library/network/livepipeline/s;


# direct methods
.method constructor <init>(Lcom/twitter/library/network/livepipeline/s;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/t;->a:Lcom/twitter/library/network/livepipeline/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/livepipeline/e;)V
    .locals 4

    .prologue
    .line 360
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/t;->a:Lcom/twitter/library/network/livepipeline/s;

    iget-object v0, v0, Lcom/twitter/library/network/livepipeline/s;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-static {v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->b(Lcom/twitter/library/network/livepipeline/LivePipeline;)Lrx/subjects/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/t;->a:Lcom/twitter/library/network/livepipeline/s;

    iget-object v0, v0, Lcom/twitter/library/network/livepipeline/s;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-static {v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->b(Lcom/twitter/library/network/livepipeline/LivePipeline;)Lrx/subjects/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/subjects/e;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    const-string/jumbo v0, "LivePipeline"

    const-string/jumbo v1, "Timeout reached without activity. Reset stream."

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/t;->a:Lcom/twitter/library/network/livepipeline/s;

    iget-object v0, v0, Lcom/twitter/library/network/livepipeline/s;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    sget-object v1, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;->b:Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    iget-object v2, p0, Lcom/twitter/library/network/livepipeline/t;->a:Lcom/twitter/library/network/livepipeline/s;

    iget-object v2, v2, Lcom/twitter/library/network/livepipeline/s;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;)V

    .line 364
    :cond_0
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 357
    check-cast p1, Lcom/twitter/model/livepipeline/e;

    invoke-virtual {p0, p1}, Lcom/twitter/library/network/livepipeline/t;->a(Lcom/twitter/model/livepipeline/e;)V

    return-void
.end method
