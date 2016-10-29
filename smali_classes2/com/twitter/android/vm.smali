.class Lcom/twitter/android/vm;
.super Lcvt;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcvt",
        "<",
        "Lcom/twitter/android/timeline/bp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/TweetFragment2;

.field private final b:Lcom/twitter/ui/view/s;

.field private final c:Lcom/twitter/ui/view/s;

.field private final d:Landroid/view/LayoutInflater;

.field private final e:Lcom/twitter/android/kn;
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

.field private f:Z


# direct methods
.method protected constructor <init>(Lcom/twitter/android/TweetFragment2;Landroid/content/Context;Lcom/twitter/android/kn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/android/kn",
            "<",
            "Landroid/view/View;",
            "Lcom/twitter/model/core/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 2063
    iput-object p1, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    .line 2064
    invoke-direct {p0, p2}, Lcvt;-><init>(Landroid/content/Context;)V

    .line 2048
    new-instance v0, Lcom/twitter/ui/view/u;

    invoke-direct {v0}, Lcom/twitter/ui/view/u;-><init>()V

    .line 2050
    invoke-virtual {v0, v1}, Lcom/twitter/ui/view/u;->c(Z)Lcom/twitter/ui/view/u;

    move-result-object v0

    .line 2051
    invoke-virtual {v0, v1}, Lcom/twitter/ui/view/u;->d(Z)Lcom/twitter/ui/view/u;

    move-result-object v0

    .line 2052
    invoke-virtual {v0}, Lcom/twitter/ui/view/u;->a()Lcom/twitter/ui/view/s;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/vm;->b:Lcom/twitter/ui/view/s;

    .line 2053
    new-instance v0, Lcom/twitter/ui/view/u;

    invoke-direct {v0}, Lcom/twitter/ui/view/u;-><init>()V

    .line 2055
    invoke-virtual {v0, v1}, Lcom/twitter/ui/view/u;->c(Z)Lcom/twitter/ui/view/u;

    move-result-object v0

    const/4 v1, 0x0

    .line 2056
    invoke-virtual {v0, v1}, Lcom/twitter/ui/view/u;->d(Z)Lcom/twitter/ui/view/u;

    move-result-object v0

    .line 2057
    invoke-virtual {v0}, Lcom/twitter/ui/view/u;->a()Lcom/twitter/ui/view/s;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/vm;->c:Lcom/twitter/ui/view/s;

    .line 2065
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/vm;->d:Landroid/view/LayoutInflater;

    .line 2066
    iput-object p3, p0, Lcom/twitter/android/vm;->e:Lcom/twitter/android/kn;

    .line 2067
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 2334
    iget-object v0, p0, Lcom/twitter/android/vm;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f04011c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2335
    new-instance v1, Laxk;

    invoke-direct {v1, v0}, Laxk;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2336
    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2340
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxk;

    .line 2341
    invoke-static {}, Lcam;->a()Lcam;

    move-result-object v1

    invoke-virtual {v1}, Lcam;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Laxk;->a(I)V

    .line 2342
    return-void
.end method

.method private a(Landroid/view/View;Lcom/twitter/model/timeline/dd;)V
    .locals 2

    .prologue
    .line 2351
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxj;

    .line 2352
    invoke-static {}, Lcam;->a()Lcam;

    move-result-object v1

    invoke-virtual {v1}, Lcam;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Laxj;->a(I)V

    .line 2353
    iget-object v1, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v1}, Lcom/twitter/android/TweetFragment2;->I(Lcom/twitter/android/TweetFragment2;)Laxo;

    move-result-object v1

    invoke-virtual {v1, p2}, Laxo;->a(Lcom/twitter/model/timeline/dd;)Z

    move-result v1

    invoke-virtual {v0, v1}, Laxj;->a(Z)V

    .line 2354
    return-void
.end method

.method private a(Lcom/twitter/library/widget/TweetView;Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 2373
    iget-object v0, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v0, p1, p2}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/android/TweetFragment2;Lcom/twitter/library/widget/TweetView;Lcom/twitter/model/core/Tweet;)V

    .line 2374
    iget-object v0, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v0, p1}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/android/TweetFragment2;Lcom/twitter/library/widget/TweetView;)Lcom/twitter/library/media/widget/z;

    move-result-object v8

    .line 2375
    invoke-virtual {p0}, Lcom/twitter/android/vm;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbki;->a(Landroid/content/Context;)Lbki;

    move-result-object v9

    .line 2376
    iget-object v0, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment2;->c(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v0

    .line 2377
    iget-object v2, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    iget-boolean v2, v2, Lcom/twitter/android/TweetFragment2;->a:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/twitter/model/account/UserSettings;->k:Z

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    .line 2380
    :goto_0
    invoke-virtual {v9}, Lbki;->b()Z

    move-result v2

    .line 2379
    invoke-static {p2, v0, v2}, Lcih;->a(Lcom/twitter/model/core/Tweet;ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2381
    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->aw()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->ax()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2382
    :cond_1
    :goto_1
    new-instance v0, Lcjm;

    iget-object v2, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-virtual {v2}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v4, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    iget-object v3, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    .line 2383
    invoke-static {v3}, Lcom/twitter/android/TweetFragment2;->J(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v5

    iget-object v3, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v3}, Lcom/twitter/android/TweetFragment2;->K(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v6

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcjm;-><init>(ZLandroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 2384
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v8}, Lcjm;->a(ILjava/lang/Object;)V

    .line 2386
    invoke-virtual {v9, p2}, Lbki;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v1

    .line 2387
    invoke-virtual {p1, v1}, Lcom/twitter/library/widget/TweetView;->setAlwaysExpandMedia(Z)V

    .line 2388
    invoke-virtual {p1, p2, p3, v7, v0}, Lcom/twitter/library/widget/TweetView;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;ZLcjm;)V

    .line 2389
    return-void

    :cond_2
    move v0, v7

    .line 2377
    goto :goto_0

    :cond_3
    move v1, v7

    .line 2381
    goto :goto_1
.end method

.method private b(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 2345
    iget-object v0, p0, Lcom/twitter/android/vm;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f04011b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2346
    new-instance v1, Laxj;

    invoke-direct {v1, v0}, Laxj;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2347
    return-object v0
.end method

.method private e()Lcmv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcmv",
            "<",
            "Lcom/twitter/android/timeline/bp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2401
    new-instance v0, Lcmr;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/twitter/android/timeline/bo;->a(Z)Lcmv;

    move-result-object v1

    invoke-direct {v0, v1}, Lcmr;-><init>(Lcmv;)V

    return-object v0
.end method


# virtual methods
.method public a(J)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2107
    invoke-virtual {p0}, Lcom/twitter/android/vm;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2108
    invoke-virtual {p0}, Lcom/twitter/android/vm;->i()Lcmf;

    move-result-object v0

    .line 2109
    invoke-virtual {v0}, Lcmf;->bb_()I

    move-result v3

    .line 2110
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/br;

    move v1, v2

    .line 2111
    :goto_0
    if-ge v1, v3, :cond_1

    .line 2112
    invoke-virtual {v0, v1}, Lcom/twitter/android/timeline/br;->c(I)J

    move-result-wide v4

    .line 2113
    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    move v0, v1

    .line 2118
    :goto_1
    return v0

    .line 2111
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2118
    goto :goto_1
.end method

.method protected a(Lcom/twitter/android/timeline/bp;)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 2160
    instance-of v0, p1, Lcom/twitter/android/timeline/al;

    if-eqz v0, :cond_0

    .line 2161
    const/4 v0, 0x2

    .line 2187
    :goto_0
    return v0

    .line 2162
    :cond_0
    instance-of v0, p1, Lcom/twitter/android/timeline/cn;

    if-eqz v0, :cond_2

    .line 2163
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/cn;

    .line 2164
    iget-object v0, v0, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    iget-object v1, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v1}, Lcom/twitter/android/TweetFragment2;->d(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/model/core/Tweet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/Tweet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2165
    const/4 v0, 0x0

    goto :goto_0

    .line 2167
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2169
    :cond_2
    instance-of v0, p1, Lcom/twitter/android/timeline/cp;

    if-eqz v0, :cond_3

    .line 2170
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/cp;

    .line 2171
    iget-object v0, v0, Lcom/twitter/android/timeline/cp;->a:Lcom/twitter/model/timeline/dd;

    iget v0, v0, Lcom/twitter/model/timeline/dd;->c:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 2183
    goto :goto_0

    .line 2173
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 2176
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 2180
    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2187
    goto :goto_0

    .line 2171
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 2039
    check-cast p1, Lcom/twitter/android/timeline/bp;

    invoke-virtual {p0, p1}, Lcom/twitter/android/vm;->a(Lcom/twitter/android/timeline/bp;)I

    move-result v0

    return v0
.end method

.method protected a(Landroid/content/Context;Lcom/twitter/android/timeline/bp;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 2193
    invoke-virtual {p0, p2}, Lcom/twitter/android/vm;->a(Lcom/twitter/android/timeline/bp;)I

    move-result v0

    .line 2194
    packed-switch v0, :pswitch_data_0

    .line 2253
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    .line 2196
    :pswitch_0
    iget-boolean v0, p0, Lcom/twitter/android/vm;->f:Z

    if-nez v0, :cond_0

    .line 2197
    const-string/jumbo v0, "urt_conv:focal:complete"

    iget-object v1, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    .line 2198
    invoke-static {v1}, Lcom/twitter/android/TweetFragment2;->v(Lcom/twitter/android/TweetFragment2;)Layj;

    move-result-object v1

    sget-object v2, Laxz;->n:Laye;

    .line 2197
    invoke-static {v0, v1, v2}, Lcom/twitter/library/metrics/f;->b(Ljava/lang/String;Layj;Laye;)Lcom/twitter/library/metrics/f;

    move-result-object v0

    .line 2199
    invoke-virtual {v0}, Lcom/twitter/library/metrics/f;->j()V

    .line 2200
    iput-boolean v3, p0, Lcom/twitter/android/vm;->f:Z

    .line 2202
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment2;->d(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    .line 2203
    iget-object v1, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v1, v0}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/android/TweetFragment2;Lcom/twitter/model/core/Tweet;)V

    .line 2204
    iget-wide v2, v0, Lcom/twitter/model/core/Tweet;->j:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 2206
    iget-object v1, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v1}, Lcom/twitter/android/TweetFragment2;->w(Lcom/twitter/android/TweetFragment2;)V

    .line 2208
    iget-object v1, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v1}, Lcom/twitter/android/TweetFragment2;->x(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 2209
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2210
    new-instance v2, Lbul;

    iget-object v3, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-virtual {v3}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lbul;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 2212
    iget-wide v4, v0, Lcom/twitter/model/core/Tweet;->o:J

    iput-wide v4, v2, Lbul;->a:J

    .line 2213
    iget-object v1, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v1}, Lcom/twitter/android/TweetFragment2;->y(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/client/bd;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 2220
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v1}, Lcom/twitter/android/TweetFragment2;->A(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/android/card/i;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2221
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2222
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    invoke-virtual {v0}, Lclw;->b()Ljava/lang/String;

    move-result-object v0

    .line 2223
    :goto_2
    iget-object v1, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v1}, Lcom/twitter/android/TweetFragment2;->A(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/android/card/i;

    move-result-object v1

    const-string/jumbo v2, "show"

    const-string/jumbo v3, "platform_card"

    invoke-interface {v1, v2, v3, v0}, Lcom/twitter/android/card/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2226
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    iget-object v0, v0, Lcom/twitter/android/TweetFragment2;->b:Lcom/twitter/android/widget/TweetDetailView;

    goto :goto_0

    .line 2216
    :cond_3
    new-instance v1, Lbvg;

    iget-object v2, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-virtual {v2}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v3}, Lcom/twitter/android/TweetFragment2;->z(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-wide v4, v0, Lcom/twitter/model/core/Tweet;->o:J

    iget-object v6, v0, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lbvg;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLjava/lang/String;)V

    .line 2218
    iget-object v2, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    const/4 v3, 0x5

    invoke-static {v2, v1, v3, v7}, Lcom/twitter/android/TweetFragment2;->b(Lcom/twitter/android/TweetFragment2;Lcom/twitter/library/service/x;II)Z

    goto :goto_1

    .line 2222
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 2229
    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/vm;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f04011d

    invoke-virtual {v0, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2230
    new-instance v1, Lcom/twitter/android/vy;

    invoke-direct {v1, v0}, Lcom/twitter/android/vy;-><init>(Landroid/view/View;)V

    .line 2231
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2235
    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/vm;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f0402a3

    invoke-virtual {v0, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2236
    new-instance v1, Lcom/twitter/android/mb;

    invoke-direct {v1, v0}, Lcom/twitter/android/mb;-><init>(Landroid/view/View;)V

    .line 2237
    iget-object v2, v1, Lcom/twitter/android/mb;->d:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v2, v3}, Lcom/twitter/library/widget/TweetView;->setAlwaysExpandMedia(Z)V

    .line 2238
    iget-object v2, v1, Lcom/twitter/android/mb;->a:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v2, v3}, Lcom/twitter/library/widget/TweetView;->setAlwaysExpandMedia(Z)V

    .line 2239
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2243
    :pswitch_3
    invoke-direct {p0, p3}, Lcom/twitter/android/vm;->b(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 2246
    :pswitch_4
    invoke-direct {p0, p3}, Lcom/twitter/android/vm;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 2249
    :pswitch_5
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 2039
    check-cast p2, Lcom/twitter/android/timeline/bp;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/vm;->a(Landroid/content/Context;Lcom/twitter/android/timeline/bp;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Lcom/twitter/android/timeline/br;
    .locals 2

    .prologue
    .line 2393
    new-instance v0, Lcom/twitter/android/timeline/br;

    invoke-direct {p0}, Lcom/twitter/android/vm;->e()Lcmv;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/twitter/android/timeline/br;-><init>(Landroid/database/Cursor;Lcmv;)V

    return-object v0
.end method

.method protected a(Landroid/view/View;Landroid/content/Context;Lcom/twitter/android/timeline/bp;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2260
    invoke-virtual {p0, p3}, Lcom/twitter/android/vm;->a(Lcom/twitter/android/timeline/bp;)I

    move-result v0

    .line 2261
    packed-switch v0, :pswitch_data_0

    .line 2331
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2263
    :pswitch_1
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/TweetDetailView;

    .line 2264
    iget-object v1, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v1}, Lcom/twitter/android/TweetFragment2;->d(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/model/core/Tweet;

    move-result-object v1

    .line 2265
    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->o()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, v1, Lcom/twitter/model/core/Tweet;->C:J

    invoke-virtual {p0, v2, v3}, Lcom/twitter/android/vm;->b(J)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2267
    :goto_1
    iget-object v2, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v2}, Lcom/twitter/android/TweetFragment2;->c(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v3}, Lcom/twitter/android/TweetFragment2;->c(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/widget/TweetDetailView;->a(Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/account/UserSettings;)V

    .line 2268
    iget-object v2, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    iget-object v3, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v3}, Lcom/twitter/android/TweetFragment2;->B(Lcom/twitter/android/TweetFragment2;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v4}, Lcom/twitter/android/TweetFragment2;->C(Lcom/twitter/android/TweetFragment2;)I

    move-result v4

    iget-object v5, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    .line 2269
    invoke-static {v5}, Lcom/twitter/android/TweetFragment2;->D(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/android/qs;

    move-result-object v5

    iget-object v6, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v6}, Lcom/twitter/android/TweetFragment2;->E(Lcom/twitter/android/TweetFragment2;)Z

    move-result v6

    .line 2268
    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/widget/TweetDetailView;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/view/m;Ljava/lang/String;ILcom/twitter/android/qs;ZZ)V

    .line 2274
    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2275
    iget-object v2, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v2}, Lcom/twitter/android/TweetFragment2;->n(Lcom/twitter/android/TweetFragment2;)V

    .line 2277
    :cond_1
    iget-object v2, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v2}, Lcom/twitter/android/TweetFragment2;->F(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/api/ActivitySummary;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2278
    iget-object v2, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v2}, Lcom/twitter/android/TweetFragment2;->F(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/api/ActivitySummary;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/widget/TweetDetailView;->a(Lcom/twitter/library/api/ActivitySummary;Lcom/twitter/android/widget/fo;)V

    .line 2280
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment2;->G(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/android/widget/EngagementActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2281
    iget-object v0, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment2;->G(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/android/widget/EngagementActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/EngagementActionBar;->setTweet(Lcom/twitter/model/core/Tweet;)V

    .line 2282
    iget-object v0, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment2;->G(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/android/widget/EngagementActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v1}, Lcom/twitter/android/TweetFragment2;->H(Lcom/twitter/android/TweetFragment2;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/EngagementActionBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 2265
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 2287
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vy;

    .line 2288
    invoke-static {p3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/timeline/cn;

    .line 2290
    invoke-static {v1}, Lcjd;->c(Lcom/twitter/android/timeline/cn;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/twitter/android/vm;->c:Lcom/twitter/ui/view/s;

    .line 2292
    :goto_2
    iget-object v3, v0, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    iget-object v4, v1, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0, v3, v4, v2}, Lcom/twitter/android/vm;->a(Lcom/twitter/library/widget/TweetView;Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;)V

    .line 2294
    invoke-static {v1}, Lcjd;->d(Lcom/twitter/android/timeline/cn;)Lcje;

    move-result-object v3

    .line 2295
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/internal/android/widget/GroupedRowView;

    .line 2296
    invoke-static {v2, v3}, Lcjd;->a(Lcom/twitter/internal/android/widget/GroupedRowView;Lcje;)V

    .line 2297
    iget-object v0, v0, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    iget-boolean v2, v3, Lcje;->a:Z

    iget-boolean v3, v3, Lcje;->b:Z

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/widget/TweetView;->a(ZZ)V

    .line 2299
    iget-object v0, p0, Lcom/twitter/android/vm;->e:Lcom/twitter/android/kn;

    if-eqz v0, :cond_0

    .line 2300
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v7}, Landroid/os/Bundle;-><init>(I)V

    .line 2301
    invoke-virtual {p0}, Lcom/twitter/android/vm;->i()Lcmf;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/br;

    .line 2302
    const-string/jumbo v3, "position"

    invoke-virtual {v0}, Lcom/twitter/android/timeline/br;->c()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2303
    iget-object v0, p0, Lcom/twitter/android/vm;->e:Lcom/twitter/android/kn;

    iget-object v1, v1, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    invoke-interface {v0, p1, v1, v2}, Lcom/twitter/android/kn;->a(Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2290
    :cond_4
    iget-object v2, p0, Lcom/twitter/android/vm;->b:Lcom/twitter/ui/view/s;

    goto :goto_2

    .line 2308
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/mb;

    .line 2309
    invoke-static {p3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/timeline/al;

    .line 2310
    iget-object v2, v0, Lcom/twitter/android/mb;->d:Lcom/twitter/library/widget/TweetView;

    iget-object v3, v1, Lcom/twitter/android/timeline/al;->b:Lcom/twitter/model/core/Tweet;

    iget-object v4, p0, Lcom/twitter/android/vm;->c:Lcom/twitter/ui/view/s;

    invoke-direct {p0, v2, v3, v4}, Lcom/twitter/android/vm;->a(Lcom/twitter/library/widget/TweetView;Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;)V

    .line 2311
    iget-object v0, v0, Lcom/twitter/android/mb;->a:Lcom/twitter/library/widget/TweetView;

    iget-object v1, v1, Lcom/twitter/android/timeline/al;->b:Lcom/twitter/model/core/Tweet;

    iget-object v2, p0, Lcom/twitter/android/vm;->c:Lcom/twitter/ui/view/s;

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/vm;->a(Lcom/twitter/library/widget/TweetView;Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;)V

    goto/16 :goto_0

    .line 2316
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/twitter/android/vm;->a(Landroid/view/View;)V

    goto/16 :goto_0

    .line 2320
    :pswitch_5
    invoke-static {p3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/cp;

    .line 2321
    iget-object v0, v0, Lcom/twitter/android/timeline/cp;->a:Lcom/twitter/model/timeline/dd;

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/vm;->a(Landroid/view/View;Lcom/twitter/model/timeline/dd;)V

    goto/16 :goto_0

    .line 2261
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic a(Landroid/view/View;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2039
    check-cast p3, Lcom/twitter/android/timeline/bp;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/vm;->a(Landroid/view/View;Landroid/content/Context;Lcom/twitter/android/timeline/bp;)V

    return-void
.end method

.method public b(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 2397
    invoke-virtual {p0, p1}, Lcom/twitter/android/vm;->a(Landroid/database/Cursor;)Lcom/twitter/android/timeline/br;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/vm;->a(Lcmf;)Lcmf;

    .line 2398
    return-void
.end method

.method public b()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2070
    iget-object v0, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment2;->d(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment2;->d(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->o()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 2082
    :goto_0
    return v0

    .line 2073
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/vm;->i()Lcmf;

    move-result-object v3

    .line 2074
    invoke-virtual {v3}, Lcmf;->bb_()I

    move-result v4

    move v2, v1

    .line 2075
    :goto_1
    if-ge v2, v4, :cond_3

    .line 2076
    invoke-virtual {v3, v2}, Lcmf;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/bp;

    .line 2077
    instance-of v5, v0, Lcom/twitter/android/timeline/cn;

    if-eqz v5, :cond_2

    .line 2078
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/cn;

    .line 2079
    iget-object v0, v0, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->o()Z

    move-result v0

    goto :goto_0

    .line 2075
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v1

    .line 2082
    goto :goto_0
.end method

.method public b(J)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 2122
    invoke-virtual {p0}, Lcom/twitter/android/vm;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2123
    invoke-virtual {p0}, Lcom/twitter/android/vm;->i()Lcmf;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/br;

    .line 2124
    invoke-virtual {v0}, Lcom/twitter/android/timeline/br;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/bp;

    .line 2125
    instance-of v3, v0, Lcom/twitter/android/timeline/cn;

    if-eqz v3, :cond_0

    .line 2126
    check-cast v0, Lcom/twitter/android/timeline/cn;

    iget-object v0, v0, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v0, Lcom/twitter/model/core/Tweet;->C:J

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    move v0, v1

    .line 2130
    :goto_0
    return v0

    .line 2126
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2130
    goto :goto_0
.end method

.method public c()Ljava/util/List;
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
    .line 2088
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 2089
    invoke-virtual {p0}, Lcom/twitter/android/vm;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2090
    invoke-virtual {p0}, Lcom/twitter/android/vm;->i()Lcmf;

    move-result-object v0

    .line 2091
    invoke-virtual {v0}, Lcmf;->bb_()I

    move-result v1

    .line 2092
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/br;

    .line 2093
    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_2

    .line 2095
    invoke-virtual {v0, v1}, Lcom/twitter/android/timeline/br;->c(I)J

    move-result-wide v4

    .line 2096
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 2097
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 2094
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2101
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment2;->d(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->p:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 2103
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 2134
    invoke-virtual {p0}, Lcom/twitter/android/vm;->i()Lcmf;

    move-result-object v0

    instance-of v0, v0, Lcom/twitter/android/timeline/br;

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 2139
    invoke-virtual {p0}, Lcom/twitter/android/vm;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2140
    iget-object v0, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment2;->u(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/android/timeline/br;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/android/timeline/br;->d(I)J

    move-result-wide v0

    .line 2145
    :goto_0
    return-wide v0

    .line 2141
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment2;->d(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2142
    iget-object v0, p0, Lcom/twitter/android/vm;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment2;->d(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->C:J

    goto :goto_0

    .line 2145
    :cond_1
    invoke-super {p0, p1}, Lcvt;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 2155
    const/4 v0, 0x6

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 2150
    const/4 v0, 0x1

    return v0
.end method
