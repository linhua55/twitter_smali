.class public Lcom/twitter/android/revenue/card/ao;
.super Lcom/twitter/library/card/aw;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/twitter/library/card/aw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Lcom/twitter/library/card/au;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 27
    const-string/jumbo v0, "promotion_zipcode_required"

    invoke-static {v0, p3, v4}, Lcom/twitter/library/card/h;->a(Ljava/lang/String;Lclm;Z)Z

    move-result v1

    .line 28
    sget-object v0, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne v0, p2, :cond_2

    .line 29
    if-nez v1, :cond_0

    const-string/jumbo v0, "ad_formats_lead_gen_card_zip_code_android_3657"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "leadgen_zipcode_required"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/twitter/config/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    :cond_0
    new-instance v0, Lcom/twitter/android/revenue/card/ap;

    invoke-direct {v0, p1, p2, v1}, Lcom/twitter/android/revenue/card/ap;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Z)V

    .line 41
    :goto_0
    return-object v0

    .line 33
    :cond_1
    new-instance v0, Lcom/twitter/android/revenue/card/g;

    invoke-direct {v0, p1, p2}, Lcom/twitter/android/revenue/card/g;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    goto :goto_0

    .line 36
    :cond_2
    const-string/jumbo v0, "promo_image"

    invoke-static {v0, p3}, Lcln;->a(Ljava/lang/String;Lclm;)Lcln;

    move-result-object v0

    .line 37
    invoke-static {p1, p2}, Lcom/twitter/android/revenue/y;->a(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 38
    invoke-static {v0}, Lcom/twitter/android/revenue/y;->a(Lcln;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39
    new-instance v0, Lcom/twitter/android/revenue/card/f;

    invoke-direct {v0, p1, p2}, Lcom/twitter/android/revenue/card/f;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    goto :goto_0

    .line 41
    :cond_3
    new-instance v0, Lcom/twitter/android/revenue/card/e;

    invoke-direct {v0, p1, p2}, Lcom/twitter/android/revenue/card/e;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method
