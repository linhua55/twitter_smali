.class Ldao;
.super Lczl;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lczl",
        "<TOUT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldan;

.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TIN;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TOUT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ldan;)V
    .locals 1

    .prologue
    .line 116
    iput-object p1, p0, Ldao;->a:Ldan;

    invoke-direct {p0}, Lczl;-><init>()V

    .line 117
    iget-object v0, p0, Ldao;->a:Ldan;

    iget-object v0, v0, Ldan;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ldao;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOUT;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Ldao;->c:Ljava/lang/Object;

    .line 132
    const/4 v1, 0x0

    iput-object v1, p0, Ldao;->c:Ljava/lang/Object;

    .line 133
    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 122
    :goto_0
    iget-object v0, p0, Ldao;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Ldao;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Ldao;->a:Ldan;

    iget-object v0, v0, Ldan;->b:Lczn;

    iget-object v1, p0, Ldao;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lczn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldao;->c:Ljava/lang/Object;

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Ldao;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
