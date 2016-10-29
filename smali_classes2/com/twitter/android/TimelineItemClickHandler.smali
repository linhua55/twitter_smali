.class public Lcom/twitter/android/TimelineItemClickHandler;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private final c:Landroid/support/v4/app/FragmentManager;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/twitter/android/revenue/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;Lcom/twitter/android/revenue/d;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/twitter/android/TimelineItemClickHandler;->a:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/twitter/android/TimelineItemClickHandler;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 74
    iput-object p5, p0, Lcom/twitter/android/TimelineItemClickHandler;->c:Landroid/support/v4/app/FragmentManager;

    .line 75
    iput-object p6, p0, Lcom/twitter/android/TimelineItemClickHandler;->f:Lcom/twitter/android/revenue/d;

    .line 76
    iput-object p3, p0, Lcom/twitter/android/TimelineItemClickHandler;->d:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/twitter/android/TimelineItemClickHandler;->e:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private a(Lcom/twitter/library/api/PromotedEvent;JLcom/twitter/library/client/Session;)V
    .locals 4

    .prologue
    .line 299
    iget-object v0, p0, Lcom/twitter/android/TimelineItemClickHandler;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 300
    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    new-instance v2, Lbqt;

    invoke-direct {v2, v0, p4, p1}, Lbqt;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/library/api/PromotedEvent;)V

    .line 302
    invoke-virtual {v2, p2, p3}, Lbqt;->a(J)Lbqt;

    move-result-object v0

    .line 301
    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 303
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/twitter/android/timeline/bp;IILcom/twitter/library/client/Session;Lcom/twitter/android/ty;)V
    .locals 16

    .prologue
    .line 86
    invoke-virtual/range {p5 .. p5}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v14

    .line 87
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/twitter/android/timeline/al;

    if-eqz v2, :cond_1

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/mb;

    .line 89
    iget-object v2, v2, Lcom/twitter/android/mb;->d:Lcom/twitter/library/widget/TweetView;

    .line 90
    invoke-virtual {v2}, Lcom/twitter/library/widget/TweetView;->getTweet()Lcom/twitter/model/core/Tweet;

    move-result-object v2

    .line 91
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/TimelineItemClickHandler;->c:Landroid/support/v4/app/FragmentManager;

    .line 92
    invoke-static {v3, v2}, Lcom/twitter/android/widget/ConfirmCancelPendingTweetDialog;->a(Landroid/support/v4/app/FragmentManager;Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/widget/ConfirmCancelPendingTweetDialog;

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/twitter/android/timeline/cj;

    if-eqz v2, :cond_a

    .line 94
    check-cast p2, Lcom/twitter/android/timeline/cj;

    .line 95
    new-instance v4, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v4}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 100
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/twitter/android/timeline/cj;->e:Lcom/twitter/model/topic/i;

    if-eqz v2, :cond_7

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/twitter/android/timeline/cj;->e:Lcom/twitter/model/topic/i;

    iget v2, v2, Lcom/twitter/model/topic/i;->k:I

    move v3, v2

    .line 102
    :goto_1
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/TimelineItemClickHandler;->d:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "trend_row"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "trend"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "click"

    aput-object v6, v2, v5

    invoke-static {v2}, Lcom/twitter/library/scribe/ScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 103
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/TimelineItemClickHandler;->d:Ljava/lang/String;

    aput-object v7, v2, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "trend_row"

    aput-object v7, v2, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput-object v7, v2, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "trend"

    aput-object v7, v2, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "search"

    aput-object v7, v2, v6

    invoke-static {v2}, Lcom/twitter/library/scribe/ScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 104
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/TimelineItemClickHandler;->d:Ljava/lang/String;

    aput-object v8, v2, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "trend_row"

    aput-object v8, v2, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput-object v8, v2, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "promoted_trend"

    aput-object v8, v2, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "click"

    aput-object v8, v2, v7

    invoke-static {v2}, Lcom/twitter/library/scribe/ScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 105
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/TimelineItemClickHandler;->d:Ljava/lang/String;

    aput-object v9, v2, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "trend_row"

    aput-object v9, v2, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    aput-object v9, v2, v8

    const/4 v8, 0x3

    const-string/jumbo v9, "promoted_trend"

    aput-object v9, v2, v8

    const/4 v8, 0x4

    const-string/jumbo v9, "search"

    aput-object v9, v2, v8

    .line 106
    invoke-static {v2}, Lcom/twitter/library/scribe/ScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 107
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/twitter/android/timeline/cj;->e:Lcom/twitter/model/topic/i;

    if-eqz v2, :cond_2

    .line 108
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/twitter/android/timeline/cj;->e:Lcom/twitter/model/topic/i;

    iget-boolean v2, v2, Lcom/twitter/model/topic/i;->j:Z

    .line 109
    invoke-static {v2}, Lcom/twitter/model/topic/i;->a(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/twitter/library/scribe/TwitterScribeItem;->v:Ljava/lang/String;

    .line 112
    :cond_2
    const/16 v2, 0x8

    iput v2, v4, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 113
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/twitter/android/timeline/cj;->b:Ljava/lang/String;

    iput-object v2, v4, Lcom/twitter/library/scribe/TwitterScribeItem;->b:Ljava/lang/String;

    .line 116
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/twitter/android/timeline/cj;->c:Lcss;

    if-eqz v2, :cond_8

    .line 117
    sget-object v2, Lcom/twitter/library/api/PromotedEvent;->h:Lcom/twitter/library/api/PromotedEvent;

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/twitter/android/timeline/cj;->c:Lcss;

    iget-wide v10, v9, Lcss;->e:J

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v2, v10, v11, v1}, Lcom/twitter/android/TimelineItemClickHandler;->a(Lcom/twitter/library/api/PromotedEvent;JLcom/twitter/library/client/Session;)V

    .line 119
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/twitter/android/timeline/cj;->c:Lcss;

    iget-wide v10, v2, Lcss;->e:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/twitter/library/scribe/TwitterScribeItem;->e:Ljava/lang/String;

    .line 120
    if-eqz v7, :cond_3

    .line 121
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v2, v14, v15}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/twitter/android/timeline/cj;->g:Ljava/lang/String;

    .line 123
    invoke-virtual {v2, v9}, Lcom/twitter/library/scribe/TwitterScribeLog;->g(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    .line 124
    invoke-virtual {v2, v9}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 125
    invoke-virtual {v2, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 126
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->d(I)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 127
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 129
    :cond_3
    if-eqz v8, :cond_4

    .line 130
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v2, v14, v15}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/twitter/android/timeline/cj;->g:Ljava/lang/String;

    .line 132
    invoke-virtual {v2, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;->g(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 133
    invoke-virtual {v2, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 134
    invoke-virtual {v2, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 135
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->d(I)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 136
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 142
    :cond_4
    :goto_2
    if-eqz v5, :cond_5

    .line 143
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v2, v14, v15}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/twitter/android/timeline/cj;->g:Ljava/lang/String;

    .line 144
    invoke-virtual {v2, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;->g(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    .line 145
    invoke-virtual {v2, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 146
    invoke-virtual {v2, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 147
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->d(I)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    .line 143
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 149
    :cond_5
    if-eqz v6, :cond_6

    .line 150
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v2, v14, v15}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/twitter/android/timeline/cj;->g:Ljava/lang/String;

    .line 151
    invoke-virtual {v2, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->g(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 152
    invoke-virtual {v2, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 153
    invoke-virtual {v2, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 154
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->d(I)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    .line 150
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 157
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/TimelineItemClickHandler;->a:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/twitter/android/timeline/cj;->a:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v4, v0, Lcom/twitter/android/timeline/cj;->i:I

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/twitter/android/timeline/cj;->b:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/twitter/android/timeline/cj;->g:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/twitter/android/timeline/cj;->h:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/twitter/android/timeline/cj;->e:Lcom/twitter/model/topic/i;

    if-eqz v11, :cond_9

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/twitter/android/timeline/cj;->e:Lcom/twitter/model/topic/i;

    iget-object v11, v11, Lcom/twitter/model/topic/i;->d:Lcom/twitter/model/topic/trends/n;

    iget-object v11, v11, Lcom/twitter/model/topic/trends/n;->c:Ljava/util/ArrayList;

    .line 158
    :goto_3
    invoke-static/range {v2 .. v11}, Lcom/twitter/android/sl;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/twitter/android/widget/TopicView$TopicData;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v2

    .line 161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/TimelineItemClickHandler;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 100
    :cond_7
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_1

    .line 139
    :cond_8
    move-object/from16 v0, p2

    iget v2, v0, Lcom/twitter/android/timeline/cj;->j:I

    iput v2, v4, Lcom/twitter/library/scribe/TwitterScribeItem;->y:I

    goto/16 :goto_2

    .line 157
    :cond_9
    const/4 v11, 0x0

    goto :goto_3

    .line 164
    :cond_a
    sparse-switch p4, :sswitch_data_0

    .line 257
    :goto_4
    const/4 v3, 0x0

    .line 258
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/twitter/android/timeline/cn;

    if-eqz v2, :cond_e

    .line 259
    invoke-static/range {p2 .. p2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/timeline/cn;

    iget-object v2, v2, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    .line 271
    :goto_5
    if-eqz v2, :cond_13

    .line 272
    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->c()Z

    move-result v3

    if-nez v3, :cond_0

    .line 274
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/twitter/android/ty;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/ty;

    move-result-object v3

    .line 275
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/twitter/android/ty;->a(Lcom/twitter/android/timeline/bp;)Lcom/twitter/android/ty;

    move-result-object v3

    .line 276
    invoke-virtual {v3}, Lcom/twitter/android/ty;->b()V

    .line 278
    invoke-static {v2}, Lcom/twitter/android/av/p;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 279
    new-instance v3, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v3, v14, v15}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/TimelineItemClickHandler;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/TimelineItemClickHandler;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 281
    invoke-static {v2}, Lcom/twitter/android/vs;->a(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v6

    .line 280
    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/TimelineItemClickHandler;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 283
    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->Y()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "tweet"

    const-string/jumbo v8, "click"

    .line 282
    invoke-static {v6, v2, v7, v8}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/TimelineItemClickHandler;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 284
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    .line 279
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    .line 168
    :sswitch_0
    invoke-virtual/range {p2 .. p2}, Lcom/twitter/android/timeline/bp;->c()Lcom/twitter/android/timeline/bj;

    move-result-object v2

    .line 170
    iget v3, v2, Lcom/twitter/android/timeline/bj;->c:I

    .line 172
    sparse-switch v3, :sswitch_data_1

    goto :goto_4

    .line 174
    :sswitch_1
    iget v2, v2, Lcom/twitter/android/timeline/bj;->f:I

    invoke-static {v2}, Lcom/twitter/model/timeline/bg;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/rj;

    .line 177
    iget-object v2, v2, Lcom/twitter/android/rj;->a:Lcom/twitter/android/re;

    .line 178
    if-eqz v2, :cond_0

    .line 179
    iget-wide v2, v2, Lcom/twitter/android/re;->c:J

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/ty;->b(J)Lcom/twitter/android/ty;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/ty;->b()V

    goto/16 :goto_0

    .line 186
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/rj;

    .line 187
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/twitter/android/events/sports/c;

    if-eqz v3, :cond_0

    .line 188
    check-cast p2, Lcom/twitter/android/events/sports/c;

    .line 189
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/twitter/android/events/sports/c;->e:Ljava/lang/String;

    .line 190
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/twitter/android/events/sports/c;->h:Ljava/lang/String;

    .line 191
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/twitter/android/events/sports/c;->a:Ljava/lang/String;

    .line 192
    move-object/from16 v0, p2

    iget v4, v0, Lcom/twitter/android/events/sports/c;->b:I

    .line 193
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/twitter/android/events/sports/c;->d:Ljava/lang/String;

    .line 195
    invoke-static {v4}, Lcom/twitter/model/topic/TwitterTopic;->c(I)Ljava/lang/String;

    move-result-object v7

    .line 196
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/twitter/android/TimelineItemClickHandler;->d:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/twitter/android/TimelineItemClickHandler;->e:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "event"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string/jumbo v11, "click"

    aput-object v11, v9, v10

    .line 197
    invoke-static {v9}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 199
    new-instance v10, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v10}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 200
    iput-object v7, v10, Lcom/twitter/library/scribe/TwitterScribeItem;->x:Ljava/lang/String;

    .line 201
    const/16 v7, 0x10

    iput v7, v10, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 202
    iput-object v3, v10, Lcom/twitter/library/scribe/TwitterScribeItem;->b:Ljava/lang/String;

    .line 204
    new-instance v7, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v7, v14, v15}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    .line 205
    invoke-virtual {v7, v11}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v7

    check-cast v7, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 206
    move/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->d(I)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v7

    check-cast v7, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 207
    invoke-virtual {v7, v10}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v7

    .line 204
    invoke-static {v7}, Lbjf;->a(Lbjh;)V

    .line 210
    if-eqz v2, :cond_b

    iget-object v7, v2, Lcom/twitter/android/rj;->h:Lcom/twitter/android/widget/EventView;

    if-eqz v7, :cond_b

    iget-object v2, v2, Lcom/twitter/android/rj;->h:Lcom/twitter/android/widget/EventView;

    .line 211
    invoke-virtual {v2}, Lcom/twitter/android/widget/EventView;->getTopicData()Lcom/twitter/android/widget/TopicView$TopicData;

    move-result-object v10

    .line 212
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/TimelineItemClickHandler;->a:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 213
    invoke-static/range {v2 .. v11}, Lcom/twitter/android/sl;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/twitter/android/widget/TopicView$TopicData;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v2

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/TimelineItemClickHandler;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 211
    :cond_b
    const/4 v10, 0x0

    goto :goto_6

    .line 221
    :sswitch_3
    check-cast p2, Lcom/twitter/android/timeline/ah;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/twitter/android/timeline/ah;->a:Lcom/twitter/model/moments/bg;

    .line 222
    if-eqz v2, :cond_0

    .line 223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/TimelineItemClickHandler;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/TimelineItemClickHandler;->a:Landroid/content/Context;

    iget-object v2, v2, Lcom/twitter/model/moments/bg;->c:Lcom/twitter/model/moments/ad;

    iget-wide v6, v2, Lcom/twitter/model/moments/ad;->b:J

    .line 224
    invoke-static {v4, v6, v7}, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->c(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v2

    .line 223
    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 230
    :sswitch_4
    check-cast p2, Lcom/twitter/android/timeline/af;

    .line 232
    new-instance v3, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v3}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 233
    const/4 v12, 0x0

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/TimelineItemClickHandler;->a:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_c

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/TimelineItemClickHandler;->a:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    .line 237
    :cond_c
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/twitter/android/timeline/af;->o:Lcom/twitter/model/timeline/al;

    iput-object v2, v3, Lcom/twitter/library/scribe/TwitterScribeItem;->as:Lcom/twitter/model/timeline/al;

    .line 238
    new-instance v4, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v4, v14, v15}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x5

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/TimelineItemClickHandler;->d:Ljava/lang/String;

    aput-object v6, v5, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/TimelineItemClickHandler;->e:Ljava/lang/String;

    aput-object v6, v5, v2

    const/4 v6, 0x2

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/twitter/android/timeline/af;->o:Lcom/twitter/model/timeline/al;

    if-eqz v2, :cond_d

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/twitter/android/timeline/af;->o:Lcom/twitter/model/timeline/al;

    iget-object v2, v2, Lcom/twitter/model/timeline/al;->e:Ljava/lang/String;

    :goto_7
    aput-object v2, v5, v6

    const/4 v2, 0x3

    const-string/jumbo v6, "footer"

    aput-object v6, v5, v2

    const/4 v2, 0x4

    const-string/jumbo v6, "click"

    aput-object v6, v5, v2

    .line 239
    invoke-virtual {v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 241
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    .line 238
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/TimelineItemClickHandler;->a:Landroid/content/Context;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/twitter/android/timeline/af;->a:Lcom/twitter/model/timeline/t;

    iget-object v5, v2, Lcom/twitter/model/timeline/t;->c:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/android/TimelineItemClickHandler;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const/4 v11, 0x0

    move-wide v6, v14

    invoke-static/range {v3 .. v12}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Lcom/twitter/library/client/BrowserDataSource;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 238
    :cond_d
    const/4 v2, 0x0

    goto :goto_7

    .line 260
    :cond_e
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/twitter/android/timeline/ap;

    if-eqz v2, :cond_f

    invoke-static/range {p2 .. p2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/timeline/ap;

    iget-object v2, v2, Lcom/twitter/android/timeline/ap;->a:Lcom/twitter/android/timeline/cn;

    if-eqz v2, :cond_f

    .line 262
    invoke-static/range {p2 .. p2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/timeline/ap;

    iget-object v2, v2, Lcom/twitter/android/timeline/ap;->a:Lcom/twitter/android/timeline/cn;

    iget-object v2, v2, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    goto/16 :goto_5

    .line 263
    :cond_f
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/twitter/android/timeline/cv;

    if-eqz v2, :cond_11

    .line 264
    invoke-static/range {p2 .. p2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/timeline/cv;

    iget-object v2, v2, Lcom/twitter/android/timeline/cv;->b:Lcmf;

    .line 265
    invoke-virtual {v2}, Lcmf;->bb_()I

    move-result v3

    if-lez v3, :cond_10

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcmf;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/timeline/cn;

    iget-object v2, v2, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    goto/16 :goto_5

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 266
    :cond_11
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/twitter/android/timeline/a;

    if-eqz v2, :cond_14

    .line 267
    invoke-static/range {p2 .. p2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/timeline/a;

    .line 268
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/TimelineItemClickHandler;->f:Lcom/twitter/android/revenue/d;

    iget-object v2, v2, Lcom/twitter/android/timeline/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/twitter/android/revenue/d;->a(Ljava/lang/String;)Lcom/twitter/android/revenue/a;

    move-result-object v2

    .line 269
    instance-of v3, v2, Lcom/twitter/android/revenue/af;

    if-eqz v3, :cond_12

    check-cast v2, Lcom/twitter/android/revenue/af;

    iget-object v2, v2, Lcom/twitter/android/revenue/af;->f:Lcom/twitter/model/core/Tweet;

    goto/16 :goto_5

    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 288
    :cond_13
    new-instance v2, Lbiv;

    new-instance v3, Lcom/twitter/android/TimelineItemClickHandler$TimelineItemClickException;

    invoke-direct {v3}, Lcom/twitter/android/TimelineItemClickHandler$TimelineItemClickException;-><init>()V

    invoke-direct {v2, v3}, Lbiv;-><init>(Ljava/lang/Throwable;)V

    const-string/jumbo v3, "class"

    .line 289
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v2

    const-string/jumbo v3, "entityId"

    .line 290
    invoke-virtual/range {p2 .. p2}, Lcom/twitter/android/timeline/bp;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v2

    const-string/jumbo v3, "entityDataFlags"

    .line 291
    invoke-virtual/range {p2 .. p2}, Lcom/twitter/android/timeline/bp;->c()Lcom/twitter/android/timeline/bj;

    move-result-object v4

    iget v4, v4, Lcom/twitter/android/timeline/bj;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v2

    const-string/jumbo v3, "entityDataType"

    .line 292
    invoke-virtual/range {p2 .. p2}, Lcom/twitter/android/timeline/bp;->c()Lcom/twitter/android/timeline/bj;

    move-result-object v4

    iget v4, v4, Lcom/twitter/android/timeline/bj;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v2

    .line 288
    invoke-static {v2}, Lbix;->a(Lbiv;)V

    goto/16 :goto_0

    :cond_14
    move-object v2, v3

    goto/16 :goto_5

    .line 164
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1b -> :sswitch_0
        0x1c -> :sswitch_0
    .end sparse-switch

    .line 172
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x9 -> :sswitch_3
        0xd -> :sswitch_4
    .end sparse-switch
.end method
