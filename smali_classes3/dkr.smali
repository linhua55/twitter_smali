.class public final Ldkr;
.super Ldjo;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ldjo",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ldjo;-><init>()V

    .line 42
    new-instance v0, Lrx/internal/util/atomic/LinkedQueueNode;

    invoke-direct {v0}, Lrx/internal/util/atomic/LinkedQueueNode;-><init>()V

    invoke-virtual {p0, v0}, Ldkr;->b(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 43
    iget-object v0, p0, Ldkr;->producerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    invoke-virtual {p0, v0}, Ldkr;->a(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 44
    iget-object v0, p0, Ldkr;->consumerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/internal/util/atomic/LinkedQueueNode;->a(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 45
    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null elements not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    new-instance v0, Lrx/internal/util/atomic/LinkedQueueNode;

    invoke-direct {v0, p1}, Lrx/internal/util/atomic/LinkedQueueNode;-><init>(Ljava/lang/Object;)V

    .line 68
    iget-object v1, p0, Ldkr;->producerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    invoke-virtual {v1, v0}, Lrx/internal/util/atomic/LinkedQueueNode;->a(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 69
    iput-object v0, p0, Ldkr;->producerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Ldkr;->consumerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->c()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->b()Ljava/lang/Object;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Ldkr;->consumerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->c()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    .line 90
    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1}, Lrx/internal/util/atomic/LinkedQueueNode;->a()Ljava/lang/Object;

    move-result-object v0

    .line 93
    iput-object v1, p0, Ldkr;->consumerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
