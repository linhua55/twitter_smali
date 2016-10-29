.class public Lcom/twitter/android/card/am;
.super Lcom/twitter/library/card/aw;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/twitter/library/card/aw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Lcom/twitter/library/card/au;
    .locals 3

    .prologue
    .line 28
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 29
    invoke-static {p2}, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/twitter/android/moments/viewmodels/ai;

    invoke-direct {v0, p3}, Lcom/twitter/android/moments/viewmodels/ai;-><init>(Lclm;)V

    .line 30
    invoke-static {p1, v0}, Laij;->a(Landroid/app/Activity;Lcom/twitter/android/moments/viewmodels/u;)Laij;

    move-result-object v0

    .line 32
    :goto_0
    new-instance v1, Lcom/twitter/android/card/ak;

    new-instance v2, Lcom/twitter/android/moments/viewmodels/aj;

    invoke-direct {v2}, Lcom/twitter/android/moments/viewmodels/aj;-><init>()V

    invoke-direct {v1, p1, p2, v2, v0}, Lcom/twitter/android/card/ak;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/moments/viewmodels/aj;Laig;)V

    return-object v1

    .line 31
    :cond_0
    invoke-static {p1, v0}, Laib;->a(Landroid/app/Activity;Lcom/twitter/library/client/Session;)Laib;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method
