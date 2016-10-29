.class Ldag;
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
.field final synthetic a:Ldaf;

.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+",
            "Ljava/lang/Iterable",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ldaf;)V
    .locals 1

    .prologue
    .line 466
    iput-object p1, p0, Ldag;->a:Ldaf;

    invoke-direct {p0}, Lczl;-><init>()V

    .line 467
    iget-object v0, p0, Ldag;->a:Ldaf;

    iget-object v0, v0, Ldaf;->a:Ljava/lang/Iterable;

    .line 468
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ldag;->b:Ljava/util/Iterator;

    .line 469
    iget-object v0, p0, Ldag;->b:Ljava/util/Iterator;

    .line 470
    invoke-direct {p0, v0}, Ldag;->a(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ldag;->c:Ljava/util/Iterator;

    .line 469
    return-void
.end method

.method private a(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+",
            "Ljava/lang/Iterable",
            "<+TT;>;>;)",
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 489
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 491
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 493
    :goto_0
    return-object v0

    .line 491
    :cond_0
    invoke-static {}, Lczq;->c()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 493
    :cond_1
    invoke-static {}, Lczq;->c()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 483
    iget-object v0, p0, Ldag;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 474
    :goto_0
    iget-object v0, p0, Ldag;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldag;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Ldag;->b:Ljava/util/Iterator;

    invoke-direct {p0, v0}, Ldag;->a(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ldag;->c:Ljava/util/Iterator;

    goto :goto_0

    .line 477
    :cond_0
    iget-object v0, p0, Ldag;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method
