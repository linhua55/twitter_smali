.class public Lcom/twitter/android/moments/ui/guide/at;
.super Lcom/twitter/app/common/list/w;
.source "Twttr"


# direct methods
.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/twitter/app/common/list/w;-><init>(Landroid/os/Bundle;)V

    .line 27
    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/twitter/android/moments/ui/guide/at;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/twitter/android/moments/ui/guide/at;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/guide/at;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/android/moments/ui/guide/au;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/twitter/android/moments/ui/guide/au;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/guide/au;-><init>(Lcom/twitter/android/moments/ui/guide/at;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/at;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "guide_category_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/at;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "moments_owner_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/at;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "show_category_pills"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public synthetic e()Lcom/twitter/app/common/list/x;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/guide/at;->a()Lcom/twitter/android/moments/ui/guide/au;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Lcom/twitter/app/common/base/g;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/guide/at;->a()Lcom/twitter/android/moments/ui/guide/au;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/at;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "home_view_tag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/at;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "guide_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/at;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "guide_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/at;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "guide_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/at;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "add_to_moment_tweet_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
