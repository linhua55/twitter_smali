.class public Lcet;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/library/provider/dm;

.field private final c:Lcff;

.field private final d:Lcez;

.field private final e:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/provider/dm;J)V
    .locals 9

    .prologue
    .line 98
    invoke-static {p2}, Lcez;->a(Lcom/twitter/library/provider/dm;)Lcez;

    move-result-object v6

    .line 99
    invoke-static {p2}, Lcff;->a(Lcom/twitter/library/provider/dm;)Lcff;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 98
    invoke-direct/range {v1 .. v7}, Lcet;-><init>(Landroid/content/Context;Lcom/twitter/library/provider/dm;JLcez;Lcff;)V

    .line 100
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/library/provider/dm;JLcez;Lcff;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcet;->a:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    .line 108
    iput-wide p3, p0, Lcet;->e:J

    .line 109
    iput-object p5, p0, Lcet;->d:Lcez;

    .line 110
    iput-object p6, p0, Lcet;->c:Lcff;

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/provider/dm;Lcom/twitter/app/common/account/UserIdentifier;)V
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p3}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcet;-><init>(Landroid/content/Context;Lcom/twitter/library/provider/dm;J)V

    .line 94
    return-void
.end method

.method private static a(Lcom/twitter/model/moments/ad;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 462
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 463
    const-string/jumbo v1, "_id"

    iget-wide v2, p0, Lcom/twitter/model/moments/ad;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 464
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/twitter/model/moments/ad;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string/jumbo v1, "can_subscribe"

    iget-boolean v2, p0, Lcom/twitter/model/moments/ad;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 466
    const-string/jumbo v1, "is_live"

    iget-boolean v2, p0, Lcom/twitter/model/moments/ad;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 467
    const-string/jumbo v1, "is_sensitive"

    iget-boolean v2, p0, Lcom/twitter/model/moments/ad;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 468
    const-string/jumbo v1, "subcategory_string"

    iget-object v2, p0, Lcom/twitter/model/moments/ad;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string/jumbo v1, "subcategory_favicon_url"

    iget-object v2, p0, Lcom/twitter/model/moments/ad;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string/jumbo v1, "time_string"

    iget-object v2, p0, Lcom/twitter/model/moments/ad;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string/jumbo v1, "duration_string"

    iget-object v2, p0, Lcom/twitter/model/moments/ad;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string/jumbo v1, "is_subscribed"

    iget-boolean v2, p0, Lcom/twitter/model/moments/ad;->k:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 473
    const-string/jumbo v1, "description"

    iget-object v2, p0, Lcom/twitter/model/moments/ad;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string/jumbo v1, "moment_url"

    iget-object v2, p0, Lcom/twitter/model/moments/ad;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string/jumbo v1, "num_subscribers"

    iget v2, p0, Lcom/twitter/model/moments/ad;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 476
    const-string/jumbo v1, "capsule_content_version"

    iget-wide v2, p0, Lcom/twitter/model/moments/ad;->r:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 477
    iget-object v1, p0, Lcom/twitter/model/moments/ad;->o:Lcom/twitter/model/moments/a;

    if-eqz v1, :cond_0

    .line 478
    const-string/jumbo v1, "author_info"

    iget-object v2, p0, Lcom/twitter/model/moments/ad;->o:Lcom/twitter/model/moments/a;

    sget-object v3, Lcom/twitter/model/moments/a;->a:Lcom/twitter/util/serialization/ah;

    .line 479
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v2

    .line 478
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 481
    :cond_0
    iget-object v1, p0, Lcom/twitter/model/moments/ad;->p:Lcss;

    if-eqz v1, :cond_1

    .line 482
    const-string/jumbo v1, "promoted_content"

    iget-object v2, p0, Lcom/twitter/model/moments/ad;->p:Lcss;

    invoke-virtual {v2}, Lcss;->e()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 484
    :cond_1
    iget-object v1, p0, Lcom/twitter/model/moments/ad;->q:Lcom/twitter/model/moments/o;

    if-eqz v1, :cond_2

    .line 485
    const-string/jumbo v1, "event_id"

    iget-object v2, p0, Lcom/twitter/model/moments/ad;->q:Lcom/twitter/model/moments/o;

    iget-object v2, v2, Lcom/twitter/model/moments/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string/jumbo v1, "event_type"

    iget-object v2, p0, Lcom/twitter/model/moments/ad;->q:Lcom/twitter/model/moments/o;

    iget-object v2, v2, Lcom/twitter/model/moments/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :cond_2
    return-object v0
.end method

.method private a(Lcom/twitter/model/moments/ad;Lcqg;Ljava/util/Map;)Landroid/content/ContentValues;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/ad;",
            "Lcqg;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcev;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 494
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 495
    const-string/jumbo v0, "moment_id"

    iget-wide v2, p1, Lcom/twitter/model/moments/ad;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 496
    const-string/jumbo v0, "tweet_id"

    iget-object v2, p2, Lcqg;->b:Lcqt;

    iget-wide v2, v2, Lcqt;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 497
    const-string/jumbo v0, "page_id"

    iget-object v2, p2, Lcqg;->d:Lcom/twitter/model/moments/ak;

    invoke-virtual {v2}, Lcom/twitter/model/moments/ak;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string/jumbo v0, "content_version"

    iget-wide v2, p1, Lcom/twitter/model/moments/ad;->r:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 499
    iget-object v0, p2, Lcqg;->d:Lcom/twitter/model/moments/ak;

    invoke-virtual {v0}, Lcom/twitter/model/moments/ak;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcev;

    .line 500
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcev;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 501
    const-string/jumbo v2, "last_read_timestamp"

    iget-wide v4, v0, Lcev;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 503
    :cond_0
    const-string/jumbo v0, "capsule_page_data"

    sget-object v2, Lcqg;->a:Lcom/twitter/util/serialization/ah;

    .line 504
    invoke-static {p2, v2}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v2

    .line 503
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 505
    return-object v1
.end method

.method private a(Lcqq;JJ)Landroid/content/ContentValues;
    .locals 6

    .prologue
    .line 539
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 540
    const-string/jumbo v1, "section_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 541
    const-string/jumbo v1, "moment_id"

    iget-object v2, p1, Lcqq;->a:Lcom/twitter/model/moments/ad;

    iget-wide v2, v2, Lcom/twitter/model/moments/ad;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 542
    const-string/jumbo v1, "impression_id"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 545
    iget-object v1, p1, Lcqq;->d:Lcqt;

    .line 546
    if-eqz v1, :cond_1

    .line 547
    iget-object v2, v1, Lcqt;->g:Lcqn;

    .line 548
    if-eqz v2, :cond_0

    .line 549
    const-string/jumbo v3, "media_id"

    iget-wide v4, v2, Lcqn;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 550
    const-string/jumbo v3, "media_url"

    iget-object v4, v2, Lcqn;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string/jumbo v3, "media_size"

    iget-object v2, v2, Lcqn;->c:Lcom/twitter/util/math/Size;

    sget-object v4, Lcom/twitter/util/math/Size;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v2, v4}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 553
    :cond_0
    const-string/jumbo v2, "crop_data"

    iget-object v3, v1, Lcqt;->e:Lcom/twitter/model/moments/k;

    sget-object v4, Lcom/twitter/model/moments/k;->a:Lcom/twitter/util/serialization/ah;

    .line 554
    invoke-static {v3, v4}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v3

    .line 553
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 555
    const-string/jumbo v2, "tweet_id"

    iget-wide v4, v1, Lcqt;->j:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 556
    const-string/jumbo v1, "display_type"

    iget-object v2, p1, Lcqq;->e:Lcom/twitter/model/moments/DisplayStyle;

    const-class v3, Lcom/twitter/model/moments/DisplayStyle;

    .line 558
    invoke-static {v3}, Lcom/twitter/util/serialization/i;->a(Ljava/lang/Class;)Lcom/twitter/util/serialization/ah;

    move-result-object v3

    .line 557
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v2

    .line 556
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 560
    :cond_1
    const-string/jumbo v1, "context_string"

    iget-object v2, p1, Lcqq;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string/jumbo v1, "context_scribe_info"

    iget-object v2, p1, Lcqq;->h:Lcom/twitter/model/moments/ap;

    sget-object v3, Lcom/twitter/model/moments/ap;->a:Lcom/twitter/util/serialization/ah;

    .line 562
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v2

    .line 561
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 563
    iget-object v1, p1, Lcqq;->i:Lcqc;

    if-eqz v1, :cond_2

    .line 564
    const-string/jumbo v1, "cta"

    iget-object v2, p1, Lcqq;->i:Lcqc;

    sget-object v3, Lcqc;->a:Lcom/twitter/util/serialization/ah;

    .line 565
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v2

    .line 564
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 567
    :cond_2
    return-object v0
.end method

.method public static a(Landroid/database/Cursor;)Lcrc;
    .locals 2

    .prologue
    .line 147
    const-string/jumbo v0, "moments_event_type"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string/jumbo v1, "SPORTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-string/jumbo v0, "moment_sports_events_value"

    .line 150
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v1, Lcrc;->a:Lcom/twitter/util/serialization/ah;

    .line 149
    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrc;

    .line 153
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/util/List;ILjava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcqk;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcqk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 638
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 639
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqk;

    .line 640
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 641
    const-string/jumbo v4, "section_title"

    iget-object v5, v0, Lcqk;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string/jumbo v4, "section_type"

    iget-object v5, v0, Lcqk;->b:Lcom/twitter/model/moments/MomentGuideSectionType;

    const-class v6, Lcom/twitter/model/moments/MomentGuideSectionType;

    .line 644
    invoke-static {v6}, Lcom/twitter/util/serialization/i;->a(Ljava/lang/Class;)Lcom/twitter/util/serialization/ah;

    move-result-object v6

    .line 643
    invoke-static {v5, v6}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v5

    .line 642
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 645
    const-string/jumbo v4, "section_group_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 646
    const-string/jumbo v4, "section_group_id"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string/jumbo v4, "section_category_id"

    iget-object v5, v0, Lcqk;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string/jumbo v4, "section_footer"

    iget-object v5, v0, Lcqk;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string/jumbo v4, "section_footer_deeplink"

    iget-object v0, v0, Lcqk;->f:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-virtual {v1, v3}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 652
    :cond_0
    iget-object v2, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    const-string/jumbo v3, "moments_sections"

    .line 654
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 653
    invoke-virtual {v2, v3, v0}, Lcom/twitter/library/provider/dm;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 656
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 657
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 658
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 660
    :cond_1
    return-object v2
.end method

.method private a(JLcew;)V
    .locals 5

    .prologue
    .line 627
    iget-object v0, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    const-string/jumbo v1, "moments_guide_user_states"

    const-string/jumbo v2, "moment_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/provider/dm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I

    .line 628
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 629
    const-string/jumbo v1, "moment_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 630
    const-string/jumbo v1, "is_updated"

    iget-boolean v2, p3, Lcew;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 631
    const-string/jumbo v1, "is_read"

    iget-boolean v2, p3, Lcew;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 632
    iget-object v1, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    const-string/jumbo v2, "moments_guide_user_states"

    invoke-static {v0}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/twitter/library/provider/dm;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    .line 633
    return-void
.end method

.method private a(JLcqk;Ljava/util/Map;J)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcqk;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lceu;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 604
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 605
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v9

    .line 606
    move-object/from16 v0, p3

    iget-object v2, v0, Lcqk;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcqq;

    .line 607
    iget-object v11, v3, Lcqq;->a:Lcom/twitter/model/moments/ad;

    .line 608
    iget-wide v4, v11, Lcom/twitter/model/moments/ad;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 609
    iget-object v2, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    const-string/jumbo v4, "moments"

    const-string/jumbo v5, "_id"

    iget-wide v6, v11, Lcom/twitter/model/moments/ad;->b:J

    .line 610
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 609
    invoke-virtual {v2, v4, v5, v6}, Lcom/twitter/library/provider/dm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I

    .line 611
    invoke-static {v11}, Lcet;->a(Lcom/twitter/model/moments/ad;)Landroid/content/ContentValues;

    move-result-object v2

    .line 612
    iget-wide v4, v11, Lcom/twitter/model/moments/ad;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v8, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    :cond_0
    iget-wide v4, v11, Lcom/twitter/model/moments/ad;->b:J

    invoke-direct {p0, v4, v5}, Lcet;->d(J)Ljava/util/Map;

    move-result-object v12

    .line 615
    iget-wide v4, v11, Lcom/twitter/model/moments/ad;->b:J

    .line 616
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lceu;

    .line 615
    invoke-virtual {p0, v3, v12, v2}, Lcet;->a(Lcqq;Ljava/util/Map;Lceu;)Lcew;

    move-result-object v13

    move-object v2, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p5

    .line 617
    invoke-direct/range {v2 .. v7}, Lcet;->a(Lcqq;JJ)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 618
    invoke-direct {p0, v3, v12}, Lcet;->b(Lcqq;Ljava/util/Map;)V

    .line 619
    iget-wide v4, v11, Lcom/twitter/model/moments/ad;->b:J

    invoke-direct {p0, v4, v5, v13}, Lcet;->a(JLcew;)V

    .line 620
    iget-wide v4, v11, Lcom/twitter/model/moments/ad;->b:J

    iget-object v2, v3, Lcqq;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p0, v4, v5, v2}, Lcet;->a(JLjava/util/Collection;)V

    goto :goto_0

    .line 622
    :cond_1
    iget-object v2, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    const-string/jumbo v3, "moments"

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/twitter/library/provider/dm;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    .line 623
    iget-object v3, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    const-string/jumbo v4, "moments_guide"

    invoke-virtual {v9}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v3, v4, v2}, Lcom/twitter/library/provider/dm;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    .line 624
    return-void
.end method

.method private a(Lcqj;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 10

    .prologue
    .line 275
    iget-object v0, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    invoke-virtual {v0}, Lcom/twitter/library/provider/dm;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 276
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 278
    :try_start_0
    iget-object v0, p1, Lcqj;->a:Lcom/twitter/model/moments/s;

    invoke-virtual {v0}, Lcom/twitter/model/moments/s;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p1, Lcqj;->a:Lcom/twitter/model/moments/s;

    invoke-virtual {p0, v0}, Lcet;->a(Lcom/twitter/model/moments/s;)V

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcet;->b()Ljava/util/Map;

    move-result-object v5

    .line 282
    iget-object v0, p1, Lcqj;->c:Ljava/util/List;

    .line 283
    invoke-direct {p0, v0, p2, p3}, Lcet;->a(Ljava/util/List;ILjava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 285
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 286
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcqk;

    .line 287
    iget-wide v6, p1, Lcqj;->f:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcet;->a(JLcqk;Ljava/util/Map;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 291
    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 289
    :cond_1
    :try_start_1
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 293
    iget-object v0, p1, Lcqj;->d:Lcro;

    invoke-virtual {p0, v0}, Lcet;->a(Lcro;)V

    .line 294
    new-instance v0, Lcom/twitter/library/provider/b;

    iget-object v1, p0, Lcet;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/library/provider/b;-><init>(Landroid/content/ContentResolver;)V

    .line 295
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/b;->a([Landroid/net/Uri;)V

    .line 296
    invoke-virtual {v0}, Lcom/twitter/library/provider/b;->a()V

    .line 297
    return-void
.end method

.method private a(Lcqq;Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcqq;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcev;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    invoke-virtual {v0}, Lcom/twitter/library/provider/dm;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 373
    iget-object v12, p1, Lcqq;->a:Lcom/twitter/model/moments/ad;

    .line 374
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 376
    :try_start_0
    iget-object v0, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    const-string/jumbo v1, "moments"

    const-string/jumbo v2, "_id"

    iget-wide v4, v12, Lcom/twitter/model/moments/ad;->b:J

    .line 377
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 376
    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/provider/dm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I

    .line 378
    iget-object v1, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    const-string/jumbo v2, "moments"

    .line 379
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v0

    invoke-static {v12}, Lcet;->a(Lcom/twitter/model/moments/ad;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 378
    invoke-virtual {v1, v2, v0}, Lcom/twitter/library/provider/dm;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    .line 380
    invoke-direct {p0, p1, p2}, Lcet;->b(Lcqq;Ljava/util/Map;)V

    .line 381
    iget-object v0, p1, Lcqq;->a:Lcom/twitter/model/moments/ad;

    iget-wide v0, v0, Lcom/twitter/model/moments/ad;->b:J

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lcqq;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, v1, v2}, Lcet;->a(JLjava/util/Collection;)V

    .line 382
    iget-object v0, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    iget-object v1, p1, Lcqq;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-wide v2, p0, Lcet;->e:J

    const/4 v4, -0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/twitter/library/provider/dm;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;ZLcom/twitter/library/provider/b;)I

    .line 384
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 388
    new-instance v0, Lcom/twitter/library/provider/b;

    iget-object v1, p0, Lcet;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/library/provider/b;-><init>(Landroid/content/ContentResolver;)V

    .line 389
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    iget-wide v4, v12, Lcom/twitter/model/moments/ad;->b:J

    invoke-static {v4, v5}, Lcom/twitter/library/provider/by;->a(J)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/b;->a([Landroid/net/Uri;)V

    .line 390
    invoke-virtual {v0}, Lcom/twitter/library/provider/b;->a()V

    .line 391
    return-void

    .line 386
    :catchall_0
    move-exception v0

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static b(Landroid/database/Cursor;)Lcom/twitter/model/moments/ad;
    .locals 21

    .prologue
    .line 166
    const-string/jumbo v2, "moments_guide_moment_id"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 168
    const-string/jumbo v2, "moments_title"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 169
    const-string/jumbo v2, "moments_can_subscribe"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v5, v2

    .line 171
    :goto_0
    const-string/jumbo v2, "moments_is_live"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    move v6, v2

    .line 173
    :goto_1
    const-string/jumbo v2, "moments_is_sensitive"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    move v7, v2

    .line 175
    :goto_2
    const-string/jumbo v2, "moments_subcategory_string"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 177
    const-string/jumbo v2, "moments_subcategory_favicon_url"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 179
    const-string/jumbo v2, "moments_time_string"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 181
    const-string/jumbo v2, "moments_duration_string"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 183
    const-string/jumbo v2, "moments_is_subscribed"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    move v8, v2

    .line 185
    :goto_3
    const-string/jumbo v2, "moments_description"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 187
    const-string/jumbo v2, "moments_moment_url"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 188
    const-string/jumbo v2, "moments_num_subscribers"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 190
    const-string/jumbo v2, "moments_author_info"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    sget-object v3, Lcom/twitter/model/moments/a;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v2, v3}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/a;

    .line 192
    const-string/jumbo v3, "moments_promoted_content"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    sget-object v4, Lcss;->a:Lcom/twitter/util/serialization/d;

    invoke-static {v3, v4}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcss;

    .line 194
    const-string/jumbo v4, "moments_event_id"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 195
    const-string/jumbo v19, "moments_event_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 196
    new-instance v20, Lcom/twitter/model/moments/q;

    invoke-direct/range {v20 .. v20}, Lcom/twitter/model/moments/q;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/twitter/model/moments/q;->a(Ljava/lang/String;)Lcom/twitter/model/moments/q;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/twitter/model/moments/q;->b(Ljava/lang/String;)Lcom/twitter/model/moments/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/model/moments/q;->r()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/model/moments/o;

    .line 198
    new-instance v19, Lcom/twitter/model/moments/af;

    invoke-direct/range {v19 .. v19}, Lcom/twitter/model/moments/af;-><init>()V

    .line 199
    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Lcom/twitter/model/moments/af;->a(J)Lcom/twitter/model/moments/af;

    move-result-object v10

    .line 200
    invoke-virtual {v10, v9}, Lcom/twitter/model/moments/af;->a(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v9

    .line 201
    invoke-virtual {v9, v5}, Lcom/twitter/model/moments/af;->a(Z)Lcom/twitter/model/moments/af;

    move-result-object v5

    .line 202
    invoke-virtual {v5, v6}, Lcom/twitter/model/moments/af;->b(Z)Lcom/twitter/model/moments/af;

    move-result-object v5

    .line 203
    invoke-virtual {v5, v7}, Lcom/twitter/model/moments/af;->c(Z)Lcom/twitter/model/moments/af;

    move-result-object v5

    .line 204
    invoke-virtual {v5, v12}, Lcom/twitter/model/moments/af;->b(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v5

    .line 205
    invoke-virtual {v5, v13}, Lcom/twitter/model/moments/af;->c(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v5

    .line 206
    invoke-virtual {v5, v14}, Lcom/twitter/model/moments/af;->d(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v5

    .line 207
    invoke-virtual {v5, v15}, Lcom/twitter/model/moments/af;->e(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v5

    .line 208
    invoke-virtual {v5, v8}, Lcom/twitter/model/moments/af;->d(Z)Lcom/twitter/model/moments/af;

    move-result-object v5

    .line 209
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/twitter/model/moments/af;->f(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v5

    .line 210
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/twitter/model/moments/af;->g(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v5

    .line 211
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/twitter/model/moments/af;->a(I)Lcom/twitter/model/moments/af;

    move-result-object v5

    .line 212
    invoke-virtual {v5, v2}, Lcom/twitter/model/moments/af;->a(Lcom/twitter/model/moments/a;)Lcom/twitter/model/moments/af;

    move-result-object v2

    .line 213
    invoke-virtual {v2, v3}, Lcom/twitter/model/moments/af;->a(Lcss;)Lcom/twitter/model/moments/af;

    move-result-object v2

    .line 214
    invoke-virtual {v2, v4}, Lcom/twitter/model/moments/af;->a(Lcom/twitter/model/moments/o;)Lcom/twitter/model/moments/af;

    move-result-object v2

    .line 215
    invoke-virtual {v2}, Lcom/twitter/model/moments/af;->q()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/ad;

    .line 198
    return-object v2

    .line 169
    :cond_0
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_0

    .line 171
    :cond_1
    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_1

    .line 173
    :cond_2
    const/4 v2, 0x0

    move v7, v2

    goto/16 :goto_2

    .line 183
    :cond_3
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_3
.end method

.method private b(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 268
    const-string/jumbo v0, "section_group_type=? AND section_group_id=?"

    .line 269
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 270
    iget-object v1, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    invoke-virtual {v1}, Lcom/twitter/library/provider/dm;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "moments_sections"

    const-string/jumbo v3, "section_group_type=? AND section_group_id=?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 271
    return-void
.end method

.method private b(Lcqq;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcqq;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcev;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 586
    iget-object v0, p1, Lcqq;->a:Lcom/twitter/model/moments/ad;

    iget-wide v0, v0, Lcom/twitter/model/moments/ad;->b:J

    .line 587
    iget-object v2, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    const-string/jumbo v3, "moments_pages"

    const-string/jumbo v4, "moment_id"

    .line 588
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 587
    invoke-virtual {v2, v3, v4, v0}, Lcom/twitter/library/provider/dm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I

    .line 589
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v2

    .line 590
    const/4 v0, 0x0

    .line 592
    iget-object v1, p1, Lcqq;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqg;

    .line 593
    iget-object v4, p1, Lcqq;->a:Lcom/twitter/model/moments/ad;

    invoke-direct {p0, v4, v0, p2}, Lcet;->a(Lcom/twitter/model/moments/ad;Lcqg;Ljava/util/Map;)Landroid/content/ContentValues;

    move-result-object v0

    .line 594
    const-string/jumbo v4, "page_number"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 595
    invoke-virtual {v2, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 596
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 597
    goto :goto_0

    .line 599
    :cond_0
    iget-object v1, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    const-string/jumbo v3, "moments_pages"

    invoke-virtual {v2}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v3, v0}, Lcom/twitter/library/provider/dm;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    .line 600
    return-void
.end method

.method private b(JLjava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection",
            "<",
            "Lcev;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 577
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcev;

    .line 578
    iget-wide v2, v0, Lcev;->a:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    iget-wide v2, v0, Lcev;->c:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 579
    const/4 v0, 0x1

    .line 582
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(J)Landroid/net/Uri;
    .locals 5

    .prologue
    .line 220
    sget-object v0, Lcom/twitter/library/provider/dh;->p:Landroid/net/Uri;

    .line 222
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 223
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-wide v2, p0, Lcet;->e:J

    .line 220
    invoke-static {v0, v2, v3}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private d(J)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcev;",
            ">;"
        }
    .end annotation

    .prologue
    .line 440
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v8

    .line 441
    iget-object v0, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    .line 442
    invoke-virtual {v0}, Lcom/twitter/library/provider/dm;->d()Lcom/twitter/database/schema/TwitterSchema;

    move-result-object v0

    const-class v1, Lbfs;

    invoke-interface {v0, v1}, Lcom/twitter/database/schema/TwitterSchema;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    check-cast v0, Lbfs;

    invoke-interface {v0}, Lbfs;->f()Lcom/twitter/database/model/q;

    move-result-object v0

    .line 443
    const-string/jumbo v1, "moment_id"

    .line 444
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lbar;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/twitter/database/model/q;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/twitter/database/model/j;

    move-result-object v9

    .line 446
    :try_start_0
    invoke-virtual {v9}, Lcom/twitter/database/model/j;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    :cond_0
    iget-object v0, v9, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbft;

    invoke-interface {v0}, Lbft;->b()Ljava/lang/String;

    move-result-object v3

    .line 449
    iget-object v0, v9, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbft;

    invoke-interface {v0}, Lbft;->c()Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 450
    iget-object v0, v9, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbft;

    invoke-interface {v0}, Lbft;->d()J

    move-result-wide v6

    .line 451
    new-instance v0, Lcev;

    move-wide v1, p1

    invoke-direct/range {v0 .. v7}, Lcev;-><init>(JLjava/lang/String;JJ)V

    invoke-virtual {v8, v3, v0}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    .line 452
    invoke-virtual {v9}, Lcom/twitter/database/model/j;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 455
    :cond_1
    invoke-virtual {v9}, Lcom/twitter/database/model/j;->close()V

    .line 457
    invoke-virtual {v8}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 455
    :catchall_0
    move-exception v0

    invoke-virtual {v9}, Lcom/twitter/database/model/j;->close()V

    throw v0
.end method


# virtual methods
.method a(Lcqq;Ljava/util/Map;Lceu;)Lcew;
    .locals 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcqq;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcev;",
            ">;",
            "Lceu;",
            ")",
            "Lcew;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 518
    .line 520
    iget-object v0, p1, Lcqq;->a:Lcom/twitter/model/moments/ad;

    iget-wide v4, v0, Lcom/twitter/model/moments/ad;->b:J

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v4, v5, v0}, Lcet;->b(JLjava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 522
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 524
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcev;

    .line 525
    iget-object v3, p1, Lcqq;->a:Lcom/twitter/model/moments/ad;

    iget-wide v4, v3, Lcom/twitter/model/moments/ad;->r:J

    iget-wide v6, v0, Lcev;->d:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    move v3, v1

    move v4, v1

    .line 532
    :goto_0
    if-eqz p3, :cond_0

    iget-boolean v0, p3, Lceu;->b:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    or-int/2addr v0, v4

    .line 533
    new-instance v1, Lcew;

    invoke-direct {v1, v3, v0}, Lcew;-><init>(ZZ)V

    return-object v1

    :cond_0
    move v0, v2

    .line 532
    goto :goto_1

    :cond_1
    move v3, v1

    move v4, v2

    goto :goto_0

    :cond_2
    move v3, v2

    move v4, v2

    goto :goto_0
.end method

.method public a()Lcom/twitter/android/bt;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 141
    sget-object v0, Lcom/twitter/library/provider/bw;->a:Landroid/net/Uri;

    iget-wide v2, p0, Lcet;->e:J

    invoke-static {v0, v2, v3}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 142
    new-instance v0, Lcom/twitter/android/bt;

    iget-object v1, p0, Lcet;->a:Landroid/content/Context;

    sget-object v3, Lcom/twitter/library/provider/bw;->b:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(ILjava/lang/String;)Lcom/twitter/android/bt;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 159
    invoke-static {p1, p2}, Lcom/twitter/library/provider/bx;->a(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-wide v2, p0, Lcet;->e:J

    invoke-static {v0, v2, v3}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 160
    new-instance v0, Lcom/twitter/android/bt;

    iget-object v1, p0, Lcet;->a:Landroid/content/Context;

    sget-object v3, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    const-string/jumbo v6, "moments_guide_section_id ASC, _id"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(J)Lcom/twitter/android/bt;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 135
    invoke-direct {p0, p1, p2}, Lcet;->c(J)Landroid/net/Uri;

    move-result-object v2

    .line 136
    new-instance v0, Lcom/twitter/android/bt;

    iget-object v1, p0, Lcet;->a:Landroid/content/Context;

    sget-object v3, Lcho;->a:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(JLcom/twitter/model/moments/ak;J)V
    .locals 3

    .prologue
    .line 394
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 395
    const-string/jumbo v1, "last_read_timestamp"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 396
    iget-object v1, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    invoke-virtual {p3}, Lcom/twitter/model/moments/ak;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p1, p2, v2}, Lcom/twitter/library/provider/dm;->a(Landroid/content/ContentValues;JLjava/lang/String;)V

    .line 397
    return-void
.end method

.method public a(JLcra;)V
    .locals 11

    .prologue
    const/4 v9, 0x1

    .line 336
    new-instance v0, Lcqm;

    invoke-direct {v0}, Lcqm;-><init>()V

    sget-object v1, Lcom/twitter/model/moments/MomentGuideSectionType;->c:Lcom/twitter/model/moments/MomentGuideSectionType;

    .line 337
    invoke-virtual {v0, v1}, Lcqm;->a(Lcom/twitter/model/moments/MomentGuideSectionType;)Lcqm;

    move-result-object v0

    iget-object v1, p3, Lcra;->a:Ljava/util/List;

    .line 338
    invoke-virtual {v0, v1}, Lcqm;->a(Ljava/lang/Iterable;)Lcqm;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lcqm;->q()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcqk;

    .line 340
    iget-object v0, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    invoke-virtual {v0}, Lcom/twitter/library/provider/dm;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 341
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 343
    :try_start_0
    invoke-virtual {p0}, Lcet;->b()Ljava/util/Map;

    move-result-object v5

    .line 344
    iget-object v0, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    const-string/jumbo v1, "moments_sections"

    const-string/jumbo v2, "section_group_id"

    .line 345
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 344
    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/provider/dm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I

    .line 346
    iget-object v0, p0, Lcet;->d:Lcez;

    iget-wide v2, p3, Lcra;->b:J

    invoke-virtual {v0, p1, p2, v2, v3}, Lcez;->a(JJ)V

    .line 347
    invoke-static {v4}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    .line 348
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-direct {p0, v0, v1, v2}, Lcet;->a(Ljava/util/List;ILjava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 347
    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    if-nez v0, :cond_0

    .line 355
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 360
    :goto_0
    return-void

    .line 352
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v6, p3, Lcra;->b:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcet;->a(JLcqk;Ljava/util/Map;J)V

    .line 353
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 357
    new-instance v0, Lcom/twitter/library/provider/b;

    iget-object v1, p0, Lcet;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/library/provider/b;-><init>(Landroid/content/ContentResolver;)V

    .line 358
    new-array v1, v9, [Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Lcom/twitter/library/provider/bx;->a(J)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/b;->a([Landroid/net/Uri;)V

    .line 359
    invoke-virtual {v0}, Lcom/twitter/library/provider/b;->a()V

    goto :goto_0

    .line 355
    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public a(JLjava/util/Collection;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection",
            "<",
            "Lcom/twitter/model/core/cs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v13, Lcom/twitter/library/provider/b;

    iget-object v1, p0, Lcet;->a:Landroid/content/Context;

    .line 119
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v13, v1}, Lcom/twitter/library/provider/b;-><init>(Landroid/content/ContentResolver;)V

    .line 124
    iget-object v1, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-wide v3, p0, Lcet;->e:J

    const/16 v5, 0x21

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-wide/from16 v6, p1

    invoke-virtual/range {v1 .. v14}, Lcom/twitter/library/provider/dm;->a(Ljava/util/Collection;JIJZZZLjava/lang/String;ZLcom/twitter/library/provider/b;Z)Ljava/util/Collection;

    move-result-object v1

    .line 126
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 127
    if-lez v1, :cond_0

    .line 128
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p2}, Lcom/twitter/library/provider/by;->a(J)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v13, v1}, Lcom/twitter/library/provider/b;->a([Landroid/net/Uri;)V

    .line 129
    invoke-virtual {v13}, Lcom/twitter/library/provider/b;->a()V

    .line 131
    :cond_0
    return-void
.end method

.method public a(JZ)V
    .locals 3

    .prologue
    .line 400
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 401
    const-string/jumbo v1, "is_updated"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 402
    iget-object v1, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    invoke-virtual {v1, v0, p1, p2}, Lcom/twitter/library/provider/dm;->a(Landroid/content/ContentValues;J)V

    .line 403
    return-void
.end method

.method public a(Lcom/twitter/model/moments/s;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 300
    iget-object v0, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    invoke-virtual {v0}, Lcom/twitter/library/provider/dm;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 301
    invoke-static {}, Lcom/twitter/platform/PlatformContext;->e()Lcom/twitter/platform/PlatformContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/platform/PlatformContext;->a()Lcom/twitter/platform/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/platform/u;->a()J

    move-result-wide v2

    .line 302
    iget-object v0, p1, Lcom/twitter/model/moments/s;->c:Ljava/util/List;

    .line 303
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 305
    :try_start_0
    iget-object v4, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "moments_guide_categories"

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/twitter/library/provider/dm;->a([Ljava/lang/String;)V

    .line 306
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v4

    .line 307
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/t;

    .line 308
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 309
    const-string/jumbo v7, "category_id"

    iget-object v8, v0, Lcom/twitter/model/moments/t;->a:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string/jumbo v7, "is_default_category"

    iget-object v8, v0, Lcom/twitter/model/moments/t;->a:Ljava/lang/String;

    iget-object v9, p1, Lcom/twitter/model/moments/s;->b:Ljava/lang/String;

    .line 311
    invoke-static {v8, v9}, Lcom/twitter/util/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 310
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 312
    const-string/jumbo v7, "category_name"

    iget-object v0, v0, Lcom/twitter/model/moments/t;->b:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string/jumbo v0, "fetch_timestamp"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 314
    invoke-virtual {v4, v6}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 316
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    const-string/jumbo v3, "moments_guide_categories"

    .line 317
    invoke-virtual {v4}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 316
    invoke-virtual {v2, v3, v0}, Lcom/twitter/library/provider/dm;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    .line 318
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 323
    new-instance v0, Lcom/twitter/library/provider/b;

    iget-object v1, p0, Lcet;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/library/provider/b;-><init>(Landroid/content/ContentResolver;)V

    .line 324
    new-array v1, v11, [Landroid/net/Uri;

    sget-object v2, Lcom/twitter/library/provider/bw;->a:Landroid/net/Uri;

    aput-object v2, v1, v10

    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/b;->a([Landroid/net/Uri;)V

    .line 325
    invoke-virtual {v0}, Lcom/twitter/library/provider/b;->a()V

    .line 326
    return-void
.end method

.method public a(Lcqj;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    invoke-virtual {v0}, Lcom/twitter/library/provider/dm;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 248
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcet;->b(ILjava/lang/String;)V

    .line 250
    invoke-static {p2, p3}, Lcom/twitter/library/provider/bx;->a(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 249
    invoke-direct {p0, p1, p2, p3, v0}, Lcet;->a(Lcqj;ILjava/lang/String;Landroid/net/Uri;)V

    .line 251
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 255
    return-void

    .line 253
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public a(Lcqq;)V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p1, Lcqq;->a:Lcom/twitter/model/moments/ad;

    iget-wide v0, v0, Lcom/twitter/model/moments/ad;->b:J

    invoke-direct {p0, v0, v1}, Lcet;->d(J)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcet;->a(Lcqq;Ljava/util/Map;)V

    .line 364
    return-void
.end method

.method public a(Lcro;)V
    .locals 4

    .prologue
    .line 330
    iget-object v0, p1, Lcro;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrc;

    .line 331
    iget-object v2, p0, Lcet;->c:Lcff;

    iget-object v3, v0, Lcrc;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcff;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 333
    :cond_0
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 229
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 230
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 231
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 232
    const-string/jumbo v3, "_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 233
    const-string/jumbo v3, "is_subscribed"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 234
    iget-object v0, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    const-string/jumbo v3, "moments"

    invoke-virtual {v0, v3, v1, v4, v5}, Lcom/twitter/library/provider/dm;->a(Ljava/lang/String;Landroid/content/ContentValues;J)V

    goto :goto_0

    .line 236
    :cond_0
    return-void
.end method

.method b()Ljava/util/Map;
    .locals 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lceu;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 415
    iget-object v0, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    invoke-virtual {v0}, Lcom/twitter/library/provider/dm;->o()Landroid/database/Cursor;

    move-result-object v2

    .line 416
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v3

    .line 418
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    :cond_0
    const-string/jumbo v0, "moment_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 421
    const-string/jumbo v0, "is_updated"

    .line 422
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 421
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 423
    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v7, Lceu;

    invoke-direct {v7, v4, v5, v0}, Lceu;-><init>(JZ)V

    invoke-virtual {v3, v6, v7}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    .line 424
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    :cond_1
    invoke-virtual {v3}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 426
    return-object v0

    .line 421
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 428
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/provider/dm;->b(J)V

    .line 368
    return-void
.end method

.method public b(JZ)V
    .locals 3

    .prologue
    .line 406
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 407
    const-string/jumbo v1, "is_read"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 408
    iget-object v1, p0, Lcet;->b:Lcom/twitter/library/provider/dm;

    invoke-virtual {v1, v0, p1, p2}, Lcom/twitter/library/provider/dm;->a(Landroid/content/ContentValues;J)V

    .line 409
    return-void
.end method

.method public b(Lcqj;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 263
    .line 264
    invoke-static {p2, p3}, Lcom/twitter/library/provider/bx;->a(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 263
    invoke-direct {p0, p1, p2, p3, v0}, Lcet;->a(Lcqj;ILjava/lang/String;Landroid/net/Uri;)V

    .line 265
    return-void
.end method
