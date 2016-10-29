.class public Lcom/twitter/android/commerce/view/CardSummaryActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"


# instance fields
.field private a:Lcom/twitter/android/commerce/view/b;

.field private b:Lbjl;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/commerce/model/CreditCard$Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 1

    .prologue
    .line 38
    const v0, 0x7f04006a

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 39
    const/16 v0, 0xe

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->b(I)V

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->a(Z)V

    .line 42
    return-object p2
.end method

.method public a(Lcyd;)Z
    .locals 5

    .prologue
    .line 80
    invoke-interface {p1}, Lcyd;->a()I

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/twitter/android/commerce/view/CardSummaryActivity;->b:Lbjl;

    invoke-virtual {v1}, Lbjl;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/commerce/view/CreditCardNumberEntryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 85
    const-string/jumbo v2, "commerce_launched_from_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    iget-object v2, p0, Lcom/twitter/android/commerce/view/CardSummaryActivity;->c:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/twitter/android/commerce/view/CardSummaryActivity;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 87
    const-string/jumbo v2, "commerce_valid_card_types"

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/twitter/android/commerce/view/CardSummaryActivity;->c:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 90
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 91
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/commerce/view/CardSummaryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 93
    :cond_1
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcyd;)Z

    move-result v0

    return v0
.end method

.method public a(Lcyg;)Z
    .locals 2

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcyg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const v0, 0x7f140006

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 49
    invoke-interface {p1}, Lcyg;->j()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/ToolBar;

    .line 50
    const v1, 0x7f1307c3

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/commerce/view/CardSummaryActivity;->b:Lbjl;

    .line 51
    const/4 v0, 0x1

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 4

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V

    .line 59
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/CardSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/CardSummaryActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    const v0, 0x7f1301f0

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/CardSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 62
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/CardSummaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 64
    if-eqz v2, :cond_1

    .line 65
    const-string/jumbo v1, "commerce_valid_card_types"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const-string/jumbo v1, "commerce_valid_card_types"

    .line 67
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/twitter/android/commerce/view/CardSummaryActivity;->c:Ljava/util/List;

    .line 69
    :cond_0
    const-string/jumbo v1, "profile_bundle"

    sget-object v3, Lcom/twitter/library/commerce/model/am;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v2, v1, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/commerce/model/am;

    .line 71
    iget-object v2, p0, Lcom/twitter/android/commerce/view/CardSummaryActivity;->c:Ljava/util/List;

    invoke-static {p0, v1, v2}, Lcom/twitter/android/commerce/view/b;->a(Landroid/content/Context;Lcom/twitter/library/commerce/model/am;Ljava/util/List;)Lcom/twitter/android/commerce/view/b;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/commerce/view/CardSummaryActivity;->a:Lcom/twitter/android/commerce/view/b;

    .line 72
    iget-object v1, p0, Lcom/twitter/android/commerce/view/CardSummaryActivity;->a:Lcom/twitter/android/commerce/view/b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 98
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 99
    if-eqz p3, :cond_0

    .line 100
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    const-string/jumbo v1, "commerce_profile_id_added"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_0

    .line 104
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 105
    const-string/jumbo v3, "commerce_profile_id_added"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/twitter/android/commerce/view/CardSummaryActivity;->setResult(ILandroid/content/Intent;)V

    .line 109
    const-string/jumbo v1, "commerce_profile_last_four"

    .line 110
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    const-string/jumbo v2, "commerce_profile_cctype"

    .line 113
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/commerce/model/CreditCard$Type;

    .line 114
    new-instance v2, Lcom/twitter/android/commerce/view/c;

    invoke-direct {v2, p0, v0, v1}, Lcom/twitter/android/commerce/view/c;-><init>(Lcom/twitter/android/commerce/view/CardSummaryActivity;Lcom/twitter/library/commerce/model/CreditCard$Type;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/twitter/android/commerce/view/CardSummaryActivity;->c:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/twitter/library/commerce/model/CreditCard;->a(Lcom/twitter/library/commerce/model/CreditCard;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/twitter/android/commerce/view/CardSummaryActivity;->a:Lcom/twitter/android/commerce/view/b;

    invoke-virtual {v0, v2}, Lcom/twitter/android/commerce/view/b;->a(Lcom/twitter/library/commerce/model/CreditCard;)V

    .line 132
    :cond_0
    return-void
.end method
