.class Ldam;
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
.field final synthetic a:Ldal;

.field private final b:Ldat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldat",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method constructor <init>(Ldal;)V
    .locals 2

    .prologue
    .line 79
    iput-object p1, p0, Ldam;->a:Ldal;

    invoke-direct {p0}, Lczl;-><init>()V

    .line 80
    new-instance v0, Ldat;

    iget-object v1, p0, Ldam;->a:Ldal;

    iget-object v1, v1, Ldal;->a:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ldat;-><init>(Ljava/util/Iterator;)V

    iput-object v0, p0, Ldam;->b:Ldat;

    return-void
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
    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldam;->c:Z

    .line 98
    iget-object v0, p0, Ldam;->b:Ldat;

    invoke-virtual {v0}, Ldat;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 85
    iget-boolean v0, p0, Ldam;->c:Z

    if-nez v0, :cond_1

    .line 86
    :goto_0
    iget-object v0, p0, Ldam;->b:Ldat;

    invoke-virtual {v0}, Ldat;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldam;->a:Ldal;

    iget-object v0, v0, Ldal;->b:Ldau;

    iget-object v1, p0, Ldam;->b:Ldat;

    invoke-virtual {v1}, Ldat;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ldau;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Ldam;->b:Ldat;

    invoke-virtual {v0}, Ldat;->next()Ljava/lang/Object;

    goto :goto_0

    .line 89
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldam;->c:Z

    .line 91
    :cond_1
    iget-object v0, p0, Ldam;->b:Ldat;

    invoke-virtual {v0}, Ldat;->hasNext()Z

    move-result v0

    return v0
.end method
