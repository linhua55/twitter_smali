.class public Lcom/facebook/imagepipeline/memory/k;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field final a:Lcom/facebook/imagepipeline/memory/m;

.field private final b:Lcom/facebook/common/references/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/d",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/b;Lcom/facebook/imagepipeline/memory/y;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget v0, p2, Lcom/facebook/imagepipeline/memory/y;->f:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lbk;->a(Z)V

    .line 38
    new-instance v0, Lcom/facebook/imagepipeline/memory/m;

    invoke-static {}, Lcom/facebook/imagepipeline/memory/r;->a()Lcom/facebook/imagepipeline/memory/r;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/facebook/imagepipeline/memory/m;-><init>(Lcom/facebook/common/memory/b;Lcom/facebook/imagepipeline/memory/y;Lcom/facebook/imagepipeline/memory/z;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/k;->a:Lcom/facebook/imagepipeline/memory/m;

    .line 42
    new-instance v0, Lcom/facebook/imagepipeline/memory/l;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/memory/l;-><init>(Lcom/facebook/imagepipeline/memory/k;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/k;->b:Lcom/facebook/common/references/d;

    .line 48
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/facebook/common/references/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/a",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/k;->a:Lcom/facebook/imagepipeline/memory/m;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/m;->a(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/k;->b:Lcom/facebook/common/references/d;

    invoke-static {v0, v1}, Lcom/facebook/common/references/a;->a(Ljava/lang/Object;Lcom/facebook/common/references/d;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method public a([B)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/k;->a:Lcom/facebook/imagepipeline/memory/m;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/m;->a(Ljava/lang/Object;)V

    .line 56
    return-void
.end method
