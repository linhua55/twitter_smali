.class public Lcom/facebook/imagepipeline/producers/i;
.super Lcom/facebook/imagepipeline/producers/bc;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/bc",
        "<",
        "Landroid/util/Pair",
        "<",
        "Lcom/facebook/cache/common/a;",
        "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
        ">;",
        "Lcom/facebook/common/references/a",
        "<",
        "Lfm;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final b:Ldt;


# direct methods
.method public constructor <init>(Ldt;Lcom/facebook/imagepipeline/producers/bw;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/bc;-><init>(Lcom/facebook/imagepipeline/producers/bw;)V

    .line 33
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/i;->b:Ldt;

    .line 34
    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/producers/bx;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/bx;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/i;->b:Ldt;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/bx;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Ldt;->a(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/cache/common/a;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/bx;->e()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<",
            "Lfm;",
            ">;)",
            "Lcom/facebook/common/references/a",
            "<",
            "Lfm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p1}, Lcom/facebook/common/references/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/io/Closeable;)Ljava/io/Closeable;
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/i;->a(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Lcom/facebook/imagepipeline/producers/bx;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/i;->a(Lcom/facebook/imagepipeline/producers/bx;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
