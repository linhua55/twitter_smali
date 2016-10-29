.class public Lcom/twitter/android/card/e;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/card/d;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/android/card/e;->a:Ljava/lang/ref/WeakReference;

    .line 61
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/e;->b:Landroid/content/Context;

    .line 62
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/card/e;->c:J

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/card/e;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/twitter/android/card/e;->b:Landroid/content/Context;

    return-object v0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 249
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 257
    :goto_0
    return v0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 253
    if-nez v0, :cond_1

    move v0, v1

    .line 254
    goto :goto_0

    .line 256
    :cond_1
    iget-wide v2, p0, Lcom/twitter/android/card/e;->c:J

    invoke-static {v0, p1, v2, v3}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 257
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(JLcom/twitter/library/card/CardContext;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/twitter/android/card/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 167
    invoke-static {p3}, Lcom/twitter/library/card/CardContext;->a(Lcom/twitter/library/card/CardContext;)Lcom/twitter/model/core/Tweet;

    move-result-object v1

    .line 168
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-static {p1, p2, v1, p4, v0}, Lcom/twitter/android/profiles/as;->a(JLcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 397
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 398
    iget-object v0, p0, Lcom/twitter/android/card/e;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 399
    return-void
.end method

.method public a(Lcom/twitter/library/card/CardContext;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 4

    .prologue
    .line 239
    iget-object v0, p0, Lcom/twitter/android/card/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 240
    if-nez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 243
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/TweetActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "tw"

    .line 244
    invoke-static {p1}, Lcom/twitter/library/card/CardContext;->a(Lcom/twitter/library/card/CardContext;)Lcom/twitter/model/core/Tweet;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "association"

    .line 245
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 243
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/client/Session;Lcom/twitter/library/card/CardContext;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 263
    iget-object v0, p0, Lcom/twitter/android/card/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    .line 264
    if-nez v5, :cond_0

    .line 288
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-static {}, Lcom/twitter/android/client/OpenUriHelper;->a()Lcom/twitter/android/client/OpenUriHelper;

    move-result-object v6

    new-instance v0, Lcom/twitter/android/card/g;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/card/g;-><init>(Lcom/twitter/android/card/e;Lcom/twitter/library/client/Session;Lcom/twitter/library/card/CardContext;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v6, v5, v0}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/card/CardContext;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 293
    iget-object v0, p0, Lcom/twitter/android/card/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 294
    if-nez v1, :cond_0

    .line 307
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    .line 299
    invoke-static {}, Lcom/twitter/android/client/OpenUriHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    new-instance v0, Lcom/twitter/model/core/da;

    invoke-direct {v0}, Lcom/twitter/model/core/da;-><init>()V

    invoke-virtual {v0, p3}, Lcom/twitter/model/core/da;->e(Ljava/lang/String;)Lcom/twitter/model/core/cy;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/da;

    invoke-virtual {v0}, Lcom/twitter/model/core/da;->q()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/core/cx;

    .line 301
    invoke-static {p2}, Lcom/twitter/library/client/BrowserDataSourceFactory;->a(Lcom/twitter/library/card/CardContext;)Lcom/twitter/library/client/BrowserDataSource;

    move-result-object v2

    move-object v7, v6

    move-object v8, p1

    move-object v9, v6

    invoke-static/range {v1 .. v9}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Lcom/twitter/library/client/BrowserDataSource;Lcom/twitter/model/core/cx;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_1
    invoke-static {p2}, Lcom/twitter/library/client/BrowserDataSourceFactory;->a(Lcom/twitter/library/card/CardContext;)Lcom/twitter/library/client/BrowserDataSource;

    move-result-object v2

    move-object v3, p3

    move-object v7, v6

    move-object v8, p1

    invoke-static/range {v1 .. v8}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Lcom/twitter/library/client/BrowserDataSource;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/twitter/android/card/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 68
    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 72
    invoke-static {}, Lcom/twitter/android/composer/ax;->a()Lcom/twitter/android/composer/ax;

    move-result-object v2

    const/4 v3, 0x0

    .line 73
    invoke-virtual {v2, p1, v3}, Lcom/twitter/android/composer/ax;->a(Ljava/lang/String;[I)Lcom/twitter/android/composer/ax;

    move-result-object v2

    .line 74
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/twitter/android/composer/ax;->b(Ljava/lang/String;)Lcom/twitter/android/composer/ax;

    move-result-object v1

    .line 75
    invoke-virtual {v1, v0}, Lcom/twitter/android/composer/ax;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;JLclw;Lcss;I)V
    .locals 8

    .prologue
    .line 374
    iget-object v0, p0, Lcom/twitter/android/card/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 375
    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p4, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 379
    invoke-static {}, Lcom/twitter/android/card/m;->b()Lcom/twitter/android/card/m;

    move-result-object v2

    .line 380
    invoke-virtual {v2, p2, p3}, Lcom/twitter/android/card/m;->a(J)V

    .line 381
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 383
    invoke-static {p6}, Lcfp;->a(I)Lcfp;

    move-result-object v3

    invoke-static {v3}, Lcfq;->a(Lcfr;)Ljava/lang/String;

    move-result-object v3

    .line 384
    invoke-static {}, Lcom/twitter/android/composer/ax;->a()Lcom/twitter/android/composer/ax;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 385
    invoke-virtual {p4}, Lclw;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/twitter/android/composer/ax;->a(Ljava/lang/String;I)Lcom/twitter/android/composer/ax;

    move-result-object v2

    .line 386
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/twitter/android/composer/ax;->b(Ljava/lang/String;)Lcom/twitter/android/composer/ax;

    move-result-object v1

    .line 387
    invoke-virtual {v1, p2, p3}, Lcom/twitter/android/composer/ax;->c(J)Lcom/twitter/android/composer/ax;

    move-result-object v1

    .line 388
    invoke-virtual {v1, p5}, Lcom/twitter/android/composer/ax;->a(Lcss;)Lcom/twitter/android/composer/ax;

    move-result-object v1

    const/4 v2, 0x1

    .line 389
    invoke-virtual {v1, v2}, Lcom/twitter/android/composer/ax;->d(Z)Lcom/twitter/app/common/base/z;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/composer/ax;

    .line 390
    invoke-virtual {v1, p4}, Lcom/twitter/android/composer/ax;->a(Lclw;)Lcom/twitter/android/composer/ax;

    move-result-object v1

    .line 391
    invoke-virtual {v1, v3}, Lcom/twitter/android/composer/ax;->e(Ljava/lang/String;)Lcom/twitter/android/composer/ax;

    move-result-object v1

    .line 392
    invoke-virtual {v1, v0}, Lcom/twitter/android/composer/ax;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 384
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/twitter/library/card/CardContext;)V
    .locals 4

    .prologue
    .line 325
    iget-object v0, p0, Lcom/twitter/android/card/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 326
    if-nez v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-wide v2, p0, Lcom/twitter/android/card/e;->c:J

    invoke-static {p2}, Lcom/twitter/library/client/BrowserDataSourceFactory;->a(Lcom/twitter/library/card/CardContext;)Lcom/twitter/library/client/BrowserDataSource;

    move-result-object v1

    invoke-static {v0, p1, v2, v3, v1}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Ljava/lang/String;JLcom/twitter/library/client/BrowserDataSource;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/twitter/android/card/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 81
    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "text/plain"

    .line 85
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.TEXT"

    .line 86
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 87
    invoke-static {v1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/twitter/library/card/CardContext;)V
    .locals 10

    .prologue
    .line 94
    iget-object v0, p0, Lcom/twitter/android/card/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    .line 95
    if-nez v3, :cond_0

    .line 133
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-static {}, Lcom/twitter/android/client/OpenUriHelper;->a()Lcom/twitter/android/client/OpenUriHelper;

    move-result-object v9

    new-instance v0, Lcom/twitter/android/card/f;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p1

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/twitter/android/card/f;-><init>(Lcom/twitter/android/card/e;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;ZZLjava/lang/String;Lcom/twitter/library/card/CardContext;)V

    invoke-virtual {v9, v3, v0}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;ILcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/model/card/property/ImageSpec;",
            ">;I",
            "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/twitter/android/card/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 153
    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 156
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/GalleryActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "association"

    .line 157
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "li"

    .line 158
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "list_starting_index"

    .line 159
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 160
    const/16 v2, 0x23bf

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/card/e;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p1}, Lcom/twitter/library/card/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/twitter/library/card/e;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/twitter/android/card/e;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 203
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/library/card/e;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 181
    iget-object v1, p0, Lcom/twitter/android/card/e;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/twitter/util/w;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 183
    iget-object v3, p0, Lcom/twitter/android/card/e;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 184
    invoke-virtual {v3, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 185
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    invoke-direct {p0, v1}, Lcom/twitter/android/card/e;->e(Ljava/lang/String;)Z

    move-result v1

    .line 187
    if-eqz v1, :cond_0

    .line 188
    const/4 v0, 0x1

    .line 191
    :cond_0
    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Lcom/twitter/android/card/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 214
    if-nez v0, :cond_0

    move v0, v1

    .line 233
    :goto_0
    return v0

    .line 218
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/card/e;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    invoke-direct {p0, p1}, Lcom/twitter/android/card/e;->e(Ljava/lang/String;)Z

    move-result v2

    .line 220
    if-eqz v2, :cond_1

    .line 221
    const/4 v0, 0x1

    goto :goto_0

    .line 225
    :cond_1
    invoke-static {p2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 226
    iget-object v2, p0, Lcom/twitter/android/card/e;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 227
    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 228
    if-eqz v2, :cond_2

    .line 229
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    move v0, v1

    .line 233
    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/card/e;->a(Ljava/lang/String;Lcom/twitter/library/card/CardContext;)V

    .line 316
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 339
    invoke-static {p2}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    :cond_0
    :goto_0
    return v0

    .line 342
    :cond_1
    invoke-static {p1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 344
    iget-object v2, p0, Lcom/twitter/android/card/e;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 345
    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 347
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/card/e;->b:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/twitter/util/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 361
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    const/4 v0, 0x0

    .line 364
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/e;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/twitter/util/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
