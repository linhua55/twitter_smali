.class final Lee;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Leq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leq",
        "<",
        "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/memory/PooledByteBuffer;)I
    .locals 1

    .prologue
    .line 27
    invoke-interface {p1}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->a()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    invoke-virtual {p0, p1}, Lee;->a(Lcom/facebook/imagepipeline/memory/PooledByteBuffer;)I

    move-result v0

    return v0
.end method
