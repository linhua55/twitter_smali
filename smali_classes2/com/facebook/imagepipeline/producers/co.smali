.class Lcom/facebook/imagepipeline/producers/co;
.super Lcom/facebook/imagepipeline/producers/cf;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/cf",
        "<",
        "Lfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lfo;

.field final synthetic c:Lcom/facebook/imagepipeline/producers/cn;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/cn;Lcom/facebook/imagepipeline/producers/o;Lcom/facebook/imagepipeline/producers/bz;Ljava/lang/String;Ljava/lang/String;Lfo;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/co;->c:Lcom/facebook/imagepipeline/producers/cn;

    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/co;->b:Lfo;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/facebook/imagepipeline/producers/cf;-><init>(Lcom/facebook/imagepipeline/producers/o;Lcom/facebook/imagepipeline/producers/bz;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lfo;)V
    .locals 0

    .prologue
    .line 126
    invoke-static {p1}, Lfo;->d(Lfo;)V

    .line 127
    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/co;->b:Lfo;

    invoke-static {v0}, Lfo;->d(Lfo;)V

    .line 138
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/producers/cf;->a(Ljava/lang/Exception;)V

    .line 139
    return-void
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 104
    check-cast p1, Lfo;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/co;->b(Lfo;)V

    return-void
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/co;->b:Lfo;

    invoke-static {v0}, Lfo;->d(Lfo;)V

    .line 144
    invoke-super {p0}, Lcom/facebook/imagepipeline/producers/cf;->b()V

    .line 145
    return-void
.end method

.method protected b(Lfo;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/co;->b:Lfo;

    invoke-static {v0}, Lfo;->d(Lfo;)V

    .line 132
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/producers/cf;->a(Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 104
    check-cast p1, Lfo;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/co;->a(Lfo;)V

    return-void
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/co;->d()Lfo;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/co;->c:Lcom/facebook/imagepipeline/producers/cn;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/cn;->a(Lcom/facebook/imagepipeline/producers/cn;)Lcom/facebook/imagepipeline/memory/ab;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/memory/ab;->b()Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v1

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/co;->b:Lfo;

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/producers/cn;->a(Lfo;Lcom/facebook/imagepipeline/memory/ad;)V

    .line 110
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/ad;->c()Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/references/a;->a(Ljava/io/Closeable;)Lcom/facebook/common/references/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 113
    :try_start_1
    new-instance v0, Lfo;

    invoke-direct {v0, v2}, Lfo;-><init>(Lcom/facebook/common/references/a;)V

    .line 114
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/co;->b:Lfo;

    invoke-virtual {v0, v3}, Lfo;->b(Lfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :try_start_2
    invoke-static {v2}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 120
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/ad;->close()V

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {v2}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/ad;->close()V

    throw v0
.end method
