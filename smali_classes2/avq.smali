.class public Lavq;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method static a(Lcom/twitter/app/common/base/BaseFragmentActivity;)Lauf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/app/common/base/BaseFragmentActivity;",
            ")",
            "Lauf",
            "<",
            "Lcom/twitter/android/composer/ax;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/twitter/android/composer/ax;->a(Landroid/app/Activity;I)Laui;

    move-result-object v0

    return-object v0
.end method
