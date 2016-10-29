.class public Lcom/twitter/android/revenue/card/aw;
.super Lcom/twitter/library/card/aw;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/twitter/library/card/aw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Lcom/twitter/library/card/au;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcom/twitter/android/revenue/card/ar;

    new-instance v1, Lcom/twitter/android/card/k;

    invoke-direct {v1, p1}, Lcom/twitter/android/card/k;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/twitter/android/card/e;

    invoke-direct {v2, p1}, Lcom/twitter/android/card/e;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/twitter/android/revenue/card/ar;-><init>(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V

    return-object v0
.end method

.method public a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Z
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method
