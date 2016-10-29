.class public Lcom/twitter/android/moments/ui/maker/bp;
.super Lauc;
.source "Twttr"


# direct methods
.method private constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lauc;-><init>(Landroid/content/Intent;)V

    .line 52
    return-void
.end method

.method public static a()Lcom/twitter/android/moments/ui/maker/bp;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/twitter/android/moments/ui/maker/bp;

    invoke-static {}, Lcom/twitter/library/media/util/y;->a()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/android/moments/ui/maker/bp;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method
