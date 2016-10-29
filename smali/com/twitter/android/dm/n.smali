.class public Lcom/twitter/android/dm/n;
.super Lcom/twitter/android/dm/b;
.source "Twttr"


# direct methods
.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/twitter/android/dm/b;-><init>(Landroid/os/Bundle;)V

    .line 24
    return-void
.end method

.method public static b(Landroid/os/Bundle;)Lcom/twitter/android/dm/n;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/twitter/android/dm/n;

    invoke-direct {v0, p0}, Lcom/twitter/android/dm/n;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public i()[J
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/android/dm/n;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "user_ids"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/twitter/android/dm/n;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "recipient_screen_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/twitter/android/dm/n;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/twitter/android/dm/n;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "media_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/dm/n;->b:Landroid/os/Bundle;

    const-string/jumbo v2, "android.intent.extra.STREAM"

    .line 49
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/twitter/android/dm/n;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/twitter/android/dm/n;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/twitter/android/dm/n;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "is_from_notification"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/twitter/android/dm/n;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "is_from_direct_share"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
