.class public Lcom/twitter/android/av/monetization/MonetizationCategorySelectorActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/app/common/inject/t;)Lcom/twitter/android/av/monetization/p;
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/twitter/android/av/monetization/MonetizationCategorySelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "selected_categories"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 76
    :goto_0
    new-instance v1, Ltw;

    invoke-direct {v1, v0}, Ltw;-><init>(Ljava/util/Set;)V

    .line 79
    invoke-static {}, Lcom/twitter/android/av/monetization/a;->a()Lcom/twitter/android/av/monetization/c;

    move-result-object v0

    .line 80
    invoke-static {}, Lcom/twitter/app/common/app/n;->w()Lcom/twitter/app/common/app/n;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/android/av/monetization/c;->a(Lcom/twitter/app/common/app/n;)Lcom/twitter/android/av/monetization/c;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v1}, Lcom/twitter/android/av/monetization/c;->a(Ltw;)Lcom/twitter/android/av/monetization/c;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/twitter/android/av/monetization/c;->a()Lcom/twitter/android/av/monetization/p;

    move-result-object v0

    .line 79
    return-object v0

    .line 72
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 44
    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->a(Z)V

    .line 45
    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->a(I)V

    .line 46
    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->b(Z)V

    .line 47
    return-object p2
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Lcom/twitter/app/common/inject/v;
    .locals 4

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Lcom/twitter/app/common/inject/v;

    .line 55
    new-instance v0, Lcom/twitter/android/client/au;

    invoke-direct {v0}, Lcom/twitter/android/client/au;-><init>()V

    const v1, 0x7f0401a1

    .line 56
    invoke-virtual {v0, v1}, Lcom/twitter/android/client/au;->a(I)Lcom/twitter/android/client/au;

    move-result-object v0

    const v1, 0x7f13046a

    .line 57
    invoke-virtual {v0, v1}, Lcom/twitter/android/client/au;->b(I)Lcom/twitter/android/client/au;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    .line 58
    invoke-virtual {p0}, Lcom/twitter/android/av/monetization/MonetizationCategorySelectorActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/au;->a(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Lcom/twitter/android/client/au;

    move-result-object v1

    .line 60
    invoke-virtual {p0}, Lcom/twitter/android/av/monetization/MonetizationCategorySelectorActivity;->U()Lcom/twitter/app/common/inject/b;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/monetization/p;

    .line 62
    new-instance v2, Lcom/twitter/android/av/monetization/r;

    invoke-interface {v0}, Lcom/twitter/android/av/monetization/p;->d()Lrx/o;

    move-result-object v3

    .line 63
    invoke-interface {v0}, Lcom/twitter/android/av/monetization/p;->c()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, p1, v1, v3, v0}, Lcom/twitter/android/av/monetization/r;-><init>(Landroid/view/LayoutInflater;Lcom/twitter/android/client/au;Lrx/o;Ljava/util/Set;)V

    .line 62
    return-object v2
.end method

.method protected synthetic c(Lcom/twitter/app/common/inject/t;)Lcom/twitter/app/common/inject/b;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/twitter/android/av/monetization/MonetizationCategorySelectorActivity;->a(Lcom/twitter/app/common/inject/t;)Lcom/twitter/android/av/monetization/p;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/twitter/android/av/monetization/MonetizationCategorySelectorActivity;->U()Lcom/twitter/app/common/inject/b;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/monetization/p;

    .line 88
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "selected_categories"

    new-instance v4, Ljava/util/ArrayList;

    .line 89
    invoke-interface {v0}, Lcom/twitter/android/av/monetization/p;->c()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/av/monetization/MonetizationCategorySelectorActivity;->setResult(ILandroid/content/Intent;)V

    .line 91
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onBackPressed()V

    .line 92
    return-void
.end method
