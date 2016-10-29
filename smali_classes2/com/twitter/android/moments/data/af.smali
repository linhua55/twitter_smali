.class Lcom/twitter/android/moments/data/af;
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
        "Lcmf",
        "<",
        "Lcom/twitter/model/moments/ad;",
        ">;",
        "Lcom/twitter/model/moments/ad;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/data/ae;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/data/ae;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/twitter/android/moments/data/af;->a:Lcom/twitter/android/moments/data/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcmf;)Lcom/twitter/model/moments/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Lcom/twitter/model/moments/ad;",
            ">;)",
            "Lcom/twitter/model/moments/ad;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {p1}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ad;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    check-cast p1, Lcmf;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/data/af;->a(Lcmf;)Lcom/twitter/model/moments/ad;

    move-result-object v0

    return-object v0
.end method
