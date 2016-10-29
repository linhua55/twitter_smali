.class public Lcom/twitter/android/client/OpenUriHelper;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/regex/Pattern;

.field private static e:Lcom/twitter/android/client/OpenUriHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 76
    const-string/jumbo v0, "^https?://twitter\\.com(/#!)?/(mentions|i/connect)$"

    .line 77
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/client/OpenUriHelper;->a:Ljava/util/regex/Pattern;

    .line 78
    const-string/jumbo v0, "com.android.chrome"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "com.chrome.beta"

    aput-object v2, v1, v4

    const-string/jumbo v2, "com.chrome.dev"

    aput-object v2, v1, v5

    const-string/jumbo v2, "com.android.browser"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const-string/jumbo v3, "org.mozilla.firefox"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "com.opera.mini.android"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "com.opera.browser"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "mobi.mgeek.TunnyBrowser"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "com.UCMobile.intl"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/twitter/util/collection/au;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/client/OpenUriHelper;->b:Ljava/util/Set;

    .line 88
    const-string/jumbo v0, "www.periscope.tv"

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "periscope.tv"

    aput-object v2, v1, v4

    const-string/jumbo v2, "vine.co"

    aput-object v2, v1, v5

    .line 89
    invoke-static {v0, v1}, Lcom/twitter/util/collection/au;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/client/OpenUriHelper;->c:Ljava/util/Set;

    .line 94
    const-string/jumbo v0, "^https?://\\S+\\/parser$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/client/OpenUriHelper;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/twitter/library/client/BrowserDataSource;Lcom/twitter/model/core/cx;)Lcom/twitter/android/client/OpenUriHelper$LinkHandler;
    .locals 2

    .prologue
    .line 301
    instance-of v0, p2, Lcom/twitter/model/core/MediaEntity;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 302
    invoke-interface {p1}, Lcom/twitter/library/client/BrowserDataSource;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Lciz;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    sget-object v0, Lcom/twitter/android/client/OpenUriHelper$LinkHandler;->a:Lcom/twitter/android/client/OpenUriHelper$LinkHandler;

    .line 325
    :goto_0
    return-object v0

    .line 305
    :cond_0
    iget-object v0, p2, Lcom/twitter/model/core/cx;->E:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/twitter/model/core/cx;->E:Ljava/lang/String;

    .line 306
    :goto_1
    sget-object v1, Lcjh;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 307
    sget-object v0, Lcom/twitter/android/client/OpenUriHelper$LinkHandler;->f:Lcom/twitter/android/client/OpenUriHelper$LinkHandler;

    goto :goto_0

    .line 305
    :cond_1
    iget-object v0, p2, Lcom/twitter/model/core/cx;->D:Ljava/lang/String;

    goto :goto_1

    .line 309
    :cond_2
    sget-object v1, Lcom/twitter/android/client/OpenUriHelper;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 310
    sget-object v0, Lcom/twitter/android/client/OpenUriHelper$LinkHandler;->g:Lcom/twitter/android/client/OpenUriHelper$LinkHandler;

    goto :goto_0

    .line 312
    :cond_3
    iget-object v0, p2, Lcom/twitter/model/core/cx;->E:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 313
    iget-object v0, p2, Lcom/twitter/model/core/cx;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/android/client/OpenUriHelper;->b(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 314
    sget-object v0, Lcom/twitter/android/client/OpenUriHelper$LinkHandler;->b:Lcom/twitter/android/client/OpenUriHelper$LinkHandler;

    goto :goto_0

    .line 317
    :cond_4
    iget-object v0, p2, Lcom/twitter/model/core/cx;->E:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/ap;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 318
    sget-object v0, Lcom/twitter/android/client/OpenUriHelper$LinkHandler;->e:Lcom/twitter/android/client/OpenUriHelper$LinkHandler;

    goto :goto_0

    .line 321
    :cond_5
    invoke-static {p0}, Lcom/twitter/android/client/OpenUriHelper;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/twitter/library/client/BrowserDataSource;->c()Lcss;

    move-result-object v0

    if-nez v0, :cond_7

    .line 322
    invoke-interface {p1}, Lcom/twitter/library/client/BrowserDataSource;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 323
    :cond_6
    sget-object v0, Lcom/twitter/android/client/OpenUriHelper$LinkHandler;->c:Lcom/twitter/android/client/OpenUriHelper$LinkHandler;

    goto :goto_0

    .line 325
    :cond_7
    sget-object v0, Lcom/twitter/android/client/OpenUriHelper$LinkHandler;->d:Lcom/twitter/android/client/OpenUriHelper$LinkHandler;

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/twitter/android/client/OpenUriHelper;
    .locals 2

    .prologue
    .line 103
    const-class v1, Lcom/twitter/android/client/OpenUriHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twitter/android/client/OpenUriHelper;->e:Lcom/twitter/android/client/OpenUriHelper;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/twitter/android/client/OpenUriHelper;

    invoke-direct {v0}, Lcom/twitter/android/client/OpenUriHelper;-><init>()V

    sput-object v0, Lcom/twitter/android/client/OpenUriHelper;->e:Lcom/twitter/android/client/OpenUriHelper;

    .line 106
    :cond_0
    sget-object v0, Lcom/twitter/android/client/OpenUriHelper;->e:Lcom/twitter/android/client/OpenUriHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a(Lcom/twitter/model/core/cx;JLandroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/twitter/model/core/cx;->D:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3}, Lcom/twitter/android/client/OpenUriHelper;->a(Ljava/lang/String;JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 509
    const-string/jumbo v0, "tel:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    :goto_0
    return-object p0

    .line 512
    :cond_0
    const-string/jumbo v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 513
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 517
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;JLandroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 531
    invoke-static {p3, p1, p2}, Lvr;->a(Landroid/content/Context;J)Lvr;

    move-result-object v0

    .line 532
    invoke-static {}, Lvr;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/ap;->d(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    invoke-virtual {v0}, Lvr;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    invoke-virtual {v0, p0}, Lvr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 538
    :cond_0
    invoke-static {p0}, Lcom/twitter/android/client/OpenUriHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 336
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 337
    invoke-static {p1}, Lcom/twitter/util/w;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    const-string/jumbo v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/android/client/n;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 401
    invoke-static {p0}, Lbki;->a(Landroid/content/Context;)Lbki;

    move-result-object v0

    .line 402
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 403
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 404
    new-instance v1, Lcom/twitter/android/client/am;

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/twitter/android/client/am;-><init>(Lcom/twitter/android/client/n;Lbki;J)V

    .line 448
    invoke-static {p0, v1}, Lrf;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 449
    invoke-interface {p1}, Lcom/twitter/android/client/n;->b()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 450
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "tweet:accept_data:::impression"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 452
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/client/BrowserDataSource;Lcom/twitter/model/core/cx;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 207
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/twitter/library/client/BrowserDataSource;->c()Lcss;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 208
    sget-object v2, Lcom/twitter/library/api/PromotedEvent;->b:Lcom/twitter/library/api/PromotedEvent;

    .line 209
    invoke-interface {p1}, Lcom/twitter/library/client/BrowserDataSource;->c()Lcss;

    move-result-object v3

    .line 208
    invoke-static {v2, v3}, Lcft;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)Lcfv;

    move-result-object v2

    iget-object v3, p2, Lcom/twitter/model/core/cx;->D:Ljava/lang/String;

    .line 210
    invoke-virtual {v2, v3}, Lcfv;->a(Ljava/lang/String;)Lcfv;

    move-result-object v2

    invoke-virtual {v2}, Lcfv;->a()Lcft;

    move-result-object v2

    .line 211
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 213
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Lcom/twitter/library/client/BrowserDataSource;Lcom/twitter/model/core/cx;)Lcom/twitter/android/client/OpenUriHelper$LinkHandler;

    move-result-object v2

    .line 215
    const/4 v4, 0x0

    .line 216
    sget-object v3, Lcom/twitter/android/client/ao;->a:[I

    invoke-virtual {v2}, Lcom/twitter/android/client/OpenUriHelper$LinkHandler;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    move-object v3, v4

    .line 253
    :goto_0
    if-eqz p5, :cond_1

    .line 254
    if-eqz p1, :cond_2

    .line 255
    invoke-interface {p1}, Lcom/twitter/library/client/BrowserDataSource;->e()Lcom/twitter/library/scribe/ScribeItemsProvider;

    move-result-object v2

    .line 256
    :goto_1
    new-instance v4, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v4, p3, p4}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v5, 0x0

    .line 257
    move-object/from16 v0, p7

    invoke-virtual {v4, p0, v2, v0, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/library/scribe/ScribeItemsProvider;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p5, v4, v5

    .line 258
    invoke-virtual {v2, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 259
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 260
    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v4, p2, Lcom/twitter/model/core/cx;->E:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 261
    :goto_2
    invoke-virtual {v2, v4, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 262
    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->g(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    .line 256
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 264
    :cond_1
    return-void

    .line 218
    :pswitch_0
    invoke-static {p1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/client/BrowserDataSource;

    move-object/from16 v0, p7

    invoke-static {p0, v2, p2, v0}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Lcom/twitter/library/client/BrowserDataSource;Lcom/twitter/model/core/cx;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    move-object v3, v4

    .line 219
    goto :goto_0

    .line 222
    :pswitch_1
    iget-object v2, p2, Lcom/twitter/model/core/cx;->E:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Landroid/net/Uri;)V

    move-object v3, v4

    .line 223
    goto :goto_0

    .line 226
    :pswitch_2
    invoke-static {p2, p3, p4, p0}, Lcom/twitter/android/client/OpenUriHelper;->a(Lcom/twitter/model/core/cx;JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 227
    iget-object v5, p2, Lcom/twitter/model/core/cx;->E:Ljava/lang/String;

    new-instance v8, Lcom/twitter/android/client/aq;

    invoke-direct {v8, p0, v4}, Lcom/twitter/android/client/aq;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-wide v6, p3

    invoke-static/range {v3 .. v10}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/twitter/android/client/n;ZLjava/lang/String;)V

    move-object v3, v4

    .line 229
    goto :goto_0

    .line 232
    :pswitch_3
    invoke-static {p2, p3, p4, p0}, Lcom/twitter/android/client/OpenUriHelper;->a(Lcom/twitter/model/core/cx;JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 233
    iget-object v5, p2, Lcom/twitter/model/core/cx;->E:Ljava/lang/String;

    new-instance v8, Lcom/twitter/android/client/ap;

    invoke-direct {v8, p0, v4, p1}, Lcom/twitter/android/client/ap;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/BrowserDataSource;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-wide v6, p3

    invoke-static/range {v3 .. v10}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/twitter/android/client/n;ZLjava/lang/String;)V

    move-object v3, v4

    .line 235
    goto/16 :goto_0

    .line 238
    :pswitch_4
    invoke-static {p0}, Lcom/twitter/android/client/OpenUriHelper;->c(Landroid/content/Context;)V

    move-object v3, v4

    .line 239
    goto/16 :goto_0

    .line 242
    :pswitch_5
    invoke-static {p0, p2, p3, p4}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Lcom/twitter/model/core/cx;J)V

    move-object v3, v4

    .line 243
    goto/16 :goto_0

    .line 246
    :pswitch_6
    const v2, 0x7f0a0475

    invoke-static {p0, v2}, Lcom/twitter/util/ui/r;->a(Landroid/content/Context;I)V

    move-object v3, v4

    .line 247
    goto/16 :goto_0

    .line 255
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 260
    :cond_3
    iget-object v3, p2, Lcom/twitter/model/core/cx;->D:Ljava/lang/String;

    goto :goto_2

    .line 216
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;Lcom/twitter/library/client/BrowserDataSource;Lcom/twitter/model/core/cx;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 6

    .prologue
    .line 271
    new-instance v0, Lcom/twitter/android/client/ar;

    invoke-interface {p1}, Lcom/twitter/library/client/BrowserDataSource;->f()J

    move-result-wide v2

    move-object v5, p2

    check-cast v5, Lcom/twitter/model/core/MediaEntity;

    move-object v1, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/client/ar;-><init>(Landroid/content/Context;JLcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/model/core/MediaEntity;)V

    .line 273
    invoke-static {p0}, Lbki;->a(Landroid/content/Context;)Lbki;

    move-result-object v1

    invoke-virtual {v1}, Lbki;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/twitter/model/core/cx;->F:Ljava/lang/String;

    const-string/jumbo v2, "pic.twitter.com"

    .line 274
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    invoke-static {p0, v0}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Lcom/twitter/android/client/n;)V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/android/client/ar;->a()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/client/BrowserDataSource;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 11

    .prologue
    .line 138
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v10}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Lcom/twitter/library/client/BrowserDataSource;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;ZLjava/lang/String;)V

    .line 139
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/client/BrowserDataSource;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;Z)V
    .locals 11

    .prologue
    .line 144
    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v10}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Lcom/twitter/library/client/BrowserDataSource;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;ZLjava/lang/String;)V

    .line 145
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/client/BrowserDataSource;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;ZLjava/lang/String;)V
    .locals 11

    .prologue
    .line 165
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/twitter/library/client/BrowserDataSource;->c()Lcss;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 166
    sget-object v2, Lcom/twitter/library/api/PromotedEvent;->n:Lcom/twitter/library/api/PromotedEvent;

    invoke-interface {p1}, Lcom/twitter/library/client/BrowserDataSource;->c()Lcss;

    move-result-object v3

    invoke-static {v2, v3}, Lcft;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)Lcfv;

    move-result-object v2

    .line 167
    invoke-virtual {v2}, Lcfv;->a()Lcft;

    move-result-object v2

    .line 166
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 169
    :cond_0
    invoke-static {p2, p3, p4, p0}, Lcom/twitter/android/client/OpenUriHelper;->a(Ljava/lang/String;JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 170
    const/4 v5, 0x0

    new-instance v8, Lcom/twitter/android/client/ap;

    invoke-direct {v8, p0, v4, p1}, Lcom/twitter/android/client/ap;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/BrowserDataSource;)V

    move-object v3, p0

    move-wide v6, p3

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-static/range {v3 .. v10}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/twitter/android/client/n;ZLjava/lang/String;)V

    .line 172
    if-eqz p1, :cond_2

    .line 173
    invoke-interface {p1}, Lcom/twitter/library/client/BrowserDataSource;->e()Lcom/twitter/library/scribe/ScribeItemsProvider;

    move-result-object v2

    .line 174
    :goto_0
    if-eqz p5, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v3, p3, v4

    if-eqz v3, :cond_1

    .line 175
    new-instance v3, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v3, p3, p4}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v4, 0x0

    .line 176
    move-object/from16 v0, p7

    invoke-virtual {v3, p0, v2, v0, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/library/scribe/ScribeItemsProvider;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p5, v3, v4

    .line 177
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 178
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 179
    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 180
    invoke-virtual {v2, p2}, Lcom/twitter/library/scribe/TwitterScribeLog;->d(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 181
    invoke-virtual {v2, p2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    .line 175
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 183
    :cond_1
    return-void

    .line 173
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/twitter/model/core/cx;J)V
    .locals 4

    .prologue
    .line 282
    iget-object v0, p1, Lcom/twitter/model/core/cx;->E:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/twitter/model/core/cx;->E:Ljava/lang/String;

    .line 283
    :goto_0
    sget-object v1, Lcjh;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 286
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/TweetActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lcom/twitter/library/provider/dh;->b:Landroid/net/Uri;

    .line 287
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const/16 v3, 0x2f

    .line 288
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "ownerId"

    .line 289
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 287
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 286
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 292
    :cond_0
    return-void

    .line 282
    :cond_1
    iget-object v0, p1, Lcom/twitter/model/core/cx;->D:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Ljava/lang/String;JLcom/twitter/library/client/BrowserDataSource;)V

    .line 127
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JLcom/twitter/library/client/BrowserDataSource;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 131
    invoke-static {p1, p2, p3, p0}, Lcom/twitter/android/client/OpenUriHelper;->a(Ljava/lang/String;JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 132
    new-instance v6, Lcom/twitter/android/client/ap;

    invoke-direct {v6, p0, v2, p4}, Lcom/twitter/android/client/ap;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/BrowserDataSource;)V

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v4, p2

    move-object v8, v3

    invoke-static/range {v1 .. v8}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/twitter/android/client/n;ZLjava/lang/String;)V

    .line 133
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/BrowserDataSource;)V
    .locals 2

    .prologue
    .line 494
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/browser/BrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 495
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "browser_data_source"

    .line 496
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 494
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 497
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/twitter/android/client/n;ZLjava/lang/String;)V
    .locals 5

    .prologue
    .line 360
    if-nez p2, :cond_0

    .line 361
    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 362
    sget-object v1, Lcjh;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 363
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 365
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/TweetActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lcom/twitter/library/provider/dh;->b:Landroid/net/Uri;

    .line 366
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const/16 v3, 0x2f

    .line 367
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "ownerId"

    .line 369
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 368
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 366
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 365
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 389
    :goto_1
    return-void

    :cond_0
    move-object p1, p2

    .line 360
    goto :goto_0

    .line 371
    :cond_1
    sget-object v1, Lcom/twitter/android/client/OpenUriHelper;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    invoke-static {p0}, Lcom/twitter/android/client/OpenUriHelper;->c(Landroid/content/Context;)V

    goto :goto_1

    .line 373
    :cond_2
    invoke-static {p0, v0}, Lcom/twitter/android/client/OpenUriHelper;->b(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 374
    invoke-static {p0, v0}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1

    .line 377
    :cond_3
    invoke-static {p0}, Lbki;->a(Landroid/content/Context;)Lbki;

    move-result-object v1

    .line 378
    invoke-static {v0, p6}, Lcom/twitter/android/UrlInterpreterActivity;->a(Landroid/net/Uri;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 379
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/UrlInterpreterActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "source"

    .line 380
    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 381
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "is_from_umf_prompt"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 379
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 383
    :cond_4
    invoke-virtual {v1}, Lbki;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 384
    invoke-static {p0, p5}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Lcom/twitter/android/client/n;)V

    goto :goto_1

    .line 386
    :cond_5
    invoke-interface {p5}, Lcom/twitter/android/client/n;->a()V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 468
    invoke-static {}, Lcom/twitter/android/client/OpenUriHelper;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "in_app_browser"

    .line 469
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    :goto_0
    return v0

    .line 469
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 455
    invoke-static {p1}, Lcom/twitter/util/ap;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v0

    .line 458
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 459
    invoke-static {p0}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, v1}, Lcom/twitter/android/client/OpenUriHelper;->b(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/twitter/android/client/OpenUriHelper;->b(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 570
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 571
    if-eqz v0, :cond_0

    sget-object v1, Lcom/twitter/android/client/OpenUriHelper;->c:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 464
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 605
    invoke-static {}, Lcom/twitter/android/client/OpenUriHelper;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "readability_mode"

    .line 606
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 605
    :goto_0
    return v0

    .line 606
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 473
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 474
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 475
    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 476
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_1

    .line 487
    :cond_0
    :goto_0
    return v0

    .line 479
    :cond_1
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 480
    invoke-static {v1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.twitter.android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 484
    const-string/jumbo v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 487
    invoke-static {p1}, Lcom/twitter/util/w;->a(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/twitter/android/client/OpenUriHelper;->b:Ljava/util/Set;

    .line 488
    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v2, :cond_4

    .line 489
    :cond_2
    invoke-static {p1}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/client/OpenUriHelper;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Landroid/net/Uri;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 589
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 590
    if-eqz v1, :cond_0

    .line 591
    const-string/jumbo v2, "ad_formats_android_in_app_browser_unsupported_domains"

    .line 592
    invoke-static {v2}, Lcom/twitter/config/d;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 593
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 595
    :cond_0
    return v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 581
    if-eqz p0, :cond_1

    const-string/jumbo v0, "youtube.com/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "youtu.be/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 295
    invoke-static {p0}, Lcom/twitter/android/util/aj;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 296
    return-void
.end method

.method public static c()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 610
    const-string/jumbo v2, "readability_v2_enabled"

    invoke-static {v2}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v2

    .line 611
    const-string/jumbo v3, "android_readability_3494"

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v5, "readability_v2_enabled"

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/twitter/config/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    .line 613
    const-string/jumbo v4, "readability_v2_proxy_uri"

    .line 614
    invoke-static {v4}, Lcom/twitter/config/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 615
    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    sget-object v2, Lcom/twitter/android/client/OpenUriHelper;->d:Ljava/util/regex/Pattern;

    .line 616
    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 615
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 616
    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 550
    invoke-static {p1}, Lbki;->a(Landroid/content/Context;)Lbki;

    move-result-object v0

    invoke-virtual {v0}, Lbki;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "twitter_access_android_media_forward_enabled"

    .line 551
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    new-instance v0, Lcom/twitter/android/client/an;

    invoke-direct {v0, p0, p2}, Lcom/twitter/android/client/an;-><init>(Lcom/twitter/android/client/OpenUriHelper;Ljava/lang/Runnable;)V

    invoke-static {p1, v0}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Lcom/twitter/android/client/n;)V

    .line 567
    :goto_0
    return-void

    .line 565
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
