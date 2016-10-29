.class public Lcom/twitter/android/composer/bi;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/twitter/library/scribe/ScribeItem;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/twitter/android/composer/bi;->a:Ljava/lang/String;

    return-void
.end method

.method private q()J
    .locals 2

    .prologue
    .line 482
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 63
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v1, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 64
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/composer/bi;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "composition"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "exit"

    aput-object v3, v1, v2

    .line 65
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 66
    return-void
.end method

.method a(JLjava/lang/String;)V
    .locals 5

    .prologue
    .line 55
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, p1, p2}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 56
    invoke-virtual {v0, p3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 57
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/composer/bi;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "composition"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "impression"

    aput-object v3, v1, v2

    .line 58
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 59
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 460
    invoke-static {p1}, Lcbb;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "open_app"

    move-object v1, v0

    .line 462
    :goto_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v2, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 463
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/composer/bi;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "composition"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "gallery"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "periscope_go_live"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object v1, v2, v3

    .line 464
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 462
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 465
    return-void

    .line 460
    :cond_0
    const-string/jumbo v0, "open_interstitial"

    move-object v1, v0

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/util/List;ZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/drafts/DraftAttachment;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 371
    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v0

    sget-object v2, Lcom/twitter/android/composer/ComposerType;->a:Lcom/twitter/android/composer/ComposerType;

    invoke-static {v0, v1, v2, p2}, Lcom/twitter/android/composer/bk;->a(JLcom/twitter/android/composer/ComposerType;Ljava/util/List;)V

    .line 372
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/DraftAttachment;

    .line 376
    iget-object v4, v0, Lcom/twitter/model/drafts/DraftAttachment;->g:Lcom/twitter/media/model/MediaType;

    .line 377
    sget-object v1, Lcom/twitter/media/model/MediaType;->a:Lcom/twitter/media/model/MediaType;

    if-eq v4, v1, :cond_0

    .line 381
    if-eqz p3, :cond_4

    const-string/jumbo v1, ":drafts:composition"

    .line 382
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/twitter/android/composer/bi;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 384
    sget-object v1, Lcom/twitter/media/model/MediaType;->b:Lcom/twitter/media/model/MediaType;

    if-ne v4, v1, :cond_5

    .line 385
    const-string/jumbo v1, "send_photo_tweet"

    .line 392
    :goto_2
    const-string/jumbo v2, ""

    .line 393
    sget-object v6, Lcom/twitter/media/model/MediaType;->b:Lcom/twitter/media/model/MediaType;

    if-eq v4, v6, :cond_7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v8, :cond_7

    .line 394
    iget-object v0, v0, Lcom/twitter/model/drafts/DraftAttachment;->h:Lcom/twitter/model/media/MediaSource;

    invoke-virtual {v0}, Lcom/twitter/model/media/MediaSource;->a()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 403
    :cond_2
    :goto_3
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v4, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 404
    invoke-virtual {v0, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    new-instance v4, Lcom/twitter/library/scribe/ScribeAltTextMedia;

    invoke-direct {v4, p1, p2}, Lcom/twitter/library/scribe/ScribeAltTextMedia;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 405
    invoke-virtual {v0, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object v5, v4, v3

    aput-object v2, v4, v8

    aput-object v1, v4, v9

    .line 406
    invoke-virtual {v0, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 403
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 408
    invoke-static {p2}, Lcuk;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 409
    if-lez v1, :cond_3

    .line 410
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v4, v9, [Ljava/lang/String;

    aput-object v5, v4, v3

    if-eqz p4, :cond_9

    const-string/jumbo v0, ":reply_with_tags"

    :goto_4
    aput-object v0, v4, v8

    .line 411
    invoke-virtual {v2, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 412
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    int-to-long v6, v1

    .line 413
    invoke-virtual {v0, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(J)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 414
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 418
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v3

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/DraftAttachment;

    .line 419
    invoke-virtual {v0, v9}, Lcom/twitter/model/drafts/DraftAttachment;->a(I)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    .line 420
    instance-of v4, v0, Lcom/twitter/model/media/EditableImage;

    if-eqz v4, :cond_b

    check-cast v0, Lcom/twitter/model/media/EditableImage;

    iget v0, v0, Lcom/twitter/model/media/EditableImage;->c:I

    if-lez v0, :cond_b

    .line 421
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_6
    move v1, v0

    .line 423
    goto :goto_5

    .line 381
    :cond_4
    const-string/jumbo v1, ":composition:"

    goto/16 :goto_1

    .line 386
    :cond_5
    sget-object v1, Lcom/twitter/media/model/MediaType;->c:Lcom/twitter/media/model/MediaType;

    if-ne v4, v1, :cond_6

    .line 387
    const-string/jumbo v1, "send_gif_tweet"

    goto/16 :goto_2

    .line 389
    :cond_6
    const-string/jumbo v1, "send_video_tweet"

    goto/16 :goto_2

    .line 396
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/DraftAttachment;

    .line 397
    iget-object v6, v0, Lcom/twitter/model/drafts/DraftAttachment;->h:Lcom/twitter/model/media/MediaSource;

    sget-object v7, Lcom/twitter/model/media/MediaSource;->d:Lcom/twitter/model/media/MediaSource;

    if-ne v6, v7, :cond_8

    .line 398
    iget-object v0, v0, Lcom/twitter/model/drafts/DraftAttachment;->h:Lcom/twitter/model/media/MediaSource;

    invoke-virtual {v0}, Lcom/twitter/model/media/MediaSource;->a()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 399
    goto/16 :goto_3

    .line 410
    :cond_9
    const-string/jumbo v0, ":tweet_with_tags"

    goto :goto_4

    .line 424
    :cond_a
    if-lez v1, :cond_0

    .line 425
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v9, [Ljava/lang/String;

    aput-object v5, v2, v3

    const-string/jumbo v3, ":send_filtered_photo"

    aput-object v3, v2, v8

    .line 426
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 427
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    int-to-long v2, v1

    .line 428
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(J)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 429
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto :goto_6
.end method

.method a(Lclp;Z)V
    .locals 4

    .prologue
    .line 436
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lclp;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/twitter/android/composer/bi;->a:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "composition"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v3, ""

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v3, "poll_composer"

    aput-object v3, v2, v0

    const/4 v3, 0x4

    if-eqz p2, :cond_2

    const-string/jumbo v0, "send_reply"

    :goto_1
    aput-object v0, v2, v3

    .line 440
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 441
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 442
    invoke-virtual {p1}, Lclp;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(J)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 439
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "send_tweet"

    goto :goto_1
.end method

.method public a(Lcom/twitter/library/scribe/ScribeItem;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 51
    return-void
.end method

.method a(Lcom/twitter/media/model/MediaType;)V
    .locals 5

    .prologue
    .line 72
    sget-object v0, Lcom/twitter/media/model/MediaType;->d:Lcom/twitter/media/model/MediaType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/twitter/media/model/MediaType;->f:Lcom/twitter/media/model/MediaType;

    if-ne p1, v0, :cond_2

    .line 73
    :cond_0
    const-string/jumbo v0, "video"

    move-object v1, v0

    .line 79
    :goto_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v2, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 80
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/composer/bi;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "composition"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "editor"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v1, v2, v3

    const/4 v1, 0x4

    const-string/jumbo v3, "open"

    aput-object v3, v2, v1

    .line 81
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 82
    :cond_1
    return-void

    .line 74
    :cond_2
    sget-object v0, Lcom/twitter/media/model/MediaType;->b:Lcom/twitter/media/model/MediaType;

    if-ne p1, v0, :cond_1

    .line 75
    const-string/jumbo v0, "photo"

    move-object v1, v0

    goto :goto_0
.end method

.method a(Lcom/twitter/model/media/EditableImage;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 103
    iget-object v1, p0, Lcom/twitter/android/composer/bi;->a:Ljava/lang/String;

    const-string/jumbo v2, "composition"

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v4

    move-object v0, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/library/media/util/y;->a(Lcom/twitter/model/media/EditableImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 104
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/twitter/android/composer/bi;->a:Ljava/lang/String;

    .line 47
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/drafts/DraftAttachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/DraftAttachment;

    .line 321
    sget-object v1, Lcom/twitter/android/composer/bj;->a:[I

    iget-object v2, v0, Lcom/twitter/model/drafts/DraftAttachment;->g:Lcom/twitter/media/model/MediaType;

    invoke-virtual {v2}, Lcom/twitter/media/model/MediaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 335
    const/4 v0, 0x0

    move-object v1, v0

    .line 339
    :goto_1
    if-eqz v1, :cond_0

    .line 340
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v2, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 341
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 342
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeSection;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 343
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 323
    :pswitch_0
    new-instance v0, Lcom/twitter/library/scribe/ScribeSectionImportedVideo;

    invoke-direct {v0}, Lcom/twitter/library/scribe/ScribeSectionImportedVideo;-><init>()V

    const-string/jumbo v1, "(multiple):composition:video:trim:send_video_tweet"

    .line 324
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/ScribeSectionImportedVideo;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeSectionImportedVideo;

    move-result-object v0

    move-object v1, v0

    .line 325
    goto :goto_1

    .line 328
    :pswitch_1
    const/4 v1, 0x2

    .line 329
    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/DraftAttachment;->a(I)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/media/EditableSegmentedVideo;

    .line 330
    new-instance v1, Lcom/twitter/library/scribe/ScribeSectionSegmentedVideo;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/media/EditableSegmentedVideo;

    invoke-direct {v1, v0}, Lcom/twitter/library/scribe/ScribeSectionSegmentedVideo;-><init>(Lcom/twitter/model/media/EditableSegmentedVideo;)V

    const-string/jumbo v0, "(multiple):composition:video:segment:send_video_tweet"

    .line 331
    invoke-virtual {v1, v0}, Lcom/twitter/library/scribe/ScribeSectionSegmentedVideo;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeSectionSegmentedVideo;

    move-result-object v0

    move-object v1, v0

    .line 332
    goto :goto_1

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method a(Lsv;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 164
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/composer/bi;->a(Lsv;Ljava/lang/String;I)V

    .line 165
    return-void
.end method

.method a(Lsv;Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 174
    iget v0, p1, Lsv;->b:I

    if-eq v0, v6, :cond_0

    iget v0, p1, Lsv;->b:I

    if-ne v0, v5, :cond_2

    .line 175
    :cond_0
    iget v0, p1, Lsv;->b:I

    if-ne v0, v5, :cond_3

    const-string/jumbo v0, "hashtag"

    .line 176
    :goto_0
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/composer/bi;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string/jumbo v3, "composition"

    aput-object v3, v2, v6

    const-string/jumbo v3, "autocomplete_dropdown"

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v0, 0x4

    aput-object p2, v2, v0

    .line 177
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 178
    iget-object v1, p1, Lsv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->d(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 179
    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    .line 180
    invoke-virtual {v0, p3}, Lcom/twitter/library/scribe/TwitterScribeLog;->d(I)Lcom/twitter/library/scribe/ScribeLog;

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    .line 183
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 185
    :cond_2
    return-void

    .line 175
    :cond_3
    const-string/jumbo v0, "username"

    goto :goto_0
.end method

.method a(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 448
    iget-boolean v0, p0, Lcom/twitter/android/composer/bi;->c:Z

    if-nez v0, :cond_0

    .line 449
    iput-boolean v4, p0, Lcom/twitter/android/composer/bi;->c:Z

    .line 450
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v1, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 451
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/twitter/android/composer/bi;->a:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string/jumbo v1, "composition"

    aput-object v1, v2, v4

    const/4 v1, 0x2

    const-string/jumbo v3, "gallery"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string/jumbo v3, "periscope_go_live"

    aput-object v3, v2, v1

    const/4 v3, 0x4

    if-eqz p1, :cond_1

    const-string/jumbo v1, "impression_enabled"

    :goto_0
    aput-object v1, v2, v3

    .line 452
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 450
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 455
    :cond_0
    return-void

    .line 451
    :cond_1
    const-string/jumbo v1, "impression_disabled"

    goto :goto_0
.end method

.method a(ZZ)V
    .locals 5

    .prologue
    .line 214
    if-eqz p1, :cond_0

    .line 215
    const-string/jumbo v0, "cancel_reply_sheet"

    move-object v1, v0

    .line 221
    :goto_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v2, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 222
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/composer/bi;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "composition"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v1, 0x3

    const-string/jumbo v3, "save_draft:click"

    aput-object v3, v2, v1

    .line 223
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 221
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 224
    return-void

    .line 216
    :cond_0
    if-eqz p2, :cond_1

    .line 217
    const-string/jumbo v0, "cancel_quote_sheet"

    move-object v1, v0

    goto :goto_0

    .line 219
    :cond_1
    const-string/jumbo v0, "cancel_sheet"

    move-object v1, v0

    goto :goto_0
.end method

.method a(ZZJ)V
    .locals 5

    .prologue
    .line 192
    if-eqz p1, :cond_1

    .line 193
    const-string/jumbo v0, "cancel_reply_sheet"

    .line 199
    :goto_0
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/composer/bi;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "composition"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v0, 0x3

    const-string/jumbo v3, "dont_save:click"

    aput-object v3, v2, v0

    .line 200
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 201
    const-wide/16 v2, -0x1

    cmp-long v1, p3, v2

    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {v0, p3, p4}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(J)Lcom/twitter/library/scribe/ScribeLog;

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    .line 206
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 207
    return-void

    .line 194
    :cond_1
    if-eqz p2, :cond_2

    .line 195
    const-string/jumbo v0, "cancel_quote_sheet"

    goto :goto_0

    .line 197
    :cond_2
    const-string/jumbo v0, "cancel_sheet"

    goto :goto_0
.end method

.method a(ZZZZZLcom/twitter/model/geo/g;JLandroid/content/Context;Lclw;Ljava/lang/String;)V
    .locals 25

    .prologue
    .line 271
    if-eqz p1, :cond_2

    const-string/jumbo v4, "drafts:composition"

    move-object/from16 v20, v4

    .line 273
    :goto_0
    if-eqz p2, :cond_3

    .line 274
    const-string/jumbo v4, "send_reply"

    .line 282
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v22

    .line 283
    new-instance v5, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 284
    invoke-virtual {v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->i()Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v5

    .line 285
    move-object/from16 v0, p9

    move-object/from16 v1, p10

    move-object/from16 v2, p11

    invoke-virtual {v5, v0, v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lclw;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/composer/bi;->a:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v20, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, ""

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v4, v6, v7

    .line 286
    invoke-virtual {v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v4

    check-cast v4, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 287
    const-wide/16 v6, -0x1

    cmp-long v5, p7, v6

    if-eqz v5, :cond_0

    .line 288
    move-wide/from16 v0, p7

    invoke-virtual {v4, v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(J)Lcom/twitter/library/scribe/ScribeLog;

    .line 290
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    invoke-virtual {v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    .line 291
    invoke-static {v4}, Lbjf;->a(Lbjh;)V

    .line 292
    if-eqz p6, :cond_1

    .line 293
    invoke-static {}, Lcom/twitter/library/scribe/TwitterScribeItem;->b()Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v21

    .line 294
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->am:Lcom/twitter/library/scribe/ScribeGeoDetails;

    .line 295
    invoke-virtual/range {p6 .. p6}, Lcom/twitter/model/geo/g;->a()Lcom/twitter/model/geo/TwitterPlace;

    move-result-object v4

    iget-object v6, v4, Lcom/twitter/model/geo/TwitterPlace;->b:Ljava/lang/String;

    .line 296
    invoke-virtual/range {p6 .. p6}, Lcom/twitter/model/geo/g;->a()Lcom/twitter/model/geo/TwitterPlace;

    move-result-object v4

    iget-object v7, v4, Lcom/twitter/model/geo/TwitterPlace;->c:Lcom/twitter/model/geo/TwitterPlace$PlaceType;

    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    const-wide/high16 v10, 0x7ff8000000000000L    # NaN

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, -0x1

    .line 294
    invoke-virtual/range {v5 .. v19}, Lcom/twitter/library/scribe/ScribeGeoDetails;->a(Ljava/lang/String;Lcom/twitter/model/geo/TwitterPlace$PlaceType;DDLjava/lang/String;IIILjava/lang/String;Ljava/lang/String;J)Lcom/twitter/library/scribe/ScribeGeoDetails$ScribeGeoPlace;

    .line 306
    new-instance v4, Lcom/twitter/library/scribe/TwitterScribeLog;

    move-wide/from16 v0, v22

    invoke-direct {v4, v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 307
    invoke-virtual {v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v4

    check-cast v4, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 308
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v4

    check-cast v4, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/composer/bi;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v20, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, ""

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "geotag"

    aput-object v7, v5, v6

    .line 309
    invoke-virtual {v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v4

    .line 306
    invoke-static {v4}, Lbjf;->a(Lbjh;)V

    .line 311
    :cond_1
    return-void

    .line 271
    :cond_2
    const-string/jumbo v4, "composition:"

    move-object/from16 v20, v4

    goto/16 :goto_0

    .line 275
    :cond_3
    if-eqz p4, :cond_5

    .line 276
    if-eqz p3, :cond_4

    const-string/jumbo v4, "self_retweet"

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v4, "retweet"

    goto/16 :goto_1

    .line 277
    :cond_5
    if-eqz p5, :cond_7

    .line 278
    if-eqz p3, :cond_6

    const-string/jumbo v4, "send_self_quote_tweet"

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v4, "send_quote_tweet"

    goto/16 :goto_1

    .line 280
    :cond_7
    const-string/jumbo v4, "send_tweet"

    goto/16 :goto_1
.end method

.method b()V
    .locals 4

    .prologue
    .line 86
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v1, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 87
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/composer/bi;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "composition"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "editor"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "photo"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "dismiss"

    aput-object v3, v1, v2

    .line 88
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 89
    return-void
.end method

.method c()V
    .locals 4

    .prologue
    .line 93
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v1, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 94
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/composer/bi;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "composition:image_attachment::impression"

    aput-object v3, v1, v2

    .line 95
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 96
    return-void
.end method

.method d()V
    .locals 4

    .prologue
    .line 108
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v1, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 109
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/composer/bi;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "composition"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "editor"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "photo"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "select"

    aput-object v3, v1, v2

    .line 110
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 111
    return-void
.end method

.method e()V
    .locals 4

    .prologue
    .line 123
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v1, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 124
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/composer/bi;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "composition"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "photo_picker"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "impression"

    aput-object v3, v1, v2

    .line 125
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 123
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 126
    return-void
.end method

.method f()V
    .locals 4

    .prologue
    .line 130
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v1, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 131
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/composer/bi;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "composition"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "reply"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "show"

    aput-object v3, v1, v2

    .line 132
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 133
    return-void
.end method

.method public g()V
    .locals 4

    .prologue
    .line 137
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v1, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 138
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "composition"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "lifeline_alerts"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "select"

    aput-object v3, v1, v2

    .line 139
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 137
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 140
    return-void
.end method

.method public h()V
    .locals 4

    .prologue
    .line 144
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v1, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 145
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "composition"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "lifeline_alerts"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "impression"

    aput-object v3, v1, v2

    .line 146
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 144
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 147
    return-void
.end method

.method i()V
    .locals 4

    .prologue
    .line 151
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v1, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 152
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/composer/bi;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "composition"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "text_view"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "focus_field"

    aput-object v3, v1, v2

    .line 153
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 151
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 154
    return-void
.end method

.method j()V
    .locals 4

    .prologue
    .line 158
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v1, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 159
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/composer/bi;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "composition"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "media_tag_prompt"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "click"

    aput-object v3, v1, v2

    .line 160
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 158
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 161
    return-void
.end method

.method public k()V
    .locals 4

    .prologue
    .line 228
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v1, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 229
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "composition"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "lifeline_alerts"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "tweet"

    aput-object v3, v1, v2

    .line 230
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 228
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 231
    return-void
.end method

.method public l()V
    .locals 4

    .prologue
    .line 235
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v1, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 236
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "composition"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "lifeline_alerts"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "cancel"

    aput-object v3, v1, v2

    .line 237
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 235
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 238
    return-void
.end method

.method m()V
    .locals 4

    .prologue
    .line 242
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v1, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 243
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/composer/bi;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "composition"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "limit_exceeded"

    aput-object v3, v1, v2

    .line 244
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 242
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 245
    return-void
.end method

.method n()V
    .locals 4

    .prologue
    .line 249
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v1, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 250
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/composer/bi;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "composition"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "edit"

    aput-object v3, v1, v2

    .line 251
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 249
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 252
    return-void
.end method

.method o()V
    .locals 4

    .prologue
    .line 469
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v1, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 470
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/composer/bi;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "composition"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "gallery"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "periscope_takeover"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "close"

    aput-object v3, v1, v2

    .line 471
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 469
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 472
    return-void
.end method

.method p()V
    .locals 4

    .prologue
    .line 476
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Lcom/twitter/android/composer/bi;->q()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v1, p0, Lcom/twitter/android/composer/bi;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 477
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/composer/bi;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "composition"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "gallery"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "periscope_takeover"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "install_app"

    aput-object v3, v1, v2

    .line 478
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 476
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 479
    return-void
.end method
