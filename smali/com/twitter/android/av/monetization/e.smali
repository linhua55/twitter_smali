.class public Lcom/twitter/android/av/monetization/e;
.super Lcom/twitter/app/common/base/z;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/base/z",
        "<",
        "Lcom/twitter/android/av/monetization/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/twitter/model/av/o;)V
    .locals 3

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/twitter/app/common/base/z;-><init>()V

    .line 135
    iget-object v0, p0, Lcom/twitter/android/av/monetization/e;->c:Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/app/common/base/z;->a(Landroid/content/Intent;Z)Landroid/content/Intent;

    .line 136
    iget-object v0, p0, Lcom/twitter/android/av/monetization/e;->c:Landroid/content/Intent;

    const-string/jumbo v1, "media_monetization_metadata"

    sget-object v2, Lcom/twitter/model/av/o;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1, p1, v2}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/content/Intent;

    .line 138
    return-void
.end method
