.class public Lcom/twitter/android/timeline/x;
.super Lcom/twitter/android/timeline/bm;
.source "Twttr"


# direct methods
.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/twitter/android/timeline/bm;-><init>(Landroid/os/Bundle;)V

    .line 19
    iget-object v0, p0, Lcom/twitter/android/timeline/x;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "use_urt"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/twitter/android/timeline/x;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "use_urt"

    const-string/jumbo v2, "urt_home_timeline_enabled"

    .line 21
    invoke-static {v2}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v2

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    :cond_0
    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/twitter/android/timeline/x;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/twitter/android/timeline/x;

    invoke-direct {v0, p0}, Lcom/twitter/android/timeline/x;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/twitter/android/timeline/x;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/twitter/android/timeline/x;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "use_urt"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
