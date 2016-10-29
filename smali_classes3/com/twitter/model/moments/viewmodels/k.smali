.class final Lcom/twitter/model/moments/viewmodels/k;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldau;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldau",
        "<",
        "Lcom/twitter/model/moments/viewmodels/MomentPage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/model/moments/ak;


# direct methods
.method constructor <init>(Lcom/twitter/model/moments/ak;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/twitter/model/moments/viewmodels/k;->a:Lcom/twitter/model/moments/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Z
    .locals 2

    .prologue
    .line 179
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->i()Lcom/twitter/model/moments/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/moments/viewmodels/k;->a:Lcom/twitter/model/moments/ak;

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/ak;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 176
    check-cast p1, Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-virtual {p0, p1}, Lcom/twitter/model/moments/viewmodels/k;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Z

    move-result v0

    return v0
.end method
