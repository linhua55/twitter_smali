.class public Lcom/twitter/android/moments/data/aa;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/twitter/model/moments/MomentPageType;)Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 140
    sget-object v0, Lcom/twitter/android/moments/data/ab;->a:[I

    invoke-virtual {p0}, Lcom/twitter/model/moments/MomentPageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 158
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 143
    :pswitch_1
    sget-object v0, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;->a:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;

    goto :goto_0

    .line 146
    :pswitch_2
    sget-object v0, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;->c:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;

    goto :goto_0

    .line 149
    :pswitch_3
    sget-object v0, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;->b:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;

    goto :goto_0

    .line 152
    :pswitch_4
    sget-object v0, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;->d:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;

    goto :goto_0

    .line 155
    :pswitch_5
    sget-object v0, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;->e:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/ad;Lcom/twitter/model/core/Tweet;Lcom/twitter/model/moments/ak;Lcom/twitter/model/moments/MomentPageDisplayMode;Lcqt;)Lcom/twitter/model/moments/viewmodels/MomentPage;
    .locals 14

    .prologue
    .line 40
    move-object/from16 v0, p5

    iget-object v6, v0, Lcqt;->c:Lcom/twitter/model/moments/MomentPageType;

    .line 41
    move-object/from16 v0, p5

    iget-object v7, v0, Lcqt;->e:Lcom/twitter/model/moments/k;

    .line 42
    move-object/from16 v0, p5

    iget-object v8, v0, Lcqt;->f:Lcom/twitter/model/moments/bd;

    .line 43
    move-object/from16 v0, p5

    iget-object v2, v0, Lcqt;->g:Lcqn;

    if-eqz v2, :cond_0

    move-object/from16 v0, p5

    iget-object v2, v0, Lcqt;->g:Lcqn;

    iget-wide v2, v2, Lcqn;->b:J

    move-wide v4, v2

    .line 44
    :goto_0
    move-object/from16 v0, p5

    iget-object v9, v0, Lcqt;->d:Lcom/twitter/model/moments/z;

    .line 45
    move-object/from16 v0, p5

    iget-object v10, v0, Lcqt;->i:Lcom/twitter/model/moments/ah;

    .line 47
    sget-object v2, Lcom/twitter/model/moments/MomentPageType;->j:Lcom/twitter/model/moments/MomentPageType;

    if-ne v6, v2, :cond_1

    .line 48
    move-object/from16 v0, p5

    iget-object v2, v0, Lcqt;->g:Lcqn;

    invoke-static {v2}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcqn;

    .line 49
    iget-object v3, v2, Lcqn;->d:Ljava/lang/String;

    .line 50
    iget-object v4, v2, Lcqn;->c:Lcom/twitter/util/math/Size;

    .line 51
    new-instance v2, Lcom/twitter/model/moments/viewmodels/s;

    invoke-direct {v2}, Lcom/twitter/model/moments/viewmodels/s;-><init>()V

    .line 52
    invoke-virtual {v2, p1}, Lcom/twitter/model/moments/viewmodels/s;->a(Lcom/twitter/model/moments/ad;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/s;

    .line 53
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/twitter/model/moments/viewmodels/s;->a(Lcom/twitter/model/moments/ak;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/s;

    .line 54
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/twitter/model/moments/viewmodels/s;->a(Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/s;

    .line 55
    invoke-virtual {v2, v3}, Lcom/twitter/model/moments/viewmodels/s;->a(Ljava/lang/String;)Lcom/twitter/model/moments/viewmodels/r;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/s;

    .line 56
    invoke-virtual {v2, v4}, Lcom/twitter/model/moments/viewmodels/s;->a(Lcom/twitter/util/math/Size;)Lcom/twitter/model/moments/viewmodels/r;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/s;

    .line 57
    invoke-virtual {v2, v7}, Lcom/twitter/model/moments/viewmodels/s;->a(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/r;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/s;

    .line 58
    invoke-virtual {v2, v9}, Lcom/twitter/model/moments/viewmodels/s;->a(Lcom/twitter/model/moments/z;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/s;

    .line 59
    invoke-virtual {v2, v10}, Lcom/twitter/model/moments/viewmodels/s;->a(Lcom/twitter/model/moments/ah;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/s;

    .line 60
    invoke-virtual {v2}, Lcom/twitter/model/moments/viewmodels/s;->q()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 123
    :goto_1
    return-object v2

    .line 43
    :cond_0
    const-wide/16 v2, 0x0

    move-wide v4, v2

    goto :goto_0

    .line 63
    :cond_1
    move-object/from16 v0, p5

    iget-wide v12, v0, Lcqt;->j:J

    .line 64
    move-object/from16 v0, p5

    iget-object v11, v0, Lcqt;->h:Lcom/twitter/model/moments/u;

    .line 65
    sget-object v2, Lcom/twitter/android/moments/data/ab;->a:[I

    invoke-virtual {v6}, Lcom/twitter/model/moments/MomentPageType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 123
    new-instance v2, Lcom/twitter/model/moments/viewmodels/ah;

    invoke-direct {v2}, Lcom/twitter/model/moments/viewmodels/ah;-><init>()V

    .line 124
    invoke-virtual {v2, p1}, Lcom/twitter/model/moments/viewmodels/ah;->a(Lcom/twitter/model/moments/ad;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ah;

    .line 125
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/twitter/model/moments/viewmodels/ah;->a(Lcom/twitter/model/moments/ak;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ah;

    .line 126
    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v12, v13}, Lcom/twitter/model/moments/viewmodels/ah;->a(Lcom/twitter/model/core/Tweet;J)Lcom/twitter/model/moments/viewmodels/z;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ah;

    .line 127
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/twitter/model/moments/viewmodels/ah;->a(Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ah;

    .line 128
    invoke-virtual {v2, v8}, Lcom/twitter/model/moments/viewmodels/ah;->a(Lcom/twitter/model/moments/bd;)Lcom/twitter/model/moments/viewmodels/ag;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ah;

    .line 129
    invoke-virtual {v2, v11}, Lcom/twitter/model/moments/viewmodels/ah;->a(Lcom/twitter/model/moments/u;)Lcom/twitter/model/moments/viewmodels/z;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ah;

    .line 130
    invoke-virtual {v2, v9}, Lcom/twitter/model/moments/viewmodels/ah;->a(Lcom/twitter/model/moments/z;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ah;

    .line 131
    invoke-virtual {v2, v10}, Lcom/twitter/model/moments/viewmodels/ah;->a(Lcom/twitter/model/moments/ah;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ah;

    .line 132
    invoke-virtual {v2}, Lcom/twitter/model/moments/viewmodels/ah;->q()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/MomentPage;

    goto :goto_1

    .line 67
    :pswitch_0
    new-instance v2, Lcom/twitter/model/moments/viewmodels/ad;

    invoke-direct {v2}, Lcom/twitter/model/moments/viewmodels/ad;-><init>()V

    .line 68
    invoke-virtual {v2, p1}, Lcom/twitter/model/moments/viewmodels/ad;->a(Lcom/twitter/model/moments/ad;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ad;

    .line 69
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/twitter/model/moments/viewmodels/ad;->a(Lcom/twitter/model/moments/ak;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ad;

    .line 70
    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v12, v13}, Lcom/twitter/model/moments/viewmodels/ad;->a(Lcom/twitter/model/core/Tweet;J)Lcom/twitter/model/moments/viewmodels/z;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ad;

    .line 71
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/twitter/model/moments/viewmodels/ad;->a(Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ad;

    .line 72
    invoke-virtual {v2, v7}, Lcom/twitter/model/moments/viewmodels/ad;->a(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/ad;

    move-result-object v2

    .line 73
    invoke-virtual {v2, v11}, Lcom/twitter/model/moments/viewmodels/ad;->a(Lcom/twitter/model/moments/u;)Lcom/twitter/model/moments/viewmodels/z;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ad;

    .line 74
    invoke-virtual {v2, v9}, Lcom/twitter/model/moments/viewmodels/ad;->a(Lcom/twitter/model/moments/z;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ad;

    .line 75
    invoke-virtual {v2, v10}, Lcom/twitter/model/moments/viewmodels/ad;->a(Lcom/twitter/model/moments/ah;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ad;

    .line 76
    invoke-virtual {v2}, Lcom/twitter/model/moments/viewmodels/ad;->q()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/MomentPage;

    goto/16 :goto_1

    .line 83
    :pswitch_1
    new-instance v2, Lcom/twitter/model/moments/viewmodels/ae;

    invoke-direct {v2}, Lcom/twitter/model/moments/viewmodels/ae;-><init>()V

    .line 84
    invoke-virtual {v2, p1}, Lcom/twitter/model/moments/viewmodels/ae;->a(Lcom/twitter/model/moments/ad;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ae;

    .line 85
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/twitter/model/moments/viewmodels/ae;->a(Lcom/twitter/model/moments/ak;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ae;

    .line 86
    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v12, v13}, Lcom/twitter/model/moments/viewmodels/ae;->a(Lcom/twitter/model/core/Tweet;J)Lcom/twitter/model/moments/viewmodels/z;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ae;

    .line 87
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/twitter/model/moments/viewmodels/ae;->a(Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ae;

    .line 88
    invoke-static {v6}, Lcom/twitter/android/moments/data/aa;->a(Lcom/twitter/model/moments/MomentPageType;)Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;

    move-result-object v3

    invoke-static {v3}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;

    invoke-virtual {v2, v3}, Lcom/twitter/model/moments/viewmodels/ae;->a(Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;)Lcom/twitter/model/moments/viewmodels/ae;

    move-result-object v2

    .line 89
    invoke-virtual {v2, v7}, Lcom/twitter/model/moments/viewmodels/ae;->b(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/ae;

    move-result-object v2

    .line 90
    invoke-virtual {v2, v11}, Lcom/twitter/model/moments/viewmodels/ae;->a(Lcom/twitter/model/moments/u;)Lcom/twitter/model/moments/viewmodels/z;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ae;

    .line 91
    invoke-virtual {v2, v9}, Lcom/twitter/model/moments/viewmodels/ae;->a(Lcom/twitter/model/moments/z;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ae;

    .line 92
    invoke-virtual {v2, v10}, Lcom/twitter/model/moments/viewmodels/ae;->a(Lcom/twitter/model/moments/ah;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ae;

    .line 93
    invoke-virtual {v2}, Lcom/twitter/model/moments/viewmodels/ae;->q()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/MomentPage;

    goto/16 :goto_1

    .line 96
    :pswitch_2
    new-instance v2, Lcom/twitter/model/moments/viewmodels/ab;

    invoke-direct {v2}, Lcom/twitter/model/moments/viewmodels/ab;-><init>()V

    .line 97
    invoke-virtual {v2, p1}, Lcom/twitter/model/moments/viewmodels/ab;->a(Lcom/twitter/model/moments/ad;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ab;

    .line 98
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/twitter/model/moments/viewmodels/ab;->a(Lcom/twitter/model/moments/ak;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ab;

    .line 99
    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v12, v13}, Lcom/twitter/model/moments/viewmodels/ab;->a(Lcom/twitter/model/core/Tweet;J)Lcom/twitter/model/moments/viewmodels/z;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ab;

    .line 100
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/twitter/model/moments/viewmodels/ab;->a(Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ab;

    .line 101
    invoke-virtual {v2, v4, v5}, Lcom/twitter/model/moments/viewmodels/ab;->b(J)Lcom/twitter/model/moments/viewmodels/ab;

    move-result-object v2

    .line 102
    invoke-virtual {v2, v7}, Lcom/twitter/model/moments/viewmodels/ab;->b(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/ab;

    move-result-object v2

    .line 103
    invoke-virtual {v2, v11}, Lcom/twitter/model/moments/viewmodels/ab;->a(Lcom/twitter/model/moments/u;)Lcom/twitter/model/moments/viewmodels/z;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ab;

    .line 104
    invoke-virtual {v2, v9}, Lcom/twitter/model/moments/viewmodels/ab;->a(Lcom/twitter/model/moments/z;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ab;

    .line 105
    invoke-virtual {v2, v10}, Lcom/twitter/model/moments/viewmodels/ab;->a(Lcom/twitter/model/moments/ah;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/ab;

    .line 106
    invoke-virtual {v2}, Lcom/twitter/model/moments/viewmodels/ab;->q()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/MomentPage;

    goto/16 :goto_1

    .line 109
    :pswitch_3
    new-instance v2, Lcom/twitter/model/moments/viewmodels/x;

    invoke-direct {v2}, Lcom/twitter/model/moments/viewmodels/x;-><init>()V

    .line 110
    invoke-virtual {v2, p1}, Lcom/twitter/model/moments/viewmodels/x;->a(Lcom/twitter/model/moments/ad;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/x;

    .line 111
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/twitter/model/moments/viewmodels/x;->a(Lcom/twitter/model/moments/ak;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/x;

    .line 112
    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v12, v13}, Lcom/twitter/model/moments/viewmodels/x;->a(Lcom/twitter/model/core/Tweet;J)Lcom/twitter/model/moments/viewmodels/z;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/x;

    .line 113
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/twitter/model/moments/viewmodels/x;->a(Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/x;

    .line 114
    invoke-virtual {v2, v11}, Lcom/twitter/model/moments/viewmodels/x;->a(Lcom/twitter/model/moments/u;)Lcom/twitter/model/moments/viewmodels/z;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/x;

    .line 115
    invoke-virtual {v2, v8}, Lcom/twitter/model/moments/viewmodels/x;->a(Lcom/twitter/model/moments/bd;)Lcom/twitter/model/moments/viewmodels/ag;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/x;

    .line 116
    invoke-virtual {v2, v9}, Lcom/twitter/model/moments/viewmodels/x;->a(Lcom/twitter/model/moments/z;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/x;

    .line 117
    invoke-virtual {v2, v10}, Lcom/twitter/model/moments/viewmodels/x;->a(Lcom/twitter/model/moments/ah;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/x;

    .line 118
    invoke-virtual {v2}, Lcom/twitter/model/moments/viewmodels/x;->q()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/viewmodels/MomentPage;

    goto/16 :goto_1

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
