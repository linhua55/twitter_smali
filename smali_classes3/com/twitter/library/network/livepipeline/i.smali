.class Lcom/twitter/library/network/livepipeline/i;
.super Lcom/twitter/library/service/ac;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/service/ac",
        "<",
        "Landroid/os/Bundle;",
        "Lcom/twitter/internal/android/service/AsyncOperation",
        "<",
        "Landroid/os/Bundle;",
        "Lcom/twitter/library/service/aa;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/library/network/livepipeline/LivePipeline;


# direct methods
.method constructor <init>(Lcom/twitter/library/network/livepipeline/LivePipeline;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/i;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-direct {p0}, Lcom/twitter/library/service/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/android/service/AsyncOperation",
            "<",
            "Landroid/os/Bundle;",
            "Lcom/twitter/library/service/aa;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 480
    invoke-virtual {p1}, Lcom/twitter/internal/android/service/AsyncOperation;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 481
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->g()Lcom/twitter/internal/network/k;

    move-result-object v0

    .line 483
    if-eqz v0, :cond_0

    .line 484
    iget-object v1, v0, Lcom/twitter/internal/network/k;->t:[I

    .line 486
    iget-object v2, p0, Lcom/twitter/library/network/livepipeline/i;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    const/4 v3, 0x2

    aget v3, v1, v3

    const/4 v4, 0x3

    aget v1, v1, v4

    add-int/2addr v1, v3

    invoke-static {v2, v1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Lcom/twitter/library/network/livepipeline/LivePipeline;I)V

    .line 488
    iget-object v1, p0, Lcom/twitter/library/network/livepipeline/i;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    iget-wide v2, v0, Lcom/twitter/internal/network/k;->i:J

    invoke-static {v1, v2, v3}, Lcom/twitter/library/network/livepipeline/LivePipeline;->b(Lcom/twitter/library/network/livepipeline/LivePipeline;J)V

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/i;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-virtual {v0, p1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->b(Lcom/twitter/internal/android/service/AsyncOperation;)V

    .line 492
    return-void
.end method
