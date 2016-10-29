.class Lcom/twitter/library/network/livepipeline/ab;
.super Lcom/twitter/library/network/livepipeline/ae;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/library/network/livepipeline/aa;


# direct methods
.method constructor <init>(Lcom/twitter/library/network/livepipeline/aa;Lrx/r;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/ab;->a:Lcom/twitter/library/network/livepipeline/aa;

    invoke-direct {p0, p2}, Lcom/twitter/library/network/livepipeline/ae;-><init>(Lrx/r;)V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/ab;->a:Lcom/twitter/library/network/livepipeline/aa;

    invoke-virtual {v0}, Lcom/twitter/library/network/livepipeline/aa;->b()V

    .line 88
    return-void
.end method
