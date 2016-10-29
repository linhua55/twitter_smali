.class public Lcom/twitter/library/client/am;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/y",
        "<",
        "Lcom/twitter/library/client/ak;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic c:Z

.field private static d:Lcom/twitter/library/client/am;


# instance fields
.field protected a:Z

.field protected b:Lcom/twitter/library/client/ap;

.field private final e:Landroid/content/Context;

.field private final f:Lcom/twitter/platform/u;

.field private g:Landroid/support/customtabs/CustomTabsClient;

.field private h:Landroid/support/customtabs/CustomTabsServiceConnection;

.field private i:Lcom/twitter/library/client/BrowserDataSource;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/twitter/library/client/am;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/library/client/am;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/client/am;->e:Landroid/content/Context;

    .line 140
    invoke-static {}, Lcom/twitter/platform/PlatformContext;->e()Lcom/twitter/platform/PlatformContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/platform/PlatformContext;->a()Lcom/twitter/platform/u;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/client/am;->f:Lcom/twitter/platform/u;

    .line 141
    return-void
.end method

.method static synthetic a(Lcom/twitter/library/client/am;Landroid/support/customtabs/CustomTabsClient;)Landroid/support/customtabs/CustomTabsClient;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/twitter/library/client/am;->g:Landroid/support/customtabs/CustomTabsClient;

    return-object p1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/twitter/library/client/am;
    .locals 4

    .prologue
    .line 72
    const-class v1, Lcom/twitter/library/client/am;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twitter/library/client/am;->d:Lcom/twitter/library/client/am;

    if-nez v0, :cond_0

    .line 73
    const-class v0, Lcom/twitter/library/client/am;

    invoke-static {v0}, Lcvp;->a(Ljava/lang/Class;)V

    .line 74
    new-instance v0, Lcom/twitter/library/client/am;

    invoke-direct {v0, p0}, Lcom/twitter/library/client/am;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/twitter/library/client/am;->d:Lcom/twitter/library/client/am;

    .line 77
    :cond_0
    sget-object v0, Lcom/twitter/library/client/am;->d:Lcom/twitter/library/client/am;

    invoke-virtual {v0}, Lcom/twitter/library/client/am;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    const-string/jumbo v0, "CustomTabs"

    const-string/jumbo v2, "CustomTabsManager requires initialization. Creating connection..."

    invoke-static {v0, v2}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/twitter/library/client/am;->d:Lcom/twitter/library/client/am;

    invoke-virtual {v0, p0}, Lcom/twitter/library/client/am;->e(Landroid/content/Context;)V

    .line 86
    :cond_1
    :goto_0
    sget-object v0, Lcom/twitter/library/client/am;->d:Lcom/twitter/library/client/am;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 80
    :cond_2
    :try_start_1
    sget-object v0, Lcom/twitter/library/client/am;->d:Lcom/twitter/library/client/am;

    iget-object v0, v0, Lcom/twitter/library/client/am;->g:Landroid/support/customtabs/CustomTabsClient;

    if-eqz v0, :cond_1

    .line 81
    sget-object v0, Lcom/twitter/library/client/am;->d:Lcom/twitter/library/client/am;

    iget-object v0, v0, Lcom/twitter/library/client/am;->g:Landroid/support/customtabs/CustomTabsClient;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/support/customtabs/CustomTabsClient;->warmup(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    const-string/jumbo v0, "CustomTabs"

    const-string/jumbo v2, "Client warmup failed when retrieving the CustomTabsManager instance"

    invoke-static {v0, v2}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/twitter/library/client/am;)Lcom/twitter/platform/u;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/twitter/library/client/am;->f:Lcom/twitter/platform/u;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/library/client/am;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/twitter/library/client/am;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/twitter/library/client/am;)Landroid/support/customtabs/CustomTabsClient;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/twitter/library/client/am;->g:Landroid/support/customtabs/CustomTabsClient;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/twitter/library/client/am;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/twitter/library/util/k;->a()Lcom/twitter/library/util/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twitter/library/util/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 115
    invoke-static {}, Lcom/twitter/library/client/am;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "in_app_browser"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    :goto_0
    return v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Landroid/support/customtabs/CustomTabsSession;
    .locals 4

    .prologue
    .line 368
    const/4 v0, 0x0

    .line 369
    invoke-virtual {p0}, Lcom/twitter/library/client/am;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    sget-boolean v0, Lcom/twitter/library/client/am;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/client/am;->g:Landroid/support/customtabs/CustomTabsClient;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 371
    :cond_0
    new-instance v0, Lcom/twitter/library/client/ao;

    iget-object v1, p0, Lcom/twitter/library/client/am;->e:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/twitter/library/client/ao;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 372
    iget-object v1, p0, Lcom/twitter/library/client/am;->g:Landroid/support/customtabs/CustomTabsClient;

    invoke-virtual {v1, v0}, Landroid/support/customtabs/CustomTabsClient;->newSession(Landroid/support/customtabs/CustomTabsCallback;)Landroid/support/customtabs/CustomTabsSession;

    move-result-object v0

    .line 373
    if-nez v0, :cond_1

    .line 376
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 377
    const-string/jumbo v2, "url"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    new-instance v2, Lcom/twitter/library/client/ak;

    const-string/jumbo v3, "chrome::::error"

    invoke-direct {v2, v3, v1}, Lcom/twitter/library/client/ak;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v2}, Lcom/twitter/library/client/am;->a(Lcom/twitter/library/client/ak;)V

    .line 379
    const-string/jumbo v1, "CustomTabs"

    const-string/jumbo v2, "Failed to create a session with the client..."

    invoke-static {v1, v2}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-direct {p0}, Lcom/twitter/library/client/am;->g()V

    .line 384
    :cond_1
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 123
    const-string/jumbo v0, "chrome_custom_tabs_warmup_3876"

    invoke-static {v0}, Lcom/twitter/config/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {p0}, Lcom/twitter/library/client/am;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "moderate"

    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-static {}, Lcom/twitter/util/telephony/TelephonyUtil;->i()Lcom/twitter/util/telephony/TelephonyUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/util/telephony/TelephonyUtil;->c()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "aggressive"

    .line 127
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    invoke-static {}, Lcom/twitter/library/network/forecaster/b;->a()Lcom/twitter/library/network/forecaster/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/network/forecaster/b;->f()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    .line 128
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f()Z
    .locals 2

    .prologue
    .line 135
    const-string/jumbo v0, "chrome_custom_tabs_android_enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 391
    iput-boolean v1, p0, Lcom/twitter/library/client/am;->j:Z

    .line 392
    iput-object v0, p0, Lcom/twitter/library/client/am;->g:Landroid/support/customtabs/CustomTabsClient;

    .line 393
    iput-object v0, p0, Lcom/twitter/library/client/am;->h:Landroid/support/customtabs/CustomTabsServiceConnection;

    .line 394
    iput-object v0, p0, Lcom/twitter/library/client/am;->b:Lcom/twitter/library/client/ap;

    .line 395
    iput-object v0, p0, Lcom/twitter/library/client/am;->i:Lcom/twitter/library/client/BrowserDataSource;

    .line 396
    iput-boolean v1, p0, Lcom/twitter/library/client/am;->a:Z

    .line 397
    const-string/jumbo v0, "CustomTabs"

    const-string/jumbo v1, "CustomTabsManager cleared"

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Landroid/support/customtabs/CustomTabsIntent;Lcom/twitter/library/client/BrowserDataSource;)V
    .locals 1

    .prologue
    .line 215
    iput-object p4, p0, Lcom/twitter/library/client/am;->i:Lcom/twitter/library/client/BrowserDataSource;

    .line 216
    invoke-virtual {p0, p2}, Lcom/twitter/library/client/am;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/client/am;->a:Z

    .line 217
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Landroid/support/customtabs/CustomTabsIntent;->launchUrl(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 218
    iget-boolean v0, p0, Lcom/twitter/library/client/am;->a:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/twitter/library/client/am;->c()V

    .line 221
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/library/client/ak;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 228
    iget-object v2, p1, Lcom/twitter/library/client/ak;->b:Ljava/util/Map;

    .line 229
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 230
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/twitter/library/client/ak;->a:Ljava/lang/String;

    aput-object v4, v1, v3

    .line 231
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 233
    iget-object v1, p0, Lcom/twitter/library/client/am;->i:Lcom/twitter/library/client/BrowserDataSource;

    if-eqz v1, :cond_0

    .line 234
    const-string/jumbo v1, "is_promoted"

    iget-object v3, p0, Lcom/twitter/library/client/am;->i:Lcom/twitter/library/client/BrowserDataSource;

    invoke-interface {v3}, Lcom/twitter/library/client/BrowserDataSource;->b()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v1, p0, Lcom/twitter/library/client/am;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/library/client/am;->i:Lcom/twitter/library/client/BrowserDataSource;

    invoke-interface {v3}, Lcom/twitter/library/client/BrowserDataSource;->e()Lcom/twitter/library/scribe/ScribeItemsProvider;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v6, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/library/scribe/ScribeItemsProvider;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 238
    iget-object v1, p0, Lcom/twitter/library/client/am;->i:Lcom/twitter/library/client/BrowserDataSource;

    invoke-interface {v1}, Lcom/twitter/library/client/BrowserDataSource;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/library/client/am;->i:Lcom/twitter/library/client/BrowserDataSource;

    invoke-interface {v1}, Lcom/twitter/library/client/BrowserDataSource;->c()Lcss;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "dwell_time"

    .line 239
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    const-string/jumbo v1, "dwell_time"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 241
    invoke-virtual {p0}, Lcom/twitter/library/client/am;->e()Lcfw;

    move-result-object v3

    .line 242
    sget-object v1, Lcom/twitter/library/client/BrowserTimingHelper$Dwell;->a:Lcom/twitter/library/client/BrowserTimingHelper$Dwell;

    .line 244
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/twitter/library/client/BrowserTimingHelper$Dwell;->d()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gtz v6, :cond_0

    .line 245
    invoke-virtual {v1}, Lcom/twitter/library/client/BrowserTimingHelper$Dwell;->a()Lcom/twitter/library/api/PromotedEvent;

    move-result-object v6

    iget-object v7, p0, Lcom/twitter/library/client/am;->i:Lcom/twitter/library/client/BrowserDataSource;

    .line 246
    invoke-interface {v7}, Lcom/twitter/library/client/BrowserDataSource;->c()Lcss;

    move-result-object v7

    .line 245
    invoke-static {v6, v7}, Lcft;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)Lcfv;

    move-result-object v6

    .line 246
    invoke-virtual {v6}, Lcfv;->a()Lcft;

    move-result-object v6

    .line 245
    invoke-virtual {v3, v6}, Lcfw;->a(Lcft;)V

    .line 247
    invoke-virtual {v1}, Lcom/twitter/library/client/BrowserTimingHelper$Dwell;->b()Lcom/twitter/library/client/BrowserTimingHelper$Dwell;

    move-result-object v1

    goto :goto_0

    .line 252
    :cond_0
    invoke-static {v2}, Lcom/twitter/library/util/an;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->f(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 253
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 254
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Lcom/twitter/library/client/ak;

    invoke-virtual {p0, p1}, Lcom/twitter/library/client/am;->a(Lcom/twitter/library/client/ak;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/twitter/library/client/am;->h:Landroid/support/customtabs/CustomTabsServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/client/am;->g:Landroid/support/customtabs/CustomTabsClient;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 151
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/twitter/library/client/am;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 157
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/twitter/library/client/am;->b:Lcom/twitter/library/client/ap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/twitter/library/client/am;->b:Lcom/twitter/library/client/ap;

    iget-object v2, p0, Lcom/twitter/library/client/am;->f:Lcom/twitter/platform/u;

    invoke-interface {v2}, Lcom/twitter/platform/u;->b()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/twitter/library/client/ap;->a(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 158
    const/4 v0, 0x1

    goto :goto_0

    .line 160
    :cond_2
    invoke-direct {p0, p1}, Lcom/twitter/library/client/am;->d(Ljava/lang/String;)Landroid/support/customtabs/CustomTabsSession;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_0

    .line 163
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/customtabs/CustomTabsSession;->mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result v0

    .line 164
    if-nez v0, :cond_3

    .line 165
    const-string/jumbo v1, "CustomTabs"

    const-string/jumbo v2, "URL warm up failed despite the existence of a CustomTabs session"

    invoke-static {v1, v2}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 167
    :cond_3
    :try_start_2
    new-instance v2, Lcom/twitter/library/client/ap;

    iget-object v3, p0, Lcom/twitter/library/client/am;->f:Lcom/twitter/platform/u;

    invoke-interface {v3}, Lcom/twitter/platform/u;->b()J

    move-result-wide v4

    invoke-direct {v2, v1, p1, v4, v5}, Lcom/twitter/library/client/ap;-><init>(Landroid/support/customtabs/CustomTabsSession;Ljava/lang/String;J)V

    iput-object v2, p0, Lcom/twitter/library/client/am;->b:Lcom/twitter/library/client/ap;

    .line 168
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 169
    const-string/jumbo v2, "url"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string/jumbo v2, "is_wifi"

    invoke-static {}, Lcom/twitter/util/telephony/TelephonyUtil;->i()Lcom/twitter/util/telephony/TelephonyUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/util/telephony/TelephonyUtil;->c()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance v2, Lcom/twitter/library/client/ak;

    const-string/jumbo v3, "chrome::::warm_url"

    invoke-direct {v2, v3, v1}, Lcom/twitter/library/client/ak;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v2}, Lcom/twitter/library/client/am;->a(Lcom/twitter/library/client/ak;)V

    .line 175
    const-string/jumbo v1, "CustomTabs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "URL warmed up: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Landroid/support/customtabs/CustomTabsIntent$Builder;
    .locals 2

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/twitter/library/client/am;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    sget-boolean v0, Lcom/twitter/library/client/am;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/client/am;->b:Lcom/twitter/library/client/ap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 190
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/twitter/library/client/am;->b:Lcom/twitter/library/client/ap;

    invoke-virtual {v0}, Lcom/twitter/library/client/ap;->a()Landroid/support/customtabs/CustomTabsSession;

    move-result-object v0

    .line 195
    :goto_0
    new-instance v1, Landroid/support/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v1, v0}, Landroid/support/customtabs/CustomTabsIntent$Builder;-><init>(Landroid/support/customtabs/CustomTabsSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 192
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/twitter/library/client/am;->d(Ljava/lang/String;)Landroid/support/customtabs/CustomTabsSession;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/twitter/library/client/am;->a:Z

    return v0
.end method

.method protected declared-synchronized c()V
    .locals 1

    .prologue
    .line 282
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/twitter/library/client/am;->b:Lcom/twitter/library/client/ap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    monitor-exit p0

    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/client/am;->b:Lcom/twitter/library/client/ap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/client/am;->b:Lcom/twitter/library/client/ap;

    invoke-virtual {v0, p1}, Lcom/twitter/library/client/ap;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/twitter/library/client/am;->h:Landroid/support/customtabs/CustomTabsServiceConnection;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/library/client/am;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/library/client/am;->g:Landroid/support/customtabs/CustomTabsClient;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e()Lcfw;
    .locals 1

    .prologue
    .line 358
    new-instance v0, Lcfw;

    invoke-direct {v0}, Lcfw;-><init>()V

    return-object v0
.end method

.method protected declared-synchronized e(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/twitter/library/util/k;->a()Lcom/twitter/library/util/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/library/util/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/twitter/library/client/am;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 291
    const-string/jumbo v1, "CustomTabs"

    const-string/jumbo v2, "Chrome connection not established. Will create..."

    invoke-static {v1, v2}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/twitter/library/client/am;->f:Lcom/twitter/platform/u;

    invoke-interface {v1}, Lcom/twitter/platform/u;->b()J

    move-result-wide v2

    .line 293
    invoke-direct {p0}, Lcom/twitter/library/client/am;->g()V

    .line 294
    new-instance v1, Lcom/twitter/library/client/an;

    invoke-direct {v1, p0, v2, v3}, Lcom/twitter/library/client/an;-><init>(Lcom/twitter/library/client/am;J)V

    iput-object v1, p0, Lcom/twitter/library/client/am;->h:Landroid/support/customtabs/CustomTabsServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :try_start_1
    iget-object v1, p0, Lcom/twitter/library/client/am;->h:Landroid/support/customtabs/CustomTabsServiceConnection;

    invoke-static {p1, v0, v1}, Landroid/support/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroid/support/customtabs/CustomTabsServiceConnection;)Z

    move-result v0

    .line 331
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/twitter/library/client/am;->j:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    :goto_0
    if-nez v0, :cond_0

    .line 338
    :try_start_2
    const-string/jumbo v0, "CustomTabs"

    const-string/jumbo v1, "Service binding failed"

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-direct {p0}, Lcom/twitter/library/client/am;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    :try_start_3
    const-string/jumbo v1, "CustomTabs"

    const-string/jumbo v2, "Binding to Chrome service caused exception"

    invoke-static {v1, v2, v0}, Lcjw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 334
    const/4 v0, 0x0

    goto :goto_0

    .line 342
    :cond_1
    const-string/jumbo v0, "CustomTabs"

    const-string/jumbo v1, "Connection abandoned. Already connected."

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
