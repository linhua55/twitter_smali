.class public abstract Lcom/twitter/library/network/livepipeline/ag;
.super Lrx/ao;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/model/livepipeline/e;",
        ">",
        "Lrx/ao",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lrx/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/twitter/model/livepipeline/e;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 23
    invoke-static {p1}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 24
    return-void
.end method

.method public b(Lcom/twitter/model/livepipeline/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/twitter/library/network/livepipeline/ag;->a(Lcom/twitter/model/livepipeline/e;)V

    .line 29
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/twitter/model/livepipeline/e;

    invoke-virtual {p0, p1}, Lcom/twitter/library/network/livepipeline/ag;->b(Lcom/twitter/model/livepipeline/e;)V

    return-void
.end method

.method public bt_()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method
