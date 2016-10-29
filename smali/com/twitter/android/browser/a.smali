.class public Lcom/twitter/android/browser/a;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final e:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Lcom/twitter/library/scribe/WebsiteAssetsLog;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Landroid/webkit/WebView;

.field private f:Landroid/widget/ProgressBar;

.field private final g:Lcom/twitter/android/browser/g;

.field private final h:Lcom/twitter/android/browser/h;

.field private final i:Landroid/content/Context;

.field private j:J

.field private k:J

.field private l:J

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Lcom/twitter/library/api/ax;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/concurrent/atomic/AtomicInteger;

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/twitter/android/browser/a;->e:Landroid/util/LruCache;

    return-void
.end method

.method constructor <init>(Lcom/twitter/android/browser/g;Lcom/twitter/android/browser/h;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/browser/a;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 106
    iput v1, p0, Lcom/twitter/android/browser/a;->s:I

    .line 109
    iput-object p1, p0, Lcom/twitter/android/browser/a;->g:Lcom/twitter/android/browser/g;

    .line 110
    iput-object p2, p0, Lcom/twitter/android/browser/a;->h:Lcom/twitter/android/browser/h;

    .line 111
    invoke-interface {p1}, Lcom/twitter/android/browser/g;->i()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/browser/a;->i:Landroid/content/Context;

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/browser/a;I)I
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/twitter/android/browser/a;->m:I

    return p1
.end method

.method static synthetic a(Lcom/twitter/android/browser/a;)Lcom/twitter/android/browser/g;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/twitter/android/browser/a;->g:Lcom/twitter/android/browser/g;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/browser/a;Lcom/twitter/library/api/ax;)Lcom/twitter/library/api/ax;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/twitter/android/browser/a;->p:Lcom/twitter/library/api/ax;

    return-object p1
.end method

.method private a(Lcom/twitter/library/client/BrowserDataSource;)Lcom/twitter/library/scribe/WebsiteAssetsLog;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 301
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/twitter/library/client/BrowserDataSource;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-object v5

    .line 304
    :cond_1
    invoke-interface {p1}, Lcom/twitter/library/client/BrowserDataSource;->d()Lclw;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0}, Lclw;->N()Lclm;

    move-result-object v1

    .line 309
    if-eqz v1, :cond_0

    .line 312
    const-string/jumbo v0, "_card_data"

    .line 313
    invoke-static {v0, v1}, Lcom/twitter/library/card/bh;->a(Ljava/lang/String;Lclm;)Ljava/util/Map;

    move-result-object v0

    .line 314
    if-eqz v0, :cond_2

    const-string/jumbo v2, "card_url"

    .line 315
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 316
    :cond_2
    const-string/jumbo v0, "_card_data"

    .line 317
    invoke-static {v0, v1}, Lcom/twitter/library/card/aq;->a(Ljava/lang/String;Lclm;)Ljava/util/Map;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_3

    const-string/jumbo v2, "card_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 319
    :goto_1
    const-string/jumbo v2, "website_url"

    invoke-static {v2, v1}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v2

    .line 320
    const-string/jumbo v3, "website_dest_url"

    .line 321
    invoke-static {v3, v1}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v3

    .line 322
    invoke-interface {p1}, Lcom/twitter/library/client/BrowserDataSource;->c()Lcss;

    move-result-object v4

    iget-object v8, v4, Lcss;->c:Ljava/lang/String;

    .line 323
    const-string/jumbo v4, "website_assets"

    invoke-static {v4, v1}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v4

    .line 325
    new-instance v1, Lcom/twitter/library/scribe/WebsiteAssetsLog;

    int-to-long v6, v0

    invoke-direct/range {v1 .. v8}, Lcom/twitter/library/scribe/WebsiteAssetsLog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    move-object v5, v1

    goto :goto_0

    .line 318
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 69
    invoke-static {p0, p1}, Lcom/twitter/android/browser/a;->b(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 533
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    sget-object v0, Lcom/twitter/android/browser/a;->e:Landroid/util/LruCache;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/twitter/android/browser/a;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/twitter/android/browser/a;->o:Z

    return v0
.end method

.method private static c(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 545
    sget-object v0, Lcom/twitter/android/browser/a;->e:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 546
    const/4 v2, 0x0

    .line 547
    if-eqz v0, :cond_1

    .line 548
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x493e0

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 549
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 554
    :goto_0
    return-object v0

    .line 551
    :cond_0
    sget-object v0, Lcom/twitter/android/browser/a;->e:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method static synthetic c(Lcom/twitter/android/browser/a;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/twitter/android/browser/a;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/browser/a;)Lcom/twitter/android/browser/h;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/twitter/android/browser/a;->h:Lcom/twitter/android/browser/h;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/android/browser/a;)Lcom/twitter/library/api/ax;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/twitter/android/browser/a;->p:Lcom/twitter/library/api/ax;

    return-object v0
.end method

.method private i()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 370
    iget-object v1, p0, Lcom/twitter/android/browser/a;->i:Landroid/content/Context;

    new-instance v0, Lcom/twitter/android/dm/m;

    invoke-direct {v0}, Lcom/twitter/android/dm/m;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/browser/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 371
    invoke-virtual {v0, v2}, Lcom/twitter/android/dm/m;->a(Ljava/lang/String;)Lcom/twitter/android/dm/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/m;

    .line 372
    invoke-virtual {v0, v4}, Lcom/twitter/android/dm/m;->d(Z)Lcom/twitter/android/dm/m;

    move-result-object v0

    .line 373
    invoke-virtual {v0, v4}, Lcom/twitter/android/dm/m;->a(Z)Lcom/twitter/android/dm/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/m;

    .line 374
    invoke-virtual {v0}, Lcom/twitter/android/dm/m;->d()Lcom/twitter/android/dm/l;

    move-result-object v0

    .line 370
    invoke-static {v1, v0}, Lcom/twitter/android/dm/r;->a(Landroid/content/Context;Lcom/twitter/android/dm/l;)Landroid/content/Intent;

    move-result-object v0

    .line 375
    iget-object v1, p0, Lcom/twitter/android/browser/a;->g:Lcom/twitter/android/browser/g;

    invoke-interface {v1, v0}, Lcom/twitter/android/browser/g;->a(Landroid/content/Intent;)V

    .line 376
    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 379
    invoke-static {}, Lcom/twitter/android/composer/ax;->a()Lcom/twitter/android/composer/ax;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/browser/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/composer/ax;->a(Ljava/lang/String;[I)Lcom/twitter/android/composer/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/browser/a;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/twitter/android/browser/a;->g:Lcom/twitter/android/browser/g;

    invoke-interface {v1, v0}, Lcom/twitter/android/browser/g;->a(Landroid/content/Intent;)V

    .line 381
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 447
    iget-object v0, p0, Lcom/twitter/android/browser/a;->q:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/twitter/android/browser/a;->m:I

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/twitter/android/browser/a;->h:Lcom/twitter/android/browser/h;

    iget-object v1, p0, Lcom/twitter/android/browser/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/browser/a;->q:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/browser/h;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 450
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/browser/a;->q:Ljava/util/List;

    .line 451
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 393
    iget-object v0, p0, Lcom/twitter/android/browser/a;->a:Lcom/twitter/library/scribe/WebsiteAssetsLog;

    if-eqz v0, :cond_0

    .line 394
    invoke-static {p1}, Lcom/twitter/android/browser/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 395
    const-string/jumbo v0, "javascript"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/twitter/android/browser/i;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/twitter/android/browser/a;->a:Lcom/twitter/library/scribe/WebsiteAssetsLog;

    const/4 v7, 0x0

    move-object v1, p1

    move-wide v4, v2

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/library/scribe/WebsiteAssetsLog;->a(Ljava/lang/String;JJLjava/lang/String;Z)V

    .line 399
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a()V
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 135
    iget-boolean v2, p0, Lcom/twitter/android/browser/a;->n:Z

    if-eqz v2, :cond_0

    .line 144
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-wide v2, p0, Lcom/twitter/android/browser/a;->j:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/twitter/android/browser/a;->j:J

    sub-long/2addr v0, v2

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/twitter/android/browser/a;->h:Lcom/twitter/android/browser/h;

    invoke-virtual {v2, v0, v1}, Lcom/twitter/android/browser/h;->a(J)V

    .line 141
    iget-object v2, p0, Lcom/twitter/android/browser/a;->h:Lcom/twitter/android/browser/h;

    sget-object v3, Lcom/twitter/library/api/PromotedEvent;->aq:Lcom/twitter/library/api/PromotedEvent;

    invoke-virtual {v2, v3}, Lcom/twitter/android/browser/h;->a(Lcom/twitter/library/api/PromotedEvent;)V

    .line 142
    iget-object v2, p0, Lcom/twitter/android/browser/a;->h:Lcom/twitter/android/browser/h;

    iget-object v3, p0, Lcom/twitter/android/browser/a;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/twitter/android/browser/h;->a(JJ)V

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/browser/a;->n:Z

    goto :goto_0
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 131
    const-string/jumbo v0, "url"

    iget-object v1, p0, Lcom/twitter/android/browser/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public a(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 186
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 188
    if-nez p1, :cond_3

    .line 189
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/twitter/android/browser/a;->b:Ljava/lang/String;

    .line 190
    invoke-static {v0}, Lcom/twitter/util/ap;->d(Landroid/net/Uri;)Z

    move-result v0

    move v3, v0

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/browser/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/browser/a;->c:Ljava/lang/String;

    .line 197
    const-string/jumbo v0, "browser_data_source"

    .line 198
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/BrowserDataSource;

    .line 200
    invoke-direct {p0, v0}, Lcom/twitter/android/browser/a;->a(Lcom/twitter/library/client/BrowserDataSource;)Lcom/twitter/library/scribe/WebsiteAssetsLog;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/browser/a;->a:Lcom/twitter/library/scribe/WebsiteAssetsLog;

    .line 202
    iget-object v0, p0, Lcom/twitter/android/browser/a;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 203
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 205
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 206
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 207
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 208
    sget-object v4, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 209
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 210
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 211
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 212
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 213
    iget-object v1, p0, Lcom/twitter/android/browser/a;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/twitter/android/browser/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/twitter/android/browser/a;->g:Lcom/twitter/android/browser/g;

    invoke-interface {v1}, Lcom/twitter/android/browser/g;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/browser/a;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/twitter/android/browser/b;

    iget-object v4, p0, Lcom/twitter/android/browser/a;->f:Landroid/widget/ProgressBar;

    invoke-direct {v1, p0, v4}, Lcom/twitter/android/browser/b;-><init>(Lcom/twitter/android/browser/a;Landroid/widget/ProgressBar;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 231
    iget-object v0, p0, Lcom/twitter/android/browser/a;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/twitter/android/browser/c;

    invoke-direct {v1, p0}, Lcom/twitter/android/browser/c;-><init>(Lcom/twitter/android/browser/a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 257
    iget-object v0, p0, Lcom/twitter/android/browser/a;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/twitter/android/browser/d;

    invoke-direct {v1, p0}, Lcom/twitter/android/browser/d;-><init>(Lcom/twitter/android/browser/a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 271
    if-eqz v3, :cond_1

    .line 272
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/browser/a;->q:Ljava/util/List;

    .line 275
    :cond_1
    if-eqz v3, :cond_6

    .line 278
    iget-object v0, p0, Lcom/twitter/android/browser/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/android/browser/a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 280
    :cond_2
    if-lez v2, :cond_5

    .line 281
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/twitter/android/browser/a;->m:I

    .line 282
    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 283
    iget-object v1, p0, Lcom/twitter/android/browser/a;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 295
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/browser/a;->h:Lcom/twitter/android/browser/h;

    const-string/jumbo v1, "native_browser_open"

    invoke-virtual {v0, v1}, Lcom/twitter/android/browser/h;->a(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcom/twitter/android/browser/a;->f()V

    .line 297
    return-void

    .line 192
    :cond_3
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/browser/a;->b:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/twitter/android/browser/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twitter/android/browser/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/ap;->d(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    move v3, v0

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_2

    .line 285
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/browser/a;->l:J

    .line 286
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 287
    new-instance v1, Lcom/twitter/library/api/ax;

    iget-object v2, p0, Lcom/twitter/android/browser/a;->i:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/android/browser/a;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/twitter/library/api/ax;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    new-instance v0, Lcom/twitter/android/browser/e;

    iget-object v2, p0, Lcom/twitter/android/browser/a;->i:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/twitter/android/browser/e;-><init>(Landroid/content/Context;Lcom/twitter/android/browser/a;)V

    .line 288
    invoke-virtual {v1, v0}, Lcom/twitter/library/api/ax;->a(Lcom/twitter/internal/android/service/c;)Lcom/twitter/internal/android/service/AsyncOperation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/ax;

    iput-object v0, p0, Lcom/twitter/android/browser/a;->p:Lcom/twitter/library/api/ax;

    .line 289
    iget-object v0, p0, Lcom/twitter/android/browser/a;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/browser/a;->p:Lcom/twitter/library/api/ax;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    goto :goto_1

    .line 292
    :cond_6
    iget-object v0, p0, Lcom/twitter/android/browser/a;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/twitter/android/browser/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Landroid/webkit/WebView;Landroid/widget/ProgressBar;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/twitter/android/browser/a;->d:Landroid/webkit/WebView;

    .line 116
    iput-object p2, p0, Lcom/twitter/android/browser/a;->f:Landroid/widget/ProgressBar;

    .line 117
    return-void
.end method

.method a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 454
    iget-object v0, p0, Lcom/twitter/android/browser/a;->q:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/twitter/android/browser/a;->q:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    :cond_0
    iget-wide v0, p0, Lcom/twitter/android/browser/a;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 458
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/browser/a;->j:J

    .line 464
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/browser/a;->k:J

    .line 466
    iget-boolean v0, p0, Lcom/twitter/android/browser/a;->o:Z

    if-nez v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/twitter/android/browser/a;->h:Lcom/twitter/android/browser/h;

    invoke-virtual {v0}, Lcom/twitter/android/browser/h;->a()V

    .line 470
    :cond_1
    iput-object p2, p0, Lcom/twitter/android/browser/a;->b:Ljava/lang/String;

    .line 471
    iget-object v0, p0, Lcom/twitter/android/browser/a;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/twitter/android/browser/a;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/browser/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 473
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 474
    iget-object v0, p0, Lcom/twitter/android/browser/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/ap;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/twitter/android/browser/a;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/browser/a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/client/OpenUriHelper;->b(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 475
    iget-object v0, p0, Lcom/twitter/android/browser/a;->i:Landroid/content/Context;

    const v1, 0x7f0a0475

    invoke-static {v0, v1}, Lcom/twitter/util/ui/r;->a(Landroid/content/Context;I)V

    .line 481
    :cond_2
    :goto_1
    return-void

    .line 460
    :cond_3
    iget v0, p0, Lcom/twitter/android/browser/a;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/android/browser/a;->s:I

    .line 461
    iget-object v0, p0, Lcom/twitter/android/browser/a;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 477
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/browser/a;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/browser/a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 478
    iget-object v0, p0, Lcom/twitter/android/browser/a;->g:Lcom/twitter/android/browser/g;

    invoke-interface {v0}, Lcom/twitter/android/browser/g;->aw_()V

    goto :goto_1
.end method

.method public a(Lcom/twitter/app/common/base/y;Landroid/view/Window;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 122
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/base/y;->b(I)V

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/base/y;->d(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/twitter/android/browser/a;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 125
    invoke-virtual {p1, v1}, Lcom/twitter/app/common/base/y;->c(Z)V

    .line 126
    invoke-virtual {p1, v1}, Lcom/twitter/app/common/base/y;->b(Z)V

    .line 127
    invoke-virtual {p1, v1}, Lcom/twitter/app/common/base/y;->a(Z)V

    .line 128
    return-void
.end method

.method protected a(Lcyg;)V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/twitter/android/browser/a;->g:Lcom/twitter/android/browser/g;

    const v1, 0x7f0a049e

    invoke-interface {v0, v1}, Lcom/twitter/android/browser/g;->a(I)V

    .line 182
    const v0, 0x7f14001e

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 183
    return-void
.end method

.method public a(Lcyd;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 333
    invoke-interface {p1}, Lcyd;->a()I

    move-result v2

    .line 334
    sparse-switch v2, :sswitch_data_0

    .line 366
    :goto_0
    return v0

    .line 336
    :sswitch_0
    invoke-direct {p0}, Lcom/twitter/android/browser/a;->j()V

    .line 337
    iget-object v0, p0, Lcom/twitter/android/browser/a;->h:Lcom/twitter/android/browser/h;

    const-string/jumbo v2, "share_via_tweet"

    invoke-virtual {v0, v2}, Lcom/twitter/android/browser/h;->a(Ljava/lang/String;)V

    :goto_1
    move v0, v1

    .line 366
    goto :goto_0

    .line 341
    :sswitch_1
    invoke-direct {p0}, Lcom/twitter/android/browser/a;->i()V

    .line 342
    iget-object v0, p0, Lcom/twitter/android/browser/a;->h:Lcom/twitter/android/browser/h;

    const-string/jumbo v2, "share_tweet_privately"

    invoke-virtual {v0, v2}, Lcom/twitter/android/browser/h;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 346
    :sswitch_2
    iget-object v2, p0, Lcom/twitter/android/browser/a;->i:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/android/browser/a;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 347
    iget-object v2, p0, Lcom/twitter/android/browser/a;->i:Landroid/content/Context;

    const v3, 0x7f0a0226

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 349
    iget-object v0, p0, Lcom/twitter/android/browser/a;->h:Lcom/twitter/android/browser/h;

    const-string/jumbo v2, "copy_link"

    invoke-virtual {v0, v2}, Lcom/twitter/android/browser/h;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 353
    :sswitch_3
    invoke-virtual {p0}, Lcom/twitter/android/browser/a;->openBrowser()V

    .line 354
    iget-object v0, p0, Lcom/twitter/android/browser/a;->h:Lcom/twitter/android/browser/h;

    const-string/jumbo v2, "open_in_browser"

    invoke-virtual {v0, v2}, Lcom/twitter/android/browser/h;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 358
    :sswitch_4
    iget-object v0, p0, Lcom/twitter/android/browser/a;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/browser/a;->b:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 359
    iget-object v0, p0, Lcom/twitter/android/browser/a;->h:Lcom/twitter/android/browser/h;

    const-string/jumbo v2, "share"

    invoke-virtual {v0, v2}, Lcom/twitter/android/browser/h;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 334
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f130139 -> :sswitch_4
        0x7f130580 -> :sswitch_3
        0x7f1307ee -> :sswitch_0
        0x7f1307ef -> :sswitch_1
        0x7f1307f0 -> :sswitch_2
    .end sparse-switch
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/twitter/android/browser/a;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 148
    iget-object v0, p0, Lcom/twitter/android/browser/a;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 149
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    .line 403
    if-eqz p1, :cond_2

    .line 404
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 406
    if-eqz v4, :cond_3

    const-string/jumbo v0, "data"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 407
    :goto_0
    iget-boolean v5, p0, Lcom/twitter/android/browser/a;->o:Z

    if-nez v5, :cond_2

    if-nez v0, :cond_2

    invoke-static {v4}, Lcom/twitter/util/ap;->d(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 408
    iput-boolean v1, p0, Lcom/twitter/android/browser/a;->o:Z

    .line 410
    iget-wide v0, p0, Lcom/twitter/android/browser/a;->l:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/twitter/android/browser/a;->l:J

    move-wide v4, v0

    .line 412
    :goto_1
    cmp-long v0, v4, v2

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v4

    .line 414
    :goto_2
    iget-wide v6, p0, Lcom/twitter/android/browser/a;->k:J

    cmp-long v6, v6, v2

    if-lez v6, :cond_0

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    iget-wide v2, p0, Lcom/twitter/android/browser/a;->k:J

    sub-long/2addr v2, v4

    .line 417
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 419
    const-string/jumbo v5, "redirects"

    iget v6, p0, Lcom/twitter/android/browser/a;->s:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string/jumbo v5, "skipped_redirects"

    iget v6, p0, Lcom/twitter/android/browser/a;->m:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string/jumbo v5, "pre_load_duration"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string/jumbo v2, "request_count"

    iget-object v3, p0, Lcom/twitter/android/browser/a;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string/jumbo v2, "original_url"

    iget-object v3, p0, Lcom/twitter/android/browser/a;->c:Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v2, p0, Lcom/twitter/android/browser/a;->h:Lcom/twitter/android/browser/h;

    invoke-virtual {v2, v0, v1, v4}, Lcom/twitter/android/browser/h;->a(JLjava/util/Map;)V

    .line 430
    iget-object v0, p0, Lcom/twitter/android/browser/a;->a:Lcom/twitter/library/scribe/WebsiteAssetsLog;

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/twitter/android/browser/a;->h:Lcom/twitter/android/browser/h;

    iget-object v1, p0, Lcom/twitter/android/browser/a;->a:Lcom/twitter/library/scribe/WebsiteAssetsLog;

    invoke-virtual {v0, v1}, Lcom/twitter/android/browser/h;->a(Lcom/twitter/library/scribe/WebsiteAssetsLog;)V

    .line 434
    :cond_1
    invoke-direct {p0}, Lcom/twitter/android/browser/a;->k()V

    .line 436
    invoke-virtual {p0}, Lcom/twitter/android/browser/a;->g()V

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/browser/a;->f:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 441
    return-void

    .line 406
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 410
    :cond_4
    iget-wide v0, p0, Lcom/twitter/android/browser/a;->j:J

    move-wide v4, v0

    goto :goto_1

    :cond_5
    move-wide v0, v2

    .line 412
    goto :goto_2
.end method

.method c()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/twitter/android/browser/a;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/twitter/android/browser/a;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/browser/a;->d()V

    goto :goto_0
.end method

.method d()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/twitter/android/browser/a;->p:Lcom/twitter/library/api/ax;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/twitter/android/browser/a;->p:Lcom/twitter/library/api/ax;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/library/api/ax;->cancel(Z)Z

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/browser/a;->k()V

    .line 177
    iget-object v0, p0, Lcom/twitter/android/browser/a;->g:Lcom/twitter/android/browser/g;

    invoke-interface {v0}, Lcom/twitter/android/browser/g;->c()V

    .line 178
    return-void
.end method

.method e()V
    .locals 0

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/twitter/android/browser/a;->openBrowser()V

    .line 485
    invoke-virtual {p0}, Lcom/twitter/android/browser/a;->c()V

    .line 486
    return-void
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 493
    return-void
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 500
    return-void
.end method

.method protected h()I
    .locals 1

    .prologue
    .line 506
    const v0, 0x7f04020a

    return v0
.end method

.method openBrowser()V
    .locals 3

    .prologue
    .line 384
    new-instance v0, Lcom/twitter/android/browser/f;

    iget-object v1, p0, Lcom/twitter/android/browser/a;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/browser/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/browser/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/twitter/android/browser/a;->i:Landroid/content/Context;

    invoke-static {v1}, Lbki;->a(Landroid/content/Context;)Lbki;

    move-result-object v1

    invoke-virtual {v1}, Lbki;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/twitter/android/browser/a;->i:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Lcom/twitter/android/client/n;)V

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    invoke-interface {v0}, Lcom/twitter/android/client/n;->a()V

    goto :goto_0
.end method
