.class public Lcom/twitter/app/common/list/y;
.super Lcom/twitter/app/common/list/x;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/list/x",
        "<",
        "Lcom/twitter/app/common/list/y;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/twitter/app/common/list/x;-><init>()V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/twitter/app/common/list/x;-><init>(Landroid/os/Bundle;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Lcom/twitter/app/common/list/w;)V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/twitter/app/common/list/x;-><init>(Lcom/twitter/app/common/list/w;)V

    .line 179
    return-void
.end method

.method public static a(Landroid/content/Intent;)Lcom/twitter/app/common/list/y;
    .locals 2

    .prologue
    .line 183
    new-instance v1, Lcom/twitter/app/common/list/y;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Lcom/twitter/app/common/list/y;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
