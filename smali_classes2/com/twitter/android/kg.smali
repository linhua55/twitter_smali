.class public Lcom/twitter/android/kg;
.super Lcom/twitter/android/timeline/bm;
.source "Twttr"


# direct methods
.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/twitter/android/timeline/bm;-><init>(Landroid/os/Bundle;)V

    .line 18
    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/twitter/android/kg;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/twitter/android/kg;

    invoke-direct {v0, p0}, Lcom/twitter/android/kg;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/twitter/android/kg;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/twitter/android/kg;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "following_only"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
