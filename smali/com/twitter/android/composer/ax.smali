.class public Lcom/twitter/android/composer/ax;
.super Lcom/twitter/app/common/base/z;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/base/z",
        "<",
        "Lcom/twitter/android/composer/ax;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/twitter/app/common/base/z;-><init>()V

    .line 107
    return-void
.end method

.method protected constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/twitter/app/common/base/z;-><init>(Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method public static a(Landroid/app/Activity;I)Laui;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ":",
            "Lcom/twitter/app/common/util/t;",
            ">(TA;I)",
            "Laui",
            "<",
            "Lcom/twitter/android/composer/ax;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 576
    new-instance v0, Laug;

    const-class v1, Lcom/twitter/android/composer/ComposerActivity;

    invoke-direct {v0, p0, v1, p1}, Laug;-><init>(Landroid/app/Activity;Ljava/lang/Class;I)V

    return-object v0
.end method

.method public static a()Lcom/twitter/android/composer/ax;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/twitter/android/composer/ax;

    invoke-direct {v0}, Lcom/twitter/android/composer/ax;-><init>()V

    return-object v0
.end method

.method public static a(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/composer/ax;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/twitter/android/composer/ax;

    invoke-virtual {p0}, Lcom/twitter/android/composer/ComposerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/android/composer/ax;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 580
    invoke-static {p1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 582
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 584
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 570
    const-class v0, Lcom/twitter/android/composer/ComposerActivity;

    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/composer/ax;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/twitter/android/composer/ax;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "composer_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    return-object p0
.end method

.method public a(J)Lcom/twitter/android/composer/ax;
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "replied_tweet_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 385
    return-object p0
.end method

.method public a(Landroid/content/Intent;)Lcom/twitter/android/composer/ax;
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 177
    return-object p0
.end method

.method public a(Landroid/net/Uri;)Lcom/twitter/android/composer/ax;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 153
    return-object p0
.end method

.method public a(Lclw;)Lcom/twitter/android/composer/ax;
    .locals 3

    .prologue
    .line 537
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "conversation_card_data"

    sget-object v2, Lclw;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1, p1, v2}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/content/Intent;

    .line 538
    return-object p0
.end method

.method public a(Lcom/twitter/android/composer/bf;)Lcom/twitter/android/composer/ax;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p1, Lcom/twitter/android/composer/bf;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ax;->a(Ljava/lang/String;)Lcom/twitter/android/composer/ax;

    .line 308
    iget-object v0, p1, Lcom/twitter/android/composer/bf;->b:Lcom/twitter/library/scribe/ScribeItem;

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ax;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/android/composer/ax;

    .line 309
    return-object p0
.end method

.method public a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/android/composer/ax;
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "scribe_item"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 296
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/composer/ax;
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "replied_tweet"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 396
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/ay;)Lcom/twitter/android/composer/ax;
    .locals 3

    .prologue
    .line 437
    if-eqz p1, :cond_0

    .line 438
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "quoted_tweet"

    sget-object v2, Lcom/twitter/model/core/ay;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1, p1, v2}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/content/Intent;

    .line 442
    :goto_0
    return-object p0

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "quoted_tweet"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/drafts/d;)Lcom/twitter/android/composer/ax;
    .locals 4

    .prologue
    .line 554
    iget-wide v0, p1, Lcom/twitter/model/drafts/d;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/composer/ax;->b(J)Lcom/twitter/android/composer/ax;

    move-result-object v0

    iget-wide v2, p1, Lcom/twitter/model/drafts/d;->e:J

    .line 555
    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/composer/ax;->a(J)Lcom/twitter/android/composer/ax;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/drafts/d;->c:Ljava/lang/String;

    const/4 v2, 0x0

    .line 556
    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/composer/ax;->a(Ljava/lang/String;[I)Lcom/twitter/android/composer/ax;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/drafts/d;->d:Ljava/util/List;

    .line 557
    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->a(Ljava/util/List;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/drafts/d;->h:Lcss;

    .line 558
    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->a(Lcss;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/drafts/d;->g:Lcom/twitter/model/geo/g;

    .line 559
    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->a(Lcom/twitter/model/geo/g;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/drafts/d;->i:Lcom/twitter/model/core/ay;

    .line 560
    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->a(Lcom/twitter/model/core/ay;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/drafts/d;->j:Ljava/lang/String;

    .line 561
    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->d(Ljava/lang/String;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    iget-boolean v1, p1, Lcom/twitter/model/drafts/d;->f:Z

    .line 562
    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->b(Z)Lcom/twitter/android/composer/ax;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/drafts/d;->m:Lcom/twitter/model/timeline/cx;

    .line 563
    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->a(Lcom/twitter/model/timeline/cx;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/drafts/d;->n:Ljava/lang/String;

    .line 564
    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->e(Ljava/lang/String;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 554
    return-object v0
.end method

.method public a(Lcom/twitter/model/geo/g;)Lcom/twitter/android/composer/ax;
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "geo_tag"

    sget-object v2, Lcom/twitter/model/geo/g;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1, p1, v2}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/content/Intent;

    .line 350
    return-object p0
.end method

.method public a(Lcom/twitter/model/timeline/cx;)Lcom/twitter/android/composer/ax;
    .locals 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "tweet_preview_info"

    sget-object v2, Lcom/twitter/model/timeline/cx;->a:Lcom/twitter/util/serialization/ae;

    invoke-static {v0, v1, p1, v2}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/content/Intent;

    .line 408
    return-object p0
.end method

.method public a(Lcss;)Lcom/twitter/android/composer/ax;
    .locals 3

    .prologue
    .line 334
    if-eqz p1, :cond_0

    .line 335
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "pc"

    sget-object v2, Lcss;->a:Lcom/twitter/util/serialization/d;

    invoke-static {v0, v1, p1, v2}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/content/Intent;

    .line 339
    :goto_0
    return-object p0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "pc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/android/composer/ax;
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "scribe_page"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    return-object p0
.end method

.method public a(Ljava/lang/String;I)Lcom/twitter/android/composer/ax;
    .locals 2

    .prologue
    .line 245
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 246
    :cond_0
    const/4 v0, 0x0

    .line 250
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/composer/ax;->a(Ljava/lang/String;[I)Lcom/twitter/android/composer/ax;

    move-result-object v0

    return-object v0

    .line 248
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;[I)Lcom/twitter/android/composer/ax;
    .locals 2

    .prologue
    .line 255
    invoke-static {p1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0, p2}, Lcom/twitter/android/composer/ax;->a([I)Lcom/twitter/android/composer/ax;

    .line 262
    :goto_0
    return-object p0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ax;->a([I)Lcom/twitter/android/composer/ax;

    goto :goto_0
.end method

.method public a(Ljava/util/List;)Lcom/twitter/android/composer/ax;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/drafts/DraftAttachment;",
            ">;)",
            "Lcom/twitter/android/composer/ax;"
        }
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "attachments"

    sget-object v2, Lcom/twitter/model/drafts/DraftAttachment;->a:Lcom/twitter/util/serialization/ah;

    .line 464
    invoke-static {v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    .line 463
    invoke-static {v0, v1, p1, v2}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/content/Intent;

    .line 465
    return-object p0
.end method

.method public a(Z)Lcom/twitter/android/composer/ax;
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "tweet_text_edited"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    return-object p0
.end method

.method public a([I)Lcom/twitter/android/composer/ax;
    .locals 2

    .prologue
    .line 319
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "selection"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 324
    :goto_0
    return-object p0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "selection"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()I
    .locals 3

    .prologue
    .line 115
    const-string/jumbo v0, "twitter"

    iget-object v1, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 117
    const-string/jumbo v1, "post"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const-string/jumbo v1, "poll"

    const-string/jumbo v2, "mode"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x5

    .line 124
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "composer_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public b(I)Lcom/twitter/android/composer/ax;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "highlight_target"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    return-object p0
.end method

.method public b(J)Lcom/twitter/android/composer/ax;
    .locals 3

    .prologue
    .line 451
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "draft_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 452
    return-object p0
.end method

.method public b(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/composer/ax;
    .locals 1

    .prologue
    .line 431
    new-instance v0, Lcom/twitter/model/core/ay;

    invoke-direct {v0, p1}, Lcom/twitter/model/core/ay;-><init>(Lcom/twitter/model/core/Tweet;)V

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/ax;->a(Lcom/twitter/model/core/ay;)Lcom/twitter/android/composer/ax;

    .line 432
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/android/composer/ax;
    .locals 2

    .prologue
    .line 360
    invoke-static {p1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "AbsFragmentActivity_account_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    :goto_0
    return-object p0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "AbsFragmentActivity_account_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Z)Lcom/twitter/android/composer/ax;
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "reply_prefill_disabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 402
    return-object p0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 208
    const-string/jumbo v0, "twitter"

    iget-object v1, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 209
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 211
    const-string/jumbo v0, "text"

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    if-nez v0, :cond_0

    .line 213
    const-string/jumbo v0, "message"

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 217
    const-string/jumbo v4, "post"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 218
    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 220
    :goto_0
    const-string/jumbo v1, "url"

    invoke-virtual {v3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/composer/ax;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 221
    const-string/jumbo v1, "hashtags"

    invoke-virtual {v3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    if-eqz v1, :cond_2

    .line 223
    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_2

    aget-object v6, v4, v1

    .line 224
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/twitter/android/composer/ax;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 218
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    .line 227
    :cond_2
    const-string/jumbo v1, "via"

    invoke-virtual {v3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    if-eqz v1, :cond_3

    .line 229
    const v3, 0x7f0a08f8

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v1, v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/composer/ax;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 231
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    :goto_2
    return-object v0

    .line 232
    :cond_4
    const-string/jumbo v4, "quote"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 233
    const v1, 0x7f0a0ae7

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "screen_name"

    .line 234
    invoke-virtual {v3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    aput-object v0, v4, v9

    .line 233
    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 236
    :cond_5
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 237
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 239
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public c()I
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "highlight_target"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public c(I)I
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "camera_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public c(J)Lcom/twitter/android/composer/ax;
    .locals 3

    .prologue
    .line 527
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "card_host_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 528
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/android/composer/ax;
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "ref_event"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    return-object p0
.end method

.method public d(I)Lcom/twitter/android/composer/ax;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 171
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/twitter/android/composer/ax;
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "card_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    return-object p0
.end method

.method public d()Lcom/twitter/android/composer/br;
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "tweet_uploader_class"

    .line 183
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 184
    if-eqz v0, :cond_0

    .line 187
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/composer/br;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-object v0

    .line 189
    :catch_0
    move-exception v0

    .line 192
    :cond_0
    :goto_1
    new-instance v0, Lcom/twitter/android/composer/cm;

    invoke-direct {v0}, Lcom/twitter/android/composer/cm;-><init>()V

    goto :goto_0

    .line 188
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public e(Ljava/lang/String;)Lcom/twitter/android/composer/ax;
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "engagement_metadata"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    return-object p0
.end method

.method public e()Z
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "tweet_text_edited"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public f()[I
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "selection"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public g()Lcss;
    .locals 3

    .prologue
    .line 329
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "pc"

    sget-object v2, Lcss;->a:Lcom/twitter/util/serialization/d;

    invoke-static {v0, v1, v2}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcss;

    return-object v0
.end method

.method public h()Lcom/twitter/model/geo/g;
    .locals 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "geo_tag"

    sget-object v2, Lcom/twitter/model/geo/g;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1, v2}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/geo/g;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "AbsFragmentActivity_account_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()J
    .locals 4

    .prologue
    .line 369
    const-string/jumbo v0, "twitter"

    iget-object v1, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 371
    const-string/jumbo v1, "post"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    :try_start_0
    const-string/jumbo v1, "in_reply_to_status_id"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 379
    :goto_0
    return-wide v0

    .line 374
    :catch_0
    move-exception v0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "replied_tweet_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public k()Lcom/twitter/model/core/Tweet;
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "replied_tweet"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    return-object v0
.end method

.method public l()Lcom/twitter/model/timeline/cx;
    .locals 3

    .prologue
    .line 413
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "tweet_preview_info"

    sget-object v2, Lcom/twitter/model/timeline/cx;->a:Lcom/twitter/util/serialization/ae;

    invoke-static {v0, v1, v2}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/cx;

    return-object v0
.end method

.method public m()Lcom/twitter/util/Tristate;
    .locals 3

    .prologue
    .line 417
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "reply_prefill_disabled"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "reply_prefill_disabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/twitter/util/Tristate;->a(Z)Lcom/twitter/util/Tristate;

    move-result-object v0

    .line 420
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/util/Tristate;->a:Lcom/twitter/util/Tristate;

    goto :goto_0
.end method

.method public n()Lcom/twitter/model/core/ay;
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "quoted_tweet"

    sget-object v2, Lcom/twitter/model/core/ay;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1, v2}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/ay;

    return-object v0
.end method

.method public o()J
    .locals 4

    .prologue
    .line 446
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "draft_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public p()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/drafts/DraftAttachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "attachments"

    sget-object v2, Lcom/twitter/model/drafts/DraftAttachment;->a:Lcom/twitter/util/serialization/ah;

    .line 458
    invoke-static {v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    .line 457
    invoke-static {v0, v1, v2}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public q()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "ref_event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "scribe_page"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Lcom/twitter/library/scribe/ScribeItem;
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "scribe_item"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/ScribeItem;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "card_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()J
    .locals 4

    .prologue
    .line 522
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "card_host_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public w()Lclw;
    .locals 3

    .prologue
    .line 532
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "conversation_card_data"

    sget-object v2, Lclw;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1, v2}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclw;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/twitter/android/composer/ax;->c:Landroid/content/Intent;

    const-string/jumbo v1, "engagement_metadata"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
