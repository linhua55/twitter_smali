.class Lcom/twitter/android/av/monetization/s;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Lcmf",
        "<",
        "Lcom/twitter/model/av/MonetizationCategory;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/av/monetization/r;


# direct methods
.method constructor <init>(Lcom/twitter/android/av/monetization/r;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/twitter/android/av/monetization/s;->a:Lcom/twitter/android/av/monetization/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcmf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Lcom/twitter/model/av/MonetizationCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/twitter/android/av/monetization/s;->a:Lcom/twitter/android/av/monetization/r;

    invoke-virtual {v0, p1}, Lcom/twitter/android/av/monetization/r;->a(Lcmf;)V

    .line 57
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Lcmf;

    invoke-virtual {p0, p1}, Lcom/twitter/android/av/monetization/s;->a(Lcmf;)V

    return-void
.end method
