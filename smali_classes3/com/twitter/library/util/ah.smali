.class public Lcom/twitter/library/util/ah;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(I)I
    .locals 1

    .prologue
    .line 16
    packed-switch p0, :pswitch_data_0

    .line 91
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 26
    :pswitch_1
    sget v0, Lbjv;->ic_activity_follow_tweet_default:I

    goto :goto_0

    .line 35
    :pswitch_2
    sget v0, Lbjv;->ic_activity_rt_tweet_default:I

    goto :goto_0

    .line 41
    :pswitch_3
    sget v0, Lbjv;->ic_activity_reply_tweet:I

    goto :goto_0

    .line 46
    :pswitch_4
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v0

    invoke-virtual {v0}, Lcbh;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    sget v0, Lbjv;->ic_activity_reply_comment_tweet:I

    goto :goto_0

    .line 49
    :cond_0
    sget v0, Lbjv;->ic_social_proof_conversation:I

    goto :goto_0

    .line 59
    :pswitch_5
    sget v0, Lbjv;->ic_activity_heart_tweet_default:I

    goto :goto_0

    .line 64
    :pswitch_6
    sget v0, Lbjv;->ic_activity_top_tweet:I

    goto :goto_0

    .line 67
    :pswitch_7
    sget v0, Lbjv;->ic_social_proof_recommendation_default:I

    goto :goto_0

    .line 70
    :pswitch_8
    sget v0, Lbjv;->ic_highlight_context_nearby:I

    goto :goto_0

    .line 73
    :pswitch_9
    sget v0, Lbjv;->ic_highlight_context_popular:I

    goto :goto_0

    .line 76
    :pswitch_a
    sget v0, Lbjv;->ic_activity_trending:I

    goto :goto_0

    .line 79
    :pswitch_b
    sget v0, Lbjv;->ic_activity_collections_tweet:I

    goto :goto_0

    .line 82
    :pswitch_c
    sget v0, Lbjv;->ic_activity_pinned_tweet:I

    goto :goto_0

    .line 85
    :pswitch_d
    sget v0, Lbjv;->ic_activity_trending:I

    goto :goto_0

    .line 88
    :pswitch_e
    sget v0, Lbjv;->ic_activity_moments_default:I

    goto :goto_0

    .line 16
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_b
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Landroid/content/res/Resources;ILjava/lang/String;Ljava/lang/String;IIJIJ)Ljava/lang/String;
    .locals 8

    .prologue
    .line 100
    packed-switch p1, :pswitch_data_0

    .line 266
    :pswitch_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 102
    :pswitch_1
    sget v2, Lbkb;->social_both_follow:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 105
    :pswitch_2
    sget v2, Lbkb;->social_both_followed_by:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 109
    :pswitch_3
    if-eqz p3, :cond_1

    .line 110
    if-lez p8, :cond_0

    sget v2, Lbjz;->social_follow_and_follow_and_others:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    .line 112
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 111
    move/from16 v0, p8

    invoke-virtual {p0, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget v2, Lbkb;->social_follow_and_follow_with_two_users:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    .line 113
    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 116
    :cond_1
    sget v2, Lbkb;->social_follow_and_follow:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 119
    :pswitch_4
    sget v2, Lbkb;->social_follower_of_follower:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 122
    :pswitch_5
    sget v2, Lbkb;->tweets_retweeted:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 125
    :pswitch_6
    sget v2, Lbkb;->social_follower_and_retweets:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 128
    :pswitch_7
    sget v2, Lbkb;->social_follow_and_reply:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 131
    :pswitch_8
    sget v2, Lbkb;->social_follower_and_reply:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 134
    :pswitch_9
    sget v2, Lbkb;->social_follow_and_like:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 137
    :pswitch_a
    sget v2, Lbkb;->social_follower_and_like:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 140
    :pswitch_b
    sget v2, Lbkb;->social_reply_to_follow:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 143
    :pswitch_c
    sget v2, Lbkb;->social_reply_to_follower:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 146
    :pswitch_d
    sget v2, Lbkb;->tweets_retweeted:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 149
    :pswitch_e
    sget v2, Lbjz;->social_like_and_retweets_count:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    int-to-long v6, p4

    .line 150
    invoke-static {p0, v6, v7}, Lcom/twitter/util/s;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    int-to-long v6, p5

    invoke-static {p0, v6, v7}, Lcom/twitter/util/s;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 149
    invoke-virtual {p0, v2, p5, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 153
    :pswitch_f
    const/4 v2, 0x1

    if-ne p5, v2, :cond_2

    .line 154
    sget v2, Lbkb;->social_retweet_and_like_count:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 156
    :cond_2
    sget v2, Lbjz;->social_retweet_and_likes_count:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    int-to-long v6, p5

    .line 157
    invoke-static {p0, v6, v7}, Lcom/twitter/util/s;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    int-to-long v6, p4

    invoke-static {p0, v6, v7}, Lcom/twitter/util/s;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 156
    invoke-virtual {p0, v2, p4, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 161
    :pswitch_10
    if-eqz p3, :cond_3

    .line 162
    sget v2, Lbkb;->social_like_with_two_user:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 164
    :cond_3
    sget v2, Lbkb;->social_like_with_user:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 168
    :pswitch_11
    sget v2, Lbjz;->social_like_count_with_user:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    .line 169
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 168
    invoke-virtual {p0, v2, p4, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 172
    :pswitch_12
    sget v2, Lbjz;->social_like_count:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    int-to-long v6, p4

    .line 173
    invoke-static {p0, v6, v7}, Lcom/twitter/util/s;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 172
    invoke-virtual {p0, v2, p4, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 176
    :pswitch_13
    sget v2, Lbkb;->social_retweet_with_user:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 179
    :pswitch_14
    sget v2, Lbjz;->social_retweet_count:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    int-to-long v6, p5

    .line 180
    invoke-static {p0, v6, v7}, Lcom/twitter/util/s;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 179
    invoke-virtual {p0, v2, p5, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 183
    :pswitch_15
    sget v2, Lbkb;->social_top_news:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 186
    :pswitch_16
    sget v2, Lbkb;->top_tweet:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 189
    :pswitch_17
    sget v2, Lbkb;->social_trending_topic:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 192
    :pswitch_18
    move-wide/from16 v0, p9

    invoke-static {p0, v0, v1}, Lcom/twitter/util/al;->c(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v2

    .line 193
    if-eqz v2, :cond_4

    .line 194
    sget v3, Lbkb;->highlight_tweet:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 196
    :cond_4
    sget v2, Lbkb;->highlight_tweet_today:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 200
    :pswitch_19
    if-nez p8, :cond_6

    .line 201
    if-nez p3, :cond_5

    .line 202
    sget v2, Lbkb;->social_conversation_tweet:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 204
    :cond_5
    sget v2, Lbkb;->social_conversation_tweet_two:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 207
    :cond_6
    if-nez p3, :cond_7

    .line 208
    sget v2, Lbjz;->in_reply_to_name_and_count:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    .line 209
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, " "

    aput-object v5, v3, v4

    .line 208
    move/from16 v0, p8

    invoke-virtual {p0, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 211
    :cond_7
    sget v2, Lbjz;->social_proof_in_reply_multiple_names_and_count:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    .line 213
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 211
    move/from16 v0, p8

    invoke-virtual {p0, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 217
    :pswitch_1a
    sget v2, Lbkb;->social_context_mutual_follow:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 220
    :pswitch_1b
    sget v2, Lbkb;->social_following:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 223
    :pswitch_1c
    sget v2, Lbkb;->highlight_context_nearby:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 226
    :pswitch_1d
    sget v2, Lbkb;->highlight_context_popular:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 229
    :pswitch_1e
    sget v2, Lbkb;->social_who_to_follow:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 232
    :pswitch_1f
    sget v2, Lbkb;->social_promoted_trend:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_20
    move-object v2, p2

    .line 239
    goto/16 :goto_0

    .line 242
    :pswitch_21
    sget v2, Lbkb;->pinned_tweet:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 245
    :pswitch_22
    sget v2, Lbkb;->social_view_count_highlight:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 246
    invoke-static {p0, p6, p7, v5}, Lcom/twitter/util/s;->a(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 245
    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 249
    :pswitch_23
    sget v2, Lbkb;->social_you_retweeted:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 252
    :pswitch_24
    if-lez p8, :cond_8

    .line 253
    sget v2, Lbkb;->consumption_reply_context_to_someone_plural:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 255
    :cond_8
    sget v2, Lbkb;->consumption_reply_context_to_someone:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 259
    :pswitch_25
    if-lez p8, :cond_9

    .line 260
    sget v2, Lbkb;->consumption_reply_context_to_you_plural:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 262
    :cond_9
    sget v2, Lbkb;->consumption_reply_context_to_you:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_17
        :pswitch_16
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_0
        :pswitch_3
        :pswitch_21
        :pswitch_22
        :pswitch_20
        :pswitch_23
        :pswitch_0
        :pswitch_24
        :pswitch_25
    .end packed-switch
.end method

.method public static b(Landroid/content/res/Resources;ILjava/lang/String;Ljava/lang/String;IIJIJ)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 275
    sparse-switch p1, :sswitch_data_0

    .line 320
    invoke-static/range {p0 .. p10}, Lcom/twitter/library/util/ah;->a(Landroid/content/res/Resources;ILjava/lang/String;Ljava/lang/String;IIJIJ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 277
    :sswitch_0
    sget v0, Lbkb;->social_follow_and_follow_accessibility_description:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 281
    :sswitch_1
    sget v0, Lbkb;->tweets_retweeted_accessibility_description:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 284
    :sswitch_2
    sget v0, Lbkb;->social_follower_and_retweets_accessibility_description:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 288
    :sswitch_3
    sget v0, Lbkb;->social_follow_and_reply_accessibility_description:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 292
    :sswitch_4
    sget v0, Lbkb;->social_follower_and_reply_accessibility_description:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 296
    :sswitch_5
    sget v0, Lbkb;->social_follow_and_like_accessibility_description:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 299
    :sswitch_6
    sget v0, Lbkb;->social_follower_and_like_accessibility_description:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 302
    :sswitch_7
    sget v0, Lbkb;->tweets_retweeted_accessibility_description:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 305
    :sswitch_8
    if-eqz p3, :cond_0

    .line 306
    sget v0, Lbkb;->social_like_with_two_user_accessibility_description:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    aput-object p3, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 309
    :cond_0
    sget v0, Lbkb;->social_like_with_user_accessibility_description:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 313
    :sswitch_9
    sget v0, Lbjz;->social_like_count_with_user_accessibility_description:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    .line 314
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 313
    invoke-virtual {p0, v0, p4, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 317
    :sswitch_a
    sget v0, Lbkb;->social_retweet_with_user_accessibility_description:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 275
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0xa -> :sswitch_6
        0xd -> :sswitch_7
        0x10 -> :sswitch_8
        0x12 -> :sswitch_a
        0x21 -> :sswitch_9
    .end sparse-switch
.end method
