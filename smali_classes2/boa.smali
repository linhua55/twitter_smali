.class public Lboa;
.super Lbno;
.source "Twttr"


# instance fields
.field private final l:Z

.field private final m:Z

.field private final n:Lcom/twitter/model/dms/cf;

.field private final o:I


# direct methods
.method public constructor <init>(Lbob;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lbno;-><init>(Lbnp;)V

    .line 29
    invoke-static {p1}, Lbob;->a(Lbob;)Z

    move-result v0

    iput-boolean v0, p0, Lboa;->l:Z

    .line 30
    invoke-static {p1}, Lbob;->b(Lbob;)Z

    move-result v0

    iput-boolean v0, p0, Lboa;->m:Z

    .line 31
    invoke-static {p1}, Lbob;->c(Lbob;)Lcom/twitter/model/dms/cf;

    move-result-object v0

    iput-object v0, p0, Lboa;->n:Lcom/twitter/model/dms/cf;

    .line 32
    invoke-static {p1}, Lbob;->d(Lbob;)I

    move-result v0

    iput v0, p0, Lboa;->o:I

    .line 33
    return-void
.end method

.method private e(Z)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 210
    iget-boolean v0, p0, Lboa;->l:Z

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_you_sent_a_moment:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    .line 212
    :cond_0
    if-eqz p1, :cond_1

    .line 213
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_user_sent_a_moment:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lboa;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_sent_a_moment:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private k()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 195
    iget-boolean v0, p0, Lboa;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lboa;->l:Z

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_you_sent_a_moment_with_message:I

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lboa;->e:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    .line 197
    :cond_0
    iget-boolean v0, p0, Lboa;->g:Z

    if-eqz v0, :cond_2

    .line 198
    iget-boolean v0, p0, Lboa;->k:Z

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_user_sent_a_moment_with_message:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lboa;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lboa;->e:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_sent_a_moment_with_message:I

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lboa;->e:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 204
    :cond_2
    iget-boolean v0, p0, Lboa;->k:Z

    invoke-direct {p0, v0}, Lboa;->e(Z)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private l()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_italicized_cs_feedback_submitted_text:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private m()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_italicized_cs_feedback_dismissed_text:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private n()Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 238
    iget-object v0, p0, Lboa;->e:Ljava/lang/String;

    .line 239
    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    iget-object v0, p0, Lboa;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_italicized_group_name_removed:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    .line 244
    :cond_0
    iget-boolean v0, p0, Lboa;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_italicized_you_removed_group_name:I

    new-array v2, v5, [Ljava/lang/Object;

    .line 245
    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_italicized_user_removed_group_name:I

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lboa;->d:Ljava/lang/String;

    aput-object v3, v2, v5

    .line 246
    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 249
    :cond_2
    iget-object v1, p0, Lboa;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 250
    iget-object v1, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v2, Lbkb;->dm_italicized_group_name_changed:I

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 253
    :cond_3
    iget-boolean v1, p0, Lboa;->l:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v2, Lbkb;->dm_italicized_you_changed_group_name:I

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    .line 254
    invoke-static {v1, v2, v3}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v2, Lbkb;->dm_italicized_user_changed_group_name:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lboa;->d:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    .line 255
    invoke-static {v1, v2, v3}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private o()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 261
    iget-boolean v0, p0, Lboa;->l:Z

    if-eqz v0, :cond_1

    .line 262
    iget-object v1, p0, Lboa;->a:Landroid/content/res/Resources;

    iget-boolean v0, p0, Lboa;->m:Z

    if-eqz v0, :cond_0

    sget v0, Lbkb;->dm_italicized_you_removed_group_photo:I

    :goto_0
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 266
    :goto_1
    return-object v0

    .line 262
    :cond_0
    sget v0, Lbkb;->dm_italicized_you_updated_group_photo:I

    goto :goto_0

    .line 266
    :cond_1
    iget-object v1, p0, Lboa;->a:Landroid/content/res/Resources;

    iget-boolean v0, p0, Lboa;->m:Z

    if-eqz v0, :cond_2

    sget v0, Lbkb;->dm_italicized_user_removed_group_photo:I

    :goto_2
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lboa;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v0, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget v0, Lbkb;->dm_italicized_user_updated_group_photo:I

    goto :goto_2
.end method

.method private p()Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 274
    iget-object v0, p0, Lboa;->e:Ljava/lang/String;

    .line 275
    iget-object v1, p0, Lboa;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v2, Lbkb;->dm_italicized_participant_added_by_deleted_user:I

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 281
    :goto_0
    return-object v0

    .line 278
    :cond_0
    iget-boolean v1, p0, Lboa;->l:Z

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v2, Lbkb;->dm_italicized_participant_added_by_you:I

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_1
    iget-object v1, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v2, Lbkb;->dm_italicized_participant_added_by_user:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lboa;->d:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private q()Z
    .locals 4

    .prologue
    .line 287
    iget-wide v2, p0, Lboa;->c:J

    iget-object v0, p0, Lboa;->n:Lcom/twitter/model/dms/cf;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/cf;

    iget-object v0, v0, Lcom/twitter/model/dms/cf;->e:Lcom/twitter/model/core/ay;

    iget-wide v0, v0, Lcom/twitter/model/core/ay;->b:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lboa;->c:J

    iget-wide v2, p0, Lboa;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lboa;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 38
    iget v0, p0, Lboa;->i:I

    sparse-switch v0, :sswitch_data_0

    .line 55
    iget v0, p0, Lboa;->h:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lboa;->j()Ljava/lang/CharSequence;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 40
    :sswitch_0
    invoke-direct {p0}, Lboa;->n()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 43
    :sswitch_1
    invoke-direct {p0}, Lboa;->o()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 46
    :sswitch_2
    invoke-direct {p0}, Lboa;->p()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 49
    :sswitch_3
    invoke-direct {p0}, Lboa;->l()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 52
    :sswitch_4
    invoke-direct {p0}, Lboa;->m()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_0
    invoke-super {p0}, Lbno;->a()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xa -> :sswitch_2
        0x14 -> :sswitch_1
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
    .end sparse-switch
.end method

.method protected c(Z)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 158
    iget-boolean v0, p0, Lboa;->l:Z

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_you_sent_a_photo:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lbno;->c(Z)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lbno;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lboa;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()Ljava/lang/CharSequence;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Lboa;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v3, Lbkb;->dm_someone_replied_privately_to_your_tweet:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lboa;->d:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 76
    :cond_0
    iget-object v0, p0, Lboa;->n:Lcom/twitter/model/dms/cf;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/cf;

    iget-object v0, v0, Lcom/twitter/model/dms/cf;->e:Lcom/twitter/model/core/ay;

    iget-object v3, v0, Lcom/twitter/model/core/ay;->d:Ljava/lang/String;

    .line 77
    iget-wide v4, p0, Lboa;->b:J

    iget-object v0, p0, Lboa;->n:Lcom/twitter/model/dms/cf;

    iget-object v0, v0, Lcom/twitter/model/dms/cf;->e:Lcom/twitter/model/core/ay;

    iget-wide v6, v0, Lcom/twitter/model/core/ay;->b:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    move v0, v1

    .line 78
    :goto_1
    iget-boolean v4, p0, Lboa;->g:Z

    if-eqz v4, :cond_5

    .line 79
    iget-boolean v4, p0, Lboa;->l:Z

    if-eqz v4, :cond_3

    .line 80
    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v3, Lbkb;->dm_you_shared_your_own_tweet_with_message:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lboa;->e:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 77
    goto :goto_1

    .line 84
    :cond_2
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v4, Lbkb;->dm_you_shared_someones_tweet_with_message:I

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v2

    iget-object v2, p0, Lboa;->e:Ljava/lang/String;

    aput-object v2, v5, v1

    invoke-static {v0, v4, v5}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_3
    iget-boolean v0, p0, Lboa;->f:Z

    if-eqz v0, :cond_4

    .line 89
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v4, Lbkb;->dm_shared_someones_tweet_in_a_group_with_message:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lboa;->d:Ljava/lang/String;

    aput-object v6, v5, v2

    aput-object v3, v5, v1

    iget-object v1, p0, Lboa;->e:Ljava/lang/String;

    aput-object v1, v5, v8

    invoke-static {v0, v4, v5}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_4
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v4, Lbkb;->dm_shared_someones_tweet_with_message:I

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v2

    iget-object v2, p0, Lboa;->e:Ljava/lang/String;

    aput-object v2, v5, v1

    invoke-static {v0, v4, v5}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_5
    iget-boolean v4, p0, Lboa;->l:Z

    if-eqz v4, :cond_7

    .line 99
    if-eqz v0, :cond_6

    .line 100
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_you_shared_your_own_tweet:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 102
    :cond_6
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v4, Lbkb;->dm_you_shared_someones_tweet:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v4, v1}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 106
    :cond_7
    iget-boolean v0, p0, Lboa;->f:Z

    if-eqz v0, :cond_8

    .line 107
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v4, Lbkb;->dm_shared_someones_tweet_in_a_group:I

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lboa;->d:Ljava/lang/String;

    aput-object v6, v5, v2

    aput-object v3, v5, v1

    invoke-static {v0, v4, v5}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 110
    :cond_8
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v4, Lbkb;->dm_shared_someones_tweet:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v4, v1}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected d(Z)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 186
    iget-boolean v0, p0, Lboa;->l:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_you_sent_a_card:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lbno;->d(Z)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected e()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 134
    iget-boolean v0, p0, Lboa;->l:Z

    if-eqz v0, :cond_1

    .line 135
    iget-boolean v0, p0, Lboa;->g:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_you_sent_a_gif_with_message:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lboa;->e:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    .line 138
    :cond_0
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_you_sent_a_gif:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 141
    :cond_1
    invoke-super {p0}, Lbno;->e()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected f()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 120
    iget-boolean v0, p0, Lboa;->l:Z

    if-eqz v0, :cond_1

    .line 121
    iget-boolean v0, p0, Lboa;->g:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_you_sent_a_video_with_message:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lboa;->e:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    .line 124
    :cond_0
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_you_sent_a_video:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_1
    invoke-super {p0}, Lbno;->f()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected g()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 148
    iget-boolean v0, p0, Lboa;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lboa;->l:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_you_sent_a_photo_with_message:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lboa;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lbno;->g()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected h()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 176
    iget-boolean v0, p0, Lboa;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lboa;->l:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_you_sent_a_card_with_message:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lboa;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lbno;->h()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected i()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 222
    iget-object v0, p0, Lboa;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lboa;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_italicized_added_you:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lboa;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 223
    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected j()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 167
    iget v0, p0, Lboa;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 168
    invoke-direct {p0}, Lboa;->k()Ljava/lang/CharSequence;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lboa;->h()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method
