.class public Lcom/twitter/android/moments/ui/guide/av;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/twitter/app/main/MainActivity;->f:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/twitter/app/main/MainActivity;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 17
    return-void
.end method

.method public static a(Landroid/app/Activity;J)V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lcom/twitter/android/moments/ui/guide/af;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/guide/af;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcom/twitter/android/moments/ui/guide/ag;

    invoke-direct {v1, p1, p2}, Lcom/twitter/android/moments/ui/guide/ag;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/guide/af;->b(Lauc;)V

    .line 49
    return-void
.end method
