.class public Lcom/twitter/android/commerce/view/ProductSummaryActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/twitter/android/commerce/network/i;


# instance fields
.field private A:Lcom/twitter/library/commerce/model/CardVariantList;

.field private B:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lcom/twitter/library/card/CardContext;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private K:J

.field private L:J

.field private M:Z

.field private N:Z

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:J

.field private R:Ljava/lang/String;

.field private S:J

.field private T:Ljava/lang/Boolean;

.field private U:Z

.field private V:Z

.field private W:Ljava/lang/String;

.field private X:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Y:Z

.field private Z:Ljava/lang/String;

.field private a:Lcom/twitter/media/ui/image/MediaImageView;

.field private aa:Z

.field private ab:Z

.field private ac:Lcom/twitter/android/commerce/view/ProductSummaryActivity$MatchProductOrCartCallback;

.field private ad:Lcom/twitter/android/commerce/view/ae;

.field private ae:Lcom/twitter/android/commerce/view/af;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/twitter/ui/widget/TwitterButton;

.field private e:Lcom/twitter/ui/widget/TwitterButton;

.field private f:Landroid/widget/TextView;

.field private g:[Landroid/widget/Spinner;

.field private h:[Lcom/twitter/android/commerce/view/ErrorTextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ProgressBar;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/view/View;

.field private p:Lcom/twitter/android/commerce/widget/form/DescriptionHeader;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Lcom/twitter/android/commerce/util/d;

.field private w:Ljava/lang/String;

.field private x:Lcom/twitter/library/commerce/model/am;

.field private y:Lcom/twitter/library/commerce/model/CreditCard;

.field private z:Lcom/twitter/library/commerce/model/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    return-void
.end method

.method private a([Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 540
    move v1, v0

    move v2, v0

    .line 542
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 543
    aget-object v3, p1, v0

    if-nez v3, :cond_0

    .line 544
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    .line 542
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 548
    :cond_1
    const/4 v0, 0x1

    if-ne v2, v0, :cond_2

    :goto_1
    return v1

    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/twitter/android/commerce/view/ProductSummaryActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->m:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/twitter/android/commerce/widget/form/DescriptionHeader;
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 411
    new-instance v0, Lcom/twitter/android/commerce/widget/form/DescriptionHeader;

    invoke-direct {v0, p0}, Lcom/twitter/android/commerce/widget/form/DescriptionHeader;-><init>(Landroid/content/Context;)V

    .line 412
    invoke-virtual {v0, v2}, Lcom/twitter/android/commerce/widget/form/DescriptionHeader;->setVisibility(I)V

    .line 413
    invoke-static {p1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, v0, Lcom/twitter/android/commerce/widget/form/DescriptionHeader;->b:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v1, v0, Lcom/twitter/android/commerce/widget/form/DescriptionHeader;->c:Lcom/twitter/android/commerce/widget/form/ExpandableTextView;

    invoke-virtual {v1, p2}, Lcom/twitter/android/commerce/widget/form/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    if-nez p3, :cond_0

    .line 417
    iget-object v1, v0, Lcom/twitter/android/commerce/widget/form/DescriptionHeader;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 419
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/commerce/widget/form/DescriptionHeader;->setVisibility(I)V

    .line 421
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 422
    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;Lcom/twitter/library/commerce/model/e;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 945
    const-string/jumbo v2, ""

    .line 946
    if-eqz p1, :cond_3

    .line 947
    invoke-virtual {p1}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 948
    invoke-virtual {p1}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/ProductVariant;->f()Lcom/twitter/library/commerce/model/ShippingType;

    move-result-object v0

    .line 950
    :goto_0
    invoke-virtual {p1}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 951
    invoke-virtual {p1}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/commerce/model/ProductVariant;->h()Lcom/twitter/library/commerce/model/TaxType;

    move-result-object v1

    .line 954
    :goto_1
    sget-object v3, Lcom/twitter/library/commerce/model/ShippingType;->c:Lcom/twitter/library/commerce/model/ShippingType;

    if-ne v0, v3, :cond_2

    .line 955
    sget-object v0, Lcom/twitter/android/commerce/view/ad;->a:[I

    invoke-virtual {v1}, Lcom/twitter/library/commerce/model/TaxType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move-object v0, v2

    .line 1017
    :goto_2
    return-object v0

    .line 948
    :cond_0
    sget-object v0, Lcom/twitter/library/commerce/model/ShippingType;->a:Lcom/twitter/library/commerce/model/ShippingType;

    goto :goto_0

    .line 951
    :cond_1
    sget-object v1, Lcom/twitter/library/commerce/model/TaxType;->a:Lcom/twitter/library/commerce/model/TaxType;

    goto :goto_1

    .line 957
    :pswitch_0
    const v0, 0x7f0a011f

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "$"

    .line 960
    invoke-virtual {p1}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/commerce/model/ProductVariant;->g()Ljava/math/BigDecimal;

    move-result-object v3

    .line 959
    invoke-static {v2, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(Ljava/lang/String;Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 957
    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 965
    :pswitch_1
    const v0, 0x7f0a0121

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "$"

    .line 968
    invoke-virtual {p1}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/commerce/model/ProductVariant;->g()Ljava/math/BigDecimal;

    move-result-object v3

    .line 967
    invoke-static {v2, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(Ljava/lang/String;Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 965
    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 973
    :pswitch_2
    const v0, 0x7f0a0123

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 981
    :cond_2
    sget-object v3, Lcom/twitter/library/commerce/model/ShippingType;->b:Lcom/twitter/library/commerce/model/ShippingType;

    if-ne v0, v3, :cond_3

    .line 982
    sget-object v0, Lcom/twitter/android/commerce/view/ad;->a:[I

    invoke-virtual {v1}, Lcom/twitter/library/commerce/model/TaxType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    :cond_3
    move-object v0, v2

    goto :goto_2

    .line 984
    :pswitch_3
    const v0, 0x7f0a011e

    new-array v1, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "$"

    .line 987
    invoke-virtual {p1}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/commerce/model/ProductVariant;->e()Ljava/math/BigDecimal;

    move-result-object v3

    .line 986
    invoke-static {v2, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(Ljava/lang/String;Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "$"

    .line 989
    invoke-virtual {p1}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/commerce/model/ProductVariant;->g()Ljava/math/BigDecimal;

    move-result-object v3

    .line 988
    invoke-static {v2, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(Ljava/lang/String;Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 984
    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 994
    :pswitch_4
    const v0, 0x7f0a0120

    new-array v1, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "$"

    .line 997
    invoke-virtual {p1}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/commerce/model/ProductVariant;->e()Ljava/math/BigDecimal;

    move-result-object v3

    .line 996
    invoke-static {v2, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(Ljava/lang/String;Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "$"

    .line 999
    invoke-virtual {p1}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/commerce/model/ProductVariant;->g()Ljava/math/BigDecimal;

    move-result-object v3

    .line 998
    invoke-static {v2, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(Ljava/lang/String;Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 994
    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1004
    :pswitch_5
    const v0, 0x7f0a0122

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "$"

    .line 1007
    invoke-virtual {p1}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/commerce/model/ProductVariant;->e()Ljava/math/BigDecimal;

    move-result-object v3

    .line 1006
    invoke-static {v2, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(Ljava/lang/String;Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1004
    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 955
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 982
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic a(Ljava/lang/String;Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-static {p0, p1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(Ljava/lang/String;Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->ae:Lcom/twitter/android/commerce/view/af;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->ae:Lcom/twitter/android/commerce/view/af;

    invoke-virtual {v0, p1}, Lcom/twitter/android/commerce/view/af;->a(I)V

    .line 293
    :cond_0
    invoke-virtual {p0, p1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->setResult(I)V

    .line 294
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1538
    const/4 v0, 0x0

    .line 1539
    if-eqz p1, :cond_1

    .line 1540
    const-string/jumbo v2, "commerce_bundle_errors"

    .line 1541
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1542
    if-eqz v2, :cond_1

    .line 1544
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->v:Lcom/twitter/android/commerce/util/d;

    invoke-virtual {v0, v2}, Lcom/twitter/android/commerce/util/d;->c(Ljava/util/List;)V

    .line 1547
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/commerce/model/ServerError;

    .line 1548
    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/ServerError;->b()Lcom/twitter/library/commerce/model/ServerErrorType;

    move-result-object v0

    sget-object v3, Lcom/twitter/library/commerce/model/ServerErrorType;->k:Lcom/twitter/library/commerce/model/ServerErrorType;

    if-ne v0, v3, :cond_0

    .line 1549
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Ljava/math/BigDecimal;)V

    move v0, v1

    .line 1556
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 1558
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a01d1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1557
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1559
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1561
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;Z)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1296
    .line 1299
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->k:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->T:Ljava/lang/Boolean;

    .line 1301
    iput-boolean v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->U:Z

    .line 1303
    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    .line 1304
    const-string/jumbo v0, "phone_number_required"

    .line 1305
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1304
    invoke-static {p0, v0}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->aa:Z

    .line 1306
    const-string/jumbo v0, "billing_address_required"

    .line 1307
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1306
    invoke-static {p0, v0}, Lcom/twitter/android/commerce/util/c;->b(Landroid/content/Context;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->ab:Z

    .line 1309
    const-string/jumbo v0, "cart_bundle_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1311
    iget-object v3, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->E:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1355
    :goto_0
    if-eqz v0, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    const-string/jumbo v1, "buy_now::product_detail::load_aborted"

    iget-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->D:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->S:Lcom/twitter/library/api/PromotedEvent;

    invoke-static {p0, v0, v1}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Lcom/twitter/library/api/PromotedEvent;)V

    .line 1360
    invoke-direct {p0, p1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Landroid/os/Bundle;)V

    .line 1362
    :cond_0
    return-void

    .line 1315
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    const-string/jumbo v3, "buy_now::product_detail::load_finished"

    iget-object v4, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->D:Ljava/lang/String;

    invoke-static {p0, v0, v3, v4}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    sget-object v3, Lcom/twitter/library/api/PromotedEvent;->R:Lcom/twitter/library/api/PromotedEvent;

    invoke-static {p0, v0, v3}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Lcom/twitter/library/api/PromotedEvent;)V

    .line 1321
    const-string/jumbo v0, "getproductinfo_bundle_variants"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1323
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 1324
    new-instance v0, Lcom/twitter/library/commerce/model/CardVariantList$CardVariantListException;

    const-string/jumbo v2, "Expected non-empty variant list to be returned"

    invoke-direct {v0, v2}, Lcom/twitter/library/commerce/model/CardVariantList$CardVariantListException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/twitter/library/commerce/model/CardVariantList$CardVariantListException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1346
    :catch_0
    move-exception v0

    .line 1347
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    move v0, v1

    .line 1348
    goto :goto_0

    .line 1327
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->A:Lcom/twitter/library/commerce/model/CardVariantList;

    invoke-virtual {v3, v0}, Lcom/twitter/library/commerce/model/CardVariantList;->a(Ljava/util/List;)V

    .line 1330
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->A:Lcom/twitter/library/commerce/model/CardVariantList;

    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/CardVariantList;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_3

    .line 1331
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->o:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1332
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->l:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v0, v2

    .line 1335
    :goto_1
    iget-object v3, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1336
    iget-object v3, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1337
    invoke-direct {p0, v3, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Landroid/view/View;I)V

    .line 1335
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1339
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->A:Lcom/twitter/library/commerce/model/CardVariantList;

    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/CardVariantList;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 1342
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->A:Lcom/twitter/library/commerce/model/CardVariantList;

    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/CardVariantList;->a()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/commerce/model/e;

    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(Lcom/twitter/library/commerce/model/e;)V

    .line 1345
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->d:Lcom/twitter/ui/widget/TwitterButton;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/twitter/ui/widget/TwitterButton;->setEnabled(Z)V
    :try_end_1
    .catch Lcom/twitter/library/commerce/model/CardVariantList$CardVariantListException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v2

    .line 1349
    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 1352
    goto/16 :goto_0
.end method

.method private a(Landroid/view/View;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twitter/library/commerce/model/CardVariantList$CardVariantListException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 496
    const v0, 0x7f13024a

    .line 497
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 498
    const v1, 0x7f130249

    .line 499
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 500
    const v2, 0x7f130248

    .line 501
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/commerce/view/ErrorTextView;

    .line 502
    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 503
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->g:[Landroid/widget/Spinner;

    aput-object v0, v1, p2

    .line 505
    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->h:[Lcom/twitter/android/commerce/view/ErrorTextView;

    aput-object v2, v1, p2

    .line 506
    new-instance v2, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;

    const v1, 0x1090008

    const v4, 0x1020014

    invoke-direct {v2, p0, v1, v4}, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;-><init>(Landroid/content/Context;II)V

    .line 508
    const v1, 0x7f040083

    invoke-virtual {v2, v1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->setDropDownViewResource(I)V

    .line 510
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 511
    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->A:Lcom/twitter/library/commerce/model/CardVariantList;

    invoke-virtual {v1}, Lcom/twitter/library/commerce/model/CardVariantList;->b()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 512
    iget-object v4, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->A:Lcom/twitter/library/commerce/model/CardVariantList;

    invoke-virtual {v4, p2, v1}, Lcom/twitter/library/commerce/model/CardVariantList;->a(I[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 514
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a01d9

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->add(Ljava/lang/Object;)V

    .line 516
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 517
    invoke-virtual {v2, v1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 519
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 520
    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 521
    invoke-virtual {v2}, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->notifyDataSetChanged()V

    .line 522
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 523
    iput-boolean v7, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->M:Z

    .line 524
    return-void
.end method

.method private a(Lcom/twitter/android/commerce/view/ProductSummaryActivity$MatchProductOrCartCallback$RequestType;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 427
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(Lcom/twitter/android/commerce/view/ProductSummaryActivity$MatchProductOrCartCallback$RequestType;Ljava/lang/String;)Lcom/twitter/library/service/x;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_0

    .line 430
    invoke-static {p0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    .line 431
    new-instance v2, Lcom/twitter/android/commerce/view/ProductSummaryActivity$MatchProductOrCartCallback;

    invoke-direct {v2, p0, p1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity$MatchProductOrCartCallback;-><init>(Lcom/twitter/android/commerce/view/ProductSummaryActivity;Lcom/twitter/android/commerce/view/ProductSummaryActivity$MatchProductOrCartCallback$RequestType;)V

    iput-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->ac:Lcom/twitter/android/commerce/view/ProductSummaryActivity$MatchProductOrCartCallback;

    .line 432
    iget-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->ac:Lcom/twitter/android/commerce/view/ProductSummaryActivity$MatchProductOrCartCallback;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 434
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/commerce/view/ProductSummaryActivity;Landroid/os/Bundle;Z)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/commerce/view/ProductSummaryActivity;Z)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(Z)V

    return-void
.end method

.method private a(Lcom/twitter/library/commerce/model/CreditCard;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 841
    const v0, 0x7f13025d

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 842
    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 845
    :cond_0
    const v0, 0x7f13025b

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 846
    if-eqz v0, :cond_1

    .line 847
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 850
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->s:Landroid/widget/TextView;

    invoke-static {p1, p0}, Lcom/twitter/android/commerce/util/a;->a(Lcom/twitter/library/commerce/model/CreditCard;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    invoke-virtual {p1}, Lcom/twitter/library/commerce/model/CreditCard;->a()Lcom/twitter/library/commerce/model/CreditCard$Type;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/commerce/util/ImageHelper;->a(Lcom/twitter/library/commerce/model/CreditCard$Type;)Lcom/twitter/android/commerce/util/ImageHelper$Image;

    move-result-object v0

    .line 852
    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/twitter/android/commerce/util/ImageHelper$Image;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 853
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->O:Ljava/lang/String;

    .line 854
    invoke-virtual {p1}, Lcom/twitter/library/commerce/model/CreditCard;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->P:Ljava/lang/String;

    .line 856
    invoke-direct {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->u()V

    .line 857
    return-void
.end method

.method private a(Lcom/twitter/library/commerce/model/CreditCard;Lcom/twitter/library/commerce/model/a;)V
    .locals 6

    .prologue
    .line 860
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->s:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 861
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->t:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 862
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->u:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 864
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->s:Landroid/widget/TextView;

    invoke-static {p1, p0}, Lcom/twitter/android/commerce/util/a;->a(Lcom/twitter/library/commerce/model/CreditCard;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 867
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 868
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 869
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 870
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 871
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 873
    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->t:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01ec

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 874
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 873
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->u:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 877
    invoke-virtual {p1}, Lcom/twitter/library/commerce/model/CreditCard;->a()Lcom/twitter/library/commerce/model/CreditCard$Type;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/commerce/util/ImageHelper;->a(Lcom/twitter/library/commerce/model/CreditCard$Type;)Lcom/twitter/android/commerce/util/ImageHelper$Image;

    move-result-object v0

    .line 878
    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/twitter/android/commerce/util/ImageHelper$Image;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 880
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/a;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->O:Ljava/lang/String;

    .line 881
    invoke-virtual {p1}, Lcom/twitter/library/commerce/model/CreditCard;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->P:Ljava/lang/String;

    .line 883
    invoke-direct {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->u()V

    .line 884
    return-void
.end method

.method private a(Lcom/twitter/library/commerce/model/a;Lcom/twitter/library/commerce/model/m;)V
    .locals 12

    .prologue
    .line 1256
    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    iget-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->D:Ljava/lang/String;

    const/4 v5, 0x0

    .line 1257
    invoke-direct {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->w()Lcom/twitter/library/commerce/model/CreditCard;

    move-result-object v6

    iget-object v7, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->X:Ljava/util/List;

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-boolean v10, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->aa:Z

    iget-boolean v11, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->ab:Z

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    .line 1256
    invoke-static/range {v0 .. v11}, Lcom/twitter/android/commerce/util/c;->a(Landroid/app/Activity;Lcom/twitter/library/card/CardContext;Ljava/lang/String;Lcom/twitter/library/commerce/model/a;Lcom/twitter/library/commerce/model/m;Ljava/lang/String;Lcom/twitter/library/commerce/model/CreditCard;Ljava/util/List;IZZZ)V

    .line 1261
    return-void
.end method

.method private a(Lcom/twitter/library/commerce/model/m;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1264
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->D:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    const-string/jumbo v1, "store_profile:payment_method:start"

    .line 1266
    invoke-static {v4, v1}, Lcom/twitter/android/commerce/util/c;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->D:Ljava/lang/String;

    .line 1265
    invoke-static {p0, v0, v1, v2}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->V:Lcom/twitter/library/api/PromotedEvent;

    invoke-static {p0, v0, v1}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Lcom/twitter/library/api/PromotedEvent;)V

    .line 1271
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/commerce/view/CardEmailEntryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1272
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1273
    const-string/jumbo v2, "commerce_profile_email"

    sget-object v3, Lcom/twitter/library/commerce/model/m;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v1, v2, p1, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/os/Bundle;

    .line 1274
    const-string/jumbo v2, "commerce_buynow_card_context"

    iget-object v3, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1275
    const-string/jumbo v2, "commerce_launched_from_settings"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1276
    const-string/jumbo v2, "commerce_phone_required"

    iget-boolean v3, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->aa:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1277
    const-string/jumbo v2, "commerce_billing_required"

    iget-boolean v3, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->ab:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1279
    invoke-direct {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->w()Lcom/twitter/library/commerce/model/CreditCard;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/twitter/android/commerce/util/c;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1280
    const-string/jumbo v2, "commerce_partial_card_object"

    invoke-direct {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->w()Lcom/twitter/library/commerce/model/CreditCard;

    move-result-object v3

    sget-object v4, Lcom/twitter/library/commerce/model/CreditCard;->d:Lcom/twitter/util/serialization/ah;

    invoke-static {v1, v2, v3, v4}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/os/Bundle;

    .line 1284
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1285
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1286
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 833
    invoke-static {p2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    :cond_0
    return-void
.end method

.method private a(Ljava/math/BigDecimal;)V
    .locals 4

    .prologue
    .line 715
    if-eqz p1, :cond_1

    .line 717
    iget-boolean v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->V:Z

    if-eqz v0, :cond_0

    .line 719
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 726
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 729
    const-string/jumbo v0, "$"

    invoke-static {v0, p1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(Ljava/lang/String;Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v0

    .line 730
    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 731
    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    :goto_1
    return-void

    .line 722
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 734
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a011d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 735
    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 737
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method private a(ZZ)V
    .locals 5

    .prologue
    .line 1103
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(Z)V

    .line 1104
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/twitter/android/commerce/view/ProfileSummaryActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1106
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1107
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    if-eqz v0, :cond_0

    .line 1108
    const-string/jumbo v0, "commerce_buynow_card_context"

    iget-object v3, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1110
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->D:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1111
    const-string/jumbo v0, "commerce_buynow_card_url"

    iget-object v3, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->D:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->x:Lcom/twitter/library/commerce/model/am;

    if-eqz v0, :cond_2

    .line 1114
    const-string/jumbo v0, "commerce_profile_entry"

    iget-object v3, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->x:Lcom/twitter/library/commerce/model/am;

    sget-object v4, Lcom/twitter/library/commerce/model/am;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v2, v0, v3, v4}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/os/Bundle;

    .line 1116
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->X:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1117
    const-string/jumbo v3, "commerce_allowed_states_for_item"

    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->X:Ljava/util/List;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1120
    :cond_3
    const-string/jumbo v0, "commerce_in_buy_mode"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1121
    const-string/jumbo v0, "commerce_phone_required"

    iget-boolean v3, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->aa:Z

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1122
    const-string/jumbo v0, "commerce_billing_required"

    iget-boolean v3, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->ab:Z

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1123
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1124
    if-eqz p2, :cond_4

    .line 1125
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1129
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    const-string/jumbo v1, "buy_now:payment_settings:::start"

    iget-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->D:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    return-void

    .line 1127
    :cond_4
    invoke-virtual {p0, v1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private a([Ljava/lang/String;Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 693
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->A:Lcom/twitter/library/commerce/model/CardVariantList;

    .line 694
    invoke-virtual {v0, p1}, Lcom/twitter/library/commerce/model/CardVariantList;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 695
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 696
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/commerce/model/e;

    .line 697
    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v0

    .line 698
    if-eqz v0, :cond_1

    .line 699
    invoke-direct {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->p()Z

    move-result v1

    if-nez v1, :cond_0

    .line 700
    const-string/jumbo v1, "$"

    .line 702
    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/ProductVariant;->c()Ljava/math/BigDecimal;

    move-result-object v2

    .line 701
    invoke-static {v1, v2}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(Ljava/lang/String;Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v1

    .line 700
    invoke-virtual {p2, p3, v1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->a(ILjava/lang/String;)V

    .line 705
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/ProductVariant;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 706
    sget-object v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter$SpinnerState;->c:Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter$SpinnerState;

    invoke-virtual {p2, p3, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->a(ILcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter$SpinnerState;)V

    .line 711
    :cond_1
    return-void
.end method

.method private a(Lcom/twitter/library/commerce/model/af;Lcom/twitter/library/commerce/model/a;)Z
    .locals 1

    .prologue
    .line 1244
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/library/commerce/model/af;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 1245
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1244
    :goto_0
    return v0

    .line 1245
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/twitter/library/commerce/model/e;)Z
    .locals 1

    .prologue
    .line 576
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {p1}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/ProductVariant;->c()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 576
    :goto_0
    return v0

    .line 577
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->B:Ljava/util/HashMap;

    invoke-static {v0, p1, p2}, Lcom/twitter/android/commerce/util/c;->a(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/twitter/android/commerce/view/ProductSummaryActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->q:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private b([Ljava/lang/String;)Lcom/twitter/library/commerce/model/e;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 591
    const/4 v0, 0x1

    .line 592
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, p1, v1

    .line 593
    if-nez v4, :cond_1

    move v1, v2

    .line 599
    :goto_1
    const/4 v0, 0x0

    .line 600
    if-eqz v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->A:Lcom/twitter/library/commerce/model/CardVariantList;

    .line 602
    invoke-virtual {v1, p1}, Lcom/twitter/library/commerce/model/CardVariantList;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 603
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 604
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/commerce/model/e;

    .line 608
    :cond_0
    return-object v0

    .line 592
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method private b(Lcom/twitter/android/commerce/view/ProductSummaryActivity$MatchProductOrCartCallback$RequestType;Ljava/lang/String;)Lcom/twitter/library/service/x;
    .locals 13

    .prologue
    .line 439
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 440
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 441
    invoke-static {}, Lcom/twitter/android/commerce/util/c;->b()Z

    move-result v11

    .line 442
    const/4 v1, 0x0

    .line 443
    invoke-static {}, Lcom/twitter/android/commerce/util/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$MatchProductOrCartCallback$RequestType;->b:Lcom/twitter/android/commerce/view/ProductSummaryActivity$MatchProductOrCartCallback$RequestType;

    if-ne p1, v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    new-instance v0, Lbyt;

    iget-object v3, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->E:Ljava/lang/String;

    iget-wide v4, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->K:J

    iget-wide v6, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->L:J

    iget-object v8, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->D:Ljava/lang/String;

    .line 451
    invoke-static {p2}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lbyt;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;JJLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 469
    :goto_0
    return-object v0

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->A:Lcom/twitter/library/commerce/model/CardVariantList;

    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/CardVariantList;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 454
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/commerce/model/e;

    .line 455
    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 458
    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 459
    new-instance v0, Lbzk;

    iget-object v3, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->E:Ljava/lang/String;

    iget-wide v4, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->K:J

    iget-wide v6, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->L:J

    iget-object v8, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->D:Ljava/lang/String;

    sget-object v1, Lcom/twitter/android/commerce/view/ProductSummaryActivity$MatchProductOrCartCallback$RequestType;->b:Lcom/twitter/android/commerce/view/ProductSummaryActivity$MatchProductOrCartCallback$RequestType;

    if-ne p1, v1, :cond_2

    const/4 v10, 0x1

    .line 466
    :goto_2
    invoke-static {p2}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v1, p0

    invoke-direct/range {v0 .. v12}, Lbzk;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;JJLjava/lang/String;Ljava/util/List;ZZLjava/lang/String;)V

    goto :goto_0

    .line 459
    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private b(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "item_attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 743
    invoke-static {p1}, Lcom/twitter/android/commerce/util/c;->a(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(J)V
    .locals 3

    .prologue
    .line 1473
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1474
    new-instance v1, Lcom/twitter/android/commerce/view/ab;

    invoke-direct {v1, p0}, Lcom/twitter/android/commerce/view/ab;-><init>(Lcom/twitter/android/commerce/view/ProductSummaryActivity;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1480
    return-void
.end method

.method private b(Landroid/os/Bundle;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 1366
    const/4 v0, 0x0

    .line 1368
    iget-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->k:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1369
    iput-object v4, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->T:Ljava/lang/Boolean;

    .line 1370
    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    .line 1371
    const-string/jumbo v2, "cart_bundle_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->Z:Ljava/lang/String;

    .line 1375
    :try_start_0
    const-string/jumbo v2, "getproductinfo_bundle_variants"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1377
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 1378
    new-instance v0, Lcom/twitter/library/commerce/model/CardVariantList$CardVariantListException;

    const-string/jumbo v2, "Expected non-empty variant list to be returned"

    invoke-direct {v0, v2}, Lcom/twitter/library/commerce/model/CardVariantList$CardVariantListException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/twitter/library/commerce/model/CardVariantList$CardVariantListException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1408
    :catch_0
    move-exception v0

    .line 1409
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    move v0, v1

    .line 1416
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1417
    invoke-direct {p0, p1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Landroid/os/Bundle;)V

    .line 1418
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->e:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setEnabled(Z)V

    .line 1421
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/twitter/android/commerce/view/aa;

    invoke-direct {v1, p0}, Lcom/twitter/android/commerce/view/aa;-><init>(Lcom/twitter/android/commerce/view/ProductSummaryActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1427
    return-void

    .line 1384
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/twitter/library/commerce/model/e;->a(Lcom/twitter/library/commerce/model/ProductVariant;)V

    .line 1387
    iget-object v3, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->A:Lcom/twitter/library/commerce/model/CardVariantList;

    invoke-virtual {v3, v2}, Lcom/twitter/library/commerce/model/CardVariantList;->a(Ljava/util/List;)V

    .line 1389
    iget-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    invoke-virtual {v2}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v2

    if-nez v2, :cond_3

    move v0, v1

    .line 1391
    goto :goto_0

    .line 1392
    :cond_3
    iget-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->x:Lcom/twitter/library/commerce/model/am;

    if-nez v2, :cond_4

    move v0, v1

    .line 1394
    goto :goto_0

    .line 1397
    :cond_4
    iget-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->x:Lcom/twitter/library/commerce/model/am;

    invoke-static {v2}, Lcom/twitter/android/commerce/util/c;->a(Lcom/twitter/library/commerce/model/am;)Lcom/twitter/library/commerce/model/CreditCard;

    move-result-object v2

    .line 1398
    iget-boolean v3, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->Y:Z

    if-eqz v3, :cond_5

    .line 1399
    iget-object v3, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->x:Lcom/twitter/library/commerce/model/am;

    invoke-static {v2, v3}, Lcom/twitter/android/commerce/util/c;->a(Lcom/twitter/library/commerce/model/CreditCard;Lcom/twitter/library/commerce/model/am;)Lcom/twitter/library/commerce/model/a;

    move-result-object v3

    .line 1400
    if-eqz v3, :cond_0

    .line 1401
    invoke-direct {p0, v2, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Lcom/twitter/library/commerce/model/CreditCard;Lcom/twitter/library/commerce/model/a;)V

    goto :goto_0

    .line 1404
    :cond_5
    if-eqz v2, :cond_6

    :goto_1
    invoke-direct {p0, v2}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Lcom/twitter/library/commerce/model/CreditCard;)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->x:Lcom/twitter/library/commerce/model/am;

    .line 1405
    invoke-static {v2}, Lcom/twitter/android/commerce/util/c;->b(Lcom/twitter/library/commerce/model/am;)Lcom/twitter/library/commerce/model/CreditCard;
    :try_end_1
    .catch Lcom/twitter/library/commerce/model/CardVariantList$CardVariantListException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1

    :cond_7
    move v0, v1

    .line 1413
    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/commerce/view/ProductSummaryActivity;Landroid/os/Bundle;Z)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic b(Lcom/twitter/android/commerce/view/ProductSummaryActivity;Z)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c(Z)V

    return-void
.end method

.method private b(Lcom/twitter/library/commerce/model/e;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 612
    iput-object p1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    .line 613
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    if-eqz v0, :cond_5

    .line 614
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/e;->b()Ljava/lang/String;

    move-result-object v1

    .line 615
    const-string/jumbo v0, "item_description"

    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 617
    invoke-static {v1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->e(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/e;->d()Ljava/lang/String;

    move-result-object v0

    .line 619
    if-eqz v0, :cond_1

    .line 620
    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(Ljava/lang/String;)V

    .line 627
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    .line 628
    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v0

    .line 629
    if-eqz v0, :cond_2

    .line 630
    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/ProductVariant;->c()Ljava/math/BigDecimal;

    move-result-object v0

    .line 635
    :goto_2
    iget-boolean v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->U:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    .line 636
    invoke-virtual {v1}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    .line 637
    invoke-virtual {v1}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/commerce/model/ProductVariant;->b()I

    move-result v1

    if-eqz v1, :cond_3

    .line 638
    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Ljava/math/BigDecimal;)V

    .line 639
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->d:Lcom/twitter/ui/widget/TwitterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setEnabled(Z)V

    .line 654
    :goto_3
    return-void

    :cond_0
    move-object v0, v1

    .line 617
    goto :goto_0

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->w:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    goto :goto_1

    .line 632
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    invoke-virtual {v1}, Lcom/twitter/library/commerce/model/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 641
    :cond_3
    iget-boolean v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->U:Z

    if-eqz v0, :cond_4

    .line 642
    invoke-direct {p0, v2}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Ljava/math/BigDecimal;)V

    .line 643
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->d:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, v4}, Lcom/twitter/ui/widget/TwitterButton;->setEnabled(Z)V

    goto :goto_3

    .line 645
    :cond_4
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    invoke-virtual {v1}, Lcom/twitter/library/commerce/model/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Ljava/math/BigDecimal;)V

    goto :goto_3

    .line 649
    :cond_5
    const-string/jumbo v0, "item_description"

    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->e(Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->w:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 651
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->A:Lcom/twitter/library/commerce/model/CardVariantList;

    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/CardVariantList;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->A:Lcom/twitter/library/commerce/model/CardVariantList;

    .line 652
    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/CardVariantList;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/commerce/model/e;

    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 651
    :goto_4
    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Ljava/math/BigDecimal;)V

    goto :goto_3

    :cond_6
    move-object v0, v2

    .line 652
    goto :goto_4
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 473
    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz p1, :cond_0

    .line 474
    invoke-static {p1}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v0

    .line 473
    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 475
    return-void

    .line 474
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 907
    invoke-direct {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->t()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 908
    if-eqz p1, :cond_2

    .line 909
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->d:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, v2}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 910
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->e:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 911
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 912
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    if-eqz v0, :cond_1

    .line 913
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    invoke-direct {p0, v1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c(Lcom/twitter/library/commerce/model/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 915
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->f:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 918
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->d:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 919
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->e:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, v2}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 920
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 921
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0125

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/twitter/android/commerce/view/ProductSummaryActivity;)Lcom/twitter/library/commerce/model/e;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    return-object v0
.end method

.method private c(Lcom/twitter/library/commerce/model/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 939
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Landroid/content/res/Resources;Lcom/twitter/library/commerce/model/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->B:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lcom/twitter/android/commerce/util/c;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/os/Bundle;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 1433
    const/4 v0, 0x0

    .line 1435
    iget-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->k:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1437
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 1438
    const-string/jumbo v2, "output_success"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1440
    const-string/jumbo v3, "auth_cart_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1441
    if-eqz v2, :cond_2

    invoke-static {v3}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1442
    iput-object v3, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->W:Ljava/lang/String;

    .line 1447
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->h()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 1448
    const-wide/16 v4, 0x7d0

    sub-long v2, v4, v2

    .line 1450
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 1451
    invoke-direct {p0, v2, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(J)V

    .line 1462
    :goto_0
    if-eqz v0, :cond_0

    .line 1463
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    const-string/jumbo v2, "buy_now::product_detail::purchase_failure"

    iget-object v3, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->D:Ljava/lang/String;

    invoke-static {p0, v0, v2, v3}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    sget-object v2, Lcom/twitter/library/api/PromotedEvent;->ac:Lcom/twitter/library/api/PromotedEvent;

    invoke-static {p0, v0, v2}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Lcom/twitter/library/api/PromotedEvent;)V

    .line 1466
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->removeDialog(I)V

    .line 1467
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->e:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setEnabled(Z)V

    .line 1468
    invoke-direct {p0, p1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Landroid/os/Bundle;)V

    .line 1470
    :cond_0
    return-void

    .line 1453
    :cond_1
    invoke-direct {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->x()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1456
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1459
    goto :goto_0
.end method

.method static synthetic c(Lcom/twitter/android/commerce/view/ProductSummaryActivity;Landroid/os/Bundle;Z)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c(Landroid/os/Bundle;Z)V

    return-void
.end method

.method private c(Z)V
    .locals 2

    .prologue
    .line 928
    if-eqz p1, :cond_0

    .line 929
    const v0, 0x7f0a049e

    .line 933
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->d:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/TwitterButton;->setText(I)V

    .line 934
    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->d:Lcom/twitter/ui/widget/TwitterButton;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/TwitterButton;->setEnabled(Z)V

    .line 935
    return-void

    .line 931
    :cond_0
    const v0, 0x7f0a0124

    goto :goto_0

    .line 934
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic d(Lcom/twitter/android/commerce/view/ProductSummaryActivity;)Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->s()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private d(Z)V
    .locals 3

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->d:Lcom/twitter/ui/widget/TwitterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setEnabled(Z)V

    .line 1678
    invoke-static {p0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    .line 1679
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 1680
    new-instance v2, Lbzw;

    invoke-direct {v2, p0, v1}, Lbzw;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 1681
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c(Z)V

    .line 1682
    new-instance v1, Lcom/twitter/android/commerce/network/h;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/commerce/network/h;-><init>(Lcom/twitter/android/commerce/network/i;Z)V

    invoke-virtual {v0, v2, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 1683
    return-void
.end method

.method static synthetic e(Lcom/twitter/android/commerce/view/ProductSummaryActivity;)Lcom/twitter/ui/widget/TwitterButton;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->e:Lcom/twitter/ui/widget/TwitterButton;

    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 657
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->p:Lcom/twitter/android/commerce/widget/form/DescriptionHeader;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/android/commerce/widget/form/DescriptionHeader;->setVisibility(I)V

    .line 663
    :goto_0
    return-void

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->p:Lcom/twitter/android/commerce/widget/form/DescriptionHeader;

    iget-object v0, v0, Lcom/twitter/android/commerce/widget/form/DescriptionHeader;->c:Lcom/twitter/android/commerce/widget/form/ExpandableTextView;

    invoke-virtual {v0, p1}, Lcom/twitter/android/commerce/widget/form/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->p:Lcom/twitter/android/commerce/widget/form/DescriptionHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/commerce/widget/form/DescriptionHeader;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/twitter/android/commerce/view/ProductSummaryActivity;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->x()V

    return-void
.end method

.method static synthetic g(Lcom/twitter/android/commerce/view/ProductSummaryActivity;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->y()V

    return-void
.end method

.method private i()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 302
    :try_start_0
    new-instance v0, Lcom/twitter/library/commerce/model/CardVariantList;

    iget-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->B:Ljava/util/HashMap;

    invoke-direct {v0, v2}, Lcom/twitter/library/commerce/model/CardVariantList;-><init>(Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->A:Lcom/twitter/library/commerce/model/CardVariantList;

    .line 303
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->A:Lcom/twitter/library/commerce/model/CardVariantList;

    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/CardVariantList;->b()I

    move-result v2

    .line 304
    new-array v0, v2, [Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->g:[Landroid/widget/Spinner;

    .line 305
    new-array v0, v2, [Lcom/twitter/android/commerce/view/ErrorTextView;

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->h:[Lcom/twitter/android/commerce/view/ErrorTextView;

    move v0, v1

    .line 307
    :goto_0
    if-ge v0, v2, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 309
    const v4, 0x7f04007f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 310
    invoke-direct {p0, v3, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Landroid/view/View;I)V

    .line 311
    iget-object v4, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_0
    const-string/jumbo v0, "item_shipping_included"

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->V:Z

    .line 319
    const-string/jumbo v0, "item_shipping_address_required"

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->Y:Z

    .line 322
    invoke-direct {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    const v0, 0x7f0a0186

    .line 378
    :goto_1
    return v0

    .line 327
    :cond_1
    if-lez v2, :cond_2

    .line 328
    new-instance v2, Ljava/math/BigDecimal;

    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->A:Lcom/twitter/library/commerce/model/CardVariantList;

    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/CardVariantList;->a()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/commerce/model/e;

    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Ljava/math/BigDecimal;)V

    .line 331
    :cond_2
    const-string/jumbo v0, "card_url"

    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->D:Ljava/lang/String;

    .line 332
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->D:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 333
    new-instance v0, Lcom/twitter/library/util/InvalidDataException;

    const-string/jumbo v1, "Expected card_url in binding values list"

    invoke-direct {v0, v1}, Lcom/twitter/library/util/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :catch_0
    move-exception v0

    .line 376
    :goto_2
    const v0, 0x7f0a01d1

    goto :goto_1

    .line 336
    :cond_3
    const-string/jumbo v0, "item_id"

    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->E:Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->E:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 338
    new-instance v0, Lcom/twitter/library/util/InvalidDataException;

    const-string/jumbo v1, "Expected item_id in binding values list"

    invoke-direct {v0, v1}, Lcom/twitter/library/util/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :catch_1
    move-exception v0

    goto :goto_2

    .line 341
    :cond_4
    const-string/jumbo v0, "marketplace_id"

    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 343
    new-instance v0, Lcom/twitter/library/util/InvalidDataException;

    const-string/jumbo v1, "Expected marketplace_id in binding values list"

    invoke-direct {v0, v1}, Lcom/twitter/library/util/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :catch_2
    move-exception v0

    goto :goto_2

    .line 345
    :cond_5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->K:J

    .line 347
    const-string/jumbo v0, "merchant_id"

    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 349
    new-instance v0, Lcom/twitter/library/util/InvalidDataException;

    const-string/jumbo v1, "Expected merchant_id in binding values list"

    invoke-direct {v0, v1}, Lcom/twitter/library/util/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_6
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->L:J

    .line 353
    const-string/jumbo v0, "item_image"

    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(Ljava/lang/String;)V

    .line 357
    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->w:Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b:Landroid/widget/TextView;

    const-string/jumbo v2, "item_title"

    invoke-direct {p0, v2}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    const-string/jumbo v0, "merchant_name"

    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    const v2, 0x7f0a01db

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 364
    iget-object v3, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 367
    const v0, 0x7f0a01cd

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "item_description"

    .line 368
    invoke-direct {p0, v2}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 367
    invoke-direct {p0, v0, v2, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/twitter/android/commerce/widget/form/DescriptionHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->p:Lcom/twitter/android/commerce/widget/form/DescriptionHeader;

    .line 370
    const v0, 0x7f0a01da

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "item_shipping_policy"

    .line 371
    invoke-direct {p0, v2}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 370
    invoke-direct {p0, v0, v2, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/twitter/android/commerce/widget/form/DescriptionHeader;

    .line 372
    const v0, 0x7f0a01d8

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "item_sale_terms"

    .line 373
    invoke-direct {p0, v2}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 372
    invoke-direct {p0, v0, v2, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/twitter/android/commerce/widget/form/DescriptionHeader;
    :try_end_0
    .catch Lcom/twitter/library/commerce/model/CardVariantList$CardVariantListException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/twitter/library/util/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move v0, v1

    .line 378
    goto/16 :goto_1
.end method

.method private l()Z
    .locals 3

    .prologue
    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->X:Ljava/util/List;

    .line 384
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->X:Ljava/util/List;

    const-string/jumbo v1, "US"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-static {}, Lcom/twitter/library/commerce/model/j;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 386
    invoke-static {}, Lcom/twitter/library/commerce/model/j;->b()Ljava/util/List;

    move-result-object v0

    .line 387
    const-string/jumbo v1, "item_shipping_countries"

    invoke-direct {p0, v1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 390
    invoke-static {v1}, Lcom/twitter/android/commerce/util/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 391
    invoke-static {v1}, Lcom/twitter/library/commerce/model/j;->a(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 393
    invoke-static {v0, v1}, Lcom/twitter/library/commerce/model/j;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 395
    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->X:Ljava/util/List;

    .line 401
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->X:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->X:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 402
    :cond_0
    const/4 v0, 0x0

    .line 406
    :goto_1
    return v0

    .line 397
    :cond_1
    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->X:Ljava/util/List;

    goto :goto_0

    .line 406
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private m()V
    .locals 4

    .prologue
    .line 479
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->getImageRequest()Lcom/twitter/media/request/a;

    move-result-object v0

    .line 480
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/media/request/a;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    const-string/jumbo v2, "buy_now::product_detail:product_image:open"

    iget-object v3, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->D:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    sget-object v2, Lcom/twitter/library/api/PromotedEvent;->T:Lcom/twitter/library/api/PromotedEvent;

    invoke-static {p0, v1, v2}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Lcom/twitter/library/api/PromotedEvent;)V

    .line 484
    invoke-virtual {v0}, Lcom/twitter/media/request/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 487
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/commerce/view/CommerceImageActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 488
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "image_url"

    .line 489
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b:Landroid/widget/TextView;

    .line 490
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 487
    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->startActivity(Landroid/content/Intent;)V

    .line 492
    :cond_0
    return-void
.end method

.method private p()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 552
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->T:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 553
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->A:Lcom/twitter/library/commerce/model/CardVariantList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->A:Lcom/twitter/library/commerce/model/CardVariantList;

    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/CardVariantList;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->A:Lcom/twitter/library/commerce/model/CardVariantList;

    .line 554
    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/CardVariantList;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 555
    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->T:Ljava/lang/Boolean;

    .line 572
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->T:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 557
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->A:Lcom/twitter/library/commerce/model/CardVariantList;

    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/CardVariantList;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 558
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/commerce/model/e;

    .line 559
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->T:Ljava/lang/Boolean;

    move-object v2, v0

    .line 560
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 561
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/commerce/model/e;

    .line 562
    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Lcom/twitter/library/commerce/model/e;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v2}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Lcom/twitter/library/commerce/model/e;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 563
    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/library/commerce/model/ProductVariant;->c()Ljava/math/BigDecimal;

    move-result-object v4

    .line 564
    invoke-virtual {v2}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/commerce/model/ProductVariant;->c()Ljava/math/BigDecimal;

    move-result-object v2

    .line 563
    invoke-virtual {v4, v2}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 565
    :cond_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->T:Ljava/lang/Boolean;

    goto :goto_0

    .line 560
    :cond_4
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_1
.end method

.method private r()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 581
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->g:[Landroid/widget/Spinner;

    array-length v0, v0

    new-array v2, v0, [Ljava/lang/String;

    .line 582
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->g:[Landroid/widget/Spinner;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->g:[Landroid/widget/Spinner;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    .line 582
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 587
    :cond_1
    return-object v2
.end method

.method private s()Ljava/math/BigDecimal;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 670
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    .line 671
    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v0

    .line 672
    if-eqz v0, :cond_2

    .line 673
    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/ProductVariant;->c()Ljava/math/BigDecimal;

    move-result-object v2

    .line 674
    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/ProductVariant;->g()Ljava/math/BigDecimal;

    move-result-object v1

    .line 675
    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/ProductVariant;->e()Ljava/math/BigDecimal;

    move-result-object v0

    move-object v4, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v4

    .line 681
    :goto_0
    if-eqz v2, :cond_0

    .line 682
    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 684
    :cond_0
    if-eqz v1, :cond_1

    .line 685
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 687
    :cond_1
    return-object v0

    .line 677
    :cond_2
    new-instance v2, Ljava/math/BigDecimal;

    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 678
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v3}, Ljava/math/BigDecimal;-><init>(I)V

    .line 679
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3}, Ljava/math/BigDecimal;-><init>(I)V

    move-object v4, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_0
.end method

.method private t()Z
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->e:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()V
    .locals 4

    .prologue
    .line 891
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 892
    new-instance v1, Lcom/twitter/android/commerce/view/z;

    invoke-direct {v1, p0}, Lcom/twitter/android/commerce/view/z;-><init>(Lcom/twitter/android/commerce/view/ProductSummaryActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 904
    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    .line 1200
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0183

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1201
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1202
    return-void
.end method

.method private w()Lcom/twitter/library/commerce/model/CreditCard;
    .locals 1

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->y:Lcom/twitter/library/commerce/model/CreditCard;

    return-object v0
.end method

.method private x()V
    .locals 4

    .prologue
    .line 1483
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->removeDialog(I)V

    .line 1484
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->showDialog(I)V

    .line 1485
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    const-string/jumbo v1, "buy_now::product_detail::purchase_success"

    iget-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->D:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->ab:Lcom/twitter/library/api/PromotedEvent;

    invoke-static {p0, v0, v1}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Lcom/twitter/library/api/PromotedEvent;)V

    .line 1489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->N:Z

    .line 1490
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1491
    new-instance v1, Lcom/twitter/android/commerce/view/ac;

    invoke-direct {v1, p0}, Lcom/twitter/android/commerce/view/ac;-><init>(Lcom/twitter/android/commerce/view/ProductSummaryActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1497
    return-void
.end method

.method private y()V
    .locals 9

    .prologue
    const v8, 0x7f0a01e6

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1500
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->removeDialog(I)V

    .line 1502
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/twitter/android/commerce/view/OrderHistoryDetailsActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1503
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->W:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1505
    const-string/jumbo v0, "commerce_order_history_item_id"

    iget-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->W:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1506
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1507
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    .line 1506
    invoke-static {v0, v2}, Lcom/twitter/android/commerce/network/e;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1509
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a01e7

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "item_title"

    .line 1511
    invoke-direct {p0, v4}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 1509
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1512
    const-string/jumbo v0, "notification"

    .line 1513
    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1514
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v4

    long-to-int v3, v4

    .line 1515
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v4, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f02065f

    .line 1516
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 1517
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 1518
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 1520
    invoke-virtual {v4, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 1521
    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    .line 1523
    invoke-static {p0, v3, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 1525
    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 1526
    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 1527
    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v4, v3, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1529
    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1531
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(I)V

    .line 1534
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->finish()V

    .line 1535
    return-void
.end method

.method private z()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1660
    .line 1661
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->A:Lcom/twitter/library/commerce/model/CardVariantList;

    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/CardVariantList;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    move v0, v1

    move v2, v1

    .line 1663
    :goto_0
    iget-object v4, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->g:[Landroid/widget/Spinner;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 1664
    iget-object v4, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->g:[Landroid/widget/Spinner;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_0

    .line 1665
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 1666
    iget-object v4, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->h:[Lcom/twitter/android/commerce/view/ErrorTextView;

    aget-object v4, v4, v0

    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0187

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v2, v7, v1

    .line 1667
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1666
    invoke-virtual {v4, v2}, Lcom/twitter/android/commerce/view/ErrorTextView;->setError(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 1663
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 1673
    :cond_2
    return v2
.end method


# virtual methods
.method public a(Z)Lcom/twitter/android/commerce/view/ProductSummaryActivity$BillingSuccessMode;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1205
    sget-object v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$BillingSuccessMode;->b:Lcom/twitter/android/commerce/view/ProductSummaryActivity$BillingSuccessMode;

    .line 1206
    iget-boolean v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->ab:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->aa:Z

    if-eqz v2, :cond_3

    .line 1207
    :cond_0
    iget-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->x:Lcom/twitter/library/commerce/model/am;

    invoke-static {v2}, Lcom/twitter/android/commerce/util/c;->a(Lcom/twitter/library/commerce/model/am;)Lcom/twitter/library/commerce/model/CreditCard;

    move-result-object v2

    .line 1209
    if-nez v2, :cond_2

    .line 1210
    sget-object v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$BillingSuccessMode;->c:Lcom/twitter/android/commerce/view/ProductSummaryActivity$BillingSuccessMode;

    .line 1240
    :cond_1
    :goto_0
    return-object v0

    .line 1212
    :cond_2
    iget-object v3, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->x:Lcom/twitter/library/commerce/model/am;

    invoke-static {v3}, Lcom/twitter/android/commerce/util/c;->d(Lcom/twitter/library/commerce/model/am;)Lcom/twitter/library/commerce/model/af;

    move-result-object v3

    .line 1213
    invoke-virtual {v2}, Lcom/twitter/library/commerce/model/CreditCard;->l()Lcom/twitter/library/commerce/model/a;

    move-result-object v4

    .line 1214
    invoke-direct {p0, v3, v4}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Lcom/twitter/library/commerce/model/af;Lcom/twitter/library/commerce/model/a;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1215
    if-eqz p1, :cond_4

    .line 1216
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->x:Lcom/twitter/library/commerce/model/am;

    invoke-static {v2, v0}, Lcom/twitter/android/commerce/util/c;->a(Lcom/twitter/library/commerce/model/CreditCard;Lcom/twitter/library/commerce/model/am;)Lcom/twitter/library/commerce/model/a;

    move-result-object v3

    .line 1218
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    .line 1219
    invoke-virtual {v3}, Lcom/twitter/library/commerce/model/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/twitter/library/commerce/model/a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1221
    :goto_1
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/twitter/android/commerce/view/ProfileEntryBillingActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1222
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 1223
    const-string/jumbo v5, "commerce_billing_same_as_shipping"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1224
    const-string/jumbo v0, "commerce_address_object"

    sget-object v5, Lcom/twitter/library/commerce/model/a;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v4, v0, v3, v5}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/content/Intent;

    .line 1226
    const-string/jumbo v0, "commerce_profile_id_added"

    invoke-virtual {v2}, Lcom/twitter/library/commerce/model/CreditCard;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1227
    const-string/jumbo v0, "commerce_cc_info"

    sget-object v3, Lcom/twitter/library/commerce/model/CreditCard;->d:Lcom/twitter/util/serialization/ah;

    invoke-static {v4, v0, v2, v3}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/content/Intent;

    .line 1228
    const/4 v0, 0x1

    invoke-virtual {p0, v4, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1229
    sget-object v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$BillingSuccessMode;->a:Lcom/twitter/android/commerce/view/ProductSummaryActivity$BillingSuccessMode;

    .line 1230
    invoke-direct {p0, v1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c(Z)V

    .line 1236
    :cond_3
    :goto_2
    sget-object v1, Lcom/twitter/android/commerce/view/ProductSummaryActivity$BillingSuccessMode;->b:Lcom/twitter/android/commerce/view/ProductSummaryActivity$BillingSuccessMode;

    if-ne v0, v1, :cond_1

    .line 1238
    sget-object v1, Lcom/twitter/android/commerce/view/ProductSummaryActivity$MatchProductOrCartCallback$RequestType;->b:Lcom/twitter/android/commerce/view/ProductSummaryActivity$MatchProductOrCartCallback$RequestType;

    iget-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->O:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Lcom/twitter/android/commerce/view/ProductSummaryActivity$MatchProductOrCartCallback$RequestType;Ljava/lang/String;)V

    goto :goto_0

    .line 1232
    :cond_4
    sget-object v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$BillingSuccessMode;->c:Lcom/twitter/android/commerce/view/ProductSummaryActivity$BillingSuccessMode;

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 1

    .prologue
    .line 1071
    const v0, 0x7f040084

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 1072
    const/16 v0, 0xe

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->b(I)V

    .line 1074
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->a(Z)V

    .line 1075
    return-object p2
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 1690
    iput-wide p1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->Q:J

    .line 1691
    return-void
.end method

.method public a(ZLcom/twitter/library/commerce/model/am;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1136
    invoke-static {p2}, Lcom/twitter/android/commerce/util/c;->a(Lcom/twitter/library/commerce/model/am;)Lcom/twitter/library/commerce/model/CreditCard;

    move-result-object v4

    .line 1137
    invoke-static {v4, p2}, Lcom/twitter/android/commerce/util/c;->a(Lcom/twitter/library/commerce/model/CreditCard;Lcom/twitter/library/commerce/model/am;)Lcom/twitter/library/commerce/model/a;

    move-result-object v5

    .line 1138
    invoke-static {p2}, Lcom/twitter/android/commerce/util/c;->c(Lcom/twitter/library/commerce/model/am;)Lcom/twitter/library/commerce/model/m;

    move-result-object v6

    .line 1140
    iput-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->y:Lcom/twitter/library/commerce/model/CreditCard;

    .line 1141
    if-eqz p2, :cond_0

    .line 1142
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/am;->b()Lcom/twitter/library/commerce/model/CreditCard;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->y:Lcom/twitter/library/commerce/model/CreditCard;

    .line 1145
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->Y:Z

    if-eqz v0, :cond_4

    if-eqz v5, :cond_3

    move v0, v2

    .line 1148
    :goto_0
    if-eqz v4, :cond_d

    if-eqz v0, :cond_d

    .line 1151
    iget-boolean v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->Y:Z

    if-eqz v0, :cond_1

    .line 1152
    invoke-virtual {v5}, Lcom/twitter/library/commerce/model/a;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->X:Ljava/util/List;

    invoke-static {v0, v4}, Lcom/twitter/library/commerce/model/j;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1153
    :cond_1
    iput-object p2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->x:Lcom/twitter/library/commerce/model/am;

    .line 1154
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/twitter/library/commerce/model/a;->h()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->O:Ljava/lang/String;

    .line 1155
    invoke-virtual {p0, p1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Z)Lcom/twitter/android/commerce/view/ProductSummaryActivity$BillingSuccessMode;

    move-result-object v0

    sget-object v4, Lcom/twitter/android/commerce/view/ProductSummaryActivity$BillingSuccessMode;->c:Lcom/twitter/android/commerce/view/ProductSummaryActivity$BillingSuccessMode;

    if-eq v0, v4, :cond_6

    move v0, v2

    :goto_2
    move v4, v0

    .line 1171
    :goto_3
    if-nez v4, :cond_2

    .line 1172
    if-eqz p1, :cond_c

    .line 1174
    iget-boolean v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->Y:Z

    if-eqz v0, :cond_a

    .line 1175
    invoke-direct {p0, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c(Z)V

    .line 1176
    invoke-direct {p0, v5, v6}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Lcom/twitter/library/commerce/model/a;Lcom/twitter/library/commerce/model/m;)V

    .line 1197
    :cond_2
    :goto_4
    return-void

    :cond_3
    move v0, v3

    .line 1145
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 1154
    goto :goto_1

    :cond_6
    move v0, v3

    .line 1155
    goto :goto_2

    .line 1158
    :cond_7
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->X:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->X:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 1159
    :cond_8
    const v0, 0x7f0a0186

    .line 1161
    invoke-direct {p0, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c(Z)V

    move v4, v2

    .line 1167
    :goto_5
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 1163
    :cond_9
    const v0, 0x7f0a0153

    .line 1164
    iget-object v4, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    const-string/jumbo v7, "buy_now::product_detail:buy_button:error_address_not_supported"

    iget-object v8, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->D:Ljava/lang/String;

    invoke-static {p0, v4, v7, v8}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    goto :goto_5

    .line 1179
    :cond_a
    invoke-static {p2}, Lcom/twitter/android/commerce/util/c;->b(Lcom/twitter/library/commerce/model/am;)Lcom/twitter/library/commerce/model/CreditCard;

    move-result-object v0

    .line 1180
    if-eqz v0, :cond_b

    .line 1181
    iput-object p2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->x:Lcom/twitter/library/commerce/model/am;

    .line 1182
    iput-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->O:Ljava/lang/String;

    .line 1183
    invoke-virtual {p0, v2}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Z)Lcom/twitter/android/commerce/view/ProductSummaryActivity$BillingSuccessMode;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/commerce/view/ProductSummaryActivity$BillingSuccessMode;->c:Lcom/twitter/android/commerce/view/ProductSummaryActivity$BillingSuccessMode;

    if-ne v0, v1, :cond_2

    .line 1184
    invoke-direct {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->v()V

    goto :goto_4

    .line 1188
    :cond_b
    invoke-direct {p0, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c(Z)V

    .line 1189
    invoke-direct {p0, v6}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Lcom/twitter/library/commerce/model/m;)V

    goto :goto_4

    .line 1193
    :cond_c
    invoke-direct {p0, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c(Z)V

    .line 1194
    invoke-direct {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->v()V

    goto :goto_4

    :cond_d
    move v4, v3

    goto :goto_3
.end method

.method public a(Lcyd;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1090
    invoke-interface {p1}, Lcyd;->a()I

    move-result v0

    .line 1091
    const v1, 0x7f1307c4

    if-ne v0, v1, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    const-string/jumbo v1, "buy_now:::payment_settings_menu_item:click"

    iget-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->D:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    invoke-direct {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->t()Z

    move-result v0

    .line 1095
    invoke-direct {p0, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(Z)V

    .line 1096
    invoke-direct {p0, v0, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(ZZ)V

    .line 1098
    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcyd;)Z

    move-result v0

    return v0
.end method

.method public a(Lcyg;)Z
    .locals 1

    .prologue
    .line 1080
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcyg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    const v0, 0x7f140007

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 1082
    const/4 v0, 0x1

    .line 1084
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1250
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c(Z)V

    .line 1251
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->d:Lcom/twitter/ui/widget/TwitterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setEnabled(Z)V

    .line 1252
    invoke-direct {p0, p1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Landroid/os/Bundle;)V

    .line 1253
    return-void
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 189
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V

    .line 190
    const v0, 0x7f130261

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a:Lcom/twitter/media/ui/image/MediaImageView;

    .line 191
    const v0, 0x7f130262

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b:Landroid/widget/TextView;

    .line 192
    const v0, 0x7f130263

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c:Landroid/widget/TextView;

    .line 193
    const v0, 0x7f130269

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->n:Landroid/widget/LinearLayout;

    .line 194
    const v0, 0x7f130264

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->i:Landroid/widget/TextView;

    .line 195
    const v0, 0x7f130265

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->j:Landroid/widget/TextView;

    .line 196
    const v0, 0x7f13025e

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->d:Lcom/twitter/ui/widget/TwitterButton;

    .line 197
    const v0, 0x7f13025f

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->e:Lcom/twitter/ui/widget/TwitterButton;

    .line 198
    const v0, 0x7f130260

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->f:Landroid/widget/TextView;

    .line 199
    const v0, 0x7f13025a

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->q:Landroid/widget/LinearLayout;

    .line 200
    const v0, 0x7f130268

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->l:Landroid/widget/LinearLayout;

    .line 201
    const v0, 0x7f130266

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->k:Landroid/widget/ProgressBar;

    .line 202
    const v0, 0x7f130267

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->o:Landroid/view/View;

    .line 203
    const v0, 0x7f130259

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->m:Landroid/widget/LinearLayout;

    .line 204
    new-instance v0, Lcom/twitter/android/commerce/util/d;

    invoke-direct {v0, p0}, Lcom/twitter/android/commerce/util/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->v:Lcom/twitter/android/commerce/util/d;

    .line 206
    const v0, 0x7f13024d

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->r:Landroid/widget/ImageView;

    .line 207
    const v0, 0x7f13024e

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->s:Landroid/widget/TextView;

    .line 208
    const v0, 0x7f13025c

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->t:Landroid/widget/TextView;

    .line 209
    const v0, 0x7f1301ff

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->u:Landroid/widget/TextView;

    .line 211
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iput-object v7, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    .line 214
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->d:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->d:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, v4}, Lcom/twitter/ui/widget/TwitterButton;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->d:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->e:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0, p0}, Lcom/twitter/media/ui/image/MediaImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 225
    if-eqz v1, :cond_0

    .line 226
    const-string/jumbo v0, "commerce_buynow_card_context"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/card/CardContext;

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    .line 227
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    if-eqz v0, :cond_0

    .line 228
    const-string/jumbo v0, "commerce_product_values"

    .line 229
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 230
    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->B:Ljava/util/HashMap;

    .line 232
    invoke-direct {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->i()I

    move-result v0

    .line 233
    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 238
    invoke-direct {p0, v4}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(I)V

    .line 239
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->finish()V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    new-instance v0, Lcom/twitter/android/commerce/widget/form/DescriptionHeader;

    invoke-direct {v0, p0}, Lcom/twitter/android/commerce/widget/form/DescriptionHeader;-><init>(Landroid/content/Context;)V

    .line 243
    iget-object v1, v0, Lcom/twitter/android/commerce/widget/form/DescriptionHeader;->c:Lcom/twitter/android/commerce/widget/form/ExpandableTextView;

    invoke-virtual {v1, v4}, Lcom/twitter/android/commerce/widget/form/ExpandableTextView;->setShouldTrim(Z)V

    .line 244
    iget-object v1, v0, Lcom/twitter/android/commerce/widget/form/DescriptionHeader;->b:Landroid/widget/TextView;

    const v2, 0x7f0a01e1

    invoke-virtual {p0, v2}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-wide v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->L:J

    iget-object v1, v0, Lcom/twitter/android/commerce/widget/form/DescriptionHeader;->c:Lcom/twitter/android/commerce/widget/form/ExpandableTextView;

    invoke-static {p0, v2, v3, v1}, Lcom/twitter/android/commerce/util/g;->a(Landroid/content/Context;JLandroid/widget/TextView;)V

    .line 247
    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->S:J

    .line 252
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->A:Lcom/twitter/library/commerce/model/CardVariantList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->A:Lcom/twitter/library/commerce/model/CardVariantList;

    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/CardVariantList;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 253
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->A:Lcom/twitter/library/commerce/model/CardVariantList;

    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/CardVariantList;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 255
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->A:Lcom/twitter/library/commerce/model/CardVariantList;

    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/CardVariantList;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/commerce/model/e;

    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(Lcom/twitter/library/commerce/model/e;)V

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    sget-object v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity$MatchProductOrCartCallback$RequestType;->a:Lcom/twitter/android/commerce/view/ProductSummaryActivity$MatchProductOrCartCallback$RequestType;

    invoke-direct {p0, v0, v7}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(Lcom/twitter/android/commerce/view/ProductSummaryActivity$MatchProductOrCartCallback$RequestType;Ljava/lang/String;)V

    .line 270
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 271
    new-instance v1, Lcom/twitter/android/commerce/view/y;

    invoke-direct {v1, p0}, Lcom/twitter/android/commerce/view/y;-><init>(Lcom/twitter/android/commerce/view/ProductSummaryActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 263
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 265
    invoke-direct {p0, v4}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(I)V

    .line 266
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->finish()V

    goto/16 :goto_0
.end method

.method c()Lcom/twitter/library/service/x;
    .locals 37

    .prologue
    .line 1608
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v4

    .line 1609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    invoke-virtual {v2}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    .line 1610
    invoke-virtual {v2}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/commerce/model/ProductVariant;->c()Ljava/math/BigDecimal;

    move-result-object v15

    .line 1612
    :goto_0
    invoke-static {}, Lcom/twitter/android/commerce/util/c;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1613
    new-instance v2, Lcag;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->Z:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->D:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->E:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    .line 1618
    invoke-virtual {v3}, Lcom/twitter/library/commerce/model/e;->a()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->O:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->P:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->L:J

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->K:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    .line 1624
    invoke-virtual {v3}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/commerce/model/ProductVariant;->g()Ljava/math/BigDecimal;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    .line 1625
    invoke-virtual {v3}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/commerce/model/ProductVariant;->e()Ljava/math/BigDecimal;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    .line 1626
    invoke-virtual {v3}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/commerce/model/ProductVariant;->d()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->R:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    .line 1628
    invoke-virtual {v3}, Lcom/twitter/library/card/CardContext;->c()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->S:J

    move-wide/from16 v22, v0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v23}, Lcag;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 1631
    :goto_1
    return-object v2

    .line 1610
    :cond_0
    new-instance v15, Ljava/math/BigDecimal;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    .line 1611
    invoke-virtual {v2}, Lcom/twitter/library/commerce/model/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1631
    :cond_1
    new-instance v16, Lbyl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->D:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->E:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    .line 1635
    invoke-virtual {v2}, Lcom/twitter/library/commerce/model/e;->a()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->O:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->P:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->L:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->K:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    .line 1641
    invoke-virtual {v2}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/commerce/model/ProductVariant;->g()Ljava/math/BigDecimal;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    .line 1642
    invoke-virtual {v2}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/commerce/model/ProductVariant;->e()Ljava/math/BigDecimal;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z:Lcom/twitter/library/commerce/model/e;

    .line 1643
    invoke-virtual {v2}, Lcom/twitter/library/commerce/model/e;->e()Lcom/twitter/library/commerce/model/ProductVariant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/commerce/model/ProductVariant;->d()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->R:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    .line 1645
    invoke-virtual {v2}, Lcom/twitter/library/card/CardContext;->c()J

    move-result-wide v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->S:J

    move-wide/from16 v35, v0

    move-object/from16 v17, p0

    move-object/from16 v18, v4

    move-object/from16 v28, v15

    invoke-direct/range {v16 .. v36}, Lbyl;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;JJ)V

    move-object/from16 v2, v16

    .line 1631
    goto :goto_1
.end method

.method public h()J
    .locals 2

    .prologue
    .line 1686
    iget-wide v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->Q:J

    return-wide v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 819
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 820
    if-eqz p3, :cond_0

    .line 821
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 822
    if-eqz v0, :cond_0

    .line 823
    const-string/jumbo v1, "commerce_profile_id_added"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 824
    if-eqz v0, :cond_0

    .line 825
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->d(Z)V

    .line 830
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1652
    invoke-direct {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1653
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(Z)V

    .line 1657
    :goto_0
    return-void

    .line 1655
    :cond_0
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1568
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->d:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v1}, Lcom/twitter/ui/widget/TwitterButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1569
    invoke-direct {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->z()Z

    move-result v0

    .line 1570
    if-nez v0, :cond_1

    .line 1571
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    const-string/jumbo v1, "buy_now::product_detail:buy_button:click"

    iget-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->D:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->U:Lcom/twitter/library/api/PromotedEvent;

    invoke-static {p0, v0, v1}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Lcom/twitter/library/api/PromotedEvent;)V

    .line 1574
    invoke-direct {p0, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->d(Z)V

    .line 1604
    :cond_0
    :goto_0
    return-void

    .line 1577
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0158

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1576
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1578
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1580
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->e:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v1}, Lcom/twitter/ui/widget/TwitterButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 1581
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->e:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, v4}, Lcom/twitter/ui/widget/TwitterButton;->setEnabled(Z)V

    .line 1582
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    const-string/jumbo v1, "buy_now::product_detail:buy_button:confirm"

    iget-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->D:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->aa:Lcom/twitter/library/api/PromotedEvent;

    invoke-static {p0, v0, v1}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Lcom/twitter/library/api/PromotedEvent;)V

    .line 1586
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->R:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1587
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->R:Ljava/lang/String;

    .line 1589
    :cond_3
    invoke-static {p0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    .line 1590
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->c()Lcom/twitter/library/service/x;

    move-result-object v1

    .line 1591
    new-instance v2, Lcom/twitter/android/commerce/view/ae;

    invoke-direct {v2, p0}, Lcom/twitter/android/commerce/view/ae;-><init>(Lcom/twitter/android/commerce/view/ProductSummaryActivity;)V

    iput-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->ad:Lcom/twitter/android/commerce/view/ae;

    .line 1592
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->showDialog(I)V

    .line 1593
    iget-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->ad:Lcom/twitter/android/commerce/view/ae;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    goto :goto_0

    .line 1594
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 1595
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    const-string/jumbo v1, "buy_now::product_detail:change_payment_profile_button:click"

    iget-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->D:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->ae:Lcom/twitter/library/api/PromotedEvent;

    invoke-static {p0, v0, v1}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Lcom/twitter/library/api/PromotedEvent;)V

    .line 1599
    invoke-direct {p0, v4}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(Z)V

    .line 1600
    invoke-direct {p0, v3, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a(ZZ)V

    goto/16 :goto_0

    .line 1601
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v1}, Lcom/twitter/media/ui/image/MediaImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1602
    invoke-direct {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->m()V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1044
    packed-switch p1, :pswitch_data_0

    .line 1063
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1046
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1047
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1048
    const v1, 0x7f0a014a

    invoke-virtual {p0, v1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1049
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1050
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 1054
    :pswitch_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1055
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02021a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1057
    const v1, 0x7f0a01e6

    invoke-virtual {p0, v1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1058
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1059
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 1044
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 1031
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onDestroy()V

    .line 1032
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    iget-boolean v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->N:Z

    if-nez v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    const-string/jumbo v1, "buy_now::product_detail::exit"

    iget-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->D:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->C:Lcom/twitter/library/card/CardContext;

    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->ad:Lcom/twitter/library/api/PromotedEvent;

    invoke-static {p0, v0, v1}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Lcom/twitter/library/api/PromotedEvent;)V

    .line 1040
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 748
    iget-boolean v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->M:Z

    if-nez v0, :cond_4

    .line 750
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->M:Z

    .line 751
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(Z)V

    .line 752
    invoke-direct {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->r()[Ljava/lang/String;

    move-result-object v6

    .line 753
    invoke-direct {p0, v6}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a([Ljava/lang/String;)I

    move-result v7

    .line 754
    invoke-direct {p0, v6}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b([Ljava/lang/String;)Lcom/twitter/library/commerce/model/e;

    move-result-object v8

    .line 757
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    array-length v0, v6

    if-ge v5, v0, :cond_8

    .line 758
    invoke-virtual {v6}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 759
    const/4 v1, 0x0

    aput-object v1, v0, v5

    .line 760
    iget-object v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->A:Lcom/twitter/library/commerce/model/CardVariantList;

    invoke-virtual {v1, v5, v0}, Lcom/twitter/library/commerce/model/CardVariantList;->a(I[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 762
    iget-object v2, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->g:[Landroid/widget/Spinner;

    aget-object v9, v2, v5

    .line 763
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 765
    invoke-virtual {v9}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;

    .line 766
    if-ne v5, v7, :cond_1

    const/4 v2, 0x1

    move v4, v2

    .line 767
    :goto_1
    invoke-virtual {v1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->a()V

    .line 768
    const/4 v2, 0x1

    move v3, v2

    :goto_2
    invoke-virtual {v1}, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->getCount()I

    move-result v2

    if-ge v3, v2, :cond_5

    .line 769
    invoke-virtual {v1, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 770
    sget-object v2, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter$SpinnerState;->b:Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter$SpinnerState;

    invoke-virtual {v1, v3, v2}, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->a(ILcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter$SpinnerState;)V

    .line 768
    :cond_0
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 766
    :cond_1
    const/4 v2, 0x0

    move v4, v2

    goto :goto_1

    .line 771
    :cond_2
    if-nez v8, :cond_3

    if-eqz v4, :cond_0

    .line 775
    :cond_3
    invoke-virtual {v1, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v5

    .line 776
    invoke-direct {p0, v0, v1, v3}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->a([Ljava/lang/String;Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;I)V
    :try_end_0
    .catch Lcom/twitter/library/commerce/model/CardVariantList$CardVariantListException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_3

    .line 805
    :catch_0
    move-exception v0

    .line 808
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->M:Z

    .line 811
    :cond_4
    :goto_4
    return-void

    .line 782
    :cond_5
    if-eq v9, p1, :cond_7

    .line 786
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v9, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 787
    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 788
    invoke-virtual {v1, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity$ProductSelectAdapter;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 789
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 792
    :cond_6
    :try_start_2
    invoke-virtual {v9, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 757
    :goto_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 792
    :catchall_0
    move-exception v0

    invoke-virtual {v9, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    throw v0
    :try_end_2
    .catch Lcom/twitter/library/commerce/model/CardVariantList$CardVariantListException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 808
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->M:Z

    throw v0

    .line 796
    :cond_7
    :try_start_3
    iget-object v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->h:[Lcom/twitter/android/commerce/view/ErrorTextView;

    aget-object v0, v0, v5

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/commerce/view/ErrorTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 800
    :cond_8
    if-eqz v8, :cond_9

    .line 801
    invoke-direct {p0, v8}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(Lcom/twitter/library/commerce/model/e;)V
    :try_end_3
    .catch Lcom/twitter/library/commerce/model/CardVariantList$CardVariantListException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 808
    :goto_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->M:Z

    goto :goto_4

    .line 803
    :cond_9
    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(Lcom/twitter/library/commerce/model/e;)V
    :try_end_4
    .catch Lcom/twitter/library/commerce/model/CardVariantList$CardVariantListException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 815
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1022
    invoke-direct {p0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/ProductSummaryActivity;->b(Z)V

    .line 1025
    :cond_0
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onPause()V

    .line 1026
    return-void
.end method
