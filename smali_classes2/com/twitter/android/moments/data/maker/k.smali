.class Lcom/twitter/android/moments/data/maker/k;
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
        "Lcom/twitter/model/json/moments/maker/JsonCreateMomentResponse;",
        ">;",
        "Lcqq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/data/maker/h;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/data/maker/h;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/twitter/android/moments/data/maker/k;->a:Lcom/twitter/android/moments/data/maker/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/util/collection/ab;)Lcqq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/json/moments/maker/JsonCreateMomentResponse;",
            ">;)",
            "Lcqq;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/twitter/util/collection/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/moments/maker/JsonCreateMomentResponse;

    iget-object v0, v0, Lcom/twitter/model/json/moments/maker/JsonCreateMomentResponse;->a:Lcqq;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    check-cast p1, Lcom/twitter/util/collection/ab;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/data/maker/k;->a(Lcom/twitter/util/collection/ab;)Lcqq;

    move-result-object v0

    return-object v0
.end method
