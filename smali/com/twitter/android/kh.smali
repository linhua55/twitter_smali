.class public Lcom/twitter/android/kh;
.super Lcom/twitter/app/common/list/x;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/list/x",
        "<",
        "Lcom/twitter/android/kh;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/twitter/app/common/list/x;-><init>(Landroid/os/Bundle;)V

    .line 43
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/android/kg;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/twitter/android/kg;

    iget-object v1, p0, Lcom/twitter/android/kh;->a:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lcom/twitter/android/kg;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public a(Z)Lcom/twitter/android/kh;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/twitter/android/kh;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "following_only"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    return-object p0
.end method

.method public synthetic b()Lcom/twitter/app/common/list/w;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/twitter/android/kh;->a()Lcom/twitter/android/kg;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/twitter/app/common/base/f;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/twitter/android/kh;->a()Lcom/twitter/android/kg;

    move-result-object v0

    return-object v0
.end method
