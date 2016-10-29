.class Lcom/twitter/library/network/livepipeline/j;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/library/network/livepipeline/LivePipeline;


# direct methods
.method constructor <init>(Lcom/twitter/library/network/livepipeline/LivePipeline;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/j;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/j;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-virtual {v0, p1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/j;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-static {v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->k(Lcom/twitter/library/network/livepipeline/LivePipeline;)V

    .line 556
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/j;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-static {v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->l(Lcom/twitter/library/network/livepipeline/LivePipeline;)V

    .line 558
    :cond_0
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 551
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/twitter/library/network/livepipeline/j;->a(Ljava/lang/String;)V

    return-void
.end method
