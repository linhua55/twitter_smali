.class public Lbnv;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a()Z
    .locals 6

    .prologue
    .line 27
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    const-string/jumbo v2, "dm_longterm_holdback_android_4930"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "control"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/config/c;->a(JLjava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Z)Z
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lbnv;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "dm_cards_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Z)Z
    .locals 1

    .prologue
    .line 68
    if-eqz p0, :cond_0

    const-string/jumbo v0, "dm_read_receipts_education_prompt_enabled"

    .line 69
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    invoke-static {}, Lbnv;->a()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lbnv;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    const-string/jumbo v4, "cards_in_dms_android_4938"

    new-array v5, v0, [Ljava/lang/String;

    const-string/jumbo v6, "enabled"

    aput-object v6, v5, v1

    invoke-static {v2, v3, v4, v5}, Lcom/twitter/config/c;->a(JLjava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 48
    goto :goto_0
.end method

.method public static d()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    invoke-static {}, Lbnv;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    const-string/jumbo v4, "dm_read_receipts_android_4957"

    new-array v5, v0, [Ljava/lang/String;

    const-string/jumbo v6, "enabled"

    aput-object v6, v5, v1

    invoke-static {v2, v3, v4, v5}, Lcom/twitter/config/c;->a(JLjava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 58
    goto :goto_0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 79
    const-string/jumbo v0, "b2c_feedback_submitted_dm_event_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 86
    const-string/jumbo v0, "dm_auto_retry_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 90
    const-string/jumbo v0, "dm_new_messages_banner_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static h()I
    .locals 2

    .prologue
    .line 94
    const-string/jumbo v0, "dm_max_group_size"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static i()Z
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/twitter/library/api/upload/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "dm_videos_and_gifs_media_async_upload_url_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 103
    invoke-static {}, Latv;->a()Latv;

    move-result-object v1

    invoke-virtual {v1}, Latv;->b()I

    move-result v1

    const/16 v2, 0x7dd

    if-lt v1, v2, :cond_0

    .line 104
    const-string/jumbo v1, "dm_videos_and_gifs_max_autoplay_items"

    invoke-static {v1, v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v0

    .line 107
    :cond_0
    return v0
.end method

.method public static k()Z
    .locals 1

    .prologue
    .line 112
    const-string/jumbo v0, "dm_rounded_bubble_android_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static l()Z
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lbnv;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "dm_card_preview_android_enabled"

    .line 117
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lbnv;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static m()Z
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lbnv;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "livepipeline_dm_typing_indicator_4643"

    .line 123
    invoke-static {v0}, Lcom/twitter/config/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static n()Z
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lbnv;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "livepipeline_dm_typing_indicator_publish_enabled"

    .line 128
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "livepipeline_dm_typing_indicator_4643"

    .line 129
    invoke-static {v0}, Lcom/twitter/config/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    .line 129
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static o()Z
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lbnv;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "livepipeline_dm_subscriptions_enabled"

    .line 134
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "livepipeline_dm_typing_indicator_4643"

    .line 135
    invoke-static {v0}, Lcom/twitter/config/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    .line 135
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static p()Z
    .locals 1

    .prologue
    .line 139
    const-string/jumbo v0, "dm_server_push_notifications_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
