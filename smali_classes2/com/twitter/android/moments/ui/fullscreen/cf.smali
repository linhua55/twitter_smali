.class final Lcom/twitter/android/moments/ui/fullscreen/cf;
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
    .line 383
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/cf;->a:Lcom/twitter/model/moments/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Z
    .locals 2

    .prologue
    .line 386
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->i()Lcom/twitter/model/moments/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/cf;->a:Lcom/twitter/model/moments/ak;

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/ak;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 383
    check-cast p1, Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/cf;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Z

    move-result v0

    return v0
.end method
