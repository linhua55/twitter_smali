.class public Lcom/twitter/android/commerce/card/h;
.super Lcom/twitter/android/revenue/card/bc;
.source "Twttr"


# direct methods
.method public constructor <init>(Lcom/twitter/android/revenue/card/i;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/twitter/android/revenue/card/bc;-><init>(Lcom/twitter/android/revenue/card/i;)V

    .line 14
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Z
    .locals 1

    .prologue
    .line 18
    invoke-super {p0, p1, p2}, Lcom/twitter/android/revenue/card/bc;->a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/twitter/android/commerce/util/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
