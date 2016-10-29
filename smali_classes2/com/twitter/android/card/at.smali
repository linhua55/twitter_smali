.class Lcom/twitter/android/card/at;
.super Lcom/twitter/library/card/aw;
.source "Twttr"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/twitter/library/card/aw;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/card/as;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/twitter/android/card/at;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Lcom/twitter/library/card/au;
    .locals 10

    .prologue
    .line 55
    invoke-static {}, Ltv/periscope/android/library/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/twitter/android/periscope/t;->a(Landroid/content/Context;)Lcom/twitter/android/periscope/t;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/periscope/android/library/b;->a(Landroid/content/Context;Ltv/periscope/android/library/d;)V

    .line 59
    :cond_0
    new-instance v3, Lcom/twitter/android/card/k;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/twitter/android/card/k;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v4, Lcom/twitter/android/card/e;

    invoke-direct {v4, p1}, Lcom/twitter/android/card/e;-><init>(Landroid/app/Activity;)V

    .line 61
    new-instance v5, Lcom/twitter/android/card/au;

    invoke-direct {v5}, Lcom/twitter/android/card/au;-><init>()V

    .line 62
    new-instance v6, Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    invoke-direct {v6}, Lcom/twitter/library/api/periscope/PeriscopeCapiModel;-><init>()V

    .line 63
    new-instance v7, Lcom/twitter/android/card/an;

    .line 64
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "3691233323:periscope_broadcast"

    invoke-direct {v7, v0, v5, v1}, Lcom/twitter/android/card/an;-><init>(Landroid/content/Context;Lcom/twitter/android/card/au;Ljava/lang/String;)V

    .line 65
    new-instance v8, Lcom/twitter/android/card/ap;

    invoke-direct {v8, p1}, Lcom/twitter/android/card/ap;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v0, Lcom/twitter/android/av/video/j;

    invoke-direct {v0}, Lcom/twitter/android/av/video/j;-><init>()V

    .line 68
    new-instance v9, Lcom/twitter/android/card/aq;

    invoke-direct {v9, p1, v5, v6, v0}, Lcom/twitter/android/card/aq;-><init>(Landroid/app/Activity;Lcom/twitter/android/card/au;Lcom/twitter/library/api/periscope/PeriscopeCapiModel;Lcom/twitter/android/av/video/j;)V

    .line 70
    new-instance v0, Lcom/twitter/android/card/ao;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/card/ao;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Lcom/twitter/android/card/au;Lcom/twitter/library/api/periscope/PeriscopeCapiModel;Lcom/twitter/android/card/an;Lcom/twitter/android/card/ap;Lcom/twitter/android/card/aq;)V

    return-object v0
.end method

.method public a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method
