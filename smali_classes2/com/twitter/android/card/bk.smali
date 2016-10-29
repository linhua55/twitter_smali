.class public Lcom/twitter/android/card/bk;
.super Lcom/twitter/library/card/aw;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/twitter/library/card/aw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Lcom/twitter/library/card/au;
    .locals 3

    .prologue
    .line 41
    invoke-static {p2}, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v1, Lcom/twitter/android/card/af;

    invoke-direct {v1}, Lcom/twitter/android/card/af;-><init>()V

    .line 43
    new-instance v0, Lcom/twitter/android/card/ae;

    invoke-direct {v0}, Lcom/twitter/android/card/ae;-><init>()V

    .line 49
    :goto_0
    sget-object v2, Lcom/twitter/android/revenue/card/bg;->a:Ljava/util/List;

    invoke-static {p3, v2}, Lcom/twitter/android/revenue/z;->a(Lclm;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    new-instance v2, Lcom/twitter/android/card/bg;

    invoke-direct {v2, p1, p2, v1, v0}, Lcom/twitter/android/card/bg;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V

    move-object v0, v2

    .line 53
    :goto_1
    return-object v0

    .line 45
    :cond_0
    new-instance v1, Lcom/twitter/android/card/k;

    invoke-direct {v1, p1}, Lcom/twitter/android/card/k;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Lcom/twitter/android/card/e;

    invoke-direct {v0, p1}, Lcom/twitter/android/card/e;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 53
    :cond_1
    new-instance v2, Lcom/twitter/android/revenue/card/bg;

    invoke-direct {v2, p1, p2, v1, v0}, Lcom/twitter/android/revenue/card/bg;-><init>(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V

    move-object v0, v2

    goto :goto_1
.end method

.method public a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Z
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/twitter/android/revenue/card/bg;->a:Ljava/util/List;

    invoke-static {p1, p2, v0}, Lcom/twitter/android/revenue/z;->a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Lcom/twitter/library/card/v;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/twitter/android/revenue/card/bg;->a:Ljava/util/List;

    invoke-static {p3, v0}, Lcom/twitter/android/revenue/z;->a(Lclm;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    const-class v0, Lcom/twitter/android/card/bg;

    .line 27
    :goto_0
    new-instance v1, Lcom/twitter/library/card/v;

    invoke-direct {v1, v0, p2}, Lcom/twitter/library/card/v;-><init>(Ljava/lang/Class;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    return-object v1

    .line 25
    :cond_0
    const-class v0, Lcom/twitter/android/revenue/card/bg;

    goto :goto_0
.end method
