.class Lcom/twitter/android/uu;
.super Landroid/widget/BaseAdapter;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/TweetFragment;

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
.method private constructor <init>(Lcom/twitter/android/TweetFragment;)V
    .locals 1

    .prologue
    .line 2357
    iput-object p1, p0, Lcom/twitter/android/uu;->a:Lcom/twitter/android/TweetFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/uu;->b:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/TweetFragment;Lcom/twitter/android/ua;)V
    .locals 0

    .prologue
    .line 2357
    invoke-direct {p0, p1}, Lcom/twitter/android/uu;-><init>(Lcom/twitter/android/TweetFragment;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 2444
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
    .line 2380
    iget-object v0, p0, Lcom/twitter/android/uu;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    return-object v0
.end method

.method public a(J)Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 2391
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/uu;->b(J)I

    move-result v0

    .line 2392
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/twitter/android/uu;->a(I)Lcom/twitter/model/core/Tweet;

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
    .line 2448
    iput-object p1, p0, Lcom/twitter/android/uu;->c:Lcom/twitter/android/kn;

    .line 2449
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
    .line 2364
    iget-object v0, p0, Lcom/twitter/android/uu;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2365
    iget-object v0, p0, Lcom/twitter/android/uu;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2366
    iget-object v0, p0, Lcom/twitter/android/uu;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2367
    if-eqz p2, :cond_0

    .line 2368
    invoke-virtual {p0}, Lcom/twitter/android/uu;->notifyDataSetChanged()V

    .line 2371
    :cond_0
    return-void
.end method

.method public b(J)I
    .locals 5

    .prologue
    .line 2396
    invoke-virtual {p0}, Lcom/twitter/android/uu;->getCount()I

    move-result v1

    .line 2397
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2398
    invoke-virtual {p0, v0}, Lcom/twitter/android/uu;->getItemId(I)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 2402
    :goto_1
    return v0

    .line 2397
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2402
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2375
    iget-object v0, p0, Lcom/twitter/android/uu;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2357
    invoke-virtual {p0, p1}, Lcom/twitter/android/uu;->a(I)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 2385
    iget-object v0, p0, Lcom/twitter/android/uu;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    .line 2386
    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->p:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v1, 0x1

    .line 2407
    iget-object v0, p0, Lcom/twitter/android/uu;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/core/Tweet;

    .line 2408
    if-nez p2, :cond_2

    .line 2409
    invoke-direct {p0, p3}, Lcom/twitter/android/uu;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 2410
    const v0, 0x7f1301a1

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/TweetView;

    .line 2411
    iget-object v2, p0, Lcom/twitter/android/uu;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v2, v0, v3}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/android/TweetFragment;Lcom/twitter/library/widget/TweetView;Lcom/twitter/model/core/Tweet;)V

    .line 2412
    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    move-object v0, v7

    .line 2415
    check-cast v0, Lcom/twitter/internal/android/widget/GroupedRowView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/twitter/internal/android/widget/GroupedRowView;->setStyle(I)V

    .line 2417
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/twitter/library/widget/TweetView;

    .line 2419
    iget-object v0, p0, Lcom/twitter/android/uu;->a:Lcom/twitter/android/TweetFragment;

    .line 2420
    invoke-static {v0, v8}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/android/TweetFragment;Lcom/twitter/library/widget/TweetView;)Lcom/twitter/library/media/widget/z;

    move-result-object v9

    .line 2421
    new-instance v0, Lcjm;

    iget-object v2, p0, Lcom/twitter/android/uu;->a:Lcom/twitter/android/TweetFragment;

    .line 2422
    invoke-virtual {v2}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v4, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    iget-object v5, p0, Lcom/twitter/android/uu;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v5}, Lcom/twitter/android/TweetFragment;->N(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v5

    iget-object v6, p0, Lcom/twitter/android/uu;->a:Lcom/twitter/android/TweetFragment;

    .line 2423
    invoke-static {v6}, Lcom/twitter/android/TweetFragment;->L(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcjm;-><init>(ZLandroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 2424
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v9}, Lcjm;->a(ILjava/lang/Object;)V

    .line 2427
    invoke-virtual {v8, v1}, Lcom/twitter/library/widget/TweetView;->setAlwaysExpandMedia(Z)V

    .line 2428
    const/4 v2, 0x0

    invoke-virtual {v8, v3, v2, v0}, Lcom/twitter/library/widget/TweetView;->a(Lcom/twitter/model/core/Tweet;ZLcjm;)V

    .line 2430
    invoke-static {v3}, Lcom/twitter/android/TweetFragment;->c(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2432
    invoke-virtual {v8, v1}, Lcom/twitter/library/widget/TweetView;->setCurationAction(I)V

    .line 2435
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/uu;->c:Lcom/twitter/android/kn;

    if-eqz v0, :cond_1

    .line 2436
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 2437
    const-string/jumbo v1, "position"

    iget-object v2, p0, Lcom/twitter/android/uu;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v2}, Lcom/twitter/android/TweetFragment;->f(Lcom/twitter/android/TweetFragment;)Lcom/twitter/android/ut;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/ut;->getCount()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2438
    iget-object v1, p0, Lcom/twitter/android/uu;->c:Lcom/twitter/android/kn;

    invoke-interface {v1, v7, v3, v0}, Lcom/twitter/android/kn;->a(Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 2440
    :cond_1
    return-object v7

    :cond_2
    move-object v7, p2

    goto :goto_0
.end method
