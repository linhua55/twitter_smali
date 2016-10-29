.class public Lcom/twitter/android/av/monetization/MediaMonetizationSettingsActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/av/monetization/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    return-void
.end method

.method private d(Lcyg;)V
    .locals 2

    .prologue
    .line 100
    if-nez p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const v0, 0x7f1307e7

    invoke-interface {p1, v0}, Lcyg;->b(I)Lcyd;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/twitter/android/av/monetization/MediaMonetizationSettingsActivity;->h()Z

    move-result v1

    invoke-interface {v0, v1}, Lcyd;->e(Z)Lcyd;

    goto :goto_0
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/twitter/android/av/monetization/MediaMonetizationSettingsActivity;->U()Lcom/twitter/app/common/inject/b;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/monetization/h;

    .line 114
    invoke-virtual {v0}, Lcom/twitter/android/av/monetization/h;->a()Lcom/twitter/model/av/q;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/twitter/model/av/q;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/twitter/model/av/q;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/twitter/app/common/inject/t;)Lcom/twitter/android/av/monetization/h;
    .locals 3

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/twitter/android/av/monetization/MediaMonetizationSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "media_monetization_metadata"

    sget-object v2, Lcom/twitter/model/av/o;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1, v2}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/av/o;

    .line 77
    if-nez v0, :cond_0

    new-instance v0, Lcom/twitter/model/av/q;

    invoke-direct {v0}, Lcom/twitter/model/av/q;-><init>()V

    .line 81
    :goto_0
    new-instance v1, Lcom/twitter/android/av/monetization/h;

    invoke-direct {v1, v0}, Lcom/twitter/android/av/monetization/h;-><init>(Lcom/twitter/model/av/q;)V

    return-object v1

    .line 77
    :cond_0
    new-instance v1, Lcom/twitter/model/av/q;

    invoke-direct {v1, v0}, Lcom/twitter/model/av/q;-><init>(Lcom/twitter/model/av/o;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 88
    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->a(Z)V

    .line 89
    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->a(I)V

    .line 90
    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->b(Z)V

    .line 91
    return-object p2
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Lcom/twitter/app/common/inject/v;
    .locals 6

    .prologue
    .line 63
    new-instance v3, Lcom/twitter/android/av/monetization/n;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/twitter/android/av/monetization/n;-><init>(Landroid/app/Activity;I)V

    .line 65
    invoke-virtual {p0}, Lcom/twitter/android/av/monetization/MediaMonetizationSettingsActivity;->U()Lcom/twitter/app/common/inject/b;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/twitter/android/av/monetization/h;

    .line 67
    new-instance v0, Lcom/twitter/android/av/monetization/i;

    invoke-virtual {p0}, Lcom/twitter/android/av/monetization/MediaMonetizationSettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 68
    invoke-virtual {v2}, Lcom/twitter/android/av/monetization/h;->a()Lcom/twitter/model/av/q;

    move-result-object v4

    move-object v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/av/monetization/i;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/twitter/android/av/monetization/n;Lcom/twitter/model/av/q;Lcom/twitter/android/av/monetization/j;)V

    .line 67
    return-object v0
.end method

.method public a(Lcyd;)Z
    .locals 5

    .prologue
    .line 44
    invoke-interface {p1}, Lcyd;->a()I

    move-result v0

    .line 46
    const v1, 0x7f1307e7

    if-ne v0, v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/twitter/android/av/monetization/MediaMonetizationSettingsActivity;->U()Lcom/twitter/app/common/inject/b;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/monetization/h;

    .line 49
    invoke-virtual {v0}, Lcom/twitter/android/av/monetization/h;->a()Lcom/twitter/model/av/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/av/q;->c()Lcom/twitter/model/av/o;

    move-result-object v0

    .line 51
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "media_monetization_metadata"

    sget-object v4, Lcom/twitter/model/av/o;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v2, v3, v0, v4}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/av/monetization/MediaMonetizationSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 53
    invoke-virtual {p0}, Lcom/twitter/android/av/monetization/MediaMonetizationSettingsActivity;->finish()V

    .line 54
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcyd;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Lcyg;)Z
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f140018

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 37
    invoke-direct {p0, p1}, Lcom/twitter/android/av/monetization/MediaMonetizationSettingsActivity;->d(Lcyg;)V

    .line 39
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcyg;)Z

    move-result v0

    return v0
.end method

.method protected synthetic c(Lcom/twitter/app/common/inject/t;)Lcom/twitter/app/common/inject/b;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/twitter/android/av/monetization/MediaMonetizationSettingsActivity;->a(Lcom/twitter/app/common/inject/t;)Lcom/twitter/android/av/monetization/h;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/twitter/android/av/monetization/MediaMonetizationSettingsActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->c()Lcyg;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/av/monetization/MediaMonetizationSettingsActivity;->d(Lcyg;)V

    .line 97
    return-void
.end method
