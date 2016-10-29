.class public Lcom/twitter/android/timeline/t;
.super Lcom/twitter/app/common/list/x;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/list/x",
        "<",
        "Lcom/twitter/android/timeline/t;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/twitter/app/common/list/x;-><init>(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/android/timeline/s;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/twitter/android/timeline/s;

    iget-object v1, p0, Lcom/twitter/android/timeline/t;->a:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lcom/twitter/android/timeline/s;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public synthetic b()Lcom/twitter/app/common/list/w;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/twitter/android/timeline/t;->a()Lcom/twitter/android/timeline/s;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/twitter/app/common/base/f;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/twitter/android/timeline/t;->a()Lcom/twitter/android/timeline/s;

    move-result-object v0

    return-object v0
.end method
