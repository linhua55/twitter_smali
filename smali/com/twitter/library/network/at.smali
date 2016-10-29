.class public Lcom/twitter/library/network/at;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static j:Lcom/twitter/library/network/at;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/twitter/library/network/ax;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            ">;>;"
        }
    .end annotation
.end field

.field private final l:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/network/at;->l:Landroid/content/Context;

    .line 545
    invoke-static {p1}, Lcom/twitter/util/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/network/at;->g:Ljava/lang/String;

    .line 546
    new-instance v0, Lcom/twitter/library/network/ax;

    invoke-static {p1}, Lcom/twitter/util/c;->b(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/library/network/at;->g:Ljava/lang/String;

    .line 547
    invoke-static {p1}, Lcom/twitter/library/network/at;->b(Landroid/content/Context;)Z

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/twitter/library/network/ax;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/twitter/library/network/at;->e:Lcom/twitter/library/network/ax;

    .line 548
    invoke-static {}, Lcom/twitter/config/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/network/at;->f:Ljava/lang/String;

    .line 549
    sget v0, Lbkb;->base_url_mobile:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/network/at;->c:Ljava/lang/String;

    .line 550
    sget v0, Lbkb;->base_host:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 551
    sget v0, Lbkb;->base_url:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 552
    sget v0, Lbkb;->upload_host:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 554
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 555
    const-string/jumbo v0, "debug_prefs"

    .line 556
    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 557
    const-string/jumbo v0, "staging_enabled"

    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    const-string/jumbo v0, "staging_url"

    invoke-interface {v5, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 559
    if-eqz v0, :cond_1

    .line 560
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 564
    :goto_0
    const-string/jumbo v2, "upload_staging_enabled"

    invoke-interface {v5, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 565
    const-string/jumbo v2, "upload_staging_host"

    .line 566
    invoke-interface {v5, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 567
    if-eqz v2, :cond_0

    .line 572
    :goto_1
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    move-object v7, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, v7

    .line 574
    :goto_2
    iput-object v3, p0, Lcom/twitter/library/network/at;->a:Ljava/lang/String;

    .line 575
    iput-object v1, p0, Lcom/twitter/library/network/at;->b:Ljava/lang/String;

    .line 576
    iput-object v2, p0, Lcom/twitter/library/network/at;->d:Ljava/lang/String;

    .line 577
    invoke-virtual {p0}, Lcom/twitter/library/network/at;->a()V

    .line 578
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/network/at;->i:Ljava/lang/String;

    .line 581
    iput-object v0, p0, Lcom/twitter/library/network/at;->k:Ljava/util/List;

    .line 582
    return-void

    :cond_0
    move-object v2, v3

    goto :goto_1

    :cond_1
    move-object v0, v1

    move-object v1, v2

    goto :goto_0

    :cond_2
    move-object v0, v4

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_2
.end method

.method public static a(II)I
    .locals 1

    .prologue
    .line 745
    rem-int v0, p0, p1

    if-lez v0, :cond_0

    .line 746
    div-int v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    .line 748
    :goto_0
    return v0

    :cond_0
    div-int v0, p0, p1

    goto :goto_0
.end method

.method public static a(Lcom/twitter/internal/network/HttpOperation;)Lcom/twitter/library/api/RateLimit;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 614
    const-string/jumbo v1, "x-rate-limit-limit"

    invoke-virtual {p0, v1}, Lcom/twitter/internal/network/HttpOperation;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 615
    if-eqz v1, :cond_0

    .line 616
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 621
    const-string/jumbo v2, "x-rate-limit-remaining"

    invoke-virtual {p0, v2}, Lcom/twitter/internal/network/HttpOperation;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 622
    if-eqz v2, :cond_0

    .line 623
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 628
    const-string/jumbo v3, "x-rate-limit-reset"

    invoke-virtual {p0, v3}, Lcom/twitter/internal/network/HttpOperation;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 629
    if-eqz v3, :cond_0

    .line 630
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 635
    new-instance v0, Lcom/twitter/library/api/RateLimit;

    invoke-direct {v0, v2, v1, v4, v5}, Lcom/twitter/library/api/RateLimit;-><init>(IIJ)V

    :cond_0
    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/twitter/library/network/at;
    .locals 3

    .prologue
    .line 585
    const-class v1, Lcom/twitter/library/network/at;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twitter/library/network/at;->j:Lcom/twitter/library/network/at;

    if-nez v0, :cond_0

    .line 586
    new-instance v0, Lcom/twitter/library/network/at;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twitter/library/network/at;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/twitter/library/network/at;->j:Lcom/twitter/library/network/at;

    .line 588
    :cond_0
    sget-object v0, Lcom/twitter/library/network/at;->j:Lcom/twitter/library/network/at;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 585
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    .line 716
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 717
    if-eqz p1, :cond_0

    .line 718
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 719
    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 721
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-static {v3, v4}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 724
    :cond_0
    return-object v1
.end method

.method public static a(Lcom/twitter/internal/network/HttpOperation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 758
    invoke-virtual {p0, p1, p2}, Lcom/twitter/internal/network/HttpOperation;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/internal/network/HttpOperation;

    .line 759
    return-void
.end method

.method public static a(Lcom/twitter/library/service/aa;)Z
    .locals 1

    .prologue
    .line 652
    const/16 v0, 0x146

    invoke-static {p0, v0}, Lcom/twitter/library/network/at;->a(Lcom/twitter/library/service/aa;I)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/twitter/library/service/aa;I)Z
    .locals 1

    .prologue
    .line 675
    invoke-static {p0, p1}, Lcom/twitter/library/network/at;->b(Lcom/twitter/library/service/aa;I)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/lang/Iterable;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/os/Bundle;)[I
    .locals 1

    .prologue
    .line 639
    const-string/jumbo v0, "custom_errors"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    const-string/jumbo v0, "custom_errors"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 642
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/model/core/cj;->b:[I

    goto :goto_0
.end method

.method public static b(Lcom/twitter/library/service/aa;I)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/service/aa;",
            "I)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/twitter/model/core/cg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/twitter/library/service/aa;->i()Lcom/twitter/library/service/w;

    move-result-object v0

    instance-of v0, v0, Lcom/twitter/library/service/a;

    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {p0}, Lcom/twitter/library/service/aa;->i()Lcom/twitter/library/service/w;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/a;

    invoke-virtual {v0}, Lcom/twitter/library/service/a;->a()Lcom/twitter/model/core/cj;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/network/au;

    invoke-direct {v1, p1}, Lcom/twitter/library/network/au;-><init>(I)V

    invoke-static {v0, v1}, Lczz;->a(Ljava/lang/Iterable;Ldau;)Ljava/lang/Iterable;

    move-result-object v0

    .line 691
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Lcom/twitter/library/service/aa;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 657
    invoke-static {p0}, Lcom/twitter/library/network/at;->d(Lcom/twitter/library/service/aa;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cg;

    .line 658
    iget-object v2, v0, Lcom/twitter/model/core/cg;->g:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 659
    iget-object v0, v0, Lcom/twitter/model/core/cg;->g:Ljava/lang/String;

    .line 662
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 786
    invoke-static {}, Lcvo;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/config/AppConfig;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 788
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 789
    const-string/jumbo v2, "debug_prod_ua"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 791
    :cond_1
    return v0
.end method

.method private b(Ljava/net/URI;)Z
    .locals 2

    .prologue
    .line 795
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 796
    if-eqz v0, :cond_1

    const-string/jumbo v1, ".twitter.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "twitter.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static c(Lcom/twitter/library/service/aa;)Z
    .locals 2

    .prologue
    .line 666
    invoke-static {p0}, Lcom/twitter/library/network/at;->d(Lcom/twitter/library/service/aa;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cg;

    .line 667
    iget v0, v0, Lcom/twitter/model/core/cg;->f:I

    if-lez v0, :cond_0

    .line 668
    const/4 v0, 0x1

    .line 671
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Lcom/twitter/library/service/aa;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/service/aa;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/twitter/model/core/cg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 648
    const/16 v0, 0x146

    invoke-static {p0, v0}, Lcom/twitter/library/network/at;->b(Lcom/twitter/library/service/aa;I)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lcom/twitter/internal/network/HttpOperation;)Z
    .locals 2

    .prologue
    .line 897
    const-string/jumbo v0, "True"

    const-string/jumbo v1, "X-Twitter-Polling"

    invoke-virtual {p0, v1}, Lcom/twitter/internal/network/HttpOperation;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private g()Lcom/twitter/library/api/d;
    .locals 4

    .prologue
    .line 860
    iget-object v0, p0, Lcom/twitter/library/network/at;->l:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 861
    const-string/jumbo v1, "adid_no_tracking_enabled"

    const/4 v2, 0x0

    .line 862
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 864
    const-string/jumbo v2, "adid_identifier"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 866
    invoke-static {v2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    new-instance v0, Lcom/twitter/library/api/d;

    invoke-direct {v0, v2, v1}, Lcom/twitter/library/api/d;-><init>(Ljava/lang/String;Z)V

    .line 869
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/net/URI;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 800
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 801
    const-string/jumbo v0, "User-Agent"

    iget-object v2, p0, Lcom/twitter/library/network/at;->e:Lcom/twitter/library/network/ax;

    invoke-virtual {v2}, Lcom/twitter/library/network/ax;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    const-string/jumbo v0, "X-Client-UUID"

    iget-object v2, p0, Lcom/twitter/library/network/at;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    const-string/jumbo v0, "X-Twitter-Client"

    const-string/jumbo v2, "TwitterAndroid"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    const-string/jumbo v0, "X-Twitter-Client-Version"

    iget-object v2, p0, Lcom/twitter/library/network/at;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    const-string/jumbo v0, "X-Twitter-API-Version"

    const-string/jumbo v2, "5"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    const-string/jumbo v0, "Accept-Language"

    iget-object v2, p0, Lcom/twitter/library/network/at;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    const-string/jumbo v0, "X-Twitter-Client-Language"

    iget-object v2, p0, Lcom/twitter/library/network/at;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    const-string/jumbo v0, "X-Twitter-Client-DeviceID"

    iget-object v2, p0, Lcom/twitter/library/network/at;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    invoke-direct {p0, p1}, Lcom/twitter/library/network/at;->b(Ljava/net/URI;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 810
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/twitter/util/aj;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 811
    const-string/jumbo v2, "X-B3-TraceId"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    invoke-virtual {p0}, Lcom/twitter/library/network/at;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 813
    const-string/jumbo v2, "X-B3-Flags"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    const-string/jumbo v2, "X-B3-SpanId"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    iget-object v2, p0, Lcom/twitter/library/network/at;->k:Ljava/util/List;

    const/4 v3, 0x0

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 816
    iget-object v2, p0, Lcom/twitter/library/network/at;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    .line 817
    iget-object v2, p0, Lcom/twitter/library/network/at;->k:Ljava/util/List;

    iget-object v3, p0, Lcom/twitter/library/network/at;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 819
    :cond_0
    const-string/jumbo v2, "TwitterAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "TraceID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " for ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    :cond_1
    invoke-static {}, Lcom/twitter/library/network/z;->a()Lcom/twitter/library/network/z;

    move-result-object v0

    .line 823
    invoke-virtual {v0}, Lcom/twitter/library/network/z;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, p1}, Lcom/twitter/library/network/z;->a(Ljava/net/URI;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 824
    invoke-virtual {v0}, Lcom/twitter/library/network/z;->d()Lcom/twitter/library/network/t;

    move-result-object v0

    .line 825
    const-string/jumbo v2, "x-tsa-max-connection-bandwidth-kbs"

    .line 826
    invoke-virtual {v0}, Lcom/twitter/library/network/t;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 825
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    const-string/jumbo v2, "x-tsa-fixed-request-latency-ms"

    .line 828
    invoke-virtual {v0}, Lcom/twitter/library/network/t;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 827
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/library/network/at;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 832
    const-string/jumbo v0, "Dtab-Local"

    invoke-virtual {p0}, Lcom/twitter/library/network/at;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    :cond_3
    invoke-static {}, Lcbz;->a()Lcca;

    move-result-object v0

    invoke-interface {v0}, Lcca;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 835
    const-string/jumbo v0, "Geolocation"

    iget-object v2, p0, Lcom/twitter/library/network/at;->l:Landroid/content/Context;

    .line 836
    invoke-static {v2}, Lccf;->a(Landroid/content/Context;)Lccf;

    move-result-object v2

    invoke-virtual {v2}, Lccf;->b()Ljava/lang/String;

    move-result-object v2

    .line 835
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    :cond_4
    invoke-direct {p0}, Lcom/twitter/library/network/at;->g()Lcom/twitter/library/api/d;

    move-result-object v0

    .line 840
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/twitter/library/api/d;->b()Z

    move-result v2

    if-nez v2, :cond_6

    .line 841
    :cond_5
    const-string/jumbo v2, "Timezone"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    :cond_6
    if-eqz v0, :cond_7

    .line 844
    const-string/jumbo v2, "X-Twitter-Client-AdID"

    invoke-virtual {v0}, Lcom/twitter/library/api/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    const-string/jumbo v2, "X-Twitter-Client-Limit-Ad-Tracking"

    invoke-virtual {v0}, Lcom/twitter/library/api/d;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    :cond_7
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->p()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 850
    iget-object v0, p0, Lcom/twitter/library/network/at;->l:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 851
    const-string/jumbo v2, "simulate_back_pressure"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 852
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 853
    const-string/jumbo v2, "Simulate-Back-Pressure"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    :cond_8
    return-object v1

    .line 845
    :cond_9
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/twitter/library/network/at;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/twitter/util/a;->c(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/network/at;->h:Ljava/lang/String;

    .line 599
    return-void
.end method

.method public a(Lcom/twitter/library/service/e;)V
    .locals 4

    .prologue
    .line 728
    iget-object v0, p0, Lcom/twitter/library/network/at;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 729
    if-eqz v0, :cond_2

    .line 730
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 731
    invoke-static {v0}, Lcom/twitter/util/a;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 732
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 733
    :cond_0
    const-string/jumbo v2, "localize"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    .line 734
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 735
    const-string/jumbo v2, "lang"

    invoke-virtual {p1, v2, v0}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 737
    :cond_1
    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 738
    const-string/jumbo v0, "country"

    invoke-virtual {p1, v0, v1}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 742
    :cond_2
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/twitter/library/network/at;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/twitter/internal/network/HttpOperation;)V
    .locals 3

    .prologue
    .line 878
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->i()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/network/at;->a(Ljava/net/URI;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

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

    .line 879
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/twitter/internal/network/HttpOperation;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/internal/network/HttpOperation;

    goto :goto_0

    .line 881
    :cond_0
    return-void
.end method

.method public c(Lcom/twitter/internal/network/HttpOperation;)V
    .locals 2

    .prologue
    .line 892
    const-string/jumbo v0, "X-Twitter-Polling"

    const-string/jumbo v1, "True"

    invoke-virtual {p1, v0, v1}, Lcom/twitter/internal/network/HttpOperation;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/internal/network/HttpOperation;

    .line 893
    invoke-virtual {p0, p1}, Lcom/twitter/library/network/at;->b(Lcom/twitter/internal/network/HttpOperation;)V

    .line 894
    return-void
.end method

.method public c()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 762
    invoke-static {}, Lcvo;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/config/AppConfig;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 763
    :cond_0
    iget-object v1, p0, Lcom/twitter/library/network/at;->l:Landroid/content/Context;

    .line 764
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 765
    const-string/jumbo v2, "extra_dtab_enabled"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 767
    :cond_1
    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 771
    iget-object v0, p0, Lcom/twitter/library/network/at;->l:Landroid/content/Context;

    .line 772
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 773
    const-string/jumbo v1, "extra_dtab"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 777
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/config/AppConfig;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 778
    iget-object v1, p0, Lcom/twitter/library/network/at;->l:Landroid/content/Context;

    .line 779
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 780
    const-string/jumbo v2, "debug_force_zipkin_tracing"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 782
    :cond_0
    return v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 888
    iget-object v0, p0, Lcom/twitter/library/network/at;->k:Ljava/util/List;

    return-object v0
.end method
