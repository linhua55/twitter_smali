.class Lcom/twitter/android/client/ap;
.super Lcom/twitter/android/client/o;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/twitter/library/client/BrowserDataSource;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/BrowserDataSource;)V
    .locals 0

    .prologue
    .line 714
    invoke-direct {p0}, Lcom/twitter/android/client/o;-><init>()V

    .line 715
    iput-object p1, p0, Lcom/twitter/android/client/ap;->a:Landroid/content/Context;

    .line 716
    iput-object p2, p0, Lcom/twitter/android/client/ap;->b:Ljava/lang/String;

    .line 717
    iput-object p3, p0, Lcom/twitter/android/client/ap;->c:Lcom/twitter/library/client/BrowserDataSource;

    .line 718
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/twitter/android/client/ap;->c:Lcom/twitter/library/client/BrowserDataSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/ap;->c:Lcom/twitter/library/client/BrowserDataSource;

    invoke-interface {v0}, Lcom/twitter/library/client/BrowserDataSource;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/ap;->c:Lcom/twitter/library/client/BrowserDataSource;

    .line 764
    invoke-interface {v0}, Lcom/twitter/library/client/BrowserDataSource;->c()Lcss;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 765
    sget-object v0, Lcom/twitter/library/api/PromotedEvent;->am:Lcom/twitter/library/api/PromotedEvent;

    iget-object v1, p0, Lcom/twitter/android/client/ap;->c:Lcom/twitter/library/client/BrowserDataSource;

    .line 766
    invoke-interface {v1}, Lcom/twitter/library/client/BrowserDataSource;->c()Lcss;

    move-result-object v1

    .line 765
    invoke-static {v0, v1}, Lcft;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)Lcfv;

    move-result-object v0

    .line 766
    invoke-virtual {v0}, Lcfv;->a()Lcft;

    move-result-object v0

    .line 765
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 767
    sget-object v0, Lcom/twitter/library/api/PromotedEvent;->an:Lcom/twitter/library/api/PromotedEvent;

    iget-object v1, p0, Lcom/twitter/android/client/ap;->c:Lcom/twitter/library/client/BrowserDataSource;

    .line 768
    invoke-interface {v1}, Lcom/twitter/library/client/BrowserDataSource;->c()Lcss;

    move-result-object v1

    .line 767
    invoke-static {v0, v1}, Lcft;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)Lcfv;

    move-result-object v0

    .line 768
    invoke-virtual {v0}, Lcfv;->a()Lcft;

    move-result-object v0

    .line 767
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 769
    sget-object v0, Lcom/twitter/library/api/PromotedEvent;->ao:Lcom/twitter/library/api/PromotedEvent;

    iget-object v1, p0, Lcom/twitter/android/client/ap;->c:Lcom/twitter/library/client/BrowserDataSource;

    .line 770
    invoke-interface {v1}, Lcom/twitter/library/client/BrowserDataSource;->c()Lcss;

    move-result-object v1

    .line 769
    invoke-static {v0, v1}, Lcft;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)Lcfv;

    move-result-object v0

    .line 770
    invoke-virtual {v0}, Lcfv;->a()Lcft;

    move-result-object v0

    .line 769
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 772
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 722
    iget-object v0, p0, Lcom/twitter/android/client/ap;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/ap;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/twitter/android/client/chrome/a;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/twitter/android/client/ap;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/twitter/android/client/ap;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/client/ap;->c:Lcom/twitter/library/client/BrowserDataSource;

    invoke-static {v0, v1, v2}, Lcom/twitter/android/client/chrome/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/twitter/library/client/BrowserDataSource;)V

    .line 750
    :goto_0
    return-void

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/ap;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/client/ap;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 726
    iget-object v0, p0, Lcom/twitter/android/client/ap;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/client/am;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 730
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 731
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 732
    const-string/jumbo v3, "year_class"

    invoke-static {}, Latv;->a()Latv;

    move-result-object v4

    invoke-virtual {v4}, Latv;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    const-string/jumbo v3, "os_version"

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    const-string/jumbo v3, "manufacturer"

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    new-instance v3, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v3, v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "chrome::::fallback"

    aput-object v4, v0, v1

    .line 736
    invoke-virtual {v3, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 737
    invoke-static {v2}, Lcom/twitter/library/util/an;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->f(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 738
    iget-object v1, p0, Lcom/twitter/android/client/ap;->c:Lcom/twitter/library/client/BrowserDataSource;

    if-eqz v1, :cond_1

    .line 739
    iget-object v1, p0, Lcom/twitter/android/client/ap;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/client/ap;->c:Lcom/twitter/library/client/BrowserDataSource;

    invoke-interface {v2}, Lcom/twitter/library/client/BrowserDataSource;->e()Lcom/twitter/library/scribe/ScribeItemsProvider;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/library/scribe/ScribeItemsProvider;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 741
    :cond_1
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 744
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/client/ap;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/client/ap;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/client/ap;->c:Lcom/twitter/library/client/BrowserDataSource;

    invoke-static {v0, v1, v2}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/BrowserDataSource;)V

    goto/16 :goto_0

    .line 747
    :cond_3
    invoke-direct {p0}, Lcom/twitter/android/client/ap;->c()V

    .line 748
    iget-object v0, p0, Lcom/twitter/android/client/ap;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/client/ap;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 754
    const/4 v0, 0x1

    return v0
.end method
