.class Lcom/twitter/android/moments/data/maker/i;
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
        "Lcqq;",
        "Lcom/twitter/util/collection/ab",
        "<",
        "Lcom/twitter/model/moments/ad;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/data/maker/h;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/data/maker/h;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/twitter/android/moments/data/maker/i;->a:Lcom/twitter/android/moments/data/maker/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcqq;)Lcom/twitter/util/collection/ab;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcqq;",
            ")",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/moments/ad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p1, Lcqq;->a:Lcom/twitter/model/moments/ad;

    invoke-static {v0}, Lcom/twitter/util/collection/ab;->a(Ljava/lang/Object;)Lcom/twitter/util/collection/ab;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    check-cast p1, Lcqq;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/data/maker/i;->a(Lcqq;)Lcom/twitter/util/collection/ab;

    move-result-object v0

    return-object v0
.end method
