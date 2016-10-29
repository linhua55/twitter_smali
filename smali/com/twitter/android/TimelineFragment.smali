.class public abstract Lcom/twitter/android/TimelineFragment;
.super Lcom/twitter/android/TweetListFragment;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/list/k;
.implements Lcom/twitter/library/provider/cg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/TweetListFragment",
        "<",
        "Lcom/twitter/android/timeline/bp;",
        "Lcom/twitter/android/vz;",
        ">;",
        "Lcom/twitter/app/common/list/k;",
        "Lcom/twitter/library/provider/cg;"
    }
.end annotation


# instance fields
.field private A:Lcom/twitter/android/timeline/ay;

.field private B:Lcom/twitter/android/timeline/ae;

.field private C:Z

.field private D:Lcom/twitter/ui/view/s;

.field private E:Lcom/twitter/android/sk;

.field private F:Lcom/twitter/refresh/widget/a;

.field private G:Lcom/twitter/android/TimelineItemClickHandler;

.field protected a:Ljava/lang/String;

.field private ac:Lcom/twitter/android/util/au;

.field private ad:Lcom/twitter/library/client/l;

.field private ae:Z

.field protected b:Z

.field protected c:Lcom/twitter/android/metrics/b;

.field protected d:I

.field protected e:J

.field protected f:Lcom/twitter/library/util/FriendshipCache;

.field protected g:Lcom/twitter/android/timeline/bf;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Lcom/twitter/android/vs;

.field protected k:Laap;

.field protected l:Lcom/twitter/android/revenue/d;

.field protected m:I

.field protected n:Z

.field private o:Lcom/twitter/android/revenue/p;

.field private final p:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private q:Lcom/twitter/android/se;

.field private r:J

.field private s:Lcom/twitter/model/core/TwitterUser;

.field private t:Lcom/twitter/library/service/z;

.field private u:Z

.field private v:Lcom/twitter/android/platform/DeviceStorageLowReceiver;

.field private w:Z

.field private x:Lcom/twitter/android/hn;

.field private y:Lcom/twitter/android/timeline/cx;

.field private z:Lcom/twitter/android/timeline/dc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/twitter/android/TweetListFragment;-><init>()V

    .line 229
    new-instance v0, Lcom/twitter/android/rr;

    invoke-direct {v0, p0}, Lcom/twitter/android/rr;-><init>(Lcom/twitter/android/TimelineFragment;)V

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->p:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method private P()Z
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->v:Lcom/twitter/android/platform/DeviceStorageLowReceiver;

    invoke-virtual {v0}, Lcom/twitter/android/platform/DeviceStorageLowReceiver;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/TimelineFragment;->w:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Q()Lcom/twitter/library/client/l;
    .locals 5

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->ad:Lcom/twitter/library/client/l;

    if-eqz v0, :cond_0

    .line 1397
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->ad:Lcom/twitter/library/client/l;

    .line 1399
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/twitter/library/client/l;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    const-string/jumbo v4, "timeline"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;Lcom/twitter/android/vz;Lcom/twitter/android/sf;)Lcom/twitter/android/util/au;
    .locals 4

    .prologue
    .line 694
    instance-of v0, p0, Lcom/twitter/android/util/ay;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/twitter/android/rb;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 695
    check-cast v0, Lcom/twitter/android/util/ay;

    .line 696
    check-cast p2, Lcom/twitter/android/rb;

    .line 697
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aZ()Lcom/twitter/app/common/base/TwitterFragmentActivity;

    move-result-object v1

    .line 698
    invoke-interface {v0}, Lcom/twitter/android/util/ay;->t()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 699
    new-instance v2, Lcom/twitter/android/util/au;

    .line 700
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->S()Laro;

    move-result-object v3

    invoke-static {v3}, Larr;->a(Laro;)Lavh;

    move-result-object v3

    invoke-direct {v2, v1, p2, v0, v3}, Lcom/twitter/android/util/au;-><init>(Lcom/twitter/app/common/base/TwitterFragmentActivity;Lcvt;Lcom/twitter/android/util/ay;Lavh;)V

    .line 701
    if-eqz p1, :cond_0

    .line 702
    const-string/jumbo v1, "prompt_controller"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 703
    if-eqz v1, :cond_0

    .line 704
    invoke-virtual {v2, v1}, Lcom/twitter/android/util/au;->a(Landroid/os/Bundle;)V

    .line 707
    :cond_0
    invoke-virtual {p2, v2}, Lcom/twitter/android/rb;->a(Lcom/twitter/android/util/au;)V

    .line 708
    invoke-interface {v0, v2}, Lcom/twitter/android/util/ay;->a(Lcom/twitter/android/util/au;)V

    .line 709
    invoke-virtual {p3, v2}, Lcom/twitter/android/sf;->a(Lcom/twitter/android/util/au;)V

    move-object v0, v2

    .line 713
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/TimelineFragment;Lcom/twitter/refresh/widget/a;)Lcom/twitter/refresh/widget/a;
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/twitter/android/TimelineFragment;->F:Lcom/twitter/refresh/widget/a;

    return-object p1
.end method

.method private a(Landroid/view/View;Lcom/twitter/android/timeline/bp;)V
    .locals 2

    .prologue
    .line 1844
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/hu;

    .line 1845
    iget-object v0, v0, Lcom/twitter/android/hu;->a:Lcom/twitter/library/widget/InlineDismissView;

    .line 1846
    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->x:Lcom/twitter/android/hn;

    invoke-interface {v1, v0, p2}, Lcom/twitter/android/hn;->a(Lcom/twitter/library/widget/InlineDismissView;Lcom/twitter/android/timeline/bp;)V

    .line 1847
    return-void
.end method

.method private a(Landroid/widget/ListView;Landroid/view/View;Lcom/twitter/android/timeline/bp;I)V
    .locals 7

    .prologue
    const/4 v6, 0x6

    .line 1535
    instance-of v0, p3, Lcom/twitter/android/timeline/aq;

    if-eqz v0, :cond_0

    .line 1536
    invoke-static {p3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/aq;

    .line 1537
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/widget/GapView;

    .line 1540
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/GapView;->setSpinnerActive(Z)V

    .line 1541
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aP()Lcvt;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/vz;

    iget-wide v2, v0, Lcom/twitter/android/timeline/aq;->n:J

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/vz;->a(J)V

    .line 1544
    new-instance v1, Larv;

    iget-object v2, p0, Lcom/twitter/android/TimelineFragment;->a_:Landroid/content/Context;

    .line 1545
    invoke-virtual {p0, v6}, Lcom/twitter/android/TimelineFragment;->c(I)Laru;

    move-result-object v3

    iget-object v4, v0, Lcom/twitter/android/timeline/aq;->a:Lcom/twitter/model/timeline/ae;

    .line 1546
    invoke-virtual {v3, v4}, Laru;->a(Lcom/twitter/model/timeline/ae;)Laru;

    move-result-object v3

    iget-wide v4, v0, Lcom/twitter/android/timeline/aq;->b:J

    .line 1547
    invoke-virtual {v3, v4, v5}, Laru;->c(J)Laru;

    move-result-object v0

    .line 1548
    invoke-virtual {v0}, Laru;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lars;

    invoke-direct {v1, v2, v0}, Larv;-><init>(Landroid/content/Context;Lars;)V

    .line 1549
    invoke-virtual {v1}, Larv;->a()Lcom/twitter/library/service/b;

    move-result-object v0

    .line 1552
    const/4 v1, 0x0

    invoke-direct {p0, v6, v1, v0}, Lcom/twitter/android/TimelineFragment;->a(IZLcom/twitter/library/service/x;)Z

    .line 1557
    :goto_0
    return-void

    .line 1554
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->G:Lcom/twitter/android/TimelineItemClickHandler;

    iget v4, p0, Lcom/twitter/android/TimelineFragment;->K:I

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v5

    .line 1555
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aj()Lcom/twitter/android/ty;

    move-result-object v6

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    .line 1554
    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/TimelineItemClickHandler;->a(Landroid/view/View;Lcom/twitter/android/timeline/bp;IILcom/twitter/library/client/Session;Lcom/twitter/android/ty;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/TimelineFragment;Landroid/view/View;Lcom/twitter/android/timeline/bp;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/TimelineFragment;->a(Landroid/view/View;Lcom/twitter/android/timeline/bp;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/TimelineFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/twitter/android/TimelineFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/client/c;Lcom/twitter/library/client/bk;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/android/sn;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 0

    .prologue
    .line 152
    invoke-static/range {p0 .. p5}, Lcom/twitter/android/TimelineFragment;->b(Lcom/twitter/android/client/c;Lcom/twitter/library/client/bk;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/android/sn;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/client/c;Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 152
    invoke-static {p0, p1}, Lcom/twitter/android/TimelineFragment;->b(Lcom/twitter/android/client/c;Lcom/twitter/model/core/Tweet;)V

    return-void
.end method

.method static a(Lcom/twitter/library/widget/TweetView;Lcom/twitter/android/timeline/bf;II)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1881
    const v0, 0x7f13006e

    .line 1882
    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/TweetView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "unspecified"

    .line 1881
    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1884
    invoke-virtual {p1, v0, p2, p3}, Lcom/twitter/android/timeline/bf;->a(Ljava/lang/String;II)V

    .line 1885
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 933
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    invoke-direct {v0, v2, v3, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J[Ljava/lang/String;)V

    .line 934
    invoke-virtual {v0, p2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 935
    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->s:Lcom/twitter/model/core/TwitterUser;

    invoke-static {v0, v1}, Lcom/twitter/android/profiles/as;->a(Lcom/twitter/library/scribe/TwitterScribeLog;Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 936
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 937
    return-void
.end method

.method private a(IZLcom/twitter/library/service/x;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1159
    invoke-virtual {p0, p1}, Lcom/twitter/android/TimelineFragment;->a_(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1171
    :cond_0
    :goto_0
    return v0

    .line 1163
    :cond_1
    if-eqz p3, :cond_3

    .line 1164
    :goto_1
    if-eqz p3, :cond_0

    .line 1167
    if-eqz p2, :cond_2

    .line 1168
    const-string/jumbo v0, "Not triggered by a user action."

    invoke-virtual {p3, v0}, Lcom/twitter/library/service/x;->k(Ljava/lang/String;)Lcom/twitter/library/service/x;

    .line 1171
    :cond_2
    iget v0, p0, Lcom/twitter/android/TimelineFragment;->K:I

    invoke-virtual {p0, p3, v0, p1}, Lcom/twitter/android/TimelineFragment;->c(Lcom/twitter/library/service/x;II)Z

    move-result v0

    goto :goto_0

    .line 1163
    :cond_3
    invoke-virtual {p0, p1}, Lcom/twitter/android/TimelineFragment;->f(I)Lcom/twitter/library/service/x;

    move-result-object p3

    goto :goto_1
.end method

.method static synthetic a(Lcom/twitter/android/TimelineFragment;)Z
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aO()Z

    move-result v0

    return v0
.end method

.method public static a(ZI)Z
    .locals 1

    .prologue
    .line 779
    if-eqz p0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private an()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v0, 0x0

    .line 1660
    iget v1, p0, Lcom/twitter/android/TimelineFragment;->K:I

    sparse-switch v1, :sswitch_data_0

    .line 1711
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid status type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1663
    :sswitch_0
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->i()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    move-object v3, v1

    move-object v1, v0

    .line 1714
    :goto_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    .line 1715
    invoke-virtual {v0, v4}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 1716
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->c(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 1717
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 1718
    invoke-virtual {v0, v4}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 1714
    invoke-virtual {p0, v0}, Lcom/twitter/android/TimelineFragment;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 1719
    return-void

    .line 1669
    :sswitch_1
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->i()Ljava/lang/String;

    move-result-object v2

    .line 1670
    const-string/jumbo v1, "timeline"

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 1672
    goto :goto_0

    .line 1675
    :sswitch_2
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->i()Ljava/lang/String;

    move-result-object v2

    .line 1676
    const-string/jumbo v1, "highlights"

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 1678
    goto :goto_0

    .line 1681
    :sswitch_3
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->i()Ljava/lang/String;

    move-result-object v2

    .line 1682
    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->i:Ljava/lang/String;

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 1684
    goto :goto_0

    .line 1687
    :sswitch_4
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->i()Ljava/lang/String;

    move-result-object v2

    .line 1688
    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->i:Ljava/lang/String;

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 1690
    goto :goto_0

    .line 1693
    :sswitch_5
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->i()Ljava/lang/String;

    move-result-object v2

    .line 1694
    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->i:Ljava/lang/String;

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 1696
    goto :goto_0

    .line 1699
    :sswitch_6
    const-string/jumbo v2, "list"

    .line 1700
    const-string/jumbo v1, "tweets"

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 1702
    goto :goto_0

    .line 1705
    :sswitch_7
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->i()Ljava/lang/String;

    move-result-object v2

    .line 1706
    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->i:Ljava/lang/String;

    .line 1707
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->a:Ljava/lang/String;

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 1708
    goto :goto_0

    .line 1660
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x3 -> :sswitch_2
        0x8 -> :sswitch_1
        0x9 -> :sswitch_6
        0x1b -> :sswitch_7
        0x1c -> :sswitch_3
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic b(Lcom/twitter/android/TimelineFragment;)Lcvt;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aP()Lcvt;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/twitter/android/client/c;Lcom/twitter/library/client/bk;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/android/sn;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 6

    .prologue
    .line 1854
    new-instance v0, Lcom/twitter/android/rz;

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/rz;-><init>(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/bk;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/android/client/c;)V

    invoke-static {p2, v0}, Lcom/twitter/android/sn;->a(Landroid/support/v4/app/FragmentActivity;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1867
    return-void
.end method

.method private static b(Lcom/twitter/android/client/c;Lcom/twitter/model/core/Tweet;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1871
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 1872
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "instant_timeline"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v4, v1, v2

    const/4 v2, 0x2

    .line 1873
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->Y()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "tweet"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "dismiss"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1871
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1874
    iget v1, p1, Lcom/twitter/model/core/Tweet;->L:I

    iget-wide v2, p1, Lcom/twitter/model/core/Tweet;->K:J

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/c;->a(IJLjava/lang/String;Lcom/twitter/library/api/PromotedEvent;)V

    .line 1875
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 2060
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2062
    invoke-direct {p0, p1}, Lcom/twitter/android/TimelineFragment;->c(Ljava/lang/String;)J

    move-result-wide v2

    .line 2063
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 2065
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v4

    .line 2066
    iget-object v5, v4, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    .line 2067
    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v6

    move v0, v1

    .line 2068
    :goto_0
    if-ge v0, v6, :cond_1

    .line 2069
    invoke-virtual {v5, v0}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v8

    cmp-long v7, v8, v2

    if-nez v7, :cond_2

    .line 2071
    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 2072
    :cond_0
    invoke-virtual {v4, v0, v1}, Lcom/twitter/app/common/list/aa;->a(II)V

    .line 2079
    :cond_1
    return-void

    .line 2068
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private bg()Lcom/twitter/android/kn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/android/kn",
            "<",
            "Landroid/view/View;",
            "Lcom/twitter/android/timeline/bp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1818
    new-instance v0, Lcom/twitter/android/rx;

    invoke-direct {v0, p0}, Lcom/twitter/android/rx;-><init>(Lcom/twitter/android/TimelineFragment;)V

    return-object v0
.end method

.method private bh()Lcom/twitter/android/kn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/android/kn",
            "<",
            "Landroid/view/View;",
            "Lcom/twitter/android/timeline/bp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1831
    new-instance v0, Lcom/twitter/android/ry;

    invoke-direct {v0, p0}, Lcom/twitter/android/ry;-><init>(Lcom/twitter/android/TimelineFragment;)V

    return-object v0
.end method

.method private c(II)J
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 1256
    if-nez p1, :cond_1

    .line 1303
    :cond_0
    :goto_0
    :pswitch_0
    return-wide v0

    .line 1259
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 1306
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid fetch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1262
    :pswitch_2
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->Y()Lcom/twitter/android/timeline/br;

    move-result-object v3

    .line 1263
    invoke-static {v3}, Lcmk;->a(Lcmf;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1264
    invoke-virtual {v3}, Lcom/twitter/android/timeline/br;->bb_()I

    move-result v4

    .line 1265
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_0

    .line 1266
    invoke-virtual {v3, v2}, Lcom/twitter/android/timeline/br;->g(I)I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 1267
    invoke-virtual {v3, v2}, Lcom/twitter/android/timeline/br;->e(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1268
    invoke-virtual {v3, v2}, Lcom/twitter/android/timeline/br;->f(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1265
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1277
    :cond_3
    packed-switch p1, :pswitch_data_1

    .line 1295
    :cond_4
    invoke-virtual {v3, v2}, Lcom/twitter/android/timeline/br;->b(I)J

    move-result-wide v0

    goto :goto_0

    .line 1280
    :pswitch_3
    invoke-virtual {v3, v2}, Lcom/twitter/android/timeline/br;->j(I)I

    move-result v5

    .line 1281
    invoke-static {v5}, Lcom/twitter/model/timeline/bg;->f(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1282
    invoke-static {v5}, Lcom/twitter/model/timeline/bg;->d(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1284
    :cond_5
    invoke-static {v5}, Lcom/twitter/model/timeline/bg;->i(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1285
    invoke-static {v5}, Lcom/twitter/model/timeline/bg;->r(I)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 1259
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1277
    :pswitch_data_1
    .packed-switch 0x1c
        :pswitch_3
    .end packed-switch
.end method

.method private c(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 2094
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->Y()Lcom/twitter/android/timeline/br;

    move-result-object v1

    .line 2095
    if-eqz v1, :cond_1

    .line 2096
    invoke-virtual {v1}, Lcom/twitter/android/timeline/br;->bb_()I

    move-result v2

    .line 2097
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 2098
    invoke-virtual {v1, v0}, Lcom/twitter/android/timeline/br;->i(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/twitter/util/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2099
    invoke-virtual {v1, v0}, Lcom/twitter/android/timeline/br;->d(I)J

    move-result-wide v0

    .line 2103
    :goto_1
    return-wide v0

    .line 2097
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2103
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method static synthetic c(Lcom/twitter/android/TimelineFragment;)Lcom/twitter/android/util/au;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->ac:Lcom/twitter/android/util/au;

    return-object v0
.end method

.method private c(J)V
    .locals 5

    .prologue
    .line 1621
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v0

    .line 1622
    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->j:Lcom/twitter/android/vs;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1623
    invoke-virtual {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string/jumbo v3, "stream::results"

    aput-object v3, v2, v0

    .line 1622
    invoke-static {v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, p2, v0}, Lcom/twitter/android/vs;->a(JLjava/lang/String;)V

    .line 1624
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->k:Laap;

    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-interface {v0, p1, p2, v2, v3}, Laap;->a(JJ)V

    .line 1625
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->E:Lcom/twitter/android/sk;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/sk;->b(J)V

    .line 1626
    return-void
.end method

.method private d(II)J
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 1347
    if-nez p1, :cond_0

    .line 1358
    :goto_0
    :pswitch_0
    return-wide v0

    .line 1350
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1361
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid fetch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1358
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/twitter/android/TimelineFragment;->j(I)J

    move-result-wide v0

    goto :goto_0

    .line 1350
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Lcom/twitter/android/TimelineFragment;)Lcom/twitter/android/hn;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->x:Lcom/twitter/android/hn;

    return-object v0
.end method

.method private d(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "last_account_server_fetch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/TimelineFragment;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/android/TimelineFragment;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/twitter/android/TimelineFragment;)Lcom/twitter/android/sk;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->E:Lcom/twitter/android/sk;

    return-object v0
.end method

.method private p(I)I
    .locals 1

    .prologue
    .line 1230
    packed-switch p1, :pswitch_data_0

    .line 1239
    const/16 v0, 0x28

    :goto_0
    return v0

    .line 1233
    :pswitch_0
    const/16 v0, 0x64

    goto :goto_0

    .line 1236
    :pswitch_1
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->O()I

    move-result v0

    goto :goto_0

    .line 1230
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private u()J
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->s:Lcom/twitter/model/core/TwitterUser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->s:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private v()V
    .locals 3

    .prologue
    .line 1038
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->S()Laro;

    move-result-object v0

    invoke-static {v0}, Larr;->a(Laro;)Lavh;

    move-result-object v0

    iget-object v0, v0, Lavh;->a:Landroid/net/Uri;

    .line 1039
    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->a_:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1040
    return-void
.end method


# virtual methods
.method protected A()Z
    .locals 1

    .prologue
    .line 1758
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->m()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TimelineFragment;->h(I)Z

    move-result v0

    return v0
.end method

.method protected C()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->c:Lcom/twitter/android/metrics/b;

    invoke-virtual {v0}, Lcom/twitter/android/metrics/b;->j()V

    .line 390
    return-void
.end method

.method protected F()I
    .locals 1

    .prologue
    .line 385
    const/16 v0, 0x190

    return v0
.end method

.method protected H()Lcom/twitter/model/timeline/bu;
    .locals 1

    .prologue
    .line 789
    sget-object v0, Lcom/twitter/model/timeline/bu;->a:Lcom/twitter/model/timeline/bu;

    return-object v0
.end method

.method protected O()I
    .locals 1

    .prologue
    .line 1245
    const/4 v0, 0x0

    return v0
.end method

.method protected Q_()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1411
    iget v0, p0, Lcom/twitter/android/TimelineFragment;->K:I

    .line 1412
    sparse-switch v0, :sswitch_data_0

    .line 1424
    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->Q_()V

    .line 1428
    :goto_0
    return-void

    .line 1417
    :sswitch_0
    invoke-direct {p0}, Lcom/twitter/android/TimelineFragment;->Q()Lcom/twitter/library/client/l;

    move-result-object v1

    .line 1418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tweet_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v4, v5}, Lcom/twitter/library/client/l;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/android/TimelineFragment;->e:J

    .line 1419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "off_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lcom/twitter/library/client/l;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/TimelineFragment;->d:I

    .line 1420
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->Z()Lcom/twitter/refresh/widget/a;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/twitter/android/TimelineFragment;->a(Lcom/twitter/refresh/widget/a;Z)V

    goto :goto_0

    .line 1412
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method protected S()Laro;
    .locals 4

    .prologue
    .line 308
    new-instance v0, Larq;

    invoke-direct {v0}, Larq;-><init>()V

    iget v1, p0, Lcom/twitter/android/TimelineFragment;->m:I

    .line 309
    invoke-virtual {v0, v1}, Larq;->a(I)Larq;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/TimelineFragment;->r:J

    .line 310
    invoke-virtual {v0, v2, v3}, Larq;->a(J)Larq;

    move-result-object v0

    .line 311
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Larq;->b(J)Larq;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/TimelineFragment;->aa:J

    .line 312
    invoke-virtual {v0, v2, v3}, Larq;->c(J)Larq;

    move-result-object v0

    .line 313
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->o()Lcom/twitter/android/timeline/bm;

    move-result-object v1

    const-string/jumbo v2, "is_me"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/timeline/bm;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Larq;->a(Z)Larq;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->a:Ljava/lang/String;

    .line 314
    invoke-virtual {v0, v1}, Larq;->a(Ljava/lang/String;)Larq;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Larq;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laro;

    .line 308
    return-object v0
.end method

.method protected T()Lcom/twitter/android/vs;
    .locals 6

    .prologue
    .line 556
    new-instance v0, Lcom/twitter/android/vt;

    invoke-direct {v0}, Lcom/twitter/android/vt;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v2

    iget v3, p0, Lcom/twitter/android/TimelineFragment;->K:I

    iget-object v4, p0, Lcom/twitter/android/TimelineFragment;->L:Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 557
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v5

    .line 556
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/vt;->a(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;ILcom/twitter/library/scribe/TwitterScribeItem;Lcom/twitter/library/client/bk;)Lcom/twitter/android/vs;

    move-result-object v0

    return-object v0
.end method

.method protected U()Laap;
    .locals 3

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/TimelineFragment;->L:Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-static {v0, v1, v2}, Laaq;->a(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/ScribeItem;)Laap;

    move-result-object v0

    return-object v0
.end method

.method protected V()Lcom/twitter/android/sn;
    .locals 6

    .prologue
    .line 614
    new-instance v0, Lcom/twitter/android/sb;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/TimelineFragment;->l:Lcom/twitter/android/revenue/d;

    iget-object v4, p0, Lcom/twitter/android/TimelineFragment;->g:Lcom/twitter/android/timeline/bf;

    iget v5, p0, Lcom/twitter/android/TimelineFragment;->m:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/sb;-><init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/android/revenue/d;Lcom/twitter/android/timeline/bf;I)V

    return-object v0
.end method

.method W_()Z
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->D:Lcom/twitter/ui/view/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->D:Lcom/twitter/ui/view/s;

    iget-boolean v0, v0, Lcom/twitter/ui/view/s;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected X()V
    .locals 1

    .prologue
    .line 1043
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aD()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/TimelineFragment;->h(I)Z

    .line 1045
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/TimelineFragment;->b:Z

    .line 1047
    :cond_0
    return-void
.end method

.method public Y()Lcom/twitter/android/timeline/br;
    .locals 1

    .prologue
    .line 1336
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vz;

    invoke-virtual {v0}, Lcom/twitter/android/vz;->g()Lcom/twitter/android/timeline/br;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/br;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected Z()Lcom/twitter/refresh/widget/a;
    .locals 5

    .prologue
    .line 1391
    new-instance v0, Lcom/twitter/refresh/widget/a;

    const/4 v1, -0x1

    iget-wide v2, p0, Lcom/twitter/android/TimelineFragment;->e:J

    iget v4, p0, Lcom/twitter/android/TimelineFragment;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/refresh/widget/a;-><init>(IJI)V

    return-object v0
.end method

.method protected a(Lcom/twitter/app/common/base/TwitterFragmentActivity;Lcom/twitter/android/vw;ZZ)Lcom/twitter/android/rb;
    .locals 26

    .prologue
    .line 797
    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/TimelineFragment;->bg()Lcom/twitter/android/kn;

    move-result-object v20

    .line 798
    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/TimelineFragment;->bh()Lcom/twitter/android/kn;

    move-result-object v21

    .line 799
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/TimelineFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v12

    .line 800
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/android/TimelineFragment;->D:Lcom/twitter/ui/view/s;

    sget-object v2, Lcom/twitter/library/widget/TweetView;->c:Lcom/twitter/ui/view/s;

    invoke-static {v1, v2}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/twitter/ui/view/s;

    .line 802
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/TimelineFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 803
    new-instance v1, Lcom/twitter/android/rb;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/twitter/android/TimelineFragment;->K:I

    new-instance v6, Lcom/twitter/android/timeline/ax;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/twitter/android/TimelineFragment;->m:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/TimelineFragment;->g:Lcom/twitter/android/timeline/bf;

    invoke-direct {v6, v4, v5}, Lcom/twitter/android/timeline/ax;-><init>(ILcom/twitter/android/timeline/bf;)V

    new-instance v7, Lcom/twitter/android/timeline/an;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/twitter/android/TimelineFragment;->m:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/TimelineFragment;->g:Lcom/twitter/android/timeline/bf;

    invoke-direct {v7, v4, v5}, Lcom/twitter/android/timeline/an;-><init>(ILcom/twitter/android/timeline/bf;)V

    new-instance v8, Lcom/twitter/android/timeline/ct;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/twitter/android/TimelineFragment;->m:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/TimelineFragment;->g:Lcom/twitter/android/timeline/bf;

    invoke-direct {v8, v4, v5}, Lcom/twitter/android/timeline/ct;-><init>(ILcom/twitter/android/timeline/bf;)V

    new-instance v9, Lcom/twitter/android/ys;

    .line 809
    invoke-static/range {p1 .. p1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/TimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/android/TimelineFragment;->f:Lcom/twitter/library/util/FriendshipCache;

    invoke-direct {v9, v4, v5, v10, v12}, Lcom/twitter/android/ys;-><init>(Lcom/twitter/library/client/bd;Lcom/twitter/library/client/Session;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    new-instance v10, Lcom/twitter/android/si;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/TimelineFragment;->ab:Lcom/twitter/library/client/bd;

    .line 811
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v5

    invoke-direct {v10, v2, v4, v5, v12}, Lcom/twitter/android/si;-><init>(Landroid/content/Context;Lcom/twitter/library/client/bd;Lcom/twitter/library/client/bk;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/twitter/android/TimelineFragment;->f:Lcom/twitter/library/util/FriendshipCache;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/twitter/android/TimelineFragment;->y:Lcom/twitter/android/timeline/cx;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/twitter/android/TimelineFragment;->z:Lcom/twitter/android/timeline/dc;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/TimelineFragment;->A:Lcom/twitter/android/timeline/ay;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/TimelineFragment;->B:Lcom/twitter/android/timeline/ae;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/TimelineFragment;->I:Lcom/twitter/android/sn;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/TimelineFragment;->l:Lcom/twitter/android/revenue/d;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/TimelineFragment;->o:Lcom/twitter/android/revenue/p;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/TimelineFragment;->X:Lcom/twitter/android/av/s;

    move-object/from16 v24, v0

    .line 817
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/TimelineFragment;->H()Lcom/twitter/model/timeline/bu;

    move-result-object v25

    move-object/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p2

    move/from16 v13, p4

    invoke-direct/range {v1 .. v25}, Lcom/twitter/android/rb;-><init>(Lcom/twitter/app/common/base/TwitterFragmentActivity;IZLcom/twitter/library/view/aa;Lcom/twitter/android/timeline/ax;Lcom/twitter/android/timeline/an;Lcom/twitter/android/timeline/ct;Lcom/twitter/android/ys;Lcom/twitter/android/si;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/library/scribe/TwitterScribeAssociation;ZLcom/twitter/android/timeline/cx;Lcom/twitter/android/timeline/dc;Lcom/twitter/android/timeline/ay;Lcom/twitter/android/timeline/ae;Lcom/twitter/android/sn;Lcom/twitter/ui/view/s;Lcom/twitter/android/kn;Lcom/twitter/android/kn;Lcom/twitter/android/revenue/d;Lcom/twitter/android/revenue/p;Lcom/twitter/android/av/ae;Lcom/twitter/model/timeline/bu;)V

    .line 819
    const/16 v2, 0x1c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/twitter/android/TimelineFragment;->K:I

    if-eq v2, v3, :cond_0

    .line 820
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/TimelineFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v2

    iget-object v2, v2, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 822
    :cond_0
    return-object v1
.end method

.method protected a(Lcom/twitter/app/common/base/TwitterFragmentActivity;Lcom/twitter/android/vw;Z)Lcom/twitter/android/vz;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 722
    iget-boolean v0, p0, Lcom/twitter/android/TimelineFragment;->n:Z

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/twitter/android/TimelineFragment;->a(Lcom/twitter/app/common/base/TwitterFragmentActivity;Lcom/twitter/android/vw;ZZ)Lcom/twitter/android/rb;

    move-result-object v0

    .line 743
    :goto_0
    return-object v0

    .line 725
    :cond_0
    iget v0, p0, Lcom/twitter/android/TimelineFragment;->K:I

    sparse-switch v0, :sswitch_data_0

    .line 737
    iget v0, p0, Lcom/twitter/android/TimelineFragment;->K:I

    invoke-static {p3, v0}, Lcom/twitter/android/TimelineFragment;->a(ZI)Z

    move-result v0

    .line 738
    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/TimelineFragment;->b(Lcom/twitter/app/common/base/TwitterFragmentActivity;Lcom/twitter/android/vw;Z)Lcom/twitter/android/vz;

    move-result-object v0

    goto :goto_0

    .line 732
    :sswitch_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/twitter/android/TimelineFragment;->a(Lcom/twitter/app/common/base/TwitterFragmentActivity;Lcom/twitter/android/vw;ZZ)Lcom/twitter/android/rb;

    move-result-object v0

    goto :goto_0

    .line 725
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
        0x1b -> :sswitch_0
        0x1c -> :sswitch_0
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method protected a()V
    .locals 4

    .prologue
    .line 855
    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->a()V

    .line 857
    iget-wide v0, p0, Lcom/twitter/android/TimelineFragment;->aa:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aS()Z

    move-result v0

    if-nez v0, :cond_1

    .line 859
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->X()V

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->ab:Lcom/twitter/library/client/bd;

    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->t:Lcom/twitter/library/service/z;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/z;)V

    .line 863
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->k:Laap;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    iget-object v1, v1, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-interface {v0, v1}, Laap;->a(Landroid/widget/ListView;)V

    .line 864
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->o:Lcom/twitter/android/revenue/p;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/p;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 865
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->af_()V

    .line 867
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->o:Lcom/twitter/android/revenue/p;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/p;->b()V

    .line 868
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->q:Lcom/twitter/android/se;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bj;)V

    .line 869
    return-void
.end method

.method protected a(I)V
    .locals 0

    .prologue
    .line 1761
    return-void
.end method

.method protected a(JJ)V
    .locals 1

    .prologue
    .line 1001
    invoke-super {p0, p1, p2, p3, p4}, Lcom/twitter/android/TweetListFragment;->a(JJ)V

    .line 1002
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->c:Lcom/twitter/android/metrics/b;

    invoke-virtual {v0}, Lcom/twitter/android/metrics/b;->k()V

    .line 1003
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/TimelineFragment;->c(J)V

    .line 1004
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->E:Lcom/twitter/android/sk;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/sk;->a(J)V

    .line 1005
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->j:Lcom/twitter/android/vs;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/vs;->a(J)V

    .line 1006
    return-void
.end method

.method public a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 748
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/TweetListFragment;->a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Landroid/os/Bundle;)V

    .line 749
    if-eqz p2, :cond_1

    .line 751
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->j:Lcom/twitter/android/vs;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/vs;->b(Lcom/twitter/model/core/Tweet;Landroid/os/Bundle;)V

    .line 752
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->k:Laap;

    invoke-interface {v0, p1, p2}, Laap;->a(Landroid/view/View;Lcom/twitter/model/core/Tweet;)V

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    if-nez p2, :cond_0

    const-string/jumbo v0, "ad_slot_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->j:Lcom/twitter/android/vs;

    invoke-virtual {v0, p3}, Lcom/twitter/android/vs;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 152
    check-cast p2, Lcom/twitter/model/core/Tweet;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/TimelineFragment;->a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 1561
    invoke-super/range {p0 .. p5}, Lcom/twitter/android/TweetListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1562
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/bp;

    .line 1563
    if-eqz v0, :cond_0

    .line 1564
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/twitter/android/TimelineFragment;->a(Landroid/widget/ListView;Landroid/view/View;Lcom/twitter/android/timeline/bp;I)V

    .line 1566
    :cond_0
    return-void
.end method

.method public a(Lbtz;)V
    .locals 1

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbtz;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vz;

    invoke-virtual {v0}, Lcom/twitter/android/vz;->notifyDataSetChanged()V

    .line 422
    :cond_0
    return-void
.end method

.method public a(Lbuc;)V
    .locals 0

    .prologue
    .line 426
    return-void
.end method

.method public a(Lbus;)V
    .locals 6

    .prologue
    .line 429
    invoke-virtual {p1}, Lbus;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 430
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 439
    :cond_0
    return-void

    .line 433
    :cond_1
    invoke-virtual {p1}, Lbus;->e()Ljava/util/HashMap;

    move-result-object v0

    .line 434
    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->f:Lcom/twitter/library/util/FriendshipCache;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 435
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 436
    iget-object v3, p0, Lcom/twitter/android/TimelineFragment;->f:Lcom/twitter/library/util/FriendshipCache;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v4, v5, v0}, Lcom/twitter/library/util/FriendshipCache;->c(JI)V

    goto :goto_0
.end method

.method protected a(Lcmf;)V
    .locals 2
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
    .line 369
    iget-boolean v0, p0, Lcom/twitter/android/TimelineFragment;->ae:Z

    if-nez v0, :cond_0

    .line 370
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->a(Lcmf;)V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->c:Lcom/twitter/android/metrics/b;

    invoke-virtual {v0}, Lcom/twitter/android/metrics/b;->aU_()V

    .line 373
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->Y:Lcom/twitter/app/common/list/a;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/a;->a(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->C()V

    .line 378
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/TimelineFragment;->b:Z

    .line 379
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->c:Lcom/twitter/android/metrics/b;

    invoke-virtual {v0}, Lcom/twitter/android/metrics/b;->f()V

    goto :goto_0
.end method

.method protected a(Lcom/twitter/app/common/inject/v;)V
    .locals 2

    .prologue
    .line 336
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->a(Lcom/twitter/app/common/inject/v;)V

    .line 337
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/aa;

    .line 338
    new-instance v1, Lcom/twitter/android/rs;

    invoke-direct {v1, p0}, Lcom/twitter/android/rs;-><init>(Lcom/twitter/android/TimelineFragment;)V

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/aa;->a(Lcom/twitter/app/common/list/af;)V

    .line 356
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1194
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/TweetListFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 1195
    iget v0, p0, Lcom/twitter/android/TimelineFragment;->K:I

    if-nez v0, :cond_0

    if-ne p3, v6, :cond_0

    .line 1196
    const-string/jumbo v0, "home:refresh"

    .line 1197
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aX()Layj;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/android/TimelineFragment;->aa:J

    sget-object v4, Laxz;->n:Laye;

    .line 1196
    invoke-static {v0, v1, v2, v3, v4}, Lcom/twitter/library/metrics/f;->b(Ljava/lang/String;Layj;JLaye;)Lcom/twitter/library/metrics/f;

    move-result-object v0

    .line 1199
    invoke-virtual {v0}, Lcom/twitter/library/metrics/f;->j()V

    .line 1201
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    if-ne p3, v0, :cond_1

    .line 1202
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vz;

    .line 1203
    invoke-virtual {v0}, Lcom/twitter/android/vz;->f()V

    .line 1204
    invoke-virtual {v0}, Lcom/twitter/android/vz;->notifyDataSetChanged()V

    .line 1207
    :cond_1
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 1208
    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->c:Lcom/twitter/android/metrics/b;

    invoke-virtual {v1}, Lcom/twitter/android/metrics/b;->g()V

    .line 1209
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->C()V

    .line 1210
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1211
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v1

    const/16 v2, 0x191

    if-ne v1, v2, :cond_5

    .line 1212
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->a_:Landroid/content/Context;

    const v1, 0x7f0a0912

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1218
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->ac:Lcom/twitter/android/util/au;

    if-eqz v0, :cond_4

    if-eq p3, v6, :cond_3

    const/4 v0, 0x4

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-ne p3, v0, :cond_4

    .line 1220
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->ac:Lcom/twitter/android/util/au;

    invoke-virtual {v0, p2}, Lcom/twitter/android/util/au;->a(I)V

    .line 1222
    :cond_4
    return-void

    .line 1213
    :cond_5
    iget-object v0, v0, Lcom/twitter/library/service/aa;->c:Landroid/os/Bundle;

    const-string/jumbo v1, "cancelled_no_messaging_required"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1214
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->a_:Landroid/content/Context;

    invoke-virtual {p0, p2, p3}, Lcom/twitter/android/TimelineFragment;->b(II)I

    move-result v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 1031
    invoke-direct {p0}, Lcom/twitter/android/TimelineFragment;->v()V

    .line 1032
    return-void
.end method

.method public a(Lcom/twitter/model/core/TwitterUser;)V
    .locals 2

    .prologue
    .line 1009
    iget-wide v0, p1, Lcom/twitter/model/core/TwitterUser;->c:J

    iput-wide v0, p0, Lcom/twitter/android/TimelineFragment;->aa:J

    .line 1010
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->X()V

    .line 1011
    return-void
.end method

.method protected a(Lcom/twitter/refresh/widget/a;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1478
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    .line 1479
    iget-wide v2, p1, Lcom/twitter/refresh/widget/a;->c:J

    .line 1480
    iget v1, p0, Lcom/twitter/android/TimelineFragment;->K:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/twitter/android/TimelineFragment;->K:I

    const/16 v4, 0x1c

    if-ne v1, v4, :cond_2

    :cond_0
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 1483
    invoke-virtual {v0, v6, v6}, Lcom/twitter/app/common/list/aa;->a(II)V

    .line 1493
    :cond_1
    :goto_0
    return-void

    .line 1484
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 1485
    invoke-virtual {p0, v2, v3}, Lcom/twitter/android/TimelineFragment;->a(J)I

    move-result v1

    .line 1489
    iget-object v2, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    if-nez p2, :cond_1

    .line 1490
    :cond_3
    iget v2, p1, Lcom/twitter/refresh/widget/a;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/twitter/app/common/list/aa;->a(II)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/ui/view/s;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/twitter/android/TimelineFragment;->D:Lcom/twitter/ui/view/s;

    .line 304
    return-void
.end method

.method protected a(Z)V
    .locals 1

    .prologue
    .line 761
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->a(Z)V

    .line 762
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->j:Lcom/twitter/android/vs;

    invoke-virtual {v0}, Lcom/twitter/android/vs;->a()V

    .line 763
    return-void
.end method

.method public a(JLcom/twitter/model/core/Tweet;Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 1022
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    .line 1022
    invoke-static {v0, p1, p2, p3, p4}, Lcom/twitter/android/vz;->a(Landroid/widget/ListView;JLcom/twitter/model/core/Tweet;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/widget/AbsListView;I)Z
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->k:Laap;

    invoke-interface {v0, p2}, Laap;->a(I)V

    .line 774
    invoke-super {p0, p1, p2}, Lcom/twitter/android/TweetListFragment;->a(Landroid/widget/AbsListView;I)Z

    move-result v0

    return v0
.end method

.method protected a_(I)Z
    .locals 1

    .prologue
    .line 1179
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->a_(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/twitter/util/telephony/TelephonyUtil;->i()Lcom/twitter/util/telephony/TelephonyUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/util/telephony/TelephonyUtil;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected aa()V
    .locals 2

    .prologue
    .line 1432
    iget v0, p0, Lcom/twitter/android/TimelineFragment;->K:I

    .line 1433
    sparse-switch v0, :sswitch_data_0

    .line 1445
    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->aa()V

    .line 1449
    :goto_0
    return-void

    .line 1438
    :sswitch_0
    invoke-direct {p0}, Lcom/twitter/android/TimelineFragment;->Q()Lcom/twitter/library/client/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/n;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 1439
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/twitter/android/TimelineFragment;->e:J

    .line 1440
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/TimelineFragment;->d:I

    .line 1441
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->F:Lcom/twitter/refresh/widget/a;

    goto :goto_0

    .line 1433
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method protected ab()V
    .locals 6

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->F:Lcom/twitter/refresh/widget/a;

    if-nez v0, :cond_0

    .line 1474
    :goto_0
    return-void

    .line 1455
    :cond_0
    iget v0, p0, Lcom/twitter/android/TimelineFragment;->K:I

    .line 1458
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1463
    :sswitch_0
    invoke-direct {p0}, Lcom/twitter/android/TimelineFragment;->Q()Lcom/twitter/library/client/l;

    move-result-object v1

    .line 1464
    invoke-virtual {v1}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tweet_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/TimelineFragment;->F:Lcom/twitter/refresh/widget/a;

    iget-wide v4, v3, Lcom/twitter/refresh/widget/a;->c:J

    .line 1465
    invoke-virtual {v1, v2, v4, v5}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;J)Lcom/twitter/library/client/n;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "off_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/TimelineFragment;->F:Lcom/twitter/refresh/widget/a;

    iget v2, v2, Lcom/twitter/refresh/widget/a;->d:I

    .line 1466
    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;I)Lcom/twitter/library/client/n;

    move-result-object v0

    .line 1467
    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    goto :goto_0

    .line 1458
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method protected ac()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1630
    iget v0, p0, Lcom/twitter/android/TimelineFragment;->K:I

    sparse-switch v0, :sswitch_data_0

    .line 1651
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1633
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "::tweet:link:open_link"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1636
    :sswitch_1
    const-string/jumbo v0, "profile::tweet:link:open_link"

    goto :goto_0

    .line 1639
    :sswitch_2
    const-string/jumbo v0, "favorites::tweet:link:open_link"

    goto :goto_0

    .line 1642
    :sswitch_3
    const-string/jumbo v0, "connect:mentions:tweet:link:open_link"

    goto :goto_0

    .line 1645
    :sswitch_4
    const-string/jumbo v0, "connect:mentions_filtered:tweet:link:open_link"

    goto :goto_0

    .line 1648
    :sswitch_5
    const-string/jumbo v0, "connect:mentions_following:tweet:link:open_link"

    goto :goto_0

    .line 1630
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5 -> :sswitch_3
        0x17 -> :sswitch_4
        0x18 -> :sswitch_5
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method public ad()Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 1

    .prologue
    .line 1730
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v0

    return-object v0
.end method

.method protected ae()J
    .locals 4

    .prologue
    .line 1739
    const-string/jumbo v0, "timeline_auto_refresh_on_foreground_timeout_millis"

    const-wide/32 v2, 0xea60

    invoke-static {v0, v2, v3}, Lcom/twitter/config/d;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1742
    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected ae_()V
    .locals 2

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aP()Lcvt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 836
    return-void
.end method

.method protected af()Lcom/twitter/app/common/list/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/app/common/list/f",
            "<",
            "Lcom/twitter/android/timeline/bp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1772
    new-instance v0, Lcom/twitter/android/rw;

    invoke-direct {v0, p0, p0}, Lcom/twitter/android/rw;-><init>(Lcom/twitter/android/TimelineFragment;Lcom/twitter/app/common/list/h;)V

    return-object v0
.end method

.method public af_()V
    .locals 1

    .prologue
    .line 1329
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1330
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vz;

    invoke-virtual {v0}, Lcom/twitter/android/vz;->notifyDataSetChanged()V

    .line 1332
    :cond_0
    return-void
.end method

.method ag()V
    .locals 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1789
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 1790
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1791
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1792
    invoke-direct {p0, v0, v1}, Lcom/twitter/android/TimelineFragment;->d(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v4

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1793
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1794
    return-void
.end method

.method ah()Z
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1803
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->am()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->ae()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method ai()Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 2112
    iget v0, p0, Lcom/twitter/android/TimelineFragment;->m:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/twitter/android/TimelineFragment;->m:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected aj()Lcom/twitter/android/ty;
    .locals 4

    .prologue
    .line 2117
    new-instance v0, Lcom/twitter/android/ty;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/android/ty;-><init>(Landroid/content/Context;)V

    .line 2118
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aM()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/ty;->a(Z)Lcom/twitter/android/ty;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/TimelineFragment;->r:J

    .line 2119
    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/ty;->a(J)Lcom/twitter/android/ty;

    move-result-object v0

    .line 2120
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/ty;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/android/ty;

    move-result-object v0

    .line 2121
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aU()Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/ty;->a(Lcom/twitter/library/scribe/TwitterScribeItem;)Lcom/twitter/android/ty;

    move-result-object v0

    .line 2117
    return-object v0
.end method

.method public ak()Z
    .locals 1

    .prologue
    .line 2155
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public al()Z
    .locals 1

    .prologue
    .line 2160
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public am()J
    .locals 6

    .prologue
    .line 2166
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 2167
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2168
    invoke-direct {p0, v0, v1}, Lcom/twitter/android/TimelineFragment;->d(J)Ljava/lang/String;

    move-result-object v0

    .line 2169
    const-wide/16 v4, 0x0

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected b(II)I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 1226
    const v0, 0x7f0a0903

    return v0
.end method

.method protected b(Lcom/twitter/app/common/base/TwitterFragmentActivity;Lcom/twitter/android/vw;Z)Lcom/twitter/android/vz;
    .locals 6

    .prologue
    .line 830
    new-instance v0, Lcom/twitter/android/vz;

    iget-object v4, p0, Lcom/twitter/android/TimelineFragment;->f:Lcom/twitter/library/util/FriendshipCache;

    .line 831
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v5

    move-object v1, p1

    move v2, p3

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/vz;-><init>(Lcom/twitter/app/common/base/TwitterFragmentActivity;ZLcom/twitter/library/view/aa;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 830
    return-object v0
.end method

.method protected b(Lcom/twitter/library/service/x;II)V
    .locals 5

    .prologue
    .line 1184
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/TweetListFragment;->b(Lcom/twitter/library/service/x;II)V

    .line 1185
    iget v0, p0, Lcom/twitter/android/TimelineFragment;->K:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 1186
    const-string/jumbo v0, "home:refresh"

    .line 1187
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aX()Layj;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/android/TimelineFragment;->aa:J

    sget-object v4, Laxz;->n:Laye;

    .line 1186
    invoke-static {v0, v1, v2, v3, v4}, Lcom/twitter/library/metrics/f;->b(Ljava/lang/String;Layj;JLaye;)Lcom/twitter/library/metrics/f;

    move-result-object v0

    .line 1188
    invoke-virtual {v0}, Lcom/twitter/library/metrics/f;->i()V

    .line 1190
    :cond_0
    return-void
.end method

.method protected c(I)Laru;
    .locals 4

    .prologue
    .line 1109
    new-instance v0, Laru;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-direct {v0, v1}, Laru;-><init>(Lcom/twitter/library/client/Session;)V

    iget v1, p0, Lcom/twitter/android/TimelineFragment;->m:I

    .line 1110
    invoke-virtual {v0, v1}, Laru;->a(I)Laru;

    move-result-object v0

    .line 1111
    invoke-virtual {v0, p1}, Laru;->b(I)Laru;

    move-result-object v0

    .line 1112
    invoke-direct {p0, p1}, Lcom/twitter/android/TimelineFragment;->p(I)I

    move-result v1

    invoke-virtual {v0, v1}, Laru;->c(I)Laru;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/TimelineFragment;->K:I

    .line 1113
    invoke-direct {p0, v1, p1}, Lcom/twitter/android/TimelineFragment;->c(II)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Laru;->a(J)Laru;

    move-result-object v0

    .line 1114
    invoke-virtual {p0, p1}, Lcom/twitter/android/TimelineFragment;->i(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Laru;->b(J)Laru;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/TimelineFragment;->aa:J

    .line 1115
    invoke-virtual {v0, v2, v3}, Laru;->d(J)Laru;

    move-result-object v0

    .line 1116
    invoke-virtual {p0, p1}, Lcom/twitter/android/TimelineFragment;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laru;->a(Ljava/lang/String;)Laru;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->a:Ljava/lang/String;

    .line 1117
    invoke-virtual {v0, v1}, Laru;->b(Ljava/lang/String;)Laru;

    move-result-object v0

    .line 1118
    invoke-virtual {p0, p1}, Lcom/twitter/android/TimelineFragment;->k(I)I

    move-result v1

    invoke-virtual {v0, v1}, Laru;->d(I)Laru;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->l:Lcom/twitter/android/revenue/d;

    .line 1119
    invoke-virtual {v0, v1}, Laru;->a(Lcom/twitter/android/revenue/d;)Laru;

    move-result-object v0

    .line 1123
    iget-boolean v1, p0, Lcom/twitter/android/TimelineFragment;->n:Z

    if-eqz v1, :cond_0

    .line 1124
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->Y()Lcom/twitter/android/timeline/br;

    move-result-object v1

    .line 1125
    if-eqz v1, :cond_0

    .line 1126
    invoke-virtual {v1}, Lcom/twitter/android/timeline/br;->d()Lcom/twitter/android/timeline/cp;

    move-result-object v2

    invoke-virtual {v0, v2}, Laru;->a(Lcom/twitter/android/timeline/cp;)Laru;

    .line 1127
    invoke-virtual {v1}, Lcom/twitter/android/timeline/br;->e()Lcom/twitter/android/timeline/cp;

    move-result-object v1

    invoke-virtual {v0, v1}, Laru;->b(Lcom/twitter/android/timeline/cp;)Laru;

    .line 1130
    :cond_0
    return-object v0
.end method

.method public c_(J)V
    .locals 0

    .prologue
    .line 1015
    invoke-direct {p0}, Lcom/twitter/android/TimelineFragment;->v()V

    .line 1016
    return-void
.end method

.method protected d()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 874
    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->d()V

    .line 875
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->o()Lcom/twitter/android/timeline/bm;

    move-result-object v0

    .line 877
    const-string/jumbo v2, "ref_event"

    invoke-virtual {v0, v2}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/twitter/android/TimelineFragment;->C:Z

    if-nez v2, :cond_0

    .line 878
    const-string/jumbo v2, "ref_event"

    invoke-virtual {v0, v2}, Lcom/twitter/app/common/list/w;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 879
    iput-boolean v7, p0, Lcom/twitter/android/TimelineFragment;->C:Z

    .line 883
    :goto_0
    iget v2, p0, Lcom/twitter/android/TimelineFragment;->K:I

    sparse-switch v2, :sswitch_data_0

    .line 930
    :goto_1
    return-void

    :cond_0
    move-object v0, v1

    .line 881
    goto :goto_0

    .line 886
    :sswitch_0
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    .line 887
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->i()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v8

    iget-object v6, p0, Lcom/twitter/android/TimelineFragment;->i:Ljava/lang/String;

    aput-object v6, v3, v7

    const/4 v6, 0x2

    aput-object v1, v3, v6

    const/4 v6, 0x3

    aput-object v1, v3, v6

    const/4 v1, 0x4

    const-string/jumbo v6, "impression"

    aput-object v6, v3, v1

    invoke-direct {v2, v4, v5, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J[Ljava/lang/String;)V

    .line 888
    invoke-virtual {v2, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 889
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_1

    .line 893
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/TimelineFragment;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":::impression"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/twitter/android/TimelineFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 897
    :sswitch_2
    const-string/jumbo v1, "connect:mentions:::impression"

    invoke-direct {p0, v1, v0}, Lcom/twitter/android/TimelineFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 901
    :sswitch_3
    const-string/jumbo v1, "connect:mentions_filtered:::impression"

    invoke-direct {p0, v1, v0}, Lcom/twitter/android/TimelineFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 905
    :sswitch_4
    const-string/jumbo v1, "connect:mentions_following:::impression"

    invoke-direct {p0, v1, v0}, Lcom/twitter/android/TimelineFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 909
    :sswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/TimelineFragment;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":::impression"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/twitter/android/TimelineFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 913
    :sswitch_6
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    new-array v1, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 914
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "::::impression"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    invoke-direct {v0, v2, v3, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->a:Ljava/lang/String;

    const/4 v2, -0x1

    .line 915
    invoke-static {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeItem;->b(Ljava/lang/String;I)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 916
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_1

    .line 920
    :sswitch_7
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    new-array v1, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 921
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "::::impression"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    invoke-direct {v0, v2, v3, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->a:Ljava/lang/String;

    .line 922
    invoke-static {v1}, Lcom/twitter/library/scribe/TwitterScribeItem;->d(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 923
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_1

    .line 883
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_5
        0x3 -> :sswitch_7
        0x5 -> :sswitch_2
        0x17 -> :sswitch_3
        0x18 -> :sswitch_4
        0x1b -> :sswitch_6
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method protected e(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1086
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    .line 1087
    iget v0, p0, Lcom/twitter/android/TimelineFragment;->K:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/twitter/android/TimelineFragment;->K:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1089
    :cond_0
    invoke-virtual {v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b()Ljava/lang/String;

    move-result-object v0

    .line 1090
    :goto_0
    invoke-virtual {v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/twitter/android/TimelineFragment;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1089
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e()V
    .locals 5

    .prologue
    .line 941
    iget v0, p0, Lcom/twitter/android/TimelineFragment;->K:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/TimelineFragment;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    const-string/jumbo v0, "home:refresh"

    .line 943
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aX()Layj;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/android/TimelineFragment;->aa:J

    sget-object v4, Laxz;->n:Laye;

    .line 942
    invoke-static {v0, v1, v2, v3, v4}, Lcom/twitter/library/metrics/f;->b(Ljava/lang/String;Layj;JLaye;)Lcom/twitter/library/metrics/f;

    move-result-object v0

    .line 945
    invoke-virtual {v0}, Lcom/twitter/library/metrics/f;->k()V

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->c:Lcom/twitter/android/metrics/b;

    invoke-virtual {v0}, Lcom/twitter/android/metrics/b;->k()V

    .line 949
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/TimelineFragment;->c(J)V

    .line 950
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->E:Lcom/twitter/android/sk;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/sk;->a(J)V

    .line 951
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->ab:Lcom/twitter/library/client/bd;

    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->t:Lcom/twitter/library/service/z;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->b(Lcom/twitter/library/service/z;)V

    .line 952
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->ab()V

    .line 953
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->k:Laap;

    invoke-interface {v0}, Laap;->a()V

    .line 954
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->o:Lcom/twitter/android/revenue/p;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/p;->c()V

    .line 955
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->q:Lcom/twitter/android/se;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->b(Lcom/twitter/library/client/bj;)V

    .line 956
    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->e()V

    .line 957
    return-void
.end method

.method protected f(I)Lcom/twitter/library/service/x;
    .locals 3

    .prologue
    .line 1103
    new-instance v1, Larv;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/twitter/android/TimelineFragment;->c(I)Laru;

    move-result-object v0

    invoke-virtual {v0}, Laru;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lars;

    invoke-direct {v1, v2, v0}, Larv;-><init>(Landroid/content/Context;Lars;)V

    .line 1104
    invoke-virtual {v1}, Larv;->a()Lcom/twitter/library/service/b;

    move-result-object v0

    .line 1103
    return-object v0
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 1058
    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->g()V

    .line 1059
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/TimelineFragment;->h(I)Z

    .line 1060
    return-void
.end method

.method protected g(I)Z
    .locals 2

    .prologue
    .line 1145
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/android/TimelineFragment;->a(IZLcom/twitter/library/service/x;)Z

    move-result v0

    return v0
.end method

.method protected h()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1064
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aQ()Landroid/database/Cursor;

    move-result-object v2

    .line 1065
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1066
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->F()I

    move-result v3

    .line 1067
    iget-boolean v4, p0, Lcom/twitter/android/TimelineFragment;->u:Z

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/twitter/android/TimelineFragment;->P()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 1068
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aG()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x10

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 1069
    invoke-virtual {p0, v1}, Lcom/twitter/android/TimelineFragment;->h(I)Z

    .line 1072
    :cond_1
    return-void

    .line 1067
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ge v4, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected h(I)Z
    .locals 2

    .prologue
    .line 1152
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/android/TimelineFragment;->a(IZLcom/twitter/library/service/x;)Z

    move-result v0

    return v0
.end method

.method protected i(I)J
    .locals 2

    .prologue
    .line 1312
    iget v0, p0, Lcom/twitter/android/TimelineFragment;->K:I

    invoke-direct {p0, v0, p1}, Lcom/twitter/android/TimelineFragment;->d(II)J

    move-result-wide v0

    return-wide v0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->h:Ljava/lang/String;

    .line 1524
    :goto_0
    return-object v0

    .line 1501
    :cond_0
    iget v0, p0, Lcom/twitter/android/TimelineFragment;->K:I

    sparse-switch v0, :sswitch_data_0

    .line 1524
    const-string/jumbo v0, "unknown"

    goto :goto_0

    .line 1503
    :sswitch_0
    const-string/jumbo v0, "home"

    goto :goto_0

    .line 1506
    :sswitch_1
    const-string/jumbo v0, "trendsplus"

    goto :goto_0

    .line 1509
    :sswitch_2
    const-string/jumbo v0, "custom"

    goto :goto_0

    .line 1512
    :sswitch_3
    const-string/jumbo v0, "favorites"

    goto :goto_0

    .line 1515
    :sswitch_4
    const-string/jumbo v0, "place"

    goto :goto_0

    .line 1518
    :sswitch_5
    const-string/jumbo v0, "alerts"

    goto :goto_0

    .line 1521
    :sswitch_6
    const-string/jumbo v0, "live_video_timeline"

    goto :goto_0

    .line 1501
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_6
        0x8 -> :sswitch_5
        0x1b -> :sswitch_2
        0x1c -> :sswitch_1
        0x1e -> :sswitch_4
    .end sparse-switch
.end method

.method protected j(I)J
    .locals 3

    .prologue
    .line 1316
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->Y()Lcom/twitter/android/timeline/br;

    move-result-object v1

    .line 1317
    if-eqz v1, :cond_1

    .line 1318
    invoke-virtual {v1}, Lcom/twitter/android/timeline/br;->bb_()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1319
    invoke-virtual {v1, v0}, Lcom/twitter/android/timeline/br;->g(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 1320
    invoke-virtual {v1, v0}, Lcom/twitter/android/timeline/br;->e(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1321
    invoke-virtual {v1, v0}, Lcom/twitter/android/timeline/br;->b(I)J

    move-result-wide v0

    .line 1325
    :goto_1
    return-wide v0

    .line 1318
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1325
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method protected j()Z
    .locals 2

    .prologue
    .line 1747
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/twitter/android/TimelineFragment;->h(I)Z

    move-result v0

    .line 1748
    if-eqz v0, :cond_0

    .line 1749
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->ai()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1750
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->ag()V

    .line 1753
    :cond_0
    return v0
.end method

.method protected k(I)I
    .locals 3

    .prologue
    .line 1368
    packed-switch p1, :pswitch_data_0

    .line 1383
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid fetch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1370
    :pswitch_1
    const/4 v0, 0x1

    .line 1380
    :goto_0
    return v0

    .line 1373
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1376
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 1380
    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    .line 1368
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected l()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1075
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1076
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vz;

    .line 1077
    invoke-virtual {v0}, Lcom/twitter/android/vz;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/twitter/android/TimelineFragment;->K:I

    if-ne v3, v2, :cond_1

    iget-boolean v3, p0, Lcom/twitter/android/TimelineFragment;->b:Z

    if-nez v3, :cond_1

    .line 1078
    invoke-virtual {v0}, Lcom/twitter/android/vz;->getCount()I

    move-result v0

    const/16 v3, 0x14

    if-ge v0, v3, :cond_1

    :cond_0
    move v0, v2

    .line 1080
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1078
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1080
    goto :goto_0
.end method

.method protected m()I
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x3

    return v0
.end method

.method public abstract o()Lcom/twitter/android/timeline/bm;
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 19

    .prologue
    .line 625
    invoke-super/range {p0 .. p1}, Lcom/twitter/android/TweetListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 627
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/TimelineFragment;->aZ()Lcom/twitter/app/common/base/TwitterFragmentActivity;

    move-result-object v17

    .line 628
    move-object/from16 v0, v17

    instance-of v2, v0, Lcom/twitter/android/ProfileActivity;

    if-eqz v2, :cond_0

    move-object/from16 v2, v17

    .line 631
    check-cast v2, Lcom/twitter/android/ProfileActivity;

    invoke-virtual {v2}, Lcom/twitter/android/ProfileActivity;->f()Lcom/twitter/library/util/FriendshipCache;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/TimelineFragment;->f:Lcom/twitter/library/util/FriendshipCache;

    .line 634
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/TimelineFragment;->f:Lcom/twitter/library/util/FriendshipCache;

    if-nez v2, :cond_1

    .line 636
    new-instance v2, Lcom/twitter/library/util/FriendshipCache;

    invoke-direct {v2}, Lcom/twitter/library/util/FriendshipCache;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/TimelineFragment;->f:Lcom/twitter/library/util/FriendshipCache;

    .line 639
    :cond_1
    new-instance v7, Lcia;

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    .line 640
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/TimelineFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v3

    invoke-direct {v7, v2, v3}, Lcia;-><init>(Lcom/twitter/library/client/bk;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 641
    new-instance v18, Lcom/twitter/android/ho;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/twitter/android/TimelineFragment;->m:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/android/TimelineFragment;->a_:Landroid/content/Context;

    .line 642
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/twitter/android/TimelineFragment;->ab:Lcom/twitter/library/client/bd;

    sget-object v14, Lcom/twitter/util/concurrent/i;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/twitter/android/sh;

    new-instance v3, Lcom/twitter/android/rv;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/twitter/android/rv;-><init>(Lcom/twitter/android/TimelineFragment;)V

    .line 650
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/TimelineFragment;->ab:Lcom/twitter/library/client/bd;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/TimelineFragment;->a_:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/TimelineFragment;->I:Lcom/twitter/android/sn;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/TimelineFragment;->f:Lcom/twitter/library/util/FriendshipCache;

    invoke-direct/range {v2 .. v9}, Lcom/twitter/android/sh;-><init>(Lcom/twitter/util/object/i;Lcom/twitter/library/client/bk;Lcom/twitter/library/client/bd;Landroid/content/Context;Lcia;Lcom/twitter/android/sn;Lcom/twitter/library/util/FriendshipCache;)V

    move-object/from16 v8, v18

    move v9, v13

    move-object v13, v7

    move-object v15, v2

    move-object/from16 v16, p1

    invoke-direct/range {v8 .. v16}, Lcom/twitter/android/ho;-><init>(ILandroid/content/Context;Lcom/twitter/library/client/bk;Lcom/twitter/library/client/bd;Lcia;Ljava/util/concurrent/Executor;Lcom/twitter/library/widget/r;Landroid/os/Bundle;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/android/TimelineFragment;->x:Lcom/twitter/android/hn;

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/TimelineFragment;->aO()Z

    move-result v2

    if-nez v2, :cond_4

    .line 654
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/TimelineFragment;->w()Lcom/twitter/android/sf;

    move-result-object v2

    .line 655
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/TimelineFragment;->a_:Landroid/content/Context;

    .line 656
    invoke-static {v3}, Lcom/twitter/android/client/w;->a(Landroid/content/Context;)Lcom/twitter/android/client/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/android/client/w;->a()Z

    move-result v3

    .line 657
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/TimelineFragment;->a(Lcom/twitter/app/common/base/TwitterFragmentActivity;Lcom/twitter/android/vw;Z)Lcom/twitter/android/vz;

    move-result-object v3

    .line 659
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v2}, Lcom/twitter/android/TimelineFragment;->a(Landroid/os/Bundle;Lcom/twitter/android/vz;Lcom/twitter/android/sf;)Lcom/twitter/android/util/au;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/TimelineFragment;->ac:Lcom/twitter/android/util/au;

    .line 660
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/TimelineFragment;->x()Lcom/twitter/android/se;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/TimelineFragment;->q:Lcom/twitter/android/se;

    .line 661
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/twitter/android/TimelineFragment;->a(Lcom/twitter/android/client/v;)Lcom/twitter/app/common/list/TwitterListFragment;

    .line 662
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/twitter/android/vz;->b(Lcom/twitter/android/kn;)V

    .line 664
    if-eqz p1, :cond_3

    .line 666
    const-string/jumbo v2, "spinning_gap_ids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    .line 667
    if-eqz v4, :cond_3

    .line 668
    array-length v5, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_2

    aget-wide v6, v4, v2

    .line 669
    invoke-virtual {v3, v6, v7}, Lcom/twitter/android/vz;->a(J)V

    .line 668
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 671
    :cond_2
    invoke-virtual {v3}, Lcom/twitter/android/vz;->notifyDataSetChanged()V

    .line 675
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/TimelineFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/twitter/app/common/list/aa;->a(Lcvt;)V

    .line 678
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/TimelineFragment;->ae_()V

    .line 679
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 961
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-ne p1, v6, :cond_1

    if-eqz p3, :cond_1

    const-string/jumbo v0, "woeid"

    .line 962
    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 963
    const-string/jumbo v0, "woeid"

    const-wide/16 v2, 0x1

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 965
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 966
    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v3

    .line 967
    if-eqz v3, :cond_1

    iget-boolean v4, v3, Lcom/twitter/model/account/UserSettings;->B:Z

    if-nez v4, :cond_0

    iget-wide v4, v3, Lcom/twitter/model/account/UserSettings;->a:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_1

    .line 969
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/twitter/model/account/UserSettings;->B:Z

    .line 970
    iput-wide v0, v3, Lcom/twitter/model/account/UserSettings;->a:J

    .line 971
    const-string/jumbo v0, "loc_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/twitter/model/account/UserSettings;->b:Ljava/lang/String;

    .line 973
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->ab:Lcom/twitter/library/client/bd;

    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->a_:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v6, v4}, Lblv;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/account/UserSettings;ZLjava/lang/String;)Lblv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 977
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 443
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 444
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->y()V

    .line 445
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->o()Lcom/twitter/android/timeline/bm;

    move-result-object v0

    .line 446
    invoke-static {p1}, Lcom/twitter/app/common/inject/t;->a(Landroid/os/Bundle;)Lcom/twitter/app/common/inject/t;

    move-result-object v4

    .line 448
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/timeline/bm;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/TimelineFragment;->K:I

    .line 449
    invoke-virtual {v0}, Lcom/twitter/android/timeline/bm;->a()I

    move-result v1

    iput v1, p0, Lcom/twitter/android/TimelineFragment;->m:I

    .line 450
    invoke-virtual {v0}, Lcom/twitter/android/timeline/bm;->b()Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/TimelineFragment;->n:Z

    .line 451
    const-string/jumbo v1, "tag"

    const-wide/16 v6, -0x1

    invoke-virtual {v0, v1, v6, v7}, Lcom/twitter/android/timeline/bm;->a(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/twitter/android/TimelineFragment;->r:J

    .line 452
    const-string/jumbo v1, "timeline_tag"

    invoke-virtual {v0, v1}, Lcom/twitter/android/timeline/bm;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/TimelineFragment;->a:Ljava/lang/String;

    .line 453
    const-string/jumbo v1, "scribe_section"

    invoke-virtual {v0, v1}, Lcom/twitter/android/timeline/bm;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/TimelineFragment;->i:Ljava/lang/String;

    .line 454
    iget v1, p0, Lcom/twitter/android/TimelineFragment;->K:I

    const/16 v5, 0x1b

    if-ne v1, v5, :cond_0

    .line 455
    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->a:Ljava/lang/String;

    const/4 v5, -0x1

    .line 456
    invoke-static {v1, v5}, Lcom/twitter/library/scribe/TwitterScribeItem;->b(Ljava/lang/String;I)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/TimelineFragment;->L:Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 458
    :cond_0
    const-string/jumbo v1, "scribe_page"

    invoke-virtual {v0, v1}, Lcom/twitter/android/timeline/bm;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/TimelineFragment;->h:Ljava/lang/String;

    .line 459
    const-string/jumbo v1, "profile_user"

    invoke-virtual {v0, v1}, Lcom/twitter/android/timeline/bm;->h(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->s:Lcom/twitter/model/core/TwitterUser;

    .line 462
    if-eqz p1, :cond_6

    .line 463
    const-string/jumbo v0, "impressed_who_to_follow_modules"

    .line 464
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 465
    const-string/jumbo v1, "impressed_who_to_follow_users"

    .line 466
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 467
    const-string/jumbo v5, "scribed_ref_event"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/twitter/android/TimelineFragment;->C:Z

    .line 472
    :goto_0
    invoke-direct {p0}, Lcom/twitter/android/TimelineFragment;->an()V

    .line 474
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 475
    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iget-object v6, p0, Lcom/twitter/android/TimelineFragment;->p:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 476
    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 478
    new-instance v5, Lcom/twitter/android/sc;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/twitter/android/sc;-><init>(Lcom/twitter/android/TimelineFragment;Lcom/twitter/android/rr;)V

    iput-object v5, p0, Lcom/twitter/android/TimelineFragment;->t:Lcom/twitter/library/service/z;

    .line 480
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v5

    .line 481
    new-instance v6, Lcom/twitter/android/timeline/bf;

    iget-object v8, p0, Lcom/twitter/android/TimelineFragment;->ab:Lcom/twitter/library/client/bd;

    .line 482
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v9

    new-instance v10, Lcom/twitter/android/rt;

    invoke-direct {v10, p0}, Lcom/twitter/android/rt;-><init>(Lcom/twitter/android/TimelineFragment;)V

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/twitter/android/timeline/bf;-><init>(Landroid/content/Context;Lcom/twitter/library/client/bd;Lcom/twitter/library/client/bk;Lcom/twitter/android/timeline/bh;)V

    iput-object v6, p0, Lcom/twitter/android/TimelineFragment;->g:Lcom/twitter/android/timeline/bf;

    .line 490
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v6

    invoke-virtual {v6}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v6

    .line 491
    iget v8, p0, Lcom/twitter/android/TimelineFragment;->K:I

    .line 492
    invoke-static {v8}, Lcom/twitter/model/core/br;->a(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 493
    invoke-static {v6}, Lcom/twitter/android/util/bu;->a(Lcom/twitter/model/core/TwitterUser;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    iget v8, p0, Lcom/twitter/android/TimelineFragment;->K:I

    if-ne v8, v3, :cond_3

    .line 495
    invoke-direct {p0}, Lcom/twitter/android/TimelineFragment;->u()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/twitter/android/util/bu;->a(Lcom/twitter/model/core/TwitterUser;J)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    iput-boolean v2, p0, Lcom/twitter/android/TimelineFragment;->u:Z

    .line 496
    iget-boolean v2, p0, Lcom/twitter/android/TimelineFragment;->u:Z

    if-eqz v2, :cond_5

    .line 497
    if-eqz p1, :cond_4

    .line 499
    const-string/jumbo v2, "is_device_storage_low"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/twitter/android/TimelineFragment;->w:Z

    .line 501
    :cond_4
    new-instance v2, Lcom/twitter/android/platform/DeviceStorageLowReceiver;

    invoke-direct {v2}, Lcom/twitter/android/platform/DeviceStorageLowReceiver;-><init>()V

    iput-object v2, p0, Lcom/twitter/android/TimelineFragment;->v:Lcom/twitter/android/platform/DeviceStorageLowReceiver;

    .line 502
    iget-object v2, p0, Lcom/twitter/android/TimelineFragment;->v:Lcom/twitter/android/platform/DeviceStorageLowReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v6, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v3, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 506
    :cond_5
    new-instance v2, Lcom/twitter/android/timeline/cx;

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v3

    invoke-direct {v2, v3, v5, v0}, Lcom/twitter/android/timeline/cx;-><init>(Lcom/twitter/library/client/bk;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/util/HashSet;)V

    iput-object v2, p0, Lcom/twitter/android/TimelineFragment;->y:Lcom/twitter/android/timeline/cx;

    .line 508
    new-instance v0, Lcom/twitter/android/timeline/dc;

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-direct {v0, v2, v5, v1}, Lcom/twitter/android/timeline/dc;-><init>(Lcom/twitter/library/client/bk;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/util/HashSet;)V

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->z:Lcom/twitter/android/timeline/dc;

    .line 510
    new-instance v0, Lcom/twitter/android/timeline/ay;

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-direct {v0, v1, v5, p1}, Lcom/twitter/android/timeline/ay;-><init>(Lcom/twitter/library/client/bk;Lcom/twitter/library/scribe/TwitterScribeAssociation;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->A:Lcom/twitter/android/timeline/ay;

    .line 512
    new-instance v1, Lcom/twitter/android/timeline/ae;

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    const-string/jumbo v0, "footer_impression_helper_id"

    .line 513
    invoke-virtual {v4, v0}, Lcom/twitter/app/common/inject/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/FooterImpressionState;

    invoke-direct {v1, v2, v5, v0}, Lcom/twitter/android/timeline/ae;-><init>(Lcom/twitter/library/client/bk;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/android/timeline/FooterImpressionState;)V

    iput-object v1, p0, Lcom/twitter/android/TimelineFragment;->B:Lcom/twitter/android/timeline/ae;

    .line 514
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aA()Lcom/twitter/app/common/inject/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->B:Lcom/twitter/android/timeline/ae;

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/inject/o;->a(Ljava/lang/Object;)Lcom/twitter/app/common/inject/o;

    .line 515
    new-instance v0, Lcom/twitter/android/sk;

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/TimelineFragment;->ab:Lcom/twitter/library/client/bd;

    iget-object v3, p0, Lcom/twitter/android/TimelineFragment;->a_:Landroid/content/Context;

    iget v4, p0, Lcom/twitter/android/TimelineFragment;->m:I

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/sk;-><init>(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/bd;Landroid/content/Context;ILcom/twitter/library/scribe/TwitterScribeAssociation;)V

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->E:Lcom/twitter/android/sk;

    .line 517
    new-instance v0, Lcom/twitter/android/revenue/d;

    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->a_:Landroid/content/Context;

    iget-wide v2, p0, Lcom/twitter/android/TimelineFragment;->aa:J

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/revenue/d;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->l:Lcom/twitter/android/revenue/d;

    .line 518
    new-instance v0, Lcom/twitter/android/revenue/p;

    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->l:Lcom/twitter/android/revenue/d;

    invoke-direct {v0, v1}, Lcom/twitter/android/revenue/p;-><init>(Lcom/twitter/android/revenue/d;)V

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->o:Lcom/twitter/android/revenue/p;

    .line 519
    new-instance v0, Lcom/twitter/android/TimelineItemClickHandler;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/TimelineFragment;->i:Ljava/lang/String;

    .line 520
    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    iget-object v6, p0, Lcom/twitter/android/TimelineFragment;->l:Lcom/twitter/android/revenue/d;

    move-object v1, v7

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/TimelineItemClickHandler;-><init>(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;Lcom/twitter/android/revenue/d;)V

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->G:Lcom/twitter/android/TimelineItemClickHandler;

    .line 521
    return-void

    .line 469
    :cond_6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 470
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 981
    invoke-static {p0}, Lcom/twitter/library/provider/cf;->a(Lcom/twitter/library/provider/cg;)V

    .line 983
    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->onDestroy()V

    .line 985
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 986
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/TimelineFragment;->p:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 987
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 989
    iget-boolean v1, p0, Lcom/twitter/android/TimelineFragment;->u:Z

    if-eqz v1, :cond_0

    .line 990
    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->v:Lcom/twitter/android/platform/DeviceStorageLowReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 991
    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->ab:Lcom/twitter/library/client/bd;

    .line 992
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 991
    invoke-static {v0, v2}, Lcom/twitter/android/util/bu;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;)Lcom/twitter/android/util/bv;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 994
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->x:Lcom/twitter/android/hn;

    if-eqz v0, :cond_1

    .line 995
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->x:Lcom/twitter/android/hn;

    invoke-interface {v0}, Lcom/twitter/android/hn;->b()V

    .line 997
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1570
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1571
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1572
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vz;

    invoke-virtual {v0}, Lcom/twitter/android/vz;->e()Ljava/util/ArrayList;

    move-result-object v0

    .line 1573
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1574
    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->e(Ljava/util/Collection;)[J

    move-result-object v0

    .line 1575
    const-string/jumbo v1, "spinning_gap_ids"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1578
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->v:Lcom/twitter/android/platform/DeviceStorageLowReceiver;

    if-eqz v0, :cond_1

    .line 1579
    const-string/jumbo v0, "is_device_storage_low"

    invoke-direct {p0}, Lcom/twitter/android/TimelineFragment;->P()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1581
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->y:Lcom/twitter/android/timeline/cx;

    if-eqz v0, :cond_2

    .line 1582
    const-string/jumbo v0, "impressed_who_to_follow_modules"

    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->y:Lcom/twitter/android/timeline/cx;

    .line 1583
    invoke-virtual {v1}, Lcom/twitter/android/timeline/cx;->a()Ljava/util/HashSet;

    move-result-object v1

    .line 1582
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1585
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->z:Lcom/twitter/android/timeline/dc;

    if-eqz v0, :cond_3

    .line 1586
    const-string/jumbo v0, "impressed_who_to_follow_users"

    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->z:Lcom/twitter/android/timeline/dc;

    .line 1587
    invoke-virtual {v1}, Lcom/twitter/android/timeline/dc;->a()Ljava/util/HashSet;

    move-result-object v1

    .line 1586
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1589
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->A:Lcom/twitter/android/timeline/ay;

    if-eqz v0, :cond_4

    .line 1590
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->A:Lcom/twitter/android/timeline/ay;

    invoke-virtual {v0, p1}, Lcom/twitter/android/timeline/ay;->a(Landroid/os/Bundle;)V

    .line 1592
    :cond_4
    const-string/jumbo v0, "scribed_ref_event"

    iget-boolean v1, p0, Lcom/twitter/android/TimelineFragment;->C:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1594
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->x:Lcom/twitter/android/hn;

    if-eqz v0, :cond_5

    .line 1595
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->x:Lcom/twitter/android/hn;

    invoke-interface {v0, p1}, Lcom/twitter/android/hn;->a(Landroid/os/Bundle;)V

    .line 1597
    :cond_5
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->ac:Lcom/twitter/android/util/au;

    if-eqz v0, :cond_6

    .line 1598
    const-string/jumbo v0, "prompt_controller"

    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->ac:Lcom/twitter/android/util/au;

    invoke-virtual {v1}, Lcom/twitter/android/util/au;->d()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1600
    :cond_6
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 767
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->j:Lcom/twitter/android/vs;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/vs;->a(J)V

    .line 768
    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->onStop()V

    .line 769
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 529
    invoke-super {p0, p1, p2}, Lcom/twitter/android/TweetListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 531
    invoke-static {p0}, Lcom/twitter/library/provider/cf;->b(Lcom/twitter/library/provider/cg;)V

    .line 532
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/ru;

    invoke-direct {v1, p0}, Lcom/twitter/android/ru;-><init>(Lcom/twitter/android/TimelineFragment;)V

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/aa;->a(Lcom/twitter/app/common/list/af;)V

    .line 549
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->o:Lcom/twitter/android/revenue/p;

    invoke-virtual {v1}, Lcom/twitter/android/revenue/p;->e()Lcom/twitter/app/common/list/af;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/aa;->a(Lcom/twitter/app/common/list/af;)V

    .line 550
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->T()Lcom/twitter/android/vs;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->j:Lcom/twitter/android/vs;

    .line 551
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->U()Laap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->k:Laap;

    .line 552
    return-void
.end method

.method public synthetic p()Lcom/twitter/app/common/list/w;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->o()Lcom/twitter/android/timeline/bm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic q()Lcom/twitter/app/common/base/f;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->o()Lcom/twitter/android/timeline/bm;

    move-result-object v0

    return-object v0
.end method

.method protected v_()Landroid/support/v4/content/Loader;
    .locals 7
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
    .line 296
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->c:Lcom/twitter/android/metrics/b;

    invoke-virtual {v0}, Lcom/twitter/android/metrics/b;->aT_()V

    .line 297
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->S()Laro;

    move-result-object v0

    invoke-static {v0}, Larr;->a(Laro;)Lavh;

    move-result-object v6

    .line 298
    new-instance v0, Lcom/twitter/android/bt;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, v6, Lavh;->a:Landroid/net/Uri;

    iget-object v3, v6, Lavh;->b:[Ljava/lang/String;

    iget-object v4, v6, Lavh;->c:Ljava/lang/String;

    iget-object v5, v6, Lavh;->d:[Ljava/lang/String;

    iget-object v6, v6, Lavh;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected w()Lcom/twitter/android/sf;
    .locals 10

    .prologue
    .line 840
    new-instance v1, Lcom/twitter/android/sf;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v3

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->ac()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/twitter/android/TimelineFragment;->I:Lcom/twitter/android/sn;

    .line 841
    invoke-direct {p0}, Lcom/twitter/android/TimelineFragment;->u()J

    move-result-wide v6

    iget-object v8, p0, Lcom/twitter/android/TimelineFragment;->g:Lcom/twitter/android/timeline/bf;

    iget v9, p0, Lcom/twitter/android/TimelineFragment;->m:I

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/twitter/android/sf;-><init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Lcom/twitter/android/sn;JLcom/twitter/android/timeline/bf;I)V

    .line 840
    return-object v1
.end method

.method protected x()Lcom/twitter/android/se;
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->ac:Lcom/twitter/android/util/au;

    if-eqz v0, :cond_0

    .line 848
    new-instance v0, Lcom/twitter/android/se;

    invoke-direct {v0, p0}, Lcom/twitter/android/se;-><init>(Lcom/twitter/android/TimelineFragment;)V

    .line 850
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected y()V
    .locals 5

    .prologue
    .line 1050
    new-instance v0, Lcom/twitter/android/metrics/b;

    const-string/jumbo v1, "timeline:first_tweet_"

    const-string/jumbo v2, "timeline:first_tweet_"

    sget-object v3, Laxz;->l:Laye;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/metrics/b;-><init>(Ljava/lang/String;Ljava/lang/String;Laye;Layf;)V

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->c:Lcom/twitter/android/metrics/b;

    .line 1052
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->c:Lcom/twitter/android/metrics/b;

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/metrics/b;->b(J)V

    .line 1053
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->c:Lcom/twitter/android/metrics/b;

    invoke-virtual {v0}, Lcom/twitter/android/metrics/b;->i()V

    .line 1054
    return-void
.end method

.method protected z()Lcom/twitter/app/common/list/b;
    .locals 1

    .prologue
    .line 684
    new-instance v0, Lcom/twitter/android/sd;

    invoke-direct {v0, p0}, Lcom/twitter/android/sd;-><init>(Lcom/twitter/android/TimelineFragment;)V

    return-object v0
.end method
