.class Ladx;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Lcom/twitter/util/collection/ab",
        "<",
        "Lcom/twitter/model/moments/viewmodels/d;",
        ">;",
        "Lrx/o",
        "<",
        "Lcom/twitter/util/collection/ar",
        "<",
        "Lcom/twitter/model/moments/viewmodels/d;",
        "Lcom/twitter/model/moments/d;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ladw;


# direct methods
.method constructor <init>(Ladw;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Ladx;->a:Ladw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    check-cast p1, Lcom/twitter/util/collection/ab;

    invoke-virtual {p0, p1}, Ladx;->a(Lcom/twitter/util/collection/ab;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/util/collection/ab;)Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/moments/viewmodels/d;",
            ">;)",
            "Lrx/o",
            "<",
            "Lcom/twitter/util/collection/ar",
            "<",
            "Lcom/twitter/model/moments/viewmodels/d;",
            "Lcom/twitter/model/moments/d;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/twitter/util/collection/ab;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/twitter/util/collection/ab;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/ar;->a(Ljava/lang/Object;)Lcom/twitter/util/collection/ar;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lrx/o;->b(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/model/moments/d;->a:Lcom/twitter/model/moments/d;

    .line 62
    invoke-static {v0}, Lcom/twitter/util/collection/ar;->b(Ljava/lang/Object;)Lcom/twitter/util/collection/ar;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lrx/o;->b(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    goto :goto_0
.end method
