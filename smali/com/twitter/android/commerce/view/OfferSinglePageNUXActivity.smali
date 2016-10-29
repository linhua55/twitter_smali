.class public Lcom/twitter/android/commerce/view/OfferSinglePageNUXActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"


# instance fields
.field private a:Lcom/twitter/library/card/CardContext;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 1

    .prologue
    .line 82
    const v0, 0x7f040264

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 83
    return-object p2
.end method

.method public a(Lcyg;)Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 34
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V

    .line 36
    new-array v3, v1, [[I

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    aput-object v0, v3, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    aput-object v0, v3, v9

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    aput-object v0, v3, v10

    move v1, v2

    .line 47
    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_0

    .line 48
    new-instance v4, Landroid/text/SpannableString;

    aget-object v0, v3, v1

    aget v0, v0, v9

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/OfferSinglePageNUXActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 49
    aget-object v0, v3, v1

    aget v0, v0, v9

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/OfferSinglePageNUXActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aget-object v5, v3, v1

    aget v5, v5, v10

    .line 50
    invoke-virtual {p0, v5}, Lcom/twitter/android/commerce/view/OfferSinglePageNUXActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    .line 51
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/OfferSinglePageNUXActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f12016c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 49
    invoke-static {v4, v0, v5, v6}, Lcom/twitter/android/commerce/util/g;->a(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/text/SpannableString;

    .line 52
    aget-object v0, v3, v1

    aget v0, v0, v9

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/OfferSinglePageNUXActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aget-object v5, v3, v1

    aget v5, v5, v10

    .line 53
    invoke-virtual {p0, v5}, Lcom/twitter/android/commerce/view/OfferSinglePageNUXActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 52
    invoke-static {v4, v0, v5, v6}, Lcom/twitter/android/commerce/util/g;->a(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/text/SpannableString;

    .line 54
    aget-object v0, v3, v1

    aget v0, v0, v9

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/OfferSinglePageNUXActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aget-object v5, v3, v1

    aget v5, v5, v10

    .line 55
    invoke-virtual {p0, v5}, Lcom/twitter/android/commerce/view/OfferSinglePageNUXActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    const v7, 0x3fa66666    # 1.3f

    invoke-direct {v6, v7}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 54
    invoke-static {v4, v0, v5, v6}, Lcom/twitter/android/commerce/util/g;->a(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/text/SpannableString;

    .line 56
    aget-object v0, v3, v1

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/OfferSinglePageNUXActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-virtual {v0, v4}, Lcom/twitter/ui/widget/TypefacesTextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/OfferSinglePageNUXActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    const-string/jumbo v0, "commerce_buynow_card_context"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/card/CardContext;

    iput-object v0, p0, Lcom/twitter/android/commerce/view/OfferSinglePageNUXActivity;->a:Lcom/twitter/library/card/CardContext;

    .line 63
    const-string/jumbo v0, "commerce_buynow_card_url"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/commerce/view/OfferSinglePageNUXActivity;->b:Ljava/lang/String;

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/commerce/view/OfferSinglePageNUXActivity;->a:Lcom/twitter/library/card/CardContext;

    const-string/jumbo v1, "cl_offer::product_detail:offers_nux:open"

    iget-object v2, p0, Lcom/twitter/android/commerce/view/OfferSinglePageNUXActivity;->b:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const v0, 0x7f1305ab

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/OfferSinglePageNUXActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    new-instance v1, Lcom/twitter/android/commerce/view/j;

    invoke-direct {v1, p0}, Lcom/twitter/android/commerce/view/j;-><init>(Lcom/twitter/android/commerce/view/OfferSinglePageNUXActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    :cond_2
    return-void

    .line 36
    :array_0
    .array-data 4
        0x7f1305a8
        0x7f0a01a8
        0x7f0a01a9
    .end array-data

    :array_1
    .array-data 4
        0x7f1305a9
        0x7f0a01ab
        0x7f0a01ac
    .end array-data

    :array_2
    .array-data 4
        0x7f1305aa
        0x7f0a01ad
        0x7f0a01ae
    .end array-data
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->finish()V

    .line 94
    const v0, 0x7f05003b

    const v1, 0x7f05003c

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/commerce/view/OfferSinglePageNUXActivity;->overridePendingTransition(II)V

    .line 96
    return-void
.end method
