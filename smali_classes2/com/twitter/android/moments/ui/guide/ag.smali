.class public Lcom/twitter/android/moments/ui/guide/ag;
.super Lcom/twitter/android/moments/ui/guide/ad;
.source "Twttr"


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/guide/ad;-><init>()V

    .line 142
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ag;->c:Landroid/content/Intent;

    const-string/jumbo v1, "moments_owner_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 143
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ag;->c:Landroid/content/Intent;

    const-string/jumbo v1, "guide_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/moments/ui/guide/ag;->d(Z)Lcom/twitter/app/common/base/z;

    .line 145
    return-void
.end method
