.class public Lcom/twitter/android/revenue/card/bo;
.super Lcom/twitter/library/card/aw;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/twitter/library/card/aw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)I
    .locals 1

    .prologue
    .line 48
    if-eqz p1, :cond_0

    const v0, 0x7f040236

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f040235

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Lcom/twitter/library/card/au;
    .locals 8

    .prologue
    .line 28
    sget-object v0, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne v0, p2, :cond_0

    .line 29
    new-instance v0, Lcom/twitter/android/av/card/c;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/twitter/android/av/card/c;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Z)V

    .line 43
    :goto_0
    return-object v0

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 32
    const v1, 0x7f0f0114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 33
    invoke-static {p1, p2}, Lcom/twitter/android/revenue/y;->a(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Z

    move-result v2

    .line 35
    const/4 v0, 0x4

    new-array v7, v0, [F

    fill-array-data v7, :array_0

    .line 36
    new-instance v0, Lcom/twitter/android/revenue/card/bn;

    new-instance v3, Lcom/twitter/android/card/k;

    invoke-direct {v3, p1}, Lcom/twitter/android/card/k;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/twitter/android/card/e;

    invoke-direct {v4, p1}, Lcom/twitter/android/card/e;-><init>(Landroid/app/Activity;)V

    .line 39
    invoke-virtual {p0, v2}, Lcom/twitter/android/revenue/card/bo;->a(Z)I

    move-result v5

    .line 40
    invoke-virtual {p0, v2, v1}, Lcom/twitter/android/revenue/card/bo;->a(ZF)[F

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/revenue/card/bn;-><init>(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;I[F[F)V

    .line 42
    invoke-virtual {v0, p1}, Lcom/twitter/android/revenue/card/bn;->a(Landroid/content/Context;)Landroid/view/ViewGroup;

    goto :goto_0

    .line 35
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public a(ZF)[F
    .locals 1

    .prologue
    .line 53
    invoke-static {p1, p2}, Lcom/twitter/android/revenue/y;->a(ZF)[F

    move-result-object v0

    return-object v0
.end method
