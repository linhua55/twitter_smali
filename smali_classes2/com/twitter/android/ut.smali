.class Lcom/twitter/android/ut;
.super Landroid/widget/BaseAdapter;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/TweetFragment;

.field private final b:Z

.field private final c:Lcom/twitter/ui/view/s;

.field private d:Lcom/twitter/model/core/Tweet;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/twitter/android/kn;
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

.field private g:Z


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetFragment;Lcom/twitter/model/core/Tweet;)V
    .locals 2

    .prologue
    .line 2082
    iput-object p1, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2073
    new-instance v0, Lcom/twitter/ui/view/u;

    invoke-direct {v0}, Lcom/twitter/ui/view/u;-><init>()V

    const/4 v1, 0x1

    .line 2075
    invoke-virtual {v0, v1}, Lcom/twitter/ui/view/u;->c(Z)Lcom/twitter/ui/view/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/ui/view/u;->a()Lcom/twitter/ui/view/s;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ut;->c:Lcom/twitter/ui/view/s;

    .line 2083
    iput-object p2, p0, Lcom/twitter/android/ut;->d:Lcom/twitter/model/core/Tweet;

    .line 2084
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/ut;->e:Ljava/util/List;

    .line 2085
    iget-object v0, p0, Lcom/twitter/android/ut;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/twitter/android/ut;->d:Lcom/twitter/model/core/Tweet;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2086
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v0

    invoke-virtual {v0}, Lcbh;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/ut;->b:Z

    .line 2087
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 2352
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04011d

    const/4 v2, 0x0

    .line 2353
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2352
    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/twitter/model/core/Tweet;IZ)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2235
    new-instance v6, Lcom/twitter/android/mb;

    invoke-direct {v6, p1}, Lcom/twitter/android/mb;-><init>(Landroid/view/View;)V

    .line 2236
    iget-object v0, v6, Lcom/twitter/android/mb;->d:Lcom/twitter/library/widget/TweetView;

    invoke-direct {p0, v0, p2, p4}, Lcom/twitter/android/ut;->a(Lcom/twitter/library/widget/TweetView;Lcom/twitter/model/core/Tweet;Z)V

    move-object v1, p1

    .line 2237
    check-cast v1, Lcom/twitter/internal/android/widget/GroupedRowView;

    iget-object v2, v6, Lcom/twitter/android/mb;->d:Lcom/twitter/library/widget/TweetView;

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/ut;->a(Lcom/twitter/internal/android/widget/GroupedRowView;Lcom/twitter/library/widget/TweetView;Lcom/twitter/model/core/Tweet;IZ)V

    .line 2238
    iget-object v0, v6, Lcom/twitter/android/mb;->d:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v0, v7}, Lcom/twitter/library/widget/TweetView;->setAlwaysExpandMedia(Z)V

    .line 2239
    iget-object v0, v6, Lcom/twitter/android/mb;->a:Lcom/twitter/library/widget/TweetView;

    invoke-direct {p0, v0, p2, p4}, Lcom/twitter/android/ut;->a(Lcom/twitter/library/widget/TweetView;Lcom/twitter/model/core/Tweet;Z)V

    move-object v1, p1

    .line 2240
    check-cast v1, Lcom/twitter/internal/android/widget/GroupedRowView;

    iget-object v2, v6, Lcom/twitter/android/mb;->a:Lcom/twitter/library/widget/TweetView;

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/ut;->a(Lcom/twitter/internal/android/widget/GroupedRowView;Lcom/twitter/library/widget/TweetView;Lcom/twitter/model/core/Tweet;IZ)V

    .line 2241
    iget-object v0, v6, Lcom/twitter/android/mb;->a:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v0, v7}, Lcom/twitter/library/widget/TweetView;->setAlwaysExpandMedia(Z)V

    .line 2242
    invoke-virtual {p1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2243
    return-void
.end method

.method private a(Lcom/twitter/internal/android/widget/GroupedRowView;Lcom/twitter/library/widget/TweetView;Lcom/twitter/model/core/Tweet;IZ)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 2276
    iget-boolean v0, p0, Lcom/twitter/android/ut;->b:Z

    if-eqz v0, :cond_3

    .line 2277
    if-eqz p5, :cond_0

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    .line 2279
    :goto_0
    if-eqz p5, :cond_1

    .line 2280
    invoke-virtual {p1, v1}, Lcom/twitter/internal/android/widget/GroupedRowView;->setStyle(I)V

    .line 2286
    :goto_1
    invoke-virtual {p2, v0, p5}, Lcom/twitter/library/widget/TweetView;->a(ZZ)V

    .line 2290
    :goto_2
    return-void

    :cond_0
    move v0, v1

    .line 2277
    goto :goto_0

    .line 2281
    :cond_1
    if-eqz v0, :cond_2

    .line 2282
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/twitter/internal/android/widget/GroupedRowView;->setStyle(I)V

    goto :goto_1

    .line 2284
    :cond_2
    invoke-virtual {p1, v2}, Lcom/twitter/internal/android/widget/GroupedRowView;->setStyle(I)V

    goto :goto_1

    .line 2288
    :cond_3
    invoke-virtual {p1, v2}, Lcom/twitter/internal/android/widget/GroupedRowView;->setStyle(I)V

    goto :goto_2
.end method

.method private a(Lcom/twitter/library/widget/TweetView;Lcom/twitter/model/core/Tweet;Z)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2247
    iget-object v0, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v0, p1}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/android/TweetFragment;Lcom/twitter/library/widget/TweetView;)Lcom/twitter/library/media/widget/z;

    move-result-object v9

    .line 2248
    iget-object v0, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0}, Lcom/twitter/android/TweetFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbki;->a(Landroid/content/Context;)Lbki;

    move-result-object v1

    .line 2249
    iget-object v0, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment;->c(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v0

    .line 2250
    iget-object v2, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    iget-boolean v2, v2, Lcom/twitter/android/TweetFragment;->a:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/twitter/model/account/UserSettings;->k:Z

    if-eqz v0, :cond_3

    :cond_0
    move v0, v8

    .line 2253
    :goto_0
    invoke-virtual {v1}, Lbki;->b()Z

    move-result v1

    .line 2252
    invoke-static {p2, v0, v1}, Lcih;->a(Lcom/twitter/model/core/Tweet;ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2254
    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->aw()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->ax()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move v1, v8

    .line 2255
    :goto_1
    new-instance v0, Lcjm;

    iget-object v2, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v2}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v4, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    iget-object v3, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    .line 2256
    invoke-static {v3}, Lcom/twitter/android/TweetFragment;->K(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v5

    iget-object v3, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v3}, Lcom/twitter/android/TweetFragment;->L(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v6

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcjm;-><init>(ZLandroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 2257
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v9}, Lcjm;->a(ILjava/lang/Object;)V

    .line 2259
    if-nez p3, :cond_2

    iget-wide v2, p2, Lcom/twitter/model/core/Tweet;->b:J

    iget-object v1, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v1}, Lcom/twitter/android/TweetFragment;->M(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    iget v1, p2, Lcom/twitter/model/core/Tweet;->i:I

    .line 2260
    invoke-static {v1}, Lcom/twitter/model/core/p;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2261
    :cond_2
    invoke-virtual {p1, v8}, Lcom/twitter/library/widget/TweetView;->setAlwaysExpandMedia(Z)V

    .line 2271
    :goto_2
    iget-object v1, p0, Lcom/twitter/android/ut;->c:Lcom/twitter/ui/view/s;

    invoke-virtual {p1, p2, v1, v7, v0}, Lcom/twitter/library/widget/TweetView;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;ZLcjm;)V

    .line 2272
    return-void

    :cond_3
    move v0, v7

    .line 2250
    goto :goto_0

    :cond_4
    move v1, v7

    .line 2254
    goto :goto_1

    .line 2263
    :cond_5
    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->h()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2264
    iget-object v1, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    const-string/jumbo v2, "skip"

    invoke-static {v1, v2, p2}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/android/TweetFragment;Ljava/lang/String;Lcom/twitter/model/core/Tweet;)V

    .line 2268
    :cond_6
    invoke-virtual {p1, v7}, Lcom/twitter/library/widget/TweetView;->setAlwaysExpandMedia(Z)V

    goto :goto_2
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/Tweet;)I
    .locals 2

    .prologue
    .line 2293
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/ut;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2294
    invoke-virtual {p0, v0}, Lcom/twitter/android/ut;->a(I)Lcom/twitter/model/core/Tweet;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/twitter/model/core/Tweet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2298
    :goto_1
    return v0

    .line 2293
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2298
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a(I)Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 2113
    iget-object v0, p0, Lcom/twitter/android/ut;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    return-object v0
.end method

.method public a(J)Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 2118
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/ut;->b(J)I

    move-result v0

    .line 2119
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ut;->a(I)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2338
    iget-object v0, p0, Lcom/twitter/android/ut;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 2339
    const/16 v0, 0xa

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2340
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2341
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 2342
    iget-object v0, p0, Lcom/twitter/android/ut;->e:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    sub-int/2addr v5, v1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    iget-wide v6, v0, Lcom/twitter/model/core/Tweet;->C:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2341
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2344
    :cond_0
    return-object v4
.end method

.method public a(ILcom/twitter/model/core/Tweet;)V
    .locals 1

    .prologue
    .line 2313
    iget-object v0, p0, Lcom/twitter/android/ut;->e:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2314
    return-void
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
    .line 2138
    iput-object p1, p0, Lcom/twitter/android/ut;->f:Lcom/twitter/android/kn;

    .line 2139
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/twitter/android/ut;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2306
    iget-object v0, p0, Lcom/twitter/android/ut;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2307
    return-void
.end method

.method public b(J)I
    .locals 5

    .prologue
    .line 2123
    invoke-virtual {p0}, Lcom/twitter/android/ut;->getCount()I

    move-result v1

    .line 2124
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2125
    invoke-virtual {p0, v0}, Lcom/twitter/android/ut;->getItemId(I)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 2129
    :goto_1
    return v0

    .line 2124
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2129
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public b()Lcom/twitter/model/core/Tweet;
    .locals 2

    .prologue
    .line 2348
    iget-object v0, p0, Lcom/twitter/android/ut;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/twitter/android/ut;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    return-object v0
.end method

.method public b(Lcom/twitter/model/core/Tweet;)V
    .locals 2

    .prologue
    .line 2328
    iput-object p1, p0, Lcom/twitter/android/ut;->d:Lcom/twitter/model/core/Tweet;

    .line 2329
    invoke-virtual {p0, p1}, Lcom/twitter/android/ut;->a(Lcom/twitter/model/core/Tweet;)I

    move-result v0

    .line 2330
    if-ltz v0, :cond_0

    .line 2331
    iget-object v1, p0, Lcom/twitter/android/ut;->e:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2332
    invoke-virtual {p0}, Lcom/twitter/android/ut;->notifyDataSetChanged()V

    .line 2334
    :cond_0
    return-void
.end method

.method public c(J)V
    .locals 3

    .prologue
    .line 2317
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/ut;->b(J)I

    move-result v0

    .line 2318
    if-ltz v0, :cond_0

    .line 2319
    iget-object v1, p0, Lcom/twitter/android/ut;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2320
    invoke-virtual {p0}, Lcom/twitter/android/ut;->notifyDataSetChanged()V

    .line 2322
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2108
    iget-object v0, p0, Lcom/twitter/android/ut;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2066
    invoke-virtual {p0, p1}, Lcom/twitter/android/ut;->a(I)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 2134
    invoke-virtual {p0, p1}, Lcom/twitter/android/ut;->a(I)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->p:J

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 2091
    invoke-virtual {p0, p1}, Lcom/twitter/android/ut;->a(I)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    .line 2092
    iget-object v1, p0, Lcom/twitter/android/ut;->d:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v1, v0}, Lcom/twitter/model/core/Tweet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2093
    const/4 v0, 0x0

    .line 2097
    :goto_0
    return v0

    .line 2094
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->X()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2095
    const/4 v0, 0x2

    goto :goto_0

    .line 2097
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2143
    invoke-virtual {p0, p1}, Lcom/twitter/android/ut;->a(I)Lcom/twitter/model/core/Tweet;

    move-result-object v3

    .line 2146
    iget-object v0, p0, Lcom/twitter/android/ut;->d:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0, v3}, Lcom/twitter/model/core/Tweet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2147
    iget-object v1, p0, Lcom/twitter/android/ut;->d:Lcom/twitter/model/core/Tweet;

    .line 2149
    iget-boolean v0, p0, Lcom/twitter/android/ut;->g:Z

    if-nez v0, :cond_0

    .line 2150
    const-string/jumbo v0, "tweet:focal:complete"

    iget-object v2, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    .line 2151
    invoke-static {v2}, Lcom/twitter/android/TweetFragment;->x(Lcom/twitter/android/TweetFragment;)Layj;

    move-result-object v2

    sget-object v3, Laxz;->n:Laye;

    .line 2150
    invoke-static {v0, v2, v3}, Lcom/twitter/library/metrics/f;->b(Ljava/lang/String;Layj;Laye;)Lcom/twitter/library/metrics/f;

    move-result-object v0

    .line 2152
    invoke-virtual {v0}, Lcom/twitter/library/metrics/f;->j()V

    .line 2153
    iput-boolean v9, p0, Lcom/twitter/android/ut;->g:Z

    .line 2156
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    iget-object v0, v0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/widget/TweetDetailView;

    .line 2157
    if-lez p1, :cond_7

    iget-boolean v2, p0, Lcom/twitter/android/ut;->b:Z

    if-eqz v2, :cond_7

    move v7, v9

    .line 2159
    :goto_0
    iget-object v2, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v2}, Lcom/twitter/android/TweetFragment;->c(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v3}, Lcom/twitter/android/TweetFragment;->c(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/widget/TweetDetailView;->a(Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/account/UserSettings;)V

    .line 2160
    iget-object v2, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    iget-object v3, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v3}, Lcom/twitter/android/TweetFragment;->y(Lcom/twitter/android/TweetFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v4}, Lcom/twitter/android/TweetFragment;->z(Lcom/twitter/android/TweetFragment;)I

    move-result v4

    iget-object v5, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    .line 2161
    invoke-static {v5}, Lcom/twitter/android/TweetFragment;->A(Lcom/twitter/android/TweetFragment;)Lcom/twitter/android/qs;

    move-result-object v5

    iget-object v6, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v6}, Lcom/twitter/android/TweetFragment;->B(Lcom/twitter/android/TweetFragment;)Z

    move-result v6

    .line 2160
    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/widget/TweetDetailView;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/view/m;Ljava/lang/String;ILcom/twitter/android/qs;ZZ)V

    .line 2166
    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2167
    iget-object v2, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v2}, Lcom/twitter/android/TweetFragment;->p(Lcom/twitter/android/TweetFragment;)V

    .line 2169
    :cond_1
    iget-object v2, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v2}, Lcom/twitter/android/TweetFragment;->C(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/api/ActivitySummary;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2170
    iget-object v2, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v2}, Lcom/twitter/android/TweetFragment;->C(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/api/ActivitySummary;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/widget/TweetDetailView;->a(Lcom/twitter/library/api/ActivitySummary;Lcom/twitter/android/widget/fo;)V

    .line 2173
    :cond_2
    if-nez p2, :cond_f

    .line 2174
    iget-object v2, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v2, v1}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/android/TweetFragment;Lcom/twitter/model/core/Tweet;)V

    .line 2175
    iget-wide v2, v1, Lcom/twitter/model/core/Tweet;->j:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    .line 2177
    iget-object v2, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v2}, Lcom/twitter/android/TweetFragment;->D(Lcom/twitter/android/TweetFragment;)V

    .line 2179
    iget-object v2, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v2}, Lcom/twitter/android/TweetFragment;->E(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 2180
    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2181
    new-instance v3, Lbul;

    iget-object v4, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v4}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lbul;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 2183
    iget-object v2, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v2}, Lcom/twitter/android/TweetFragment;->d(Lcom/twitter/android/TweetFragment;)Lcom/twitter/model/core/Tweet;

    move-result-object v2

    iget-wide v4, v2, Lcom/twitter/model/core/Tweet;->o:J

    iput-wide v4, v3, Lbul;->a:J

    .line 2184
    iget-object v2, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v2}, Lcom/twitter/android/TweetFragment;->F(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/client/bd;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 2194
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v2}, Lcom/twitter/android/TweetFragment;->H(Lcom/twitter/android/TweetFragment;)Lcom/twitter/android/card/i;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2195
    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 2196
    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v2

    invoke-virtual {v2}, Lclw;->b()Ljava/lang/String;

    move-result-object v2

    .line 2197
    :goto_2
    iget-object v3, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v3}, Lcom/twitter/android/TweetFragment;->H(Lcom/twitter/android/TweetFragment;)Lcom/twitter/android/card/i;

    move-result-object v3

    const-string/jumbo v4, "show"

    const-string/jumbo v5, "platform_card"

    invoke-interface {v3, v4, v5, v2}, Lcom/twitter/android/card/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v2}, Lcom/twitter/android/TweetFragment;->I(Lcom/twitter/android/TweetFragment;)Lcom/twitter/android/widget/EngagementActionBar;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2203
    iget-object v2, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v2}, Lcom/twitter/android/TweetFragment;->I(Lcom/twitter/android/TweetFragment;)Lcom/twitter/android/widget/EngagementActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/twitter/android/widget/EngagementActionBar;->setTweet(Lcom/twitter/model/core/Tweet;)V

    .line 2204
    iget-object v2, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v2}, Lcom/twitter/android/TweetFragment;->I(Lcom/twitter/android/TweetFragment;)Lcom/twitter/android/widget/EngagementActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v3}, Lcom/twitter/android/TweetFragment;->J(Lcom/twitter/android/TweetFragment;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/EngagementActionBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    move-object v3, v1

    .line 2225
    :goto_4
    iget-object v1, p0, Lcom/twitter/android/ut;->f:Lcom/twitter/android/kn;

    if-eqz v1, :cond_6

    .line 2226
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v9}, Landroid/os/Bundle;-><init>(I)V

    .line 2227
    const-string/jumbo v2, "position"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2228
    iget-object v2, p0, Lcom/twitter/android/ut;->f:Lcom/twitter/android/kn;

    invoke-interface {v2, v0, v3, v1}, Lcom/twitter/android/kn;->a(Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 2230
    :cond_6
    return-object v0

    :cond_7
    move v7, v10

    .line 2157
    goto/16 :goto_0

    .line 2187
    :cond_8
    new-instance v3, Lbvg;

    iget-object v2, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v2}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v2, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v2}, Lcom/twitter/android/TweetFragment;->G(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/client/Session;

    move-result-object v5

    iget-object v2, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    .line 2188
    invoke-static {v2}, Lcom/twitter/android/TweetFragment;->d(Lcom/twitter/android/TweetFragment;)Lcom/twitter/model/core/Tweet;

    move-result-object v2

    iget-wide v6, v2, Lcom/twitter/model/core/Tweet;->o:J

    iget-object v2, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v2}, Lcom/twitter/android/TweetFragment;->d(Lcom/twitter/android/TweetFragment;)Lcom/twitter/model/core/Tweet;

    move-result-object v2

    iget-object v8, v2, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    invoke-direct/range {v3 .. v8}, Lbvg;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLjava/lang/String;)V

    .line 2189
    iget-object v2, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    const/4 v4, 0x5

    invoke-static {v2, v3, v4, v10}, Lcom/twitter/android/TweetFragment;->d(Lcom/twitter/android/TweetFragment;Lcom/twitter/library/service/x;II)Z

    goto/16 :goto_1

    :cond_9
    move-object v2, v11

    .line 2196
    goto :goto_2

    .line 2207
    :cond_a
    iget-wide v0, v3, Lcom/twitter/model/core/Tweet;->C:J

    iget-object v2, p0, Lcom/twitter/android/ut;->d:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v2, Lcom/twitter/model/core/Tweet;->C:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_b

    move v5, v9

    .line 2208
    :goto_5
    invoke-virtual {v3}, Lcom/twitter/model/core/Tweet;->X()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2209
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2210
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0402a3

    invoke-virtual {v0, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2211
    invoke-direct {p0, v0, v3, p1, v5}, Lcom/twitter/android/ut;->a(Landroid/view/View;Lcom/twitter/model/core/Tweet;IZ)V

    goto :goto_4

    :cond_b
    move v5, v10

    .line 2207
    goto :goto_5

    .line 2212
    :cond_c
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/twitter/library/widget/TweetView;

    if-nez v0, :cond_e

    .line 2213
    :cond_d
    invoke-direct {p0, p3}, Lcom/twitter/android/ut;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2214
    const v0, 0x7f1301a1

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/widget/TweetView;

    .line 2215
    iget-object v0, p0, Lcom/twitter/android/ut;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v0, v2, v3}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/android/TweetFragment;Lcom/twitter/library/widget/TweetView;Lcom/twitter/model/core/Tweet;)V

    .line 2216
    invoke-direct {p0, v2, v3, v5}, Lcom/twitter/android/ut;->a(Lcom/twitter/library/widget/TweetView;Lcom/twitter/model/core/Tweet;Z)V

    move-object v1, v6

    .line 2217
    check-cast v1, Lcom/twitter/internal/android/widget/GroupedRowView;

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/ut;->a(Lcom/twitter/internal/android/widget/GroupedRowView;Lcom/twitter/library/widget/TweetView;Lcom/twitter/model/core/Tweet;IZ)V

    .line 2218
    invoke-virtual {v6, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v6

    .line 2219
    goto/16 :goto_4

    .line 2220
    :cond_e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/widget/TweetView;

    .line 2221
    invoke-direct {p0, v2, v3, v5}, Lcom/twitter/android/ut;->a(Lcom/twitter/library/widget/TweetView;Lcom/twitter/model/core/Tweet;Z)V

    move-object v1, p2

    .line 2222
    check-cast v1, Lcom/twitter/internal/android/widget/GroupedRowView;

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/ut;->a(Lcom/twitter/internal/android/widget/GroupedRowView;Lcom/twitter/library/widget/TweetView;Lcom/twitter/model/core/Tweet;IZ)V

    move-object v0, p2

    goto/16 :goto_4

    :cond_f
    move-object v0, p2

    goto/16 :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 2103
    const/4 v0, 0x3

    return v0
.end method
