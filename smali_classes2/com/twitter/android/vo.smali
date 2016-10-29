.class Lcom/twitter/android/vo;
.super Landroid/widget/BaseAdapter;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/TweetFragment2;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/twitter/android/kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/android/kn",
            "<",
            "Landroid/view/View;",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/twitter/android/TweetFragment2;)V
    .locals 1

    .prologue
    .line 2405
    iput-object p1, p0, Lcom/twitter/android/vo;->a:Lcom/twitter/android/TweetFragment2;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/vo;->b:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/TweetFragment2;Lcom/twitter/android/ux;)V
    .locals 0

    .prologue
    .line 2405
    invoke-direct {p0, p1}, Lcom/twitter/android/vo;-><init>(Lcom/twitter/android/TweetFragment2;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 2490
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04011d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 2428
    iget-object v0, p0, Lcom/twitter/android/vo;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    return-object v0
.end method

.method public a(J)Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 2439
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/vo;->b(J)I

    move-result v0

    .line 2440
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/twitter/android/vo;->a(I)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/twitter/android/kn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/kn",
            "<",
            "Landroid/view/View;",
            "Lcom/twitter/model/core/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2494
    iput-object p1, p0, Lcom/twitter/android/vo;->c:Lcom/twitter/android/kn;

    .line 2495
    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/twitter/android/vo;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2413
    iget-object v0, p0, Lcom/twitter/android/vo;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2414
    iget-object v0, p0, Lcom/twitter/android/vo;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2415
    if-eqz p2, :cond_0

    .line 2416
    invoke-virtual {p0}, Lcom/twitter/android/vo;->notifyDataSetChanged()V

    .line 2419
    :cond_0
    return-void
.end method

.method public b(J)I
    .locals 5

    .prologue
    .line 2444
    invoke-virtual {p0}, Lcom/twitter/android/vo;->getCount()I

    move-result v1

    .line 2445
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2446
    invoke-virtual {p0, v0}, Lcom/twitter/android/vo;->getItemId(I)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 2450
    :goto_1
    return v0

    .line 2445
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2450
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2423
    iget-object v0, p0, Lcom/twitter/android/vo;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2405
    invoke-virtual {p0, p1}, Lcom/twitter/android/vo;->a(I)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 2433
    iget-object v0, p0, Lcom/twitter/android/vo;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    .line 2434
    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->p:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 2455
    iget-object v0, p0, Lcom/twitter/android/vo;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/core/Tweet;

    .line 2456
    if-nez p2, :cond_0

    .line 2457
    invoke-direct {p0, p3}, Lcom/twitter/android/vo;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2458
    const v0, 0x7f1301a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/TweetView;

    .line 2459
    iget-object v2, p0, Lcom/twitter/android/vo;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v2, v0, v3}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/android/TweetFragment2;Lcom/twitter/library/widget/TweetView;Lcom/twitter/model/core/Tweet;)V

    .line 2460
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2463
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/twitter/library/widget/TweetView;

    .line 2465
    iget-object v0, p0, Lcom/twitter/android/vo;->a:Lcom/twitter/android/TweetFragment2;

    .line 2466
    invoke-static {v0, v7}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/android/TweetFragment2;Lcom/twitter/library/widget/TweetView;)Lcom/twitter/library/media/widget/z;

    move-result-object v8

    .line 2467
    new-instance v0, Lcjm;

    iget-object v2, p0, Lcom/twitter/android/vo;->a:Lcom/twitter/android/TweetFragment2;

    .line 2468
    invoke-virtual {v2}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v4, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    iget-object v5, p0, Lcom/twitter/android/vo;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v5}, Lcom/twitter/android/TweetFragment2;->L(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v5

    iget-object v6, p0, Lcom/twitter/android/vo;->a:Lcom/twitter/android/TweetFragment2;

    .line 2469
    invoke-static {v6}, Lcom/twitter/android/TweetFragment2;->K(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcjm;-><init>(ZLandroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 2470
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v8}, Lcjm;->a(ILjava/lang/Object;)V

    .line 2473
    invoke-virtual {v7, v1}, Lcom/twitter/library/widget/TweetView;->setAlwaysExpandMedia(Z)V

    .line 2474
    const/4 v2, 0x0

    invoke-virtual {v7, v3, v2, v0}, Lcom/twitter/library/widget/TweetView;->a(Lcom/twitter/model/core/Tweet;ZLcjm;)V

    .line 2476
    invoke-static {v3}, Lcom/twitter/android/TweetFragment2;->c(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2478
    invoke-virtual {v7, v1}, Lcom/twitter/library/widget/TweetView;->setCurationAction(I)V

    .line 2481
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/vo;->c:Lcom/twitter/android/kn;

    if-eqz v0, :cond_2

    .line 2482
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 2483
    const-string/jumbo v1, "position"

    iget-object v2, p0, Lcom/twitter/android/vo;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v2}, Lcom/twitter/android/TweetFragment2;->f(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/android/vm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/vm;->getCount()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2484
    iget-object v1, p0, Lcom/twitter/android/vo;->c:Lcom/twitter/android/kn;

    invoke-interface {v1, p2, v3, v0}, Lcom/twitter/android/kn;->a(Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 2486
    :cond_2
    return-object p2
.end method
