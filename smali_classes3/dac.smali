.class Ldac;
.super Lczl;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lczl",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldab;

.field private final b:Ldat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldat",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final c:Ldat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldat",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ldab;)V
    .locals 2

    .prologue
    .line 393
    iput-object p1, p0, Ldac;->a:Ldab;

    invoke-direct {p0}, Lczl;-><init>()V

    .line 394
    new-instance v0, Ldat;

    iget-object v1, p0, Ldac;->a:Ldab;

    iget-object v1, v1, Ldab;->a:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ldat;-><init>(Ljava/util/Iterator;)V

    iput-object v0, p0, Ldac;->b:Ldat;

    .line 395
    new-instance v0, Ldat;

    iget-object v1, p0, Ldac;->a:Ldab;

    iget-object v1, v1, Ldab;->b:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ldat;-><init>(Ljava/util/Iterator;)V

    iput-object v0, p0, Ldac;->c:Ldat;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Ldac;->c:Ldat;

    invoke-virtual {v0}, Ldat;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Ldac;->b:Ldat;

    invoke-virtual {v0}, Ldat;->next()Ljava/lang/Object;

    move-result-object v0

    .line 412
    :goto_0
    return-object v0

    .line 407
    :cond_0
    iget-object v0, p0, Ldac;->b:Ldat;

    invoke-virtual {v0}, Ldat;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    iget-object v0, p0, Ldac;->c:Ldat;

    invoke-virtual {v0}, Ldat;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 409
    :cond_1
    iget-object v0, p0, Ldac;->a:Ldab;

    iget-object v0, v0, Ldab;->c:Ljava/util/Comparator;

    iget-object v1, p0, Ldac;->b:Ldat;

    invoke-virtual {v1}, Ldat;->c()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Ldac;->c:Ldat;

    invoke-virtual {v2}, Ldat;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    .line 410
    iget-object v0, p0, Ldac;->b:Ldat;

    invoke-virtual {v0}, Ldat;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 412
    :cond_2
    iget-object v0, p0, Ldac;->c:Ldat;

    invoke-virtual {v0}, Ldat;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Ldac;->b:Ldat;

    invoke-virtual {v0}, Ldat;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldac;->c:Ldat;

    invoke-virtual {v0}, Ldat;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
