.class public Lcom/twitter/android/av/card/h;
.super Lcom/twitter/library/card/aw;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/twitter/library/card/aw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Lcom/twitter/library/card/au;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-eq v0, p2, :cond_0

    sget-object v0, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->g:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne v0, p2, :cond_1

    .line 22
    :cond_0
    new-instance v0, Lcom/twitter/android/av/card/l;

    invoke-direct {v0, p1, p2}, Lcom/twitter/android/av/card/l;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 25
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/twitter/android/av/card/g;

    invoke-direct {v0, p1, p2}, Lcom/twitter/android/av/card/g;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    return v0
.end method
