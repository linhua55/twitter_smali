.class Ladf;
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
        "Lcom/twitter/model/moments/viewmodels/a;",
        "Lcom/twitter/util/collection/ar",
        "<",
        "Lcom/twitter/model/moments/viewmodels/d;",
        "Lcom/twitter/model/moments/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lade;


# direct methods
.method constructor <init>(Lade;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Ladf;->a:Lade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/a;)Lcom/twitter/util/collection/ar;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/viewmodels/a;",
            ")",
            "Lcom/twitter/util/collection/ar",
            "<",
            "Lcom/twitter/model/moments/viewmodels/d;",
            "Lcom/twitter/model/moments/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/twitter/model/moments/viewmodels/d;

    .line 63
    invoke-static {}, Lcom/twitter/util/collection/v;->f()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/twitter/model/moments/viewmodels/d;-><init>(Lcom/twitter/model/moments/viewmodels/a;Ljava/util/Map;)V

    .line 64
    invoke-static {v0}, Lcom/twitter/util/collection/ar;->a(Ljava/lang/Object;)Lcom/twitter/util/collection/ar;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    check-cast p1, Lcom/twitter/model/moments/viewmodels/a;

    invoke-virtual {p0, p1}, Ladf;->a(Lcom/twitter/model/moments/viewmodels/a;)Lcom/twitter/util/collection/ar;

    move-result-object v0

    return-object v0
.end method
