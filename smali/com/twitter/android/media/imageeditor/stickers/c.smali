.class public Lcom/twitter/android/media/imageeditor/stickers/c;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method private static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    packed-switch p0, :pswitch_data_0

    .line 84
    const-string/jumbo v0, "sticker_category_other"

    :goto_0
    return-object v0

    .line 78
    :pswitch_0
    const-string/jumbo v0, "sticker_category_recent"

    goto :goto_0

    .line 81
    :pswitch_1
    const-string/jumbo v0, "sticker_category_featured"

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(J)V
    .locals 4

    .prologue
    .line 115
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, p0, p1}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "gallery::gallery:sticker:click"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 116
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 117
    return-void
.end method

.method public static a(JJI)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, "composition"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    .line 69
    invoke-static {p4}, Lcom/twitter/android/media/imageeditor/stickers/c;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "sticker"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "select"

    aput-object v2, v0, v1

    .line 68
    invoke-static {v0}, Lcom/twitter/library/scribe/ScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-direct {v1, p0, p1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J[Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1, p2, p3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(J)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 72
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 73
    return-void
.end method

.method public static a(JLandroid/content/ComponentName;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 151
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    .line 153
    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 163
    const-string/jumbo v0, "share"

    .line 167
    :goto_1
    new-instance v3, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v3, p0, p1}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "sticker_timeline"

    aput-object v5, v4, v1

    aput-object p3, v4, v2

    const/4 v1, 0x2

    const-string/jumbo v2, "share_sheet:"

    aput-object v2, v4, v1

    const/4 v1, 0x3

    aput-object v0, v4, v1

    .line 168
    invoke-virtual {v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    new-instance v1, Lcom/twitter/library/scribe/ScribeItemShared;

    invoke-direct {v1, p2}, Lcom/twitter/library/scribe/ScribeItemShared;-><init>(Landroid/content/ComponentName;)V

    .line 169
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 170
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 171
    return-void

    .line 153
    :sswitch_0
    const-string/jumbo v4, "com.twitter.android/.UrlInterpreterActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "com.google.android.apps.docs/.drive.clipboard.SendTextToClipboardActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    .line 155
    :pswitch_0
    const-string/jumbo v0, "share_via_dm"

    goto :goto_1

    .line 159
    :pswitch_1
    const-string/jumbo v0, "share_via_copy"

    goto :goto_1

    .line 153
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6aa63f76 -> :sswitch_1
        0x57986100 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(JLcom/twitter/model/drafts/d;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 91
    .line 92
    iget-object v3, p2, Lcom/twitter/model/drafts/d;->d:Ljava/util/List;

    .line 93
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/DraftAttachment;

    .line 94
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/twitter/model/drafts/DraftAttachment;->a(I)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    .line 95
    instance-of v5, v0, Lcom/twitter/model/media/EditableImage;

    if-eqz v5, :cond_2

    .line 96
    check-cast v0, Lcom/twitter/model/media/EditableImage;

    iget-object v0, v0, Lcom/twitter/model/media/EditableImage;->h:Ljava/util/List;

    .line 97
    if-eqz v0, :cond_2

    .line 98
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v1, v0

    move v0, v1

    :goto_1
    move v1, v0

    .line 101
    goto :goto_0

    .line 102
    :cond_0
    if-lez v1, :cond_1

    .line 103
    new-instance v0, Lcom/twitter/library/scribe/ScribeItemMediaDetails;

    invoke-direct {v0}, Lcom/twitter/library/scribe/ScribeItemMediaDetails;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/ScribeItemMediaDetails;->b(I)Lcom/twitter/library/scribe/ScribeItemMediaDetails;

    move-result-object v0

    .line 104
    new-instance v3, Lcom/twitter/library/scribe/ScribeItemSendStickerPhotoTweet;

    invoke-direct {v3}, Lcom/twitter/library/scribe/ScribeItemSendStickerPhotoTweet;-><init>()V

    .line 105
    invoke-virtual {v3, v0}, Lcom/twitter/library/scribe/ScribeItemSendStickerPhotoTweet;->a(Lcom/twitter/library/scribe/ScribeItemMediaDetails;)Lcom/twitter/library/scribe/ScribeItemSendStickerPhotoTweet;

    move-result-object v3

    .line 106
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, ":composition:::send_sticker_photo_tweet"

    aput-object v5, v4, v2

    invoke-direct {v0, p0, p1, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J[Ljava/lang/String;)V

    int-to-long v4, v1

    .line 107
    invoke-virtual {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(J)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 108
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 109
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 111
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static a(JLcom/twitter/model/media/EditableImage;)V
    .locals 6

    .prologue
    .line 41
    iget-object v0, p2, Lcom/twitter/model/media/EditableImage;->h:Ljava/util/List;

    .line 42
    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, ":composition:image_attachment:sticker:add"

    aput-object v4, v2, v3

    invoke-direct {v1, p0, p1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J[Ljava/lang/String;)V

    .line 44
    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/util/Collection;)Lcom/twitter/library/scribe/ScribeLog;

    .line 45
    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    .line 47
    :cond_0
    return-void
.end method

.method public static a(JLcpy;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, "composition"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    iget v2, p2, Lcpy;->c:I

    .line 56
    invoke-static {v2}, Lcom/twitter/android/media/imageeditor/stickers/c;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "sticker"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "impression"

    aput-object v2, v0, v1

    .line 55
    invoke-static {v0}, Lcom/twitter/library/scribe/ScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-direct {v1, p0, p1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J[Ljava/lang/String;)V

    .line 58
    invoke-static {p2}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Lcpy;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/library/scribe/ScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    .line 59
    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    .line 60
    return-void
.end method

.method public static a(JLjava/lang/String;)V
    .locals 4

    .prologue
    .line 124
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, p0, p1}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "sticker_timeline"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "::impression"

    aput-object v3, v1, v2

    .line 125
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 126
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 127
    return-void
.end method

.method public static b(JLjava/lang/String;)V
    .locals 4

    .prologue
    .line 134
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, p0, p1}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "sticker_timeline"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "share_sheet::impression"

    aput-object v3, v1, v2

    .line 135
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 136
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 137
    return-void
.end method
