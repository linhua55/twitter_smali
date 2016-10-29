.class public Lcom/twitter/android/HomeTimelineFragment;
.super Lcom/twitter/android/TimelineFragment;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/android/ba;
.implements Lcom/twitter/android/timeline/by;
.implements Lcom/twitter/android/util/av;
.implements Lcom/twitter/android/util/ay;


# static fields
.field private static o:Ljava/lang/Runnable;


# instance fields
.field private p:Lcom/twitter/android/timeline/ac;

.field private q:Z

.field private r:Lcom/twitter/android/timeline/bx;

.field private s:J

.field private t:Lcom/twitter/android/widget/a;

.field private u:Z

.field private v:Z

.field private w:I

.field private x:Lavc;

.field private y:Z

.field private z:Lcom/twitter/ui/widget/TwitterButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/twitter/android/TimelineFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/HomeTimelineFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->a_:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/HomeTimelineFragment;Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/bv;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/HomeTimelineFragment;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/bv;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/bv;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 669
    if-nez p2, :cond_0

    .line 679
    :goto_0
    return-void

    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    .line 674
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v2, p0, Lcom/twitter/android/HomeTimelineFragment;->a_:Landroid/content/Context;

    const/4 v3, 0x0

    .line 675
    invoke-virtual {v0, v2, p1, v1, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 676
    invoke-static {p2}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Lcom/twitter/model/core/bv;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 677
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "::tweet:more:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 678
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 674
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lcom/twitter/library/client/Session;J)Z
    .locals 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 542
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    if-nez v0, :cond_0

    .line 545
    if-eqz p0, :cond_1

    .line 546
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 548
    :goto_0
    new-instance v1, Lcom/twitter/android/hg;

    const/4 v6, 0x0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/hg;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcom/twitter/android/hc;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "TLN-2544"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v1, v0}, Lcom/twitter/android/hg;->a(Ljava/lang/Throwable;)Lbiv;

    move-result-object v0

    .line 550
    invoke-static {v0}, Lbix;->a(Lbiv;)V

    .line 551
    const/4 v0, 0x0

    .line 553
    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move-object v2, p0

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/HomeTimelineFragment;Z)Z
    .locals 0

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/twitter/android/HomeTimelineFragment;->u:Z

    return p1
.end method

.method private an()V
    .locals 4

    .prologue
    .line 252
    const-string/jumbo v0, "app_rating_prompt_enable"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    const-string/jumbo v0, "app_rating_prompt_show_now"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/util/h;

    invoke-direct {v1}, Lcom/twitter/android/util/h;-><init>()V

    invoke-static {v0, v1}, Lcom/twitter/android/util/AppRatingPromptHelper;->a(Landroid/content/Context;Lcom/twitter/android/util/h;)I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->t:Lcom/twitter/android/widget/a;

    if-nez v0, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 258
    new-instance v1, Lcom/twitter/android/widget/a;

    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lcom/twitter/android/widget/a;-><init>(Landroid/content/Context;J)V

    iput-object v1, p0, Lcom/twitter/android/HomeTimelineFragment;->t:Lcom/twitter/android/widget/a;

    .line 259
    iget-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->t:Lcom/twitter/android/widget/a;

    invoke-virtual {v0}, Lcom/twitter/android/widget/a;->f()V

    .line 263
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/twitter/android/HomeTimelineFragment;)Lcom/twitter/android/timeline/bx;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->r:Lcom/twitter/android/timeline/bx;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 841
    iget-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->p:Lcom/twitter/android/timeline/ac;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/ac;

    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lcom/twitter/android/timeline/ac;->a(JLjava/lang/String;)Z

    .line 842
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 845
    iget-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->p:Lcom/twitter/android/timeline/ac;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/ac;

    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lcom/twitter/android/timeline/ac;->b(JLjava/lang/String;)Z

    .line 846
    return-void
.end method


# virtual methods
.method protected A()Z
    .locals 2

    .prologue
    .line 635
    invoke-super {p0}, Lcom/twitter/android/TimelineFragment;->A()Z

    move-result v0

    .line 638
    iget-boolean v1, p0, Lcom/twitter/android/HomeTimelineFragment;->y:Z

    if-eqz v1, :cond_0

    .line 639
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->ag()V

    .line 641
    :cond_0
    return v0
.end method

.method protected B()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 647
    invoke-super {p0}, Lcom/twitter/android/TimelineFragment;->B()V

    .line 648
    new-instance v0, Lcom/twitter/library/scribe/bo;

    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/bo;-><init>(J)V

    .line 649
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->i()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "position_restore_failure"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/library/scribe/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/scribe/bo;->a()Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 648
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 650
    return-void
.end method

.method protected D()Z
    .locals 1

    .prologue
    .line 698
    invoke-static {}, Lcom/twitter/library/av/aj;->a()Z

    move-result v0

    return v0
.end method

.method protected E()Z
    .locals 1

    .prologue
    .line 703
    invoke-static {}, Lcom/twitter/android/revenue/z;->a()Z

    move-result v0

    return v0
.end method

.method protected F()I
    .locals 1

    .prologue
    .line 708
    iget v0, p0, Lcom/twitter/android/HomeTimelineFragment;->w:I

    return v0
.end method

.method public G()Lcom/twitter/android/timeline/x;
    .locals 1

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/timeline/x;->a(Landroid/os/Bundle;)Lcom/twitter/android/timeline/x;

    move-result-object v0

    return-object v0
.end method

.method protected H()Lcom/twitter/model/timeline/bu;
    .locals 1

    .prologue
    .line 774
    invoke-static {}, Lcic;->a()Lcom/twitter/model/timeline/bu;

    move-result-object v0

    return-object v0
.end method

.method protected I()V
    .locals 2

    .prologue
    .line 779
    iget-boolean v0, p0, Lcom/twitter/android/HomeTimelineFragment;->y:Z

    if-eqz v0, :cond_0

    .line 780
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 781
    invoke-static {}, Lcom/twitter/android/timeline/v;->a()Lcom/twitter/android/timeline/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/android/timeline/v;->a_(Lcom/twitter/library/client/Session;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 782
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcaz;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->aH()V

    .line 786
    :cond_0
    return-void
.end method

.method public J()V
    .locals 1

    .prologue
    .line 803
    const-string/jumbo v0, "activate"

    invoke-direct {p0, v0}, Lcom/twitter/android/HomeTimelineFragment;->b(Ljava/lang/String;)V

    .line 804
    return-void
.end method

.method public K()V
    .locals 1

    .prologue
    .line 808
    const-string/jumbo v0, "focus"

    invoke-direct {p0, v0}, Lcom/twitter/android/HomeTimelineFragment;->b(Ljava/lang/String;)V

    .line 809
    return-void
.end method

.method public L()V
    .locals 1

    .prologue
    .line 813
    const-string/jumbo v0, "unfocus"

    invoke-direct {p0, v0}, Lcom/twitter/android/HomeTimelineFragment;->c(Ljava/lang/String;)V

    .line 814
    return-void
.end method

.method public M()V
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->r:Lcom/twitter/android/timeline/bx;

    invoke-interface {v0}, Lcom/twitter/android/timeline/bx;->m()V

    .line 894
    return-void
.end method

.method public N()V
    .locals 4

    .prologue
    .line 899
    invoke-super {p0}, Lcom/twitter/android/TimelineFragment;->N()V

    .line 900
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "home::::pull_to_refresh"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 903
    iget-boolean v0, p0, Lcom/twitter/android/HomeTimelineFragment;->y:Z

    if-eqz v0, :cond_0

    .line 904
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->ag()V

    .line 906
    :cond_0
    return-void
.end method

.method public P()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 919
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 920
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->i()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "new_tweet_prompt"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "show"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 919
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 921
    return-void
.end method

.method public Q()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 926
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 927
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->i()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "new_tweet_prompt"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "dismiss"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 926
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 928
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 392
    invoke-super {p0, p1, p2}, Lcom/twitter/android/TimelineFragment;->a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 393
    invoke-static {p2}, Lcom/twitter/app/common/inject/t;->a(Landroid/os/Bundle;)Lcom/twitter/app/common/inject/t;

    move-result-object v2

    .line 394
    const v0, 0x7f130010

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/NewItemBannerView;

    .line 395
    iget v3, p0, Lcom/twitter/android/HomeTimelineFragment;->m:I

    invoke-static {v3, v0, p0, v2}, Lcom/twitter/android/timeline/bz;->a(ILcom/twitter/android/widget/NewItemBannerView;Lcom/twitter/android/timeline/by;Lcom/twitter/app/common/inject/t;)Lcom/twitter/android/timeline/bx;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->r:Lcom/twitter/android/timeline/bx;

    .line 397
    new-instance v0, Lcom/twitter/android/he;

    invoke-direct {v0, p0}, Lcom/twitter/android/he;-><init>(Lcom/twitter/android/HomeTimelineFragment;)V

    invoke-virtual {p0, v0}, Lcom/twitter/android/HomeTimelineFragment;->a(Lcom/twitter/app/common/list/ah;)Lcom/twitter/app/common/list/TwitterListFragment;

    .line 413
    new-instance v0, Lcom/twitter/android/sa;

    const-string/jumbo v2, "home"

    invoke-direct {v0, p0, v2}, Lcom/twitter/android/sa;-><init>(Lcom/twitter/android/TimelineFragment;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/twitter/android/HomeTimelineFragment;->a(Lcom/twitter/app/common/list/ah;)Lcom/twitter/app/common/list/TwitterListFragment;

    .line 414
    iget-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->r:Lcom/twitter/android/timeline/bx;

    invoke-interface {v0}, Lcom/twitter/android/timeline/bx;->b()V

    .line 415
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->aA()Lcom/twitter/app/common/inject/o;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/HomeTimelineFragment;->r:Lcom/twitter/android/timeline/bx;

    invoke-virtual {v0, v2}, Lcom/twitter/app/common/inject/o;->a(Ljava/lang/Object;)Lcom/twitter/app/common/inject/o;

    .line 417
    const v0, 0x7f130351

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    iput-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->z:Lcom/twitter/ui/widget/TwitterButton;

    .line 418
    iget-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->z:Lcom/twitter/ui/widget/TwitterButton;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->z:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    :cond_0
    return-object v1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Lcom/twitter/android/TimelineFragment;->a()V

    .line 215
    const-string/jumbo v0, "app_graph_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/HomeTimelineFragment;->v:Z

    .line 216
    return-void
.end method

.method protected a(I)V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->r:Lcom/twitter/android/timeline/bx;

    invoke-interface {v0, p1}, Lcom/twitter/android/timeline/bx;->a(I)V

    .line 523
    return-void
.end method

.method public a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 579
    const-string/jumbo v0, "position"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 580
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->Y()Lcom/twitter/android/timeline/br;

    move-result-object v2

    .line 581
    const/4 v0, 0x0

    .line 583
    if-eqz v2, :cond_0

    .line 584
    invoke-virtual {v2, v1}, Lcom/twitter/android/timeline/br;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/bp;

    .line 588
    :cond_0
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 592
    iget-object v3, p0, Lcom/twitter/android/HomeTimelineFragment;->j:Lcom/twitter/android/vs;

    invoke-virtual {v3, v0, p2, p3}, Lcom/twitter/android/vs;->a(Lcom/twitter/android/timeline/bp;Lcom/twitter/model/core/Tweet;Landroid/os/Bundle;)Z

    .line 595
    :cond_1
    if-eqz p2, :cond_2

    .line 596
    iget-object v3, p2, Lcom/twitter/model/core/Tweet;->aa:Lcom/twitter/model/core/bv;

    const-string/jumbo v4, "impression"

    invoke-direct {p0, p2, v3, v4}, Lcom/twitter/android/HomeTimelineFragment;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/bv;Ljava/lang/String;)V

    .line 599
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/TimelineFragment;->a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Landroid/os/Bundle;)V

    .line 605
    iget-boolean v3, p0, Lcom/twitter/android/HomeTimelineFragment;->u:Z

    if-nez v3, :cond_3

    .line 606
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->ac_()Z

    move-result v3

    iput-boolean v3, p0, Lcom/twitter/android/HomeTimelineFragment;->u:Z

    .line 610
    :cond_3
    if-eqz v0, :cond_5

    .line 611
    invoke-virtual {v2}, Lcom/twitter/android/timeline/br;->bb_()I

    move-result v0

    .line 612
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->F()I

    move-result v3

    if-ge v0, v3, :cond_5

    sub-int v3, v0, v1

    const/16 v4, 0x14

    if-gt v3, v4, :cond_5

    .line 614
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Lcom/twitter/android/timeline/br;->h(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 615
    iget v0, p0, Lcom/twitter/android/HomeTimelineFragment;->K:I

    invoke-virtual {p0, v0}, Lcom/twitter/android/HomeTimelineFragment;->j(I)J

    move-result-wide v4

    .line 618
    iget-wide v6, p0, Lcom/twitter/android/HomeTimelineFragment;->s:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    const-string/jumbo v0, "home_timeline_preload_bottom_non_polling_enabled"

    .line 619
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 620
    invoke-virtual {p0, v8}, Lcom/twitter/android/HomeTimelineFragment;->h(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 624
    :goto_0
    iput-wide v4, p0, Lcom/twitter/android/HomeTimelineFragment;->s:J

    .line 628
    :cond_4
    invoke-virtual {v2, v1}, Lcom/twitter/android/timeline/br;->d_(I)Z

    .line 631
    :cond_5
    return-void

    .line 621
    :cond_6
    invoke-virtual {p0, v8}, Lcom/twitter/android/HomeTimelineFragment;->g(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 106
    check-cast p2, Lcom/twitter/model/core/Tweet;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/HomeTimelineFragment;->a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Landroid/os/Bundle;)V

    return-void
.end method

.method protected a(Lcmf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Lcom/twitter/android/timeline/bp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 505
    iget-boolean v0, p0, Lcom/twitter/android/HomeTimelineFragment;->q:Z

    if-eqz v0, :cond_1

    .line 506
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->w()Lcom/twitter/refresh/widget/a;

    move-result-object v0

    .line 507
    invoke-virtual {p0, p1}, Lcom/twitter/android/HomeTimelineFragment;->b(Lcmf;)V

    .line 508
    invoke-virtual {p0, v0}, Lcom/twitter/android/HomeTimelineFragment;->a(Lcom/twitter/refresh/widget/a;)V

    .line 513
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->aQ()Landroid/database/Cursor;

    move-result-object v0

    .line 514
    if-eqz v0, :cond_0

    .line 515
    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 516
    iget-object v1, p0, Lcom/twitter/android/HomeTimelineFragment;->l:Lcom/twitter/android/revenue/d;

    const-string/jumbo v2, "ad_slots_count"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/revenue/d;->a(I)V

    .line 518
    :cond_0
    return-void

    .line 510
    :cond_1
    invoke-super {p0, p1}, Lcom/twitter/android/TimelineFragment;->a(Lcmf;)V

    goto :goto_0
.end method

.method public a(Lcmf;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Lcom/twitter/android/timeline/bp;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 825
    if-nez p2, :cond_0

    .line 831
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->aa()V

    .line 832
    const-string/jumbo v0, "start_at_top"

    .line 836
    :goto_0
    invoke-direct {p0, v0}, Lcom/twitter/android/HomeTimelineFragment;->c(Ljava/lang/String;)V

    .line 837
    invoke-super {p0, p1, p2}, Lcom/twitter/android/TimelineFragment;->a(Lcmf;Z)V

    .line 838
    return-void

    .line 834
    :cond_0
    const-string/jumbo v0, "timeout"

    goto :goto_0
.end method

.method public a(Lcom/twitter/android/util/au;)V
    .locals 0

    .prologue
    .line 368
    invoke-virtual {p1, p0}, Lcom/twitter/android/util/au;->a(Lcom/twitter/android/util/av;)V

    .line 369
    return-void
.end method

.method protected a(Lcom/twitter/app/common/list/aj;)V
    .locals 4

    .prologue
    .line 426
    invoke-super {p0, p1}, Lcom/twitter/android/TimelineFragment;->a(Lcom/twitter/app/common/list/aj;)V

    .line 427
    const v0, 0x7f040159

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->c(I)Lcom/twitter/app/common/list/aj;

    .line 428
    const-string/jumbo v0, "empty_home_timeline_android_4959"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "enabled"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/twitter/config/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    const v0, 0x7f0400e4

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->f(I)Lcom/twitter/app/common/list/aj;

    .line 434
    :goto_0
    return-void

    .line 432
    :cond_0
    const v0, 0x7f0400e3

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->f(I)Lcom/twitter/app/common/list/aj;

    goto :goto_0
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 310
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/TimelineFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 312
    instance-of v0, p1, Lbsb;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 313
    check-cast v0, Lbsb;

    .line 314
    invoke-virtual {v0}, Lbsb;->H()I

    move-result v3

    .line 315
    invoke-virtual {v0}, Lbsb;->z()Lcom/twitter/model/timeline/br;

    move-result-object v4

    .line 316
    if-ne p3, v7, :cond_5

    move v0, v1

    .line 317
    :goto_0
    iget-object v5, p0, Lcom/twitter/android/HomeTimelineFragment;->r:Lcom/twitter/android/timeline/bx;

    invoke-interface {v5, v3, v0, v4}, Lcom/twitter/android/timeline/bx;->a(IZLcom/twitter/model/timeline/br;)V

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    .line 322
    if-eq p3, v6, :cond_1

    if-ne p3, v7, :cond_2

    .line 324
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->t_()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 325
    iget-object v3, p0, Lcom/twitter/android/HomeTimelineFragment;->c:Lcom/twitter/android/metrics/b;

    invoke-virtual {v3}, Lcom/twitter/android/metrics/b;->g()V

    .line 326
    iget-object v3, p0, Lcom/twitter/android/HomeTimelineFragment;->c:Lcom/twitter/android/metrics/b;

    invoke-virtual {v3}, Lcom/twitter/android/metrics/b;->j()V

    .line 332
    :goto_1
    invoke-static {v4, v5}, Lcbo;->a(J)V

    .line 335
    :cond_2
    if-nez p2, :cond_4

    .line 336
    iput-boolean v2, p0, Lcom/twitter/android/HomeTimelineFragment;->q:Z

    .line 340
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->U()Z

    move-result v2

    if-nez v2, :cond_3

    if-ne p3, v1, :cond_3

    invoke-virtual {p1}, Lcom/twitter/library/service/x;->O()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 341
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/twitter/android/HomeTimelineFragment;->s:J

    .line 344
    :cond_3
    instance-of v1, p1, Lbsb;

    if-eqz v1, :cond_4

    if-ne p3, v6, :cond_4

    .line 345
    iget-object v1, p0, Lcom/twitter/android/HomeTimelineFragment;->a_:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v5, v0}, Lcom/twitter/library/platform/TwitterDataSyncService;->b(Landroid/content/Context;JLjava/lang/String;)V

    .line 348
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 316
    goto :goto_0

    .line 328
    :cond_6
    iget-object v3, p0, Lcom/twitter/android/HomeTimelineFragment;->c:Lcom/twitter/android/metrics/b;

    invoke-virtual {v3}, Lcom/twitter/android/metrics/b;->k()V

    goto :goto_1
.end method

.method public a(JLcom/twitter/model/core/Tweet;Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 686
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/HomeTimelineFragment;->q:Z

    .line 688
    invoke-super {p0, p1, p2, p3, p4}, Lcom/twitter/android/TimelineFragment;->a(JLcom/twitter/model/core/Tweet;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/widget/AbsListView;IIIZ)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 720
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vz;

    .line 723
    iget-boolean v1, p0, Lcom/twitter/android/HomeTimelineFragment;->v:Z

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/twitter/android/rb;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 724
    check-cast v1, Lcom/twitter/android/rb;

    invoke-virtual {v1}, Lcom/twitter/android/rb;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    sub-int v1, p2, p3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 728
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v3, v3, 0x2

    .line 729
    invoke-virtual {v0}, Lcom/twitter/android/vz;->getCount()I

    move-result v4

    .line 728
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v1

    .line 730
    :goto_0
    if-ge v3, v4, :cond_3

    move-object v1, v0

    .line 731
    check-cast v1, Lcom/twitter/android/rb;

    invoke-virtual {v1, v3}, Lcom/twitter/android/rb;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 732
    const/4 v1, 0x1

    .line 736
    :goto_1
    if-nez v1, :cond_0

    .line 737
    check-cast v0, Lcom/twitter/android/rb;

    invoke-virtual {v0, v2}, Lcom/twitter/android/rb;->a(Z)V

    .line 738
    iget-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->a_:Landroid/content/Context;

    .line 739
    invoke-static {v0}, Lcom/twitter/library/client/v;->a(Landroid/content/Context;)Lcom/twitter/library/client/v;

    move-result-object v0

    .line 740
    const-string/jumbo v1, "optin"

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/v;->b(Ljava/lang/String;)V

    .line 742
    const-string/jumbo v1, "optin"

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/v;->a(Ljava/lang/String;)V

    .line 749
    :cond_0
    instance-of v0, p1, Lcom/twitter/android/widget/PinnedHeaderRefreshableListView;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 750
    check-cast v0, Lcom/twitter/android/widget/PinnedHeaderRefreshableListView;

    .line 751
    invoke-virtual {v0, p2}, Lcom/twitter/android/widget/PinnedHeaderRefreshableListView;->a(I)V

    .line 755
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/twitter/android/TimelineFragment;->a(Landroid/widget/AbsListView;IIIZ)Z

    move-result v0

    return v0

    .line 730
    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public a(Lcom/twitter/model/timeline/w;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 439
    if-eqz p1, :cond_5

    .line 440
    invoke-virtual {p1}, Lcom/twitter/model/timeline/w;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 445
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 446
    invoke-static {}, Lcom/twitter/android/util/bb;->a()Lcom/twitter/android/util/bb;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/twitter/android/util/bb;->a(Lcom/twitter/model/timeline/w;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 447
    invoke-static {p1, v0}, Lcom/twitter/android/widget/ReviewPhoneOverlayPrompt;->a(Lcom/twitter/model/timeline/w;Landroid/support/v4/app/FragmentManager;)V

    move v0, v1

    .line 472
    :goto_0
    return v0

    .line 449
    :cond_0
    invoke-static {}, Lcom/twitter/android/util/br;->a()Lcom/twitter/android/util/br;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/twitter/android/util/br;->a(Lcom/twitter/model/timeline/w;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 450
    invoke-static {p1, v0}, Lcom/twitter/android/widget/VerifyPhoneOverlayPrompt;->a(Lcom/twitter/model/timeline/w;Landroid/support/v4/app/FragmentManager;)V

    move v0, v1

    .line 451
    goto :goto_0

    .line 452
    :cond_1
    invoke-static {p1}, Lcom/twitter/android/util/ba;->a(Lcom/twitter/model/timeline/w;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 453
    invoke-static {p1, v0}, Lcom/twitter/android/widget/ReviewEmailOverlayPrompt;->a(Lcom/twitter/model/timeline/w;Landroid/support/v4/app/FragmentManager;)V

    move v0, v1

    .line 454
    goto :goto_0

    .line 455
    :cond_2
    invoke-static {p1}, Lcom/twitter/android/util/n;->a(Lcom/twitter/model/timeline/w;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 456
    invoke-static {p1, v0}, Lcom/twitter/android/widget/ConfirmEmailOverlayPrompt;->a(Lcom/twitter/model/timeline/w;Landroid/support/v4/app/FragmentManager;)V

    move v0, v1

    .line 457
    goto :goto_0

    .line 458
    :cond_3
    invoke-static {p1}, Lcom/twitter/android/util/bq;->a(Lcom/twitter/model/timeline/w;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 459
    invoke-static {p1, v0}, Lcom/twitter/android/widget/TypoEmailOverlayPrompt;->a(Lcom/twitter/model/timeline/w;Landroid/support/v4/app/FragmentManager;)V

    move v0, v1

    .line 460
    goto :goto_0

    .line 463
    :cond_4
    invoke-virtual {p1}, Lcom/twitter/model/timeline/w;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 465
    iget-object v0, p1, Lcom/twitter/model/timeline/w;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 466
    new-array v3, v1, [Ljava/lang/String;

    iget-object v4, p1, Lcom/twitter/model/timeline/w;->v:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/twitter/config/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 468
    goto :goto_0

    :cond_5
    move v0, v2

    .line 472
    goto :goto_0
.end method

.method protected a_(I)Z
    .locals 4

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/android/HomeTimelineFragment;->aa:J

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/HomeTimelineFragment;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    const/4 v0, 0x0

    .line 537
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/android/TimelineFragment;->a_(I)Z

    move-result v0

    goto :goto_0
.end method

.method ac_()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 653
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    .line 654
    :goto_0
    instance-of v2, v0, Lcom/twitter/android/widget/PinnedHeaderRefreshableListView;

    if-eqz v2, :cond_2

    .line 655
    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 656
    check-cast v0, Lcom/twitter/android/widget/PinnedHeaderRefreshableListView;

    .line 658
    invoke-virtual {v0}, Lcom/twitter/android/widget/PinnedHeaderRefreshableListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/PinnedHeaderRefreshableListView;->a(I)V

    move v0, v1

    .line 663
    :goto_1
    return v0

    .line 653
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 661
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 663
    goto :goto_1
.end method

.method public ad_()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 911
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->u()V

    .line 912
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 913
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->i()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "new_tweet_prompt"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "click"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 912
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 914
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 528
    iget-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->a_:Landroid/content/Context;

    invoke-static {v0}, Lbsp;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 529
    :goto_0
    const-string/jumbo v3, "PTR Override: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 528
    goto :goto_0
.end method

.method public b(Lcom/twitter/model/timeline/w;)V
    .locals 0

    .prologue
    .line 477
    return-void
.end method

.method b_(I)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 693
    iput p1, p0, Lcom/twitter/android/HomeTimelineFragment;->w:I

    .line 694
    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Lcom/twitter/android/TimelineFragment;->d()V

    .line 223
    sget-object v0, Lcom/twitter/android/HomeTimelineFragment;->o:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Lcom/twitter/android/HomeTimelineFragment;->o:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 226
    :cond_0
    return-void
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->r:Lcom/twitter/android/timeline/bx;

    invoke-interface {v0}, Lcom/twitter/android/timeline/bx;->g()V

    .line 231
    iget-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->t:Lcom/twitter/android/widget/a;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->t:Lcom/twitter/android/widget/a;

    invoke-virtual {v0}, Lcom/twitter/android/widget/a;->a()V

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->t:Lcom/twitter/android/widget/a;

    .line 235
    :cond_0
    invoke-super {p0}, Lcom/twitter/android/TimelineFragment;->e()V

    .line 236
    return-void
.end method

.method protected h()V
    .locals 4

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->aQ()Landroid/database/Cursor;

    move-result-object v0

    .line 763
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 764
    const/16 v1, 0x10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->F()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 765
    :cond_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "home::::bottom"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 768
    :cond_1
    invoke-super {p0}, Lcom/twitter/android/TimelineFragment;->h()V

    .line 769
    return-void
.end method

.method public synthetic o()Lcom/twitter/android/timeline/bm;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->G()Lcom/twitter/android/timeline/x;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/twitter/android/TimelineFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 268
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v2, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    .line 269
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0418

    .line 270
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 271
    instance-of v0, v2, Lcom/twitter/android/widget/PinnedHeaderRefreshableListView;

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vz;

    move-object v1, v0

    .line 273
    check-cast v1, Lcom/twitter/android/rb;

    const v3, 0x7f04011f

    invoke-virtual {v1, v3, v2}, Lcom/twitter/android/rb;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 275
    new-instance v1, Lcom/twitter/android/hc;

    invoke-direct {v1, p0}, Lcom/twitter/android/hc;-><init>(Lcom/twitter/android/HomeTimelineFragment;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v1, v2

    .line 283
    check-cast v1, Lcom/twitter/android/widget/PinnedHeaderRefreshableListView;

    .line 286
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 287
    const v4, 0x7f0f0330

    .line 288
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 287
    invoke-virtual {v1, v3, v4}, Lcom/twitter/android/widget/PinnedHeaderRefreshableListView;->a(Landroid/view/View;I)V

    .line 289
    const v3, 0x7f0f0210

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/PinnedHeaderRefreshableListView;->setBuiltInDividerHeight(I)V

    .line 292
    new-instance v1, Lcom/twitter/android/hd;

    invoke-direct {v1, p0}, Lcom/twitter/android/hd;-><init>(Lcom/twitter/android/HomeTimelineFragment;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/vz;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->x:Lavc;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->x:Lavc;

    invoke-virtual {v0}, Lavc;->b()V

    .line 303
    :cond_1
    new-instance v0, Lavc;

    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lawf;

    .line 304
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    invoke-direct {v3, v4, v6, v7}, Lawf;-><init>(Landroid/content/Context;J)V

    invoke-direct {v0, v1, v2, v3}, Lavc;-><init>(Landroid/support/v4/app/LoaderManager;ILcom/twitter/util/object/i;)V

    iput-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->x:Lavc;

    .line 305
    iget-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->x:Lavc;

    iget-object v1, p0, Lcom/twitter/android/HomeTimelineFragment;->l:Lcom/twitter/android/revenue/d;

    invoke-virtual {v0, v1}, Lavc;->a(Lavg;)V

    .line 306
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f130351

    if-ne v0, v1, :cond_0

    .line 191
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/people/PeopleDiscoveryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/twitter/android/HomeTimelineFragment;->startActivity(Landroid/content/Intent;)V

    .line 193
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 197
    invoke-super {p0, p1}, Lcom/twitter/android/TimelineFragment;->onCreate(Landroid/os/Bundle;)V

    .line 198
    if-eqz p1, :cond_0

    .line 199
    const-string/jumbo v0, "timeline_view_limit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/HomeTimelineFragment;->b_(I)V

    .line 200
    const-string/jumbo v0, "fetch_on_focus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/HomeTimelineFragment;->y:Z

    .line 206
    :goto_0
    invoke-direct {p0}, Lcom/twitter/android/HomeTimelineFragment;->an()V

    .line 207
    new-instance v0, Lcom/twitter/ui/view/u;

    invoke-direct {v0}, Lcom/twitter/ui/view/u;-><init>()V

    .line 208
    invoke-virtual {v0, v4}, Lcom/twitter/ui/view/u;->h(Z)Lcom/twitter/ui/view/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/ui/view/u;->a()Lcom/twitter/ui/view/s;

    move-result-object v0

    .line 207
    invoke-virtual {p0, v0}, Lcom/twitter/android/HomeTimelineFragment;->a(Lcom/twitter/ui/view/s;)V

    .line 209
    new-instance v0, Lcom/twitter/android/timeline/ac;

    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/android/timeline/ac;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->p:Lcom/twitter/android/timeline/ac;

    .line 210
    return-void

    .line 202
    :cond_0
    iget v0, p0, Lcom/twitter/android/HomeTimelineFragment;->m:I

    invoke-static {v0}, Lcbf;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/HomeTimelineFragment;->b_(I)V

    .line 203
    const-string/jumbo v0, "android_autorefresh_migration_4756"

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "fetch_on_focus"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/twitter/config/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/HomeTimelineFragment;->y:Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 570
    invoke-super {p0}, Lcom/twitter/android/TimelineFragment;->onDestroy()V

    .line 572
    iget-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->x:Lavc;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->x:Lavc;

    invoke-virtual {v0}, Lavc;->b()V

    .line 575
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->r:Lcom/twitter/android/timeline/bx;

    invoke-interface {v0}, Lcom/twitter/android/timeline/bx;->f()V

    .line 564
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->aA()Lcom/twitter/app/common/inject/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/HomeTimelineFragment;->r:Lcom/twitter/android/timeline/bx;

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/inject/o;->b(Ljava/lang/Object;)Lcom/twitter/app/common/inject/o;

    .line 565
    invoke-super {p0}, Lcom/twitter/android/TimelineFragment;->onDestroyView()V

    .line 566
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0, p1}, Lcom/twitter/android/TimelineFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 241
    const-string/jumbo v0, "timeline_view_limit"

    iget v1, p0, Lcom/twitter/android/HomeTimelineFragment;->w:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    const-string/jumbo v0, "fetch_on_focus"

    iget-boolean v1, p0, Lcom/twitter/android/HomeTimelineFragment;->y:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 243
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 558
    invoke-super {p0}, Lcom/twitter/android/TimelineFragment;->onStop()V

    .line 559
    return-void
.end method

.method public synthetic p()Lcom/twitter/app/common/list/w;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->G()Lcom/twitter/android/timeline/x;

    move-result-object v0

    return-object v0
.end method

.method public synthetic q()Lcom/twitter/app/common/base/f;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->G()Lcom/twitter/android/timeline/x;

    move-result-object v0

    return-object v0
.end method

.method public r()V
    .locals 1

    .prologue
    .line 247
    invoke-super {p0}, Lcom/twitter/android/TimelineFragment;->r()V

    .line 248
    iget-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->r:Lcom/twitter/android/timeline/bx;

    invoke-interface {v0}, Lcom/twitter/android/timeline/bx;->i()V

    .line 249
    return-void
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x1

    return v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    const-string/jumbo v0, "home_timeline"

    return-object v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method protected v_()Landroid/support/v4/content/Loader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    .line 499
    new-instance v1, Lcom/twitter/android/hb;

    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->S()Laro;

    move-result-object v0

    invoke-static {v0}, Larr;->a(Laro;)Lavh;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/HomeTimelineFragment;->l:Lcom/twitter/android/revenue/d;

    .line 500
    invoke-static {v6, v7}, Lawf;->a(J)Lavh;

    move-result-object v5

    invoke-direct/range {v1 .. v7}, Lcom/twitter/android/hb;-><init>(Landroid/content/Context;Lavh;Lcom/twitter/android/revenue/d;Lavh;J)V

    .line 499
    return-object v1
.end method

.method protected w()Lcom/twitter/android/sf;
    .locals 9

    .prologue
    .line 374
    new-instance v0, Lcom/twitter/android/hi;

    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v3

    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->ac()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/twitter/android/HomeTimelineFragment;->I:Lcom/twitter/android/sn;

    iget-object v6, p0, Lcom/twitter/android/HomeTimelineFragment;->g:Lcom/twitter/android/timeline/bf;

    iget v7, p0, Lcom/twitter/android/HomeTimelineFragment;->m:I

    .line 375
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->aj()Lcom/twitter/android/ty;

    move-result-object v8

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/twitter/android/hi;-><init>(Lcom/twitter/android/HomeTimelineFragment;Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Lcom/twitter/android/sn;Lcom/twitter/android/timeline/bf;ILcom/twitter/android/ty;)V

    .line 374
    return-object v0
.end method

.method protected x()Lcom/twitter/android/se;
    .locals 1

    .prologue
    .line 381
    new-instance v0, Lcom/twitter/android/hh;

    invoke-direct {v0, p0}, Lcom/twitter/android/hh;-><init>(Lcom/twitter/android/HomeTimelineFragment;)V

    return-object v0
.end method

.method protected y()V
    .locals 4

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->aX()Layj;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/HomeTimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/twitter/android/metrics/e;->a(Layj;J)Lcom/twitter/android/metrics/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->c:Lcom/twitter/android/metrics/b;

    .line 387
    iget-object v0, p0, Lcom/twitter/android/HomeTimelineFragment;->c:Lcom/twitter/android/metrics/b;

    invoke-virtual {v0}, Lcom/twitter/android/metrics/b;->i()V

    .line 388
    return-void
.end method

.method protected z()Lcom/twitter/app/common/list/b;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 483
    iget-boolean v0, p0, Lcom/twitter/android/HomeTimelineFragment;->y:Z

    if-eqz v0, :cond_0

    .line 484
    new-instance v0, Lcom/twitter/app/common/list/j;

    new-instance v1, Lcom/twitter/android/hf;

    invoke-direct {v1, p0}, Lcom/twitter/android/hf;-><init>(Lcom/twitter/android/HomeTimelineFragment;)V

    invoke-direct {v0, v1, v2, v2, p0}, Lcom/twitter/app/common/list/j;-><init>(Lcom/twitter/util/object/i;ZZLcom/twitter/app/common/list/k;)V

    .line 492
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/twitter/android/TimelineFragment;->z()Lcom/twitter/app/common/list/b;

    move-result-object v0

    goto :goto_0
.end method
