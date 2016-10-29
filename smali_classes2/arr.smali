.class public Larr;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Laro;)Lavh;
    .locals 12

    .prologue
    .line 19
    iget v5, p0, Laro;->a:I

    .line 20
    iget-wide v6, p0, Laro;->b:J

    .line 21
    iget-wide v8, p0, Laro;->c:J

    .line 22
    iget-wide v0, p0, Laro;->d:J

    .line 23
    iget-boolean v10, p0, Laro;->e:Z

    .line 24
    iget-object v11, p0, Laro;->g:Ljava/lang/String;

    .line 29
    packed-switch v5, :pswitch_data_0

    .line 127
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid status type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :pswitch_1
    sget-object v2, Lcom/twitter/library/provider/dj;->c:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 32
    sget-object v1, Lchj;->a:[Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "status_groups_preview_draft_id DESC, timeline_sort_index DESC, timeline_updated_at DESC, _id ASC"

    move-object v3, v1

    move-object v4, v2

    move-object v2, v0

    .line 133
    :goto_0
    if-eqz v11, :cond_0

    .line 134
    const-string/jumbo v0, "timeline_timeline_tag=?"

    .line 135
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v1, v5

    .line 158
    :goto_1
    new-instance v5, Lavj;

    invoke-direct {v5}, Lavj;-><init>()V

    .line 159
    invoke-static {v4, v8, v9}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v5, v4}, Lavj;->a(Landroid/net/Uri;)Lavj;

    move-result-object v4

    .line 160
    invoke-virtual {v4, v3}, Lavj;->a([Ljava/lang/String;)Lavj;

    move-result-object v3

    .line 161
    invoke-virtual {v3, v0}, Lavj;->a(Ljava/lang/String;)Lavj;

    move-result-object v0

    .line 162
    invoke-virtual {v0, v1}, Lavj;->b([Ljava/lang/String;)Lavj;

    move-result-object v0

    .line 163
    invoke-virtual {v0, v2}, Lavj;->b(Ljava/lang/String;)Lavj;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lavj;->a()Lavh;

    move-result-object v0

    .line 158
    return-object v0

    .line 37
    :pswitch_2
    sget-object v2, Lcom/twitter/library/provider/dj;->b:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 38
    sget-object v1, Lchj;->a:[Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "status_groups_preview_draft_id DESC, timeline_sort_index DESC, timeline_updated_at DESC, _id ASC"

    move-object v3, v1

    move-object v4, v2

    move-object v2, v0

    .line 40
    goto :goto_0

    .line 43
    :pswitch_3
    sget-object v2, Lcom/twitter/library/provider/dj;->d:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 44
    sget-object v1, Lchj;->a:[Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "status_groups_preview_draft_id DESC, timeline_sort_index DESC, timeline_updated_at DESC, _id ASC"

    move-object v3, v1

    move-object v4, v2

    move-object v2, v0

    .line 46
    goto :goto_0

    .line 49
    :pswitch_4
    sget-object v2, Lcom/twitter/library/provider/dj;->e:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 50
    sget-object v1, Lchj;->a:[Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "status_groups_preview_draft_id DESC, timeline_sort_index DESC, timeline_updated_at DESC, _id ASC"

    move-object v3, v1

    move-object v4, v2

    move-object v2, v0

    .line 52
    goto :goto_0

    .line 55
    :pswitch_5
    sget-object v2, Lcom/twitter/library/provider/dj;->m:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 56
    sget-object v1, Lchj;->a:[Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "status_groups_preview_draft_id DESC, timeline_sort_index DESC, timeline_updated_at DESC, _id ASC"

    move-object v3, v1

    move-object v4, v2

    move-object v2, v0

    .line 58
    goto :goto_0

    .line 61
    :pswitch_6
    sget-object v2, Lcom/twitter/library/provider/dj;->o:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 62
    sget-object v1, Lchj;->a:[Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "status_groups_preview_draft_id DESC, timeline_sort_index DESC, timeline_updated_at DESC, _id ASC"

    move-object v3, v1

    move-object v4, v2

    move-object v2, v0

    .line 64
    goto :goto_0

    .line 67
    :pswitch_7
    sget-object v2, Lcom/twitter/library/provider/dj;->p:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 68
    sget-object v1, Lchj;->a:[Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "status_groups_preview_draft_id DESC, timeline_sort_index DESC, timeline_updated_at DESC, _id ASC"

    move-object v3, v1

    move-object v4, v2

    move-object v2, v0

    .line 70
    goto/16 :goto_0

    .line 73
    :pswitch_8
    sget-object v2, Lcom/twitter/library/provider/dj;->q:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 74
    sget-object v1, Lchj;->a:[Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "status_groups_preview_draft_id DESC, timeline_sort_index DESC, timeline_updated_at DESC, _id ASC"

    move-object v3, v1

    move-object v4, v2

    move-object v2, v0

    .line 76
    goto/16 :goto_0

    .line 79
    :pswitch_9
    sget-object v2, Lcom/twitter/library/provider/dj;->n:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 80
    sget-object v1, Lchj;->a:[Ljava/lang/String;

    .line 81
    const-string/jumbo v0, "status_groups_preview_draft_id DESC, timeline_sort_index DESC, timeline_updated_at DESC, _id ASC"

    move-object v3, v1

    move-object v4, v2

    move-object v2, v0

    .line 82
    goto/16 :goto_0

    .line 85
    :pswitch_a
    sget-object v2, Lcom/twitter/library/provider/dj;->l:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 86
    sget-object v1, Lchj;->a:[Ljava/lang/String;

    .line 87
    const-string/jumbo v0, "status_groups_preview_draft_id DESC, timeline_sort_index DESC, timeline_updated_at DESC, _id ASC"

    move-object v3, v1

    move-object v4, v2

    move-object v2, v0

    .line 88
    goto/16 :goto_0

    .line 91
    :pswitch_b
    sget-object v2, Lcom/twitter/library/provider/dj;->f:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 92
    sget-object v1, Lchj;->a:[Ljava/lang/String;

    .line 93
    const-string/jumbo v0, "status_groups_preview_draft_id DESC, timeline_updated_at DESC, _id ASC"

    move-object v3, v1

    move-object v4, v2

    move-object v2, v0

    .line 94
    goto/16 :goto_0

    .line 97
    :pswitch_c
    sget-object v2, Lcom/twitter/library/provider/dj;->g:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 98
    sget-object v1, Lchj;->a:[Ljava/lang/String;

    .line 99
    const-string/jumbo v0, "status_groups_preview_draft_id DESC, timeline_sort_index DESC, timeline_updated_at DESC, _id ASC"

    move-object v3, v1

    move-object v4, v2

    move-object v2, v0

    .line 100
    goto/16 :goto_0

    .line 103
    :pswitch_d
    sget-object v2, Lcom/twitter/library/provider/dj;->i:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 104
    sget-object v1, Lchj;->a:[Ljava/lang/String;

    .line 105
    const-string/jumbo v0, "status_groups_preview_draft_id DESC, timeline_updated_at DESC, _id ASC"

    move-object v3, v1

    move-object v4, v2

    move-object v2, v0

    .line 106
    goto/16 :goto_0

    .line 109
    :pswitch_e
    sget-object v2, Lcom/twitter/library/provider/dj;->j:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 110
    sget-object v1, Lchj;->a:[Ljava/lang/String;

    .line 111
    const-string/jumbo v0, "status_groups_preview_draft_id DESC, timeline_sort_index DESC, timeline_updated_at DESC, _id ASC"

    move-object v3, v1

    move-object v4, v2

    move-object v2, v0

    .line 112
    goto/16 :goto_0

    .line 115
    :pswitch_f
    sget-object v2, Lcom/twitter/library/provider/dj;->k:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 116
    sget-object v1, Lchj;->a:[Ljava/lang/String;

    .line 117
    const-string/jumbo v0, "status_groups_preview_draft_id DESC, timeline_sort_index DESC, timeline_updated_at DESC, _id ASC"

    move-object v3, v1

    move-object v4, v2

    move-object v2, v0

    .line 118
    goto/16 :goto_0

    .line 121
    :pswitch_10
    sget-object v2, Lcom/twitter/library/provider/dj;->h:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 122
    sget-object v1, Lchj;->a:[Ljava/lang/String;

    .line 123
    const-string/jumbo v0, "status_groups_preview_draft_id ASC, timeline_sort_index DESC, timeline_updated_at ASC, _id ASC"

    move-object v3, v1

    move-object v4, v2

    move-object v2, v0

    .line 124
    goto/16 :goto_0

    .line 136
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_1

    .line 137
    const-string/jumbo v0, "status_groups_tag=?"

    .line 138
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    goto/16 :goto_1

    .line 139
    :cond_1
    const/4 v0, 0x1

    if-eq v5, v0, :cond_2

    const/16 v0, 0x12

    if-ne v5, v0, :cond_4

    .line 140
    :cond_2
    const-string/jumbo v0, "p_format IS NULL OR p_format=?"

    .line 141
    if-eqz v10, :cond_3

    .line 142
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "profile_self"

    aput-object v6, v1, v5

    goto/16 :goto_1

    .line 144
    :cond_3
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "profile_other"

    aput-object v6, v1, v5

    goto/16 :goto_1

    .line 146
    :cond_4
    if-eqz v5, :cond_5

    const/16 v0, 0x11

    if-ne v5, v0, :cond_6

    .line 147
    :cond_5
    const-string/jumbo v0, "p_format IS NULL OR p_format=?"

    .line 148
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "home_timeline"

    aput-object v6, v1, v5

    goto/16 :goto_1

    .line 149
    :cond_6
    const/4 v0, 0x2

    if-ne v5, v0, :cond_8

    .line 150
    iget-boolean v0, p0, Laro;->f:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "statuses_flags&50689!= 0"

    .line 152
    :goto_2
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 150
    :cond_7
    const-string/jumbo v0, "statuses_flags&50689!= 0 AND statuses_flags&64 = 0"

    goto :goto_2

    .line 154
    :cond_8
    const/4 v0, 0x0

    .line 155
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_9
        :pswitch_d
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_f
        :pswitch_10
        :pswitch_a
        :pswitch_5
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
