.class public Lboc;
.super Lbno;
.source "Twttr"


# instance fields
.field private final l:Z

.field private final m:Z


# direct methods
.method public constructor <init>(Lbod;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lbno;-><init>(Lbnp;)V

    .line 16
    invoke-static {p1}, Lbod;->a(Lbod;)Z

    move-result v0

    iput-boolean v0, p0, Lboc;->l:Z

    .line 17
    iget-boolean v0, p0, Lboc;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lboc;->f:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lboc;->j:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lboc;->m:Z

    .line 18
    return-void

    .line 17
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected c()Z
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lbno;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lboc;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 76
    iget-boolean v0, p0, Lboc;->g:Z

    if-eqz v0, :cond_1

    .line 77
    iget-boolean v0, p0, Lboc;->m:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lboc;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_shared_tweet_with_you_with_message_for_push_notification:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lboc;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lboc;->e:Ljava/lang/String;

    aput-object v3, v2, v5

    .line 79
    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    .line 82
    :cond_0
    iget-object v0, p0, Lboc;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_shared_tweet_with_you_with_message:I

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lboc;->e:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_1
    iget-boolean v0, p0, Lboc;->m:Z

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lboc;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_shared_tweet_with_you_for_push_notification:I

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lboc;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    .line 87
    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lboc;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_shared_tweet_with_you:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected e()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 39
    iget-boolean v0, p0, Lboc;->g:Z

    if-eqz v0, :cond_1

    .line 40
    iget-boolean v0, p0, Lboc;->m:Z

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lboc;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_user_sent_a_gif_with_message_for_push_notification:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lboc;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lboc;->e:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 44
    :cond_0
    iget-object v0, p0, Lboc;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_sent_a_gif_with_message_for_push_notification:I

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lboc;->e:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 48
    :cond_1
    iget-boolean v0, p0, Lboc;->m:Z

    invoke-virtual {p0, v0}, Lboc;->a(Z)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected f()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    iget-boolean v0, p0, Lboc;->g:Z

    if-eqz v0, :cond_1

    .line 24
    iget-boolean v0, p0, Lboc;->m:Z

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lboc;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_user_sent_a_video_with_message_for_push_notification:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lboc;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lboc;->e:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    iget-object v0, p0, Lboc;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_sent_a_video_with_message_for_push_notification:I

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lboc;->e:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 32
    :cond_1
    iget-boolean v0, p0, Lboc;->m:Z

    invoke-virtual {p0, v0}, Lboc;->b(Z)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected g()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 55
    iget-boolean v0, p0, Lboc;->g:Z

    if-eqz v0, :cond_1

    .line 56
    iget-boolean v0, p0, Lboc;->m:Z

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lboc;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_user_sent_a_photo_with_message_for_push_notification:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lboc;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lboc;->e:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 60
    :cond_0
    iget-object v0, p0, Lboc;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_sent_a_photo_with_message_for_push_notification:I

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lboc;->e:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_1
    iget-boolean v0, p0, Lboc;->m:Z

    invoke-virtual {p0, v0}, Lboc;->c(Z)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected i()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lboc;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_added_you_to_a_group:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
