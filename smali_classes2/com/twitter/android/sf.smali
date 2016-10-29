.class public Lcom/twitter/android/sf;
.super Lcom/twitter/android/vw;
.source "Twttr"


# instance fields
.field private a:Landroid/view/animation/TranslateAnimation;

.field private final l:J

.field private final m:Lcom/twitter/android/timeline/bf;

.field private final n:I

.field private o:Lcom/twitter/android/util/au;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Lcom/twitter/android/sn;JLcom/twitter/android/timeline/bf;I)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1899
    invoke-static {v3, p3, v3, v3}, Lciw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lciw;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/vw;-><init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Lciw;Lcom/twitter/android/sn;)V

    .line 1901
    iput-wide p5, p0, Lcom/twitter/android/sf;->l:J

    .line 1902
    iput-object p7, p0, Lcom/twitter/android/sf;->m:Lcom/twitter/android/timeline/bf;

    .line 1903
    iput p8, p0, Lcom/twitter/android/sf;->n:I

    .line 1904
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1930
    iget-object v0, p0, Lcom/twitter/android/sf;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1931
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/twitter/android/sf;->c:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 1932
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 1933
    iget-object v0, p0, Lcom/twitter/android/sf;->a:Landroid/view/animation/TranslateAnimation;

    .line 1934
    if-nez v0, :cond_0

    .line 1935
    iget-object v0, p0, Lcom/twitter/android/sf;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1936
    const v2, 0x7f10000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1937
    const v3, 0x7f0f00f4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 1938
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-float v4, v3

    invoke-direct {v0, v4, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1940
    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1941
    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1942
    new-instance v4, Lcom/twitter/android/sg;

    invoke-direct {v4, p0, v1, v0}, Lcom/twitter/android/sg;-><init>(Lcom/twitter/android/sf;Landroid/view/View;Landroid/view/animation/TranslateAnimation;)V

    .line 1948
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-float v3, v3

    invoke-direct {v0, v6, v3, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1949
    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1950
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1951
    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1952
    iput-object v0, p0, Lcom/twitter/android/sf;->a:Landroid/view/animation/TranslateAnimation;

    .line 1954
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1956
    :cond_1
    return-void
.end method

.method public a(Lcjc;)V
    .locals 4

    .prologue
    .line 1910
    invoke-virtual {p1}, Lcjc;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/twitter/android/sf;->l:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1911
    invoke-super {p0, p1}, Lcom/twitter/android/vw;->a(Lcjc;)V

    .line 1915
    :goto_0
    return-void

    .line 1913
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/sf;->a()V

    goto :goto_0
.end method

.method public a(Lcom/twitter/android/util/au;)V
    .locals 0

    .prologue
    .line 2016
    iput-object p1, p0, Lcom/twitter/android/sf;->o:Lcom/twitter/android/util/au;

    .line 2017
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/TweetView;)V
    .locals 3

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/twitter/android/sf;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1979
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1980
    :goto_0
    if-eqz v0, :cond_0

    .line 1986
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ac()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1987
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->s()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1988
    iget-object v1, p0, Lcom/twitter/android/sf;->i:Lcom/twitter/android/sn;

    invoke-virtual {v1, p1, p2, v0}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/TweetView;Landroid/support/v4/app/FragmentActivity;)V

    .line 1994
    :cond_0
    :goto_1
    return-void

    .line 1979
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1991
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/sf;->m:Lcom/twitter/android/timeline/bf;

    iget v1, p0, Lcom/twitter/android/sf;->n:I

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Lcom/twitter/android/TimelineFragment;->a(Lcom/twitter/library/widget/TweetView;Lcom/twitter/android/timeline/bf;II)V

    goto :goto_1
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/TweetView;I)V
    .locals 4

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/twitter/android/sf;->o:Lcom/twitter/android/util/au;

    if-eqz v0, :cond_0

    .line 2011
    iget-object v0, p0, Lcom/twitter/android/sf;->o:Lcom/twitter/android/util/au;

    invoke-virtual {v0}, Lcom/twitter/android/util/au;->a()Lcom/twitter/android/util/a;

    move-result-object v0

    iget-wide v2, p1, Lcom/twitter/model/core/Tweet;->C:J

    invoke-virtual {v0, v2, v3, p3}, Lcom/twitter/android/util/a;->a(JI)V

    .line 2013
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/av;)V
    .locals 4

    .prologue
    .line 1919
    iget-wide v0, p2, Lcom/twitter/model/core/av;->c:J

    iget-wide v2, p0, Lcom/twitter/android/sf;->l:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1920
    invoke-super {p0, p1, p2}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/av;)V

    .line 1924
    :goto_0
    return-void

    .line 1922
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/sf;->a()V

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/media/EditableMedia;Lcom/twitter/library/widget/TweetView;)V
    .locals 1

    .prologue
    .line 1999
    iget-object v0, p1, Lcom/twitter/model/core/Tweet;->u:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 2000
    iget-object v0, p0, Lcom/twitter/android/sf;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2001
    if-eqz v0, :cond_0

    .line 2003
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 2002
    invoke-static {v0, p1}, Lcom/twitter/android/widget/ConfirmCancelPendingTweetDialog;->a(Landroid/support/v4/app/FragmentManager;Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/widget/ConfirmCancelPendingTweetDialog;

    .line 2006
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/model/core/TweetActionType;Lcom/twitter/library/widget/TweetView;)V
    .locals 6

    .prologue
    .line 1964
    invoke-virtual {p2}, Lcom/twitter/library/widget/TweetView;->getTweet()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    .line 1966
    invoke-super {p0, p1, p2}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/TweetActionType;Lcom/twitter/library/widget/TweetView;)V

    .line 1968
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1969
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->e:Lcom/twitter/model/core/TweetActionType;

    if-ne v1, p1, :cond_0

    .line 1970
    iget-object v1, p0, Lcom/twitter/android/sf;->d:Lcom/twitter/android/client/c;

    iget-object v2, p0, Lcom/twitter/android/sf;->e:Lcom/twitter/library/client/bk;

    .line 1971
    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/twitter/model/core/Tweet;->o:J

    .line 1970
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/twitter/android/client/c;->a(JJ)V

    .line 1974
    :cond_0
    return-void
.end method
