.class Lcom/twitter/android/moments/data/bd;
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
        "Ljava/util/Collection",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lrx/o",
        "<",
        "Ljava/util/List",
        "<",
        "Lcrc;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/data/az;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/data/az;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/twitter/android/moments/data/bd;->a:Lcom/twitter/android/moments/data/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 237
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/data/bd;->a(Ljava/util/Collection;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Collection;)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/o",
            "<",
            "Ljava/util/List",
            "<",
            "Lcrc;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/twitter/android/moments/data/bd;->a:Lcom/twitter/android/moments/data/az;

    invoke-static {v0}, Lcom/twitter/android/moments/data/az;->c(Lcom/twitter/android/moments/data/az;)Lbqf;

    move-result-object v0

    invoke-static {p1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbqf;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    return-object v0
.end method
