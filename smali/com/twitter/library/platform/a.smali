.class public final Lcom/twitter/library/platform/a;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "Twttr"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 132
    return-void
.end method

.method private static a(ILandroid/content/Context;Lcom/twitter/app/common/account/a;Lcom/twitter/library/platform/notifications/a;Lcom/twitter/library/api/activity/FetchActivityTimeline;Lcom/twitter/library/provider/dm;)V
    .locals 13

    .prologue
    .line 507
    invoke-virtual {p2}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/twitter/library/client/t;->a(Landroid/content/Context;J)J

    move-result-wide v4

    .line 508
    invoke-virtual/range {p4 .. p4}, Lcom/twitter/library/api/activity/FetchActivityTimeline;->e()Ljava/util/List;

    move-result-object v6

    .line 509
    new-instance v2, Lcom/twitter/library/platform/notifications/ae;

    invoke-direct {v2}, Lcom/twitter/library/platform/notifications/ae;-><init>()V

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    .line 510
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    const/4 v3, 0x3

    iput v3, v2, Lcom/twitter/library/platform/notifications/ae;->b:I

    .line 511
    if-eqz v6, :cond_1

    move-object/from16 v0, p3

    iget-boolean v2, v0, Lcom/twitter/library/platform/notifications/a;->d:Z

    if-nez v2, :cond_1

    .line 512
    const/4 v2, 0x0

    .line 513
    new-instance v3, Lcom/twitter/library/platform/b;

    invoke-direct {v3, v4, v5}, Lcom/twitter/library/platform/b;-><init>(J)V

    .line 514
    invoke-static {v6, v3}, Lczz;->a(Ljava/lang/Iterable;Ldau;)Ljava/lang/Iterable;

    move-result-object v3

    new-instance v4, Lcom/twitter/library/platform/c;

    invoke-direct {v4}, Lcom/twitter/library/platform/c;-><init>()V

    .line 513
    invoke-static {v3, v4}, Lczz;->a(Ljava/lang/Iterable;Lczn;)Ljava/lang/Iterable;

    move-result-object v3

    .line 527
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcld;

    .line 528
    iget-object v3, v2, Lcld;->a:Lcle;

    .line 529
    if-nez v4, :cond_0

    .line 530
    iget v7, v3, Lcle;->d:I

    packed-switch v7, :pswitch_data_0

    :cond_0
    move v2, v4

    :goto_1
    move v4, v2

    .line 578
    goto :goto_0

    .line 532
    :pswitch_0
    invoke-virtual {v2}, Lcld;->a()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/core/cs;

    .line 533
    if-eqz v2, :cond_0

    .line 534
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    invoke-virtual {v3, v2}, Lcom/twitter/library/platform/notifications/ae;->a(Lcom/twitter/model/core/cs;)Lcom/twitter/library/platform/notifications/ae;

    move-result-object v3

    iget-object v2, v2, Lcom/twitter/model/core/cs;->E:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v3, v2}, Lcom/twitter/library/platform/notifications/ae;->a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/platform/notifications/ae;

    .line 535
    const/4 v4, 0x1

    move v2, v4

    goto :goto_1

    .line 540
    :pswitch_1
    invoke-virtual {v2}, Lcld;->c()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/core/cs;

    .line 541
    if-eqz v2, :cond_0

    .line 542
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    invoke-virtual {v3, v2}, Lcom/twitter/library/platform/notifications/ae;->a(Lcom/twitter/model/core/cs;)Lcom/twitter/library/platform/notifications/ae;

    move-result-object v3

    iget-object v2, v2, Lcom/twitter/model/core/cs;->E:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v3, v2}, Lcom/twitter/library/platform/notifications/ae;->a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/platform/notifications/ae;

    .line 543
    const/4 v4, 0x1

    move v2, v4

    goto :goto_1

    .line 548
    :pswitch_2
    invoke-virtual {v2}, Lcld;->a()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/core/cs;

    .line 549
    invoke-virtual {v3}, Lcle;->f()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/core/TwitterUser;

    .line 550
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 551
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    invoke-virtual {v4, v2}, Lcom/twitter/library/platform/notifications/ae;->a(Lcom/twitter/model/core/cs;)Lcom/twitter/library/platform/notifications/ae;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/twitter/library/platform/notifications/ae;->a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/platform/notifications/ae;

    .line 552
    const/4 v4, 0x1

    move v2, v4

    goto :goto_1

    .line 557
    :pswitch_3
    invoke-virtual {v3}, Lcle;->f()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/core/TwitterUser;

    .line 558
    if-eqz v2, :cond_0

    .line 559
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    invoke-virtual {v3, v2}, Lcom/twitter/library/platform/notifications/ae;->a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/platform/notifications/ae;

    .line 560
    const/4 v4, 0x1

    move v2, v4

    goto :goto_1

    .line 565
    :pswitch_4
    invoke-virtual {v2}, Lcld;->c()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/core/cs;

    .line 566
    invoke-virtual {v3}, Lcle;->f()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/core/TwitterUser;

    .line 567
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 568
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    invoke-virtual {v4, v2}, Lcom/twitter/library/platform/notifications/ae;->a(Lcom/twitter/model/core/cs;)Lcom/twitter/library/platform/notifications/ae;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/twitter/library/platform/notifications/ae;->a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/platform/notifications/ae;

    .line 569
    const/4 v4, 0x1

    move v2, v4

    goto/16 :goto_1

    .line 581
    :cond_1
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 582
    :goto_2
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iput v2, v3, Lcom/twitter/library/platform/notifications/ae;->d:I

    .line 584
    const-string/jumbo v3, "TwitterDataSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sync about me activities, newCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    if-lez v2, :cond_3

    .line 586
    move-object/from16 v0, p3

    iget-boolean v2, v0, Lcom/twitter/library/platform/notifications/a;->d:Z

    if-nez v2, :cond_2

    .line 587
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    invoke-virtual {p2}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v3

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    .line 588
    invoke-virtual {v2}, Lcom/twitter/library/platform/notifications/ae;->a()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iget-wide v8, v2, Lcom/twitter/library/platform/notifications/ae;->i:J

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iget-object v10, v2, Lcom/twitter/library/platform/notifications/ae;->g:Ljava/lang/String;

    const/4 v11, 0x1

    move-object/from16 v2, p5

    .line 587
    invoke-virtual/range {v2 .. v11}, Lcom/twitter/library/provider/dm;->a(JILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)I

    move-result v2

    iput v2, v12, Lcom/twitter/library/platform/notifications/ae;->r:I

    .line 590
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    move-object/from16 v0, p5

    invoke-virtual {v0, p0}, Lcom/twitter/library/provider/dm;->d(I)I

    move-result v3

    iput v3, v2, Lcom/twitter/library/platform/notifications/ae;->c:I

    .line 592
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/twitter/library/api/activity/FetchActivityTimeline;->g()I

    move-result v2

    move-object/from16 v0, p3

    iput v2, v0, Lcom/twitter/library/platform/notifications/a;->f:I

    .line 594
    :cond_3
    return-void

    .line 581
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 530
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private static a(ILandroid/content/Context;Lcom/twitter/app/common/account/a;Lcom/twitter/model/account/OAuthToken;Lcom/twitter/model/core/TwitterUser;Landroid/content/SyncResult;Lcom/twitter/library/platform/notifications/a;ZZZ)V
    .locals 9

    .prologue
    .line 473
    .line 474
    invoke-static {}, Lcal;->a()Z

    move-result v2

    .line 473
    move/from16 v0, p8

    move/from16 v1, p9

    invoke-static {p0, p4, v0, v1, v2}, Lcom/twitter/library/platform/a;->a(ILcom/twitter/model/core/TwitterUser;ZZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 475
    const-string/jumbo v2, "TwitterDataSync"

    const-string/jumbo v3, "=====> Sync activity"

    invoke-static {v2, v3}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-wide v4, p4, Lcom/twitter/model/core/TwitterUser;->c:J

    .line 477
    new-instance v3, Lcom/twitter/library/service/ab;

    invoke-virtual {p2}, Lcom/twitter/app/common/account/a;->d()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/twitter/library/service/ab;-><init>(JLjava/lang/String;Lcom/twitter/model/account/OAuthToken;Z)V

    .line 478
    invoke-static {v4, v5, p0}, Lcom/twitter/library/api/activity/e;->a(JI)V

    .line 479
    new-instance v2, Lcom/twitter/library/api/activity/FetchActivityTimeline;

    iget-boolean v6, p4, Lcom/twitter/model/core/TwitterUser;->n:Z

    invoke-direct {v2, p1, v3, p0, v6}, Lcom/twitter/library/api/activity/FetchActivityTimeline;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;IZ)V

    .line 481
    move/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/twitter/library/api/activity/FetchActivityTimeline;->a(Z)Lcom/twitter/library/api/activity/FetchActivityTimeline;

    move-result-object v2

    const/16 v3, 0x14

    .line 482
    invoke-virtual {v2, v3}, Lcom/twitter/library/api/activity/FetchActivityTimeline;->c(I)Lbss;

    move-result-object v2

    const-string/jumbo v3, "Data sync happens in the background and is not triggered by a user action."

    .line 483
    invoke-virtual {v2, v3}, Lbss;->k(Ljava/lang/String;)Lcom/twitter/library/service/x;

    move-result-object v6

    check-cast v6, Lcom/twitter/library/api/activity/FetchActivityTimeline;

    .line 484
    invoke-virtual {v6}, Lcom/twitter/library/api/activity/FetchActivityTimeline;->P()Lcom/twitter/library/service/aa;

    move-result-object v2

    .line 485
    invoke-virtual {v2}, Lcom/twitter/library/service/aa;->g()Lcom/twitter/internal/network/k;

    move-result-object v2

    iget v2, v2, Lcom/twitter/internal/network/k;->a:I

    .line 486
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 487
    invoke-static {v4, v5, p0}, Lcom/twitter/library/api/activity/e;->b(JI)V

    .line 488
    invoke-virtual {p2}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/twitter/library/platform/TwitterDataSyncService;->b(Landroid/content/Context;J)V

    .line 489
    if-eqz p7, :cond_0

    .line 490
    iget-wide v2, p4, Lcom/twitter/model/core/TwitterUser;->c:J

    .line 491
    invoke-static {p1, v2, v3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v7

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p6

    .line 490
    invoke-static/range {v2 .. v7}, Lcom/twitter/library/platform/a;->a(ILandroid/content/Context;Lcom/twitter/app/common/account/a;Lcom/twitter/library/platform/notifications/a;Lcom/twitter/library/api/activity/FetchActivityTimeline;Lcom/twitter/library/provider/dm;)V

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    invoke-static {v4, v5, p0}, Lcom/twitter/library/api/activity/e;->c(JI)V

    .line 495
    if-nez v2, :cond_2

    .line 496
    iget-object v2, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v2, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroid/content/SyncStats;->numParseExceptions:J

    goto :goto_0

    .line 497
    :cond_2
    const/16 v3, 0x191

    if-ne v2, v3, :cond_0

    .line 498
    iget-object v2, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)V
    .locals 14

    .prologue
    const v3, 0x7fffffff

    const/4 v1, 0x0

    .line 637
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/twitter/library/platform/TwitterDataSyncService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "on_poll_alarm_ev"

    .line 638
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 639
    const/high16 v0, 0x20000000

    invoke-static {p0, v1, v6, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 640
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 642
    invoke-static {p0}, Lcom/twitter/library/provider/ar;->a(Landroid/content/Context;)Lcom/twitter/library/provider/ar;

    move-result-object v4

    .line 643
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 644
    const-string/jumbo v2, "alarm_interval"

    const/4 v5, -0x1

    invoke-interface {v9, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 646
    invoke-static {}, Lcom/twitter/app/common/account/d;->a()Lcom/twitter/app/common/account/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/app/common/account/d;->c()Ljava/util/List;

    move-result-object v2

    .line 648
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v7, v3

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/app/common/account/a;

    .line 649
    invoke-virtual {v2}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v12

    .line 650
    invoke-static {p0, v12, v13}, Lcom/twitter/library/platform/notifications/x;->a(Landroid/content/Context;J)Lcom/twitter/library/platform/notifications/x;

    move-result-object v2

    .line 651
    invoke-virtual {v2}, Lcom/twitter/library/platform/notifications/x;->a()Z

    move-result v2

    invoke-virtual {v4, v12, v13, v2}, Lcom/twitter/library/provider/ar;->a(JZ)I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v7, v2

    .line 652
    goto :goto_0

    .line 654
    :cond_0
    if-ge v7, v3, :cond_4

    .line 655
    if-ne v7, v5, :cond_1

    if-nez v8, :cond_3

    .line 657
    :cond_1
    int-to-long v2, v7

    const-wide/32 v4, 0xea60

    mul-long/2addr v4, v2

    .line 658
    if-eqz v8, :cond_2

    .line 659
    invoke-virtual {v0, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 662
    :cond_2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/32 v10, 0x36ee80

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-double v10, v10

    mul-double/2addr v2, v10

    double-to-long v2, v2

    .line 664
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v10

    add-long/2addr v10, v4

    add-long/2addr v2, v10

    .line 665
    invoke-static {p0, v1, v6, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 663
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 666
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "alarm_interval"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 675
    :cond_3
    :goto_1
    return-void

    .line 670
    :cond_4
    if-eqz v8, :cond_3

    .line 671
    invoke-virtual {v0, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 672
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "alarm_interval"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Landroid/content/SyncResult;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 443
    new-instance v0, Lcom/twitter/library/api/dm/requests/m;

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/twitter/library/api/dm/requests/m;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    const-string/jumbo v1, "Data sync happens in the background and is not triggered by a user action."

    .line 444
    invoke-virtual {v0, v1}, Lcom/twitter/library/api/dm/requests/m;->k(Ljava/lang/String;)Lcom/twitter/library/service/x;

    move-result-object v0

    .line 445
    invoke-virtual {v0}, Lcom/twitter/library/service/x;->P()Lcom/twitter/library/service/aa;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v0

    .line 448
    if-nez v0, :cond_1

    .line 449
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numParseExceptions:J

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    .line 451
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/twitter/app/common/account/a;Lcom/twitter/model/account/OAuthToken;Lcom/twitter/model/core/TwitterUser;)V
    .locals 7

    .prologue
    .line 610
    iget-wide v2, p3, Lcom/twitter/model/core/TwitterUser;->c:J

    .line 611
    new-instance v1, Lcom/twitter/library/service/ab;

    invoke-virtual {p1}, Lcom/twitter/app/common/account/a;->d()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/service/ab;-><init>(JLjava/lang/String;Lcom/twitter/model/account/OAuthToken;Z)V

    .line 612
    new-instance v0, Lbql;

    invoke-direct {v0, p0, v1}, Lbql;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;)V

    .line 613
    invoke-static {}, Lcfl;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbql;->a(Ljava/lang/String;)Lbql;

    move-result-object v0

    .line 614
    invoke-static {}, Lcfl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbql;->b(Ljava/lang/String;)Lbql;

    move-result-object v0

    const/16 v1, 0x1e

    .line 615
    invoke-virtual {v0, v1}, Lbql;->a(I)Lbql;

    move-result-object v0

    const-string/jumbo v1, "Data sync happens in the background and is not triggered by a user action."

    .line 616
    invoke-virtual {v0, v1}, Lbql;->k(Ljava/lang/String;)Lcom/twitter/library/service/x;

    move-result-object v0

    .line 617
    invoke-virtual {v0}, Lcom/twitter/library/service/x;->P()Lcom/twitter/library/service/aa;

    .line 618
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/twitter/library/network/a;JII)V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 378
    .line 379
    invoke-static {p0, p2, p3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v1

    .line 381
    invoke-virtual {v1, p4, p5}, Lcom/twitter/library/provider/dm;->a(II)[J

    move-result-object v7

    .line 383
    if-nez v7, :cond_1

    .line 428
    :cond_0
    return-void

    .line 387
    :cond_1
    invoke-static {p0}, Lcom/twitter/library/network/at;->a(Landroid/content/Context;)Lcom/twitter/library/network/at;

    move-result-object v0

    .line 389
    iget-object v0, v0, Lcom/twitter/library/network/at;->a:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "1.1"

    aput-object v4, v3, v2

    const-string/jumbo v4, "users"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string/jumbo v5, "lookup"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/twitter/library/network/at;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".json"

    .line 390
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    new-instance v0, Lcom/twitter/library/network/av;

    invoke-direct {v0}, Lcom/twitter/library/network/av;-><init>()V

    .line 396
    const-string/jumbo v4, "user_id"

    array-length v5, v7

    invoke-virtual {v0, v4, v7, v2, v5}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;[JII)I

    .line 397
    const-string/jumbo v4, "include_user_entities"

    invoke-virtual {v0, v4, v6}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Z)V

    .line 398
    invoke-virtual {v0}, Lcom/twitter/library/network/av;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-static {}, Lbix;->a()Lbiu;

    move-result-object v0

    const-string/jumbo v4, "data_sync_adapter_url"

    invoke-virtual {v0, v4, v3}, Lbiu;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-class v0, Lcom/twitter/model/core/TwitterUser;

    .line 403
    invoke-static {v0}, Lcom/twitter/library/api/u;->a(Ljava/lang/Class;)Lcom/twitter/library/api/u;

    move-result-object v0

    .line 404
    new-instance v4, Lbiv;

    invoke-direct {v4, p2, p3}, Lbiv;-><init>(J)V

    .line 405
    invoke-virtual {v0, v4}, Lcom/twitter/library/api/t;->a(Lbiv;)V

    .line 406
    new-instance v5, Lcom/twitter/library/network/j;

    invoke-direct {v5, p0, v3}, Lcom/twitter/library/network/j;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 407
    invoke-virtual {v5, p2, p3}, Lcom/twitter/library/network/j;->a(J)Lcom/twitter/library/network/j;

    move-result-object v3

    .line 408
    invoke-virtual {v3, p1}, Lcom/twitter/library/network/j;->a(Lcom/twitter/library/network/a;)Lcom/twitter/library/network/j;

    move-result-object v3

    const-string/jumbo v5, "Data sync happens in the background and is not triggered by a user action."

    .line 409
    invoke-virtual {v3, v5}, Lcom/twitter/library/network/j;->a(Ljava/lang/String;)Lcom/twitter/library/network/j;

    move-result-object v3

    .line 410
    invoke-virtual {v3, v0}, Lcom/twitter/library/network/j;->a(Lcom/twitter/internal/network/i;)Lcom/twitter/library/network/j;

    move-result-object v3

    .line 411
    invoke-virtual {v3}, Lcom/twitter/library/network/j;->a()Lcom/twitter/internal/network/HttpOperation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/internal/network/HttpOperation;->c()Lcom/twitter/internal/network/HttpOperation;

    move-result-object v3

    .line 412
    invoke-static {v4}, Lbix;->a(Lbiv;)V

    .line 414
    invoke-virtual {v3}, Lcom/twitter/internal/network/HttpOperation;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 415
    invoke-virtual {v0}, Lcom/twitter/library/api/t;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 416
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 417
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 418
    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 420
    :cond_2
    array-length v9, v7

    move v0, v2

    :goto_1
    if-ge v0, v9, :cond_0

    aget-wide v4, v7, v0

    .line 421
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 422
    new-instance v6, Lcom/twitter/library/provider/b;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/twitter/library/provider/b;-><init>(Landroid/content/ContentResolver;)V

    move-wide v2, p2

    .line 423
    invoke-virtual/range {v1 .. v6}, Lcom/twitter/library/provider/dm;->c(JJLcom/twitter/library/provider/b;)V

    .line 424
    invoke-virtual {v6}, Lcom/twitter/library/provider/b;->a()V

    .line 420
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private a(Landroid/content/SyncResult;)V
    .locals 5

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/twitter/library/platform/a;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 308
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 309
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 310
    invoke-static {v0, v1}, Lblv;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;)Lblv;

    move-result-object v4

    invoke-virtual {v4}, Lblv;->P()Lcom/twitter/library/service/aa;

    .line 312
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v1

    .line 313
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lcom/twitter/model/account/UserSettings;->x:Z

    if-eqz v4, :cond_1

    .line 314
    invoke-static {v0, v2, v3}, Lcak;->a(Landroid/content/Context;J)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "people_discovery_live_sync_enabled"

    .line 315
    invoke-static {v4}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 316
    invoke-static {v0}, Lcom/twitter/library/util/m;->a(Landroid/content/Context;)Lcom/twitter/library/util/l;

    move-result-object v0

    .line 317
    invoke-interface {v0}, Lcom/twitter/library/util/l;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    invoke-interface {v0}, Lcom/twitter/library/util/l;->a()Landroid/database/Cursor;

    move-result-object v1

    .line 319
    if-eqz v1, :cond_0

    .line 321
    invoke-interface {v0, v1}, Lcom/twitter/library/util/l;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v2

    .line 322
    invoke-interface {v0, v2}, Lcom/twitter/library/util/l;->a(Ljava/util/Map;)Lcaj;

    move-result-object v2

    .line 323
    invoke-virtual {v2}, Lcaj;->b()Ljava/util/Map;

    move-result-object v3

    .line 324
    invoke-virtual {v2}, Lcaj;->a()Ljava/util/Set;

    move-result-object v2

    .line 325
    new-instance v4, Lcom/twitter/library/util/f;

    invoke-direct {v4, p1}, Lcom/twitter/library/util/f;-><init>(Landroid/content/SyncResult;)V

    .line 326
    invoke-interface {v0, v3, v4}, Lcom/twitter/library/util/l;->a(Ljava/util/Map;Lcom/twitter/library/util/p;)V

    .line 327
    invoke-interface {v0, v2, v4}, Lcom/twitter/library/util/l;->a(Ljava/util/Set;Lcom/twitter/library/util/p;)V

    .line 328
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/twitter/model/account/UserSettings;->x:Z

    if-nez v1, :cond_0

    .line 333
    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Lcak;->a(Landroid/content/Context;JI)V

    goto :goto_0
.end method

.method static a(ILcom/twitter/model/core/TwitterUser;ZZZ)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 349
    iget-boolean v2, p1, Lcom/twitter/model/core/TwitterUser;->n:Z

    if-nez v2, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    move v2, v1

    .line 350
    :goto_0
    packed-switch p0, :pswitch_data_0

    move v1, v0

    .line 371
    :cond_1
    :goto_1
    :pswitch_0
    return v1

    :cond_2
    move v2, v0

    .line 349
    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 356
    goto :goto_1

    .line 359
    :pswitch_2
    if-nez v2, :cond_3

    if-eqz p3, :cond_4

    if-nez p2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_1

    .line 362
    :pswitch_3
    iget-boolean v1, p1, Lcom/twitter/model/core/TwitterUser;->n:Z

    goto :goto_1

    .line 365
    :pswitch_4
    if-eqz p2, :cond_5

    if-eqz p3, :cond_1

    :cond_5
    move v1, v0

    goto :goto_1

    .line 368
    :pswitch_5
    if-eqz p3, :cond_6

    if-nez p2, :cond_1

    :cond_6
    move v1, v0

    goto :goto_1

    .line 350
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;Lcom/twitter/app/common/account/a;Lcom/twitter/model/account/OAuthToken;Lcom/twitter/model/core/TwitterUser;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 622
    iget-wide v2, p3, Lcom/twitter/model/core/TwitterUser;->c:J

    .line 623
    new-instance v1, Lcom/twitter/library/service/ab;

    invoke-virtual {p1}, Lcom/twitter/app/common/account/a;->d()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/service/ab;-><init>(JLjava/lang/String;Lcom/twitter/model/account/OAuthToken;Z)V

    .line 624
    invoke-static {p0, v1, v6}, Lbrg;->a(Landroid/content/Context;Lcom/twitter/library/service/ab;Z)Lbrb;

    move-result-object v0

    .line 625
    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {v0}, Lbrb;->P()Lcom/twitter/library/service/aa;

    .line 628
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/SyncResult;)V
    .locals 22

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 303
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-static {}, Lcom/twitter/app/common/account/d;->a()Lcom/twitter/app/common/account/d;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/twitter/app/common/account/d;->a(Landroid/accounts/Account;)Lcom/twitter/app/common/account/a;

    move-result-object v4

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/library/platform/a;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 140
    invoke-static {v4}, Lcom/twitter/library/util/b;->c(Lcom/twitter/app/common/account/a;)Lcom/twitter/model/core/TwitterUser;

    move-result-object v6

    .line 141
    if-nez v6, :cond_1

    .line 142
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 143
    const-string/jumbo v2, "TwitterDataSync"

    const-string/jumbo v3, "User Info content not found."

    invoke-static {v2, v3}, Lcjw;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-static {}, Lbix;->a()Lbiu;

    move-result-object v16

    .line 148
    invoke-virtual/range {v16 .. v16}, Lbiu;->a()I

    .line 151
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v4, v2}, Lcom/twitter/library/util/b;->a(Lcom/twitter/app/common/account/a;Z)Lcom/twitter/model/account/OAuthToken;

    move-result-object v5

    .line 152
    if-nez v5, :cond_2

    .line 153
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 154
    const-string/jumbo v2, "TwitterDataSync"

    const-string/jumbo v3, "Token not found."

    invoke-static {v2, v3}, Lcjw;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    invoke-virtual/range {v16 .. v16}, Lbiu;->b()I

    goto :goto_0

    .line 157
    :cond_2
    :try_start_1
    new-instance v17, Lcom/twitter/library/client/l;

    iget-wide v8, v6, Lcom/twitter/model/core/TwitterUser;->c:J

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v8, v9}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    .line 159
    const-string/jumbo v2, "data_sync_adapter_owner_id"

    iget-wide v8, v6, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v7}, Lbiu;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-static {v3}, Lcom/twitter/library/platform/notifications/PushRegistration;->c(Landroid/content/Context;)Z

    move-result v18

    .line 162
    new-instance v8, Lcom/twitter/library/platform/notifications/a;

    iget-object v2, v6, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    iget-wide v10, v6, Lcom/twitter/model/core/TwitterUser;->c:J

    move/from16 v0, v18

    invoke-direct {v8, v2, v10, v11, v0}, Lcom/twitter/library/platform/notifications/a;-><init>(Ljava/lang/String;JZ)V

    .line 165
    const-string/jumbo v2, "home"

    const/4 v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 166
    new-instance v2, Lcom/twitter/library/platform/d;

    invoke-virtual {v4}, Lcom/twitter/app/common/account/a;->d()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v3, v6, v7, v5}, Lcom/twitter/library/platform/d;-><init>(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;Ljava/lang/String;Lcom/twitter/model/account/OAuthToken;)V

    .line 167
    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v8}, Lcom/twitter/library/platform/d;->a(Landroid/content/SyncResult;Lcom/twitter/library/platform/notifications/a;)Z

    .line 171
    :cond_3
    const-string/jumbo v2, "messages"

    const/4 v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 172
    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/twitter/library/platform/a;->a(Landroid/content/Context;Landroid/content/SyncResult;)V

    .line 176
    :cond_4
    const-string/jumbo v2, "activity"

    const/4 v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 177
    const/4 v2, 0x0

    .line 178
    invoke-static {}, Lcal;->a()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 179
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v7

    invoke-virtual {v7}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v7

    .line 180
    invoke-virtual {v7}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v7

    .line 181
    if-eqz v7, :cond_5

    iget-object v7, v7, Lcom/twitter/model/account/UserSettings;->A:Ljava/lang/String;

    const-string/jumbo v9, "following"

    .line 182
    invoke-static {v7, v9}, Lcom/twitter/util/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 183
    const/4 v2, 0x1

    .line 187
    :cond_5
    if-nez v2, :cond_6

    const-string/jumbo v2, "notifications_follow_only"

    const/4 v7, 0x0

    .line 188
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v7}, Lcom/twitter/library/client/l;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_6
    const/4 v10, 0x1

    .line 189
    :goto_1
    const-string/jumbo v2, "connect_tab"

    const/4 v7, 0x0

    .line 190
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v7}, Lcom/twitter/library/client/l;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 191
    const/4 v2, 0x0

    const/4 v9, 0x1

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v11}, Lcom/twitter/library/platform/a;->a(ILandroid/content/Context;Lcom/twitter/app/common/account/a;Lcom/twitter/model/account/OAuthToken;Lcom/twitter/model/core/TwitterUser;Landroid/content/SyncResult;Lcom/twitter/library/platform/notifications/a;ZZZ)V

    .line 193
    const/4 v2, 0x2

    const/4 v9, 0x0

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v11}, Lcom/twitter/library/platform/a;->a(ILandroid/content/Context;Lcom/twitter/app/common/account/a;Lcom/twitter/model/account/OAuthToken;Lcom/twitter/model/core/TwitterUser;Landroid/content/SyncResult;Lcom/twitter/library/platform/notifications/a;ZZZ)V

    .line 196
    const/4 v2, 0x3

    iget-boolean v7, v6, Lcom/twitter/model/core/TwitterUser;->n:Z

    if-nez v7, :cond_10

    const/4 v9, 0x1

    :goto_2
    move-object/from16 v7, p3

    invoke-static/range {v2 .. v11}, Lcom/twitter/library/platform/a;->a(ILandroid/content/Context;Lcom/twitter/app/common/account/a;Lcom/twitter/model/account/OAuthToken;Lcom/twitter/model/core/TwitterUser;Landroid/content/SyncResult;Lcom/twitter/library/platform/notifications/a;ZZZ)V

    .line 199
    const/4 v2, 0x4

    const/4 v9, 0x0

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v11}, Lcom/twitter/library/platform/a;->a(ILandroid/content/Context;Lcom/twitter/app/common/account/a;Lcom/twitter/model/account/OAuthToken;Lcom/twitter/model/core/TwitterUser;Landroid/content/SyncResult;Lcom/twitter/library/platform/notifications/a;ZZZ)V

    .line 205
    iget-boolean v2, v6, Lcom/twitter/model/core/TwitterUser;->n:Z

    if-nez v2, :cond_7

    invoke-static {}, Lcal;->a()Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_7
    const/4 v2, 0x1

    move v12, v2

    .line 206
    :goto_3
    const/4 v2, 0x1

    if-nez v12, :cond_12

    const/4 v9, 0x1

    :goto_4
    move-object/from16 v7, p3

    invoke-static/range {v2 .. v11}, Lcom/twitter/library/platform/a;->a(ILandroid/content/Context;Lcom/twitter/app/common/account/a;Lcom/twitter/model/account/OAuthToken;Lcom/twitter/model/core/TwitterUser;Landroid/content/SyncResult;Lcom/twitter/library/platform/notifications/a;ZZZ)V

    .line 209
    const/4 v2, 0x5

    if-nez v12, :cond_13

    const/4 v9, 0x1

    :goto_5
    move-object/from16 v7, p3

    invoke-static/range {v2 .. v11}, Lcom/twitter/library/platform/a;->a(ILandroid/content/Context;Lcom/twitter/app/common/account/a;Lcom/twitter/model/account/OAuthToken;Lcom/twitter/model/core/TwitterUser;Landroid/content/SyncResult;Lcom/twitter/library/platform/notifications/a;ZZZ)V

    .line 212
    const/4 v2, 0x6

    if-nez v12, :cond_14

    const/4 v9, 0x1

    :goto_6
    move-object/from16 v7, p3

    invoke-static/range {v2 .. v11}, Lcom/twitter/library/platform/a;->a(ILandroid/content/Context;Lcom/twitter/app/common/account/a;Lcom/twitter/model/account/OAuthToken;Lcom/twitter/model/core/TwitterUser;Landroid/content/SyncResult;Lcom/twitter/library/platform/notifications/a;ZZZ)V

    .line 218
    :cond_8
    invoke-static {}, Lcgb;->a()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "live_addressbook_sync"

    const/4 v7, 0x1

    .line 219
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 220
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/twitter/library/platform/a;->a(Landroid/content/SyncResult;)V

    .line 224
    :cond_9
    iget-wide v10, v6, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-static {v10, v11}, Lcfl;->g(J)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, "news"

    const/4 v7, 0x1

    .line 225
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-wide v10, v6, Lcom/twitter/model/core/TwitterUser;->c:J

    const-string/jumbo v2, "japan_news_android_periodic_sync_enabled"

    const/4 v7, 0x0

    .line 226
    invoke-static {v10, v11, v2, v7}, Lcom/twitter/config/d;->a(JLjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 228
    const-string/jumbo v2, "news_last_sync"

    const-wide/16 v10, 0x0

    .line 229
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v10, v11}, Lcom/twitter/library/client/l;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 230
    iget-wide v12, v6, Lcom/twitter/model/core/TwitterUser;->c:J

    const-string/jumbo v2, "japan_news_android_periodic_sync_interval_seconds"

    const/4 v7, -0x1

    invoke-static {v12, v13, v2, v7}, Lcom/twitter/config/d;->a(JLjava/lang/String;I)I

    move-result v2

    .line 232
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v12

    .line 234
    if-lez v2, :cond_a

    int-to-long v14, v2

    const-wide/16 v20, 0x3e8

    mul-long v14, v14, v20

    add-long/2addr v10, v14

    cmp-long v2, v12, v10

    if-lez v2, :cond_a

    .line 236
    invoke-static {v3, v4, v5, v6}, Lcom/twitter/library/platform/a;->a(Landroid/content/Context;Lcom/twitter/app/common/account/a;Lcom/twitter/model/account/OAuthToken;Lcom/twitter/model/core/TwitterUser;)V

    .line 237
    invoke-virtual/range {v17 .. v17}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v2

    const-string/jumbo v7, "news_last_sync"

    invoke-virtual {v2, v7, v12, v13}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;J)Lcom/twitter/library/client/n;

    .line 243
    :cond_a
    invoke-virtual/range {p3 .. p3}, Landroid/content/SyncResult;->hasError()Z

    move-result v2

    if-nez v2, :cond_b

    .line 244
    new-instance v10, Lbqu;

    iget-wide v12, v6, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-object v14, v6, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    move-object v11, v3

    move-object v15, v5

    invoke-direct/range {v10 .. v15}, Lbqu;-><init>(Landroid/content/Context;JLjava/lang/String;Lcom/twitter/model/account/OAuthToken;)V

    const-string/jumbo v2, "Data sync happens in the background and is not triggered by a user action."

    .line 245
    invoke-virtual {v10, v2}, Lbqu;->k(Ljava/lang/String;)Lcom/twitter/library/service/x;

    move-result-object v2

    .line 246
    invoke-virtual {v2}, Lcom/twitter/library/service/x;->P()Lcom/twitter/library/service/aa;

    .line 253
    :cond_b
    const-string/jumbo v2, "fs_config"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 254
    iget-wide v10, v6, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-static {v10, v11}, Lcbo;->a(J)V

    .line 257
    :cond_c
    invoke-virtual {v8}, Lcom/twitter/library/platform/notifications/a;->a()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 258
    new-instance v7, Landroid/content/Intent;

    sget-object v2, Lcom/twitter/library/platform/TwitterDataSyncService;->a:Ljava/lang/String;

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 263
    iget-wide v10, v6, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-wide v12, v6, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-static {v10, v11, v12, v13, v3}, Lcom/twitter/library/platform/PushService;->a(JJLandroid/content/Context;)I

    move-result v2

    iput v2, v8, Lcom/twitter/library/platform/notifications/a;->e:I

    .line 265
    const-string/jumbo v9, "show_notif"

    if-nez v18, :cond_15

    const-string/jumbo v2, "show_notif"

    const/4 v10, 0x0

    .line 266
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    .line 265
    :goto_7
    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v9, "data"

    sget-object v10, Lcom/twitter/library/platform/notifications/a;->a:Lcom/twitter/util/serialization/ah;

    .line 269
    invoke-static {v8, v10}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v8

    .line 268
    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 270
    sget-object v2, Lcom/twitter/library/provider/cn;->a:Ljava/lang/String;

    invoke-virtual {v3, v7, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 274
    :cond_d
    const-string/jumbo v2, "legacy_deciders_antispam_query_frequency_sec"

    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v2

    .line 276
    const-string/jumbo v7, "antispam_last_poll_timestamp"

    const-wide/16 v8, 0x0

    .line 277
    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v8, v9}, Lcom/twitter/library/client/l;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 279
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v14

    .line 280
    int-to-long v10, v2

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    cmp-long v2, v14, v8

    if-lez v2, :cond_e

    .line 281
    const-string/jumbo v2, "legacy_deciders_antispam_connect_tweet_count"

    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v12

    .line 283
    const-string/jumbo v2, "legacy_deciders_antispam_connect_user_count"

    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v13

    .line 285
    new-instance v9, Lcom/twitter/library/network/aa;

    invoke-direct {v9, v5}, Lcom/twitter/library/network/aa;-><init>(Lcom/twitter/model/account/OAuthToken;)V

    iget-wide v10, v6, Lcom/twitter/model/core/TwitterUser;->c:J

    move-object v8, v3

    invoke-static/range {v8 .. v13}, Lcom/twitter/library/platform/a;->a(Landroid/content/Context;Lcom/twitter/library/network/a;JII)V

    .line 287
    invoke-virtual/range {v17 .. v17}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v2

    const-string/jumbo v7, "antispam_last_poll_timestamp"

    invoke-virtual {v2, v7, v14, v15}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;J)Lcom/twitter/library/client/n;

    .line 291
    :cond_e
    invoke-static {v3, v4, v5, v6}, Lcom/twitter/library/platform/a;->b(Landroid/content/Context;Lcom/twitter/app/common/account/a;Lcom/twitter/model/account/OAuthToken;Lcom/twitter/model/core/TwitterUser;)V

    .line 293
    invoke-virtual/range {v17 .. v17}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v2

    const-string/jumbo v3, "last_sync"

    invoke-virtual {v2, v3, v14, v15}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;J)Lcom/twitter/library/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/n;->apply()V
    :try_end_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    invoke-virtual/range {v16 .. v16}, Lbiu;->b()I

    goto/16 :goto_0

    .line 188
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 196
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 205
    :cond_11
    const/4 v2, 0x0

    move v12, v2

    goto/16 :goto_3

    .line 206
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 209
    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 212
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 266
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 294
    :catch_0
    move-exception v2

    .line 295
    :try_start_2
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 301
    invoke-virtual/range {v16 .. v16}, Lbiu;->b()I

    goto/16 :goto_0

    .line 296
    :catch_1
    move-exception v2

    .line 297
    :try_start_3
    const-string/jumbo v2, "TwitterDataSync"

    const-string/jumbo v3, "Sync canceled."

    invoke-static {v2, v3}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 301
    invoke-virtual/range {v16 .. v16}, Lbiu;->b()I

    goto/16 :goto_0

    .line 298
    :catch_2
    move-exception v2

    .line 299
    :try_start_4
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v2, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 301
    invoke-virtual/range {v16 .. v16}, Lbiu;->b()I

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual/range {v16 .. v16}, Lbiu;->b()I

    throw v2
.end method

.method a(Lcom/twitter/app/common/account/a;)Z
    .locals 12

    .prologue
    const-wide/32 v10, 0xea60

    const/4 v0, 0x0

    .line 678
    if-nez p1, :cond_1

    .line 693
    :cond_0
    :goto_0
    return v0

    .line 681
    :cond_1
    invoke-virtual {p1}, Lcom/twitter/app/common/account/a;->a()Landroid/accounts/Account;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    invoke-virtual {p1}, Lcom/twitter/app/common/account/a;->a()Landroid/accounts/Account;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 683
    invoke-virtual {p0}, Lcom/twitter/library/platform/a;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 684
    invoke-virtual {p1}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v2

    .line 685
    new-instance v4, Lcom/twitter/library/client/l;

    invoke-direct {v4, v1, v2, v3}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    .line 686
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v6

    const-string/jumbo v5, "last_sync"

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v5, v8, v9}, Lcom/twitter/library/client/l;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long v4, v6, v4

    .line 687
    invoke-static {v1}, Lcom/twitter/library/provider/ar;->a(Landroid/content/Context;)Lcom/twitter/library/provider/ar;

    move-result-object v6

    .line 688
    invoke-static {v1, v2, v3}, Lcom/twitter/library/platform/notifications/x;->a(Landroid/content/Context;J)Lcom/twitter/library/platform/notifications/x;

    move-result-object v1

    .line 690
    invoke-virtual {v1}, Lcom/twitter/library/platform/notifications/x;->a()Z

    move-result v1

    .line 689
    invoke-virtual {v6, v2, v3, v1}, Lcom/twitter/library/provider/ar;->a(JZ)I

    move-result v1

    int-to-long v2, v1

    mul-long/2addr v2, v10

    .line 691
    sub-long/2addr v2, v10

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 0

    .prologue
    .line 433
    invoke-virtual {p0, p1, p2, p5}, Lcom/twitter/library/platform/a;->a(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/SyncResult;)V

    .line 434
    return-void
.end method
