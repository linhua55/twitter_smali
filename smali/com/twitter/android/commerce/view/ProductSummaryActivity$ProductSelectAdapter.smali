.class final Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter$SpinnerState;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 2

    .prologue
    .line 1789
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 1790
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->d:I

    .line 1791
    iput-object p1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->a:Landroid/content/Context;

    .line 1792
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1810
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1812
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->c:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1813
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1815
    :cond_1
    return-void
.end method

.method public a(ILcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter$SpinnerState;)V
    .locals 2

    .prologue
    .line 1802
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1803
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->b:Ljava/util/Map;

    .line 1805
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1796
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->c:Ljava/util/Map;

    .line 1798
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1799
    return-void
.end method

.method public a(I)Z
    .locals 2

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1819
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter$SpinnerState;

    sget-object v1, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter$SpinnerState;->b:Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter$SpinnerState;

    invoke-virtual {v0, v1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter$SpinnerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1821
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1840
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1841
    const v0, 0x1020015

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1842
    if-eqz v0, :cond_0

    .line 1843
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1844
    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->b:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1845
    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter$SpinnerState;

    .line 1846
    sget-object v3, Lcom/twitter/android/commerce/view/ad;->b:[I

    invoke-virtual {v1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter$SpinnerState;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 1860
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1868
    :cond_0
    :goto_0
    const v0, 0x7f130258

    .line 1869
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1870
    if-eqz v0, :cond_1

    .line 1871
    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->c:Ljava/util/Map;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1872
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1873
    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1878
    :cond_1
    :goto_1
    return-object v2

    .line 1848
    :pswitch_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1849
    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0a01e2

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1854
    :pswitch_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1855
    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0a01d7

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1865
    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1875
    :cond_3
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1846
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 1826
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1827
    const v0, 0x1020014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1828
    if-eqz v0, :cond_0

    .line 1829
    if-nez p1, :cond_1

    .line 1830
    iget v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->d:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1835
    :cond_0
    :goto_0
    return-object v1

    .line 1832
    :cond_1
    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
