.class public Lcom/twitter/library/av/av;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Landroid/content/res/Resources;Lcom/twitter/model/av/c;)Lcom/twitter/library/av/ar;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 934
    sget v0, Lbkb;->av_playlist_download_failed:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 935
    iget v0, p1, Lcom/twitter/model/av/c;->b:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 936
    new-instance v0, Lcom/twitter/library/av/ar;

    invoke-direct {v0, v3, v1}, Lcom/twitter/library/av/ar;-><init>(ILjava/lang/String;)V

    .line 940
    :goto_0
    return-object v0

    .line 939
    :cond_0
    iget-object v0, p1, Lcom/twitter/model/av/c;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 940
    new-instance v1, Lcom/twitter/library/av/ar;

    invoke-direct {v1, v3, v0}, Lcom/twitter/library/av/ar;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method
