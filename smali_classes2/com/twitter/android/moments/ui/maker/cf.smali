.class public Lcom/twitter/android/moments/ui/maker/cf;
.super Lcom/twitter/app/common/base/z;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/base/z",
        "<",
        "Lcom/twitter/android/moments/ui/maker/cf;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/twitter/app/common/base/z;-><init>()V

    .line 53
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/cf;->c:Landroid/content/Intent;

    const-string/jumbo v1, "moment_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/moments/ui/maker/cf;->d(Z)Lcom/twitter/app/common/base/z;

    .line 55
    return-void
.end method
