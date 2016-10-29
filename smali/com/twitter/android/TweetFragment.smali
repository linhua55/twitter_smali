.class public Lcom/twitter/android/TweetFragment;
.super Lcom/twitter/android/TweetListFragment;
.source "Twttr"

# interfaces
.implements Laci;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lawi;
.implements Lcom/twitter/android/nq;
.implements Lcom/twitter/android/widget/fo;
.implements Lcom/twitter/app/common/base/m;
.implements Lcom/twitter/library/provider/cg;
.implements Lcom/twitter/library/view/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/TweetListFragment",
        "<",
        "Lcom/twitter/android/timeline/bp;",
        "Lcom/twitter/android/vz;",
        ">;",
        "Laci;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Lawi;",
        "Lcom/twitter/android/nq;",
        "Lcom/twitter/android/widget/fo;",
        "Lcom/twitter/app/common/base/m;",
        "Lcom/twitter/library/provider/cg;",
        "Lcom/twitter/library/view/m;"
    }
.end annotation


# static fields
.field private static c:Lcom/twitter/android/vt;


# instance fields
.field private A:Z

.field private B:Landroid/view/View;

.field private C:Landroid/view/View;

.field private D:Landroid/view/View;

.field private E:I

.field private F:I

.field private G:Lcom/twitter/android/widget/ToggleImageButton;

.field a:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private ac:Lcom/twitter/android/widget/ToggleImageButton;

.field private ad:Lcom/twitter/android/widget/EngagementActionBar;

.field private ae:Z

.field private af:Z

.field private ag:J

.field private ah:Lcom/twitter/android/qs;

.field private ai:Z

.field private aj:Ljava/lang/String;

.field private ak:Z

.field private al:Laxg;

.field private am:Lcom/twitter/android/uu;

.field private an:Lrx/ap;

.field private ao:Lcom/twitter/android/av/monetization/g;

.field private ap:Laum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laum",
            "<",
            "Lcom/twitter/model/av/o;",
            ">;"
        }
    .end annotation
.end field

.field private final aq:Lcom/twitter/library/util/FriendshipCache;

.field private final ar:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private as:Lcav;

.field b:Lcom/twitter/android/widget/TweetDetailView;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private d:Lcom/twitter/android/vs;

.field private e:Lcom/twitter/library/client/Session;

.field private f:Lcom/twitter/model/core/Tweet;

.field private g:Lcom/twitter/library/card/CardContext;

.field private h:Lcom/twitter/library/widget/renderablecontent/e;

.field private i:Lcom/twitter/android/card/i;

.field private j:Lciu;

.field private k:Z

.field private l:Lcom/twitter/library/api/ActivitySummary;

.field private m:Lcom/twitter/android/ut;

.field private n:Landroid/widget/BaseAdapter;

.field private o:Lcom/twitter/android/vw;

.field private p:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private q:Lcom/twitter/library/widget/PageableListView;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:Lcom/twitter/model/moments/ad;

.field private final v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Lcom/twitter/android/us;

.field private final x:Landroid/view/View$OnClickListener;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 215
    new-instance v0, Lcom/twitter/android/vt;

    invoke-direct {v0}, Lcom/twitter/android/vt;-><init>()V

    sput-object v0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/vt;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 309
    invoke-direct {p0}, Lcom/twitter/android/TweetListFragment;-><init>()V

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->v:Ljava/util/ArrayList;

    .line 247
    new-instance v0, Lcom/twitter/android/us;

    const-string/jumbo v1, "tweet:::show_more_suggested_button:impression"

    invoke-direct {v0, v1}, Lcom/twitter/android/us;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->w:Lcom/twitter/android/us;

    .line 251
    new-instance v0, Lcom/twitter/android/uv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/uv;-><init>(Lcom/twitter/android/TweetFragment;Lcom/twitter/android/ua;)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->x:Landroid/view/View$OnClickListener;

    .line 285
    new-instance v0, Lcom/twitter/library/util/FriendshipCache;

    invoke-direct {v0}, Lcom/twitter/library/util/FriendshipCache;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->aq:Lcom/twitter/library/util/FriendshipCache;

    .line 306
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->ar:Ljava/util/Set;

    .line 310
    new-instance v0, Lcom/twitter/app/common/list/y;

    invoke-direct {v0}, Lcom/twitter/app/common/list/y;-><init>()V

    invoke-virtual {v0, v2}, Lcom/twitter/app/common/list/y;->h(Z)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    const-string/jumbo v1, "en_act"

    .line 311
    invoke-virtual {v0, v1, v2}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;Z)Lcom/twitter/app/common/base/g;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/y;->b()Lcom/twitter/app/common/list/w;

    move-result-object v0

    .line 310
    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/app/common/base/f;)V

    .line 312
    return-void
.end method

.method static synthetic A(Lcom/twitter/android/TweetFragment;)Lcom/twitter/android/qs;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->ah:Lcom/twitter/android/qs;

    return-object v0
.end method

.method static synthetic B(Lcom/twitter/android/TweetFragment;)Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/twitter/android/TweetFragment;->ai:Z

    return v0
.end method

.method static synthetic C(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/api/ActivitySummary;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/library/api/ActivitySummary;

    return-object v0
.end method

.method static synthetic D(Lcom/twitter/android/TweetFragment;)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment;->X()V

    return-void
.end method

.method static synthetic E(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method private F()Lcom/twitter/android/vr;
    .locals 1

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aB()Lcom/twitter/app/common/inject/b;

    move-result-object v0

    check-cast v0, Laxl;

    .line 668
    invoke-interface {v0}, Laxl;->c()Lcom/twitter/android/vr;

    move-result-object v0

    return-object v0
.end method

.method static synthetic F(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/client/bd;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->ab:Lcom/twitter/library/client/bd;

    return-object v0
.end method

.method static synthetic G(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method private G()Z
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/library/widget/PageableListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/ut;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic H(Lcom/twitter/android/TweetFragment;)Lcom/twitter/android/card/i;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->i:Lcom/twitter/android/card/i;

    return-object v0
.end method

.method private H()V
    .locals 9

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-static {v0}, Lcih;->b(Lcom/twitter/model/core/Tweet;)Z

    move-result v1

    .line 1039
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-static {v0}, Lcug;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    .line 1040
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->p()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->d(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1116
    :cond_0
    :goto_0
    return-void

    .line 1043
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->e:Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v0

    .line 1044
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment;->S()Z

    move-result v8

    .line 1045
    iget-boolean v2, p0, Lcom/twitter/android/TweetFragment;->a:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    .line 1046
    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->C()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/twitter/model/account/UserSettings;->k:Z

    if-eqz v0, :cond_2

    .line 1048
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment;->T()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    move v7, v0

    .line 1050
    :goto_1
    new-instance v0, Lcjm;

    .line 1051
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    sget-object v4, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v5

    iget-object v6, p0, Lcom/twitter/android/TweetFragment;->p:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct/range {v0 .. v6}, Lcjm;-><init>(ZLandroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 1052
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v0, v2, v3}, Lcjm;->a(ILjava/lang/Object;)V

    .line 1054
    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->a_:Landroid/content/Context;

    .line 1055
    invoke-static {v2}, Lbki;->a(Landroid/content/Context;)Lbki;

    move-result-object v2

    .line 1056
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment;->M()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1057
    new-instance v0, Lcom/twitter/android/uc;

    invoke-direct {v0, p0, v2}, Lcom/twitter/android/uc;-><init>(Lcom/twitter/android/TweetFragment;Lbki;)V

    .line 1069
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/TweetDetailView;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1048
    :cond_3
    const/4 v0, 0x0

    move v7, v0

    goto :goto_1

    .line 1070
    :cond_4
    if-eqz v7, :cond_5

    .line 1071
    new-instance v0, Lcom/twitter/android/ud;

    invoke-direct {v0, p0}, Lcom/twitter/android/ud;-><init>(Lcom/twitter/android/TweetFragment;)V

    .line 1103
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/widget/TweetDetailView;

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->D()Z

    move-result v2

    invoke-virtual {v1, v0, v8, v2}, Lcom/twitter/android/widget/TweetDetailView;->a(Lcom/twitter/library/widget/y;ZZ)V

    goto :goto_0

    .line 1105
    :cond_5
    invoke-virtual {v0}, Lcjm;->a()Lcom/twitter/library/widget/renderablecontent/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->h:Lcom/twitter/library/widget/renderablecontent/e;

    .line 1106
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->h:Lcom/twitter/library/widget/renderablecontent/e;

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 1107
    new-instance v0, Lcom/twitter/android/card/k;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->a_:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/twitter/android/card/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->i:Lcom/twitter/android/card/i;

    .line 1108
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->i:Lcom/twitter/android/card/i;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->g:Lcom/twitter/library/card/CardContext;

    invoke-interface {v0, v1}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/card/CardContext;)V

    .line 1109
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->i:Lcom/twitter/android/card/i;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 1110
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->i:Lcom/twitter/android/card/i;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->p:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-interface {v0, v1}, Lcom/twitter/android/card/i;->b(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 1112
    :cond_6
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/widget/TweetDetailView;

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/widget/TweetDetailView;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->h:Lcom/twitter/library/widget/renderablecontent/e;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TweetDetailView;->setContentHost(Lcom/twitter/library/widget/renderablecontent/e;)V

    goto/16 :goto_0
.end method

.method static synthetic I(Lcom/twitter/android/TweetFragment;)Lcom/twitter/android/widget/EngagementActionBar;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->ad:Lcom/twitter/android/widget/EngagementActionBar;

    return-object v0
.end method

.method static synthetic J(Lcom/twitter/android/TweetFragment;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->x:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic K(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic L(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->p:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    return-object v0
.end method

.method static synthetic M(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method private M()Z
    .locals 2

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->a_:Landroid/content/Context;

    .line 1120
    invoke-static {v0}, Lbki;->a(Landroid/content/Context;)Lbki;

    move-result-object v0

    .line 1121
    iget-boolean v1, p0, Lcom/twitter/android/TweetFragment;->A:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "twitter_access_android_media_forward_enabled"

    invoke-static {v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    .line 1122
    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->aj()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    .line 1123
    invoke-static {v1}, Lcom/twitter/library/av/playback/bm;->d(Lcom/twitter/model/core/Tweet;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1124
    invoke-virtual {v0}, Lbki;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1125
    :cond_0
    invoke-virtual {v0}, Lbki;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1121
    :goto_0
    return v0

    .line 1125
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic N(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic O(Lcom/twitter/android/TweetFragment;)Laxg;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->al:Laxg;

    return-object v0
.end method

.method private O()Lcom/twitter/android/bp;
    .locals 3

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->p:J

    .line 1371
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/android/bo;->a(Landroid/content/Context;)Lcom/twitter/android/bo;

    move-result-object v2

    .line 1372
    invoke-virtual {v2, v0, v1}, Lcom/twitter/android/bo;->a(J)Lcom/twitter/android/bp;

    move-result-object v0

    .line 1371
    return-object v0
.end method

.method private P()V
    .locals 7

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->ab:Lcom/twitter/library/client/bd;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->aj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->a_:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    .line 1588
    invoke-static {v0, v1}, Lcjg;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/widget/TweetDetailView;

    .line 1589
    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetDetailView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1590
    const-string/jumbo v0, "translation_request"

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->c(Ljava/lang/String;)V

    .line 1591
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->a_:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1592
    if-eqz v0, :cond_1

    .line 1593
    :goto_0
    invoke-static {v0}, Lcom/twitter/util/a;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 1594
    new-instance v1, Lbtn;

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->a_:Landroid/content/Context;

    .line 1595
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v0, Lcom/twitter/model/core/Tweet;->C:J

    invoke-direct/range {v1 .. v6}, Lbtn;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLjava/lang/String;)V

    .line 1596
    const/4 v0, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/twitter/android/TweetFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 1597
    iget-object v0, v1, Lbtn;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->aj:Ljava/lang/String;

    .line 1599
    :cond_0
    return-void

    .line 1593
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method private Q()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 1937
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 1939
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/library/api/ActivitySummary;

    if-eqz v1, :cond_1

    .line 1940
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget-boolean v1, v1, Lcom/twitter/model/core/Tweet;->a:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/library/api/ActivitySummary;

    iget-object v1, v1, Lcom/twitter/library/api/ActivitySummary;->c:[J

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/library/api/ActivitySummary;

    iget-object v1, v1, Lcom/twitter/library/api/ActivitySummary;->c:[J

    array-length v1, v1

    if-lez v1, :cond_0

    .line 1942
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/library/api/ActivitySummary;

    iget-object v4, v1, Lcom/twitter/library/api/ActivitySummary;->c:[J

    array-length v5, v4

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-wide v6, v4, v1

    .line 1943
    cmp-long v6, v6, v2

    if-nez v6, :cond_2

    .line 1944
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iput-boolean v8, v1, Lcom/twitter/model/core/Tweet;->a:Z

    .line 1945
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->G:Lcom/twitter/android/widget/ToggleImageButton;

    invoke-virtual {v1, v8}, Lcom/twitter/android/widget/ToggleImageButton;->setToggledOn(Z)V

    .line 1951
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->ad()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/library/api/ActivitySummary;

    iget-object v1, v1, Lcom/twitter/library/api/ActivitySummary;->d:[J

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/library/api/ActivitySummary;

    iget-object v1, v1, Lcom/twitter/library/api/ActivitySummary;->d:[J

    array-length v1, v1

    if-lez v1, :cond_1

    .line 1953
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/library/api/ActivitySummary;

    iget-object v1, v1, Lcom/twitter/library/api/ActivitySummary;->d:[J

    array-length v4, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget-wide v6, v1, v0

    .line 1954
    cmp-long v5, v6, v2

    if-nez v5, :cond_3

    .line 1955
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0, v8}, Lcom/twitter/model/core/Tweet;->a(Z)V

    .line 1956
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->ac:Lcom/twitter/android/widget/ToggleImageButton;

    invoke-virtual {v0, v8}, Lcom/twitter/android/widget/ToggleImageButton;->setToggledOn(Z)V

    .line 1962
    :cond_1
    return-void

    .line 1942
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1953
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private S()Z
    .locals 1

    .prologue
    .line 1965
    const-string/jumbo v0, "blocker_interstitial_enabled"

    .line 1966
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    .line 1967
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/twitter/android/TweetFragment;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private T()Z
    .locals 4

    .prologue
    .line 1971
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->b:J

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private U()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 2014
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    const/4 v0, 0x1

    .line 2015
    :goto_0
    iget-object v4, p0, Lcom/twitter/android/TweetFragment;->C:Landroid/view/View;

    if-eqz v0, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2016
    iget-object v4, p0, Lcom/twitter/android/TweetFragment;->B:Landroid/view/View;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v0, :cond_3

    const v2, 0x7f12004a

    :goto_2
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2018
    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->D:Landroid/view/View;

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2020
    if-nez v0, :cond_0

    .line 2022
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->w:Lcom/twitter/android/us;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/us;->a(J)V

    .line 2024
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 2014
    goto :goto_0

    :cond_2
    move v2, v1

    .line 2015
    goto :goto_1

    .line 2016
    :cond_3
    const v2, 0x7f120092

    goto :goto_2

    :cond_4
    move v1, v3

    .line 2018
    goto :goto_3
.end method

.method private X()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 2493
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget v0, v0, Lcom/twitter/model/core/Tweet;->i:I

    invoke-static {v0}, Lcom/twitter/model/core/p;->a(I)Z

    move-result v2

    .line 2494
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v0, Lcom/twitter/model/core/Tweet;->o:J

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    move v0, v1

    .line 2495
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->f(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v2, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/TweetFragment;->af:Z

    if-eqz v0, :cond_1

    .line 2499
    :cond_0
    iput-boolean v1, p0, Lcom/twitter/android/TweetFragment;->af:Z

    .line 2500
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v0, p0, v2}, Lcom/twitter/android/widget/TweetDetailView;->a(Landroid/view/View$OnClickListener;Z)V

    .line 2502
    :cond_1
    return-void

    .line 2494
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/TweetFragment;)Lcom/twitter/android/uu;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->am:Lcom/twitter/android/uu;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/TweetFragment;Lcom/twitter/library/widget/TweetView;)Lcom/twitter/library/media/widget/z;
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/library/widget/TweetView;)Lcom/twitter/library/media/widget/z;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/twitter/library/widget/TweetView;)Lcom/twitter/library/media/widget/z;
    .locals 1

    .prologue
    .line 2041
    new-instance v0, Lcom/twitter/android/uh;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/uh;-><init>(Lcom/twitter/android/TweetFragment;Lcom/twitter/library/widget/TweetView;)V

    return-object v0
.end method

.method private a(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 1151
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1152
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p2, v1, :cond_0

    .line 1153
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1154
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1156
    :cond_0
    return-void
.end method

.method private a(Lbrz;)V
    .locals 2

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/ut;

    if-eqz v0, :cond_0

    .line 1990
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1991
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/ut;

    invoke-virtual {v1}, Lcom/twitter/android/ut;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lbrz;->a(Lcom/twitter/model/core/Tweet;Ljava/util/List;)Lbrz;

    .line 1993
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/TweetFragment;Lbrz;)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/twitter/android/TweetFragment;->a(Lbrz;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/TweetFragment;Lcom/twitter/library/widget/TweetView;Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/library/widget/TweetView;Lcom/twitter/model/core/Tweet;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/TweetFragment;Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/twitter/android/TweetFragment;->g(Lcom/twitter/model/core/Tweet;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/TweetFragment;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/Session;)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/Session;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/TweetFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/twitter/android/TweetFragment;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/TweetFragment;Ljava/lang/String;Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/TweetFragment;->a(Ljava/lang/String;Lcom/twitter/model/core/Tweet;)V

    return-void
.end method

.method private a(Lcom/twitter/library/service/x;I)V
    .locals 3

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lbrz;

    if-eqz v0, :cond_0

    .line 1997
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->v:Ljava/util/ArrayList;

    check-cast p1, Lbrz;

    .line 1998
    invoke-virtual {p1}, Lbrz;->e()Ljava/util/List;

    move-result-object v1

    .line 1997
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1999
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment;->U()V

    .line 2000
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->am:Lcom/twitter/android/uu;

    if-eqz v0, :cond_0

    .line 2005
    if-gtz p2, :cond_1

    const/4 v0, 0x1

    .line 2006
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->am:Lcom/twitter/android/uu;

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/uu;->a(Ljava/util/List;Z)V

    .line 2009
    :cond_0
    return-void

    .line 2005
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/twitter/library/widget/TweetView;Lcom/twitter/model/core/Tweet;)V
    .locals 1

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->aq:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0, p2}, Lcom/twitter/library/util/FriendshipCache;->a(Lcom/twitter/model/core/Tweet;)V

    .line 2029
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->aq:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/TweetView;->setFriendshipCache(Lcom/twitter/library/util/FriendshipCache;)V

    .line 2031
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->o:Lcom/twitter/android/vw;

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/TweetView;->setOnTweetViewClickListener(Lcom/twitter/library/view/aa;)V

    .line 2032
    sget v0, Lcom/twitter/library/util/al;->a:F

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/TweetView;->setContentSize(F)V

    .line 2033
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/TweetView;->setHideInlineActions(Z)V

    .line 2034
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->a_:Landroid/content/Context;

    .line 2035
    invoke-static {v0, p2}, Lcjg;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    .line 2034
    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/TweetView;->setDisplayTranslationBadge(Z)V

    .line 2036
    return-void
.end method

.method private a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/Session;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 840
    iput-boolean v4, p0, Lcom/twitter/android/TweetFragment;->z:Z

    .line 841
    new-instance v0, Lbrz;

    .line 842
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-wide v2, p1, Lcom/twitter/model/core/Tweet;->p:J

    invoke-direct {v0, v1, p2, v2, v3}, Lbrz;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V

    .line 843
    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->a(Lbrz;)V

    .line 844
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v4, v1}, Lcom/twitter/android/TweetFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 845
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/twitter/model/core/Tweet;)V
    .locals 6

    .prologue
    .line 2518
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    .line 2520
    if-eqz v1, :cond_0

    .line 2521
    invoke-virtual {v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v0

    .line 2525
    :goto_0
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 2526
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->a_:Landroid/content/Context;

    const/4 v4, 0x0

    .line 2527
    invoke-virtual {v2, v3, p2, v1, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const-string/jumbo v4, ""

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const-string/jumbo v4, "media_forward:platform_photo_card"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object p1, v3, v0

    .line 2528
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 2529
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 2530
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 2531
    return-void

    .line 2523
    :cond_0
    const-string/jumbo v0, "tweet"

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2513
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->j:Lciu;

    invoke-virtual {v0, p1, p2}, Lciu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2514
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1665
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 1666
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "tweet"

    aput-object v3, v2, v4

    aput-object v6, v2, v5

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    aput-object p3, v2, v3

    .line 1667
    invoke-static {v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const-string/jumbo v1, "tweet::tweet::impression"

    .line 1668
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->p:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 1669
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 1670
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1671
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/TweetFragment;I)Z
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/twitter/android/TweetFragment;->a_(I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/twitter/android/TweetFragment;Lcom/twitter/library/service/x;II)Z
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/TweetFragment;->c(Lcom/twitter/library/service/x;II)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/twitter/android/TweetFragment;Z)Z
    .locals 0

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/twitter/android/TweetFragment;->A:Z

    return p1
.end method

.method static synthetic b(Lcom/twitter/android/TweetFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->v:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/TweetFragment;Z)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/twitter/android/TweetFragment;->f(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1618
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "screen_name"

    .line 1619
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1621
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->p:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    if-eqz v0, :cond_1

    .line 1622
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->p:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 1626
    :goto_0
    const-string/jumbo v2, "association"

    new-instance v3, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v3, v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    const/4 v0, 0x1

    .line 1628
    invoke-virtual {v3, v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v3, Lcom/twitter/model/core/Tweet;->p:J

    .line 1629
    invoke-virtual {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(J)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    .line 1626
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1631
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1632
    const-string/jumbo v0, "pc"

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    .line 1633
    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v2

    invoke-static {v2}, Lcss;->a(Lcss;)[B

    move-result-object v2

    .line 1632
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1635
    :cond_0
    invoke-virtual {p0, v1}, Lcom/twitter/android/TweetFragment;->startActivity(Landroid/content/Intent;)V

    .line 1636
    return-void

    .line 1624
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/TweetFragment;I)Z
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/twitter/android/TweetFragment;->a_(I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/twitter/android/TweetFragment;Lcom/twitter/library/service/x;II)Z
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/TweetFragment;->c(Lcom/twitter/library/service/x;II)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->e:Lcom/twitter/library/client/Session;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2509
    const-string/jumbo v0, ""

    invoke-direct {p0, v0, p1}, Lcom/twitter/android/TweetFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    return-void
.end method

.method static synthetic c(Lcom/twitter/android/TweetFragment;Lcom/twitter/library/service/x;II)Z
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/TweetFragment;->c(Lcom/twitter/library/service/x;II)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/twitter/model/core/Tweet;)Z
    .locals 1

    .prologue
    .line 184
    invoke-static {p0}, Lcom/twitter/android/TweetFragment;->e(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/twitter/android/TweetFragment;)Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/TweetFragment;Lcom/twitter/library/service/x;II)Z
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/TweetFragment;->c(Lcom/twitter/library/service/x;II)Z

    move-result v0

    return v0
.end method

.method private d(Lcom/twitter/model/core/Tweet;)Z
    .locals 1

    .prologue
    .line 1034
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/twitter/android/revenue/z;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/twitter/android/TweetFragment;)Lcom/twitter/android/vr;
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment;->F()Lcom/twitter/android/vr;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/android/TweetFragment;Lcom/twitter/library/service/x;II)Z
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/TweetFragment;->c(Lcom/twitter/library/service/x;II)Z

    move-result v0

    return v0
.end method

.method private static e(Lcom/twitter/model/core/Tweet;)Z
    .locals 1

    .prologue
    .line 1985
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->s()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/twitter/android/TweetFragment;)Lcom/twitter/android/ut;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/ut;

    return-object v0
.end method

.method private f(Z)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1703
    if-eqz p1, :cond_0

    .line 1704
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iput-boolean v2, v0, Lcom/twitter/model/core/Tweet;->a:Z

    .line 1705
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget v1, v0, Lcom/twitter/model/core/Tweet;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/twitter/model/core/Tweet;->k:I

    .line 1706
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->G:Lcom/twitter/android/widget/ToggleImageButton;

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/ToggleImageButton;->setToggledOn(Z)V

    .line 1707
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->G:Lcom/twitter/android/widget/ToggleImageButton;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ToggleImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1717
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/library/api/ActivitySummary;

    .line 1718
    if-eqz v0, :cond_1

    .line 1719
    iget-object v1, v0, Lcom/twitter/library/api/ActivitySummary;->d:[J

    .line 1720
    iget-object v0, v0, Lcom/twitter/library/api/ActivitySummary;->c:[J

    .line 1726
    :goto_1
    new-instance v2, Lcom/twitter/library/api/ActivitySummary;

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget v3, v3, Lcom/twitter/model/core/Tweet;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget v4, v4, Lcom/twitter/model/core/Tweet;->h:I

    .line 1727
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/twitter/library/api/ActivitySummary;-><init>(Ljava/lang/String;Ljava/lang/String;[J[J)V

    iput-object v2, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/library/api/ActivitySummary;

    .line 1728
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/widget/TweetDetailView;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/library/api/ActivitySummary;

    invoke-virtual {v0, v1, p0}, Lcom/twitter/android/widget/TweetDetailView;->a(Lcom/twitter/library/api/ActivitySummary;Lcom/twitter/android/widget/fo;)V

    .line 1729
    return-void

    .line 1709
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iput-boolean v3, v0, Lcom/twitter/model/core/Tweet;->a:Z

    .line 1710
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget v1, v1, Lcom/twitter/model/core/Tweet;->k:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/twitter/model/core/Tweet;->k:I

    .line 1711
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->G:Lcom/twitter/android/widget/ToggleImageButton;

    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/ToggleImageButton;->setToggledOn(Z)V

    .line 1712
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->G:Lcom/twitter/android/widget/ToggleImageButton;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ToggleImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1722
    :cond_1
    new-array v1, v3, [J

    .line 1723
    new-array v0, v3, [J

    goto :goto_1
.end method

.method private f(Lcom/twitter/model/core/Tweet;)Z
    .locals 1

    .prologue
    .line 2505
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/twitter/android/revenue/z;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/twitter/android/TweetFragment;)Lcom/twitter/android/bp;
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment;->O()Lcom/twitter/android/bp;

    move-result-object v0

    return-object v0
.end method

.method private g(J)Lcom/twitter/model/core/Tweet;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2470
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->am:Lcom/twitter/android/uu;

    if-nez v1, :cond_0

    move-object v1, v0

    .line 2472
    :goto_0
    if-nez v1, :cond_2

    .line 2473
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/ut;

    if-nez v1, :cond_1

    .line 2475
    :goto_1
    return-object v0

    .line 2470
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->am:Lcom/twitter/android/uu;

    .line 2471
    invoke-virtual {v1, p1, p2}, Lcom/twitter/android/uu;->a(J)Lcom/twitter/model/core/Tweet;

    move-result-object v1

    goto :goto_0

    .line 2473
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/ut;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/ut;->a(J)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private g(Lcom/twitter/model/core/Tweet;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2535
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2536
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->e:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 2537
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v6, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "tweet:::quoted_tweet:show"

    aput-object v3, v2, v4

    .line 2538
    invoke-static {v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 2539
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 2541
    :cond_0
    return-void
.end method

.method private h(J)V
    .locals 5

    .prologue
    .line 2602
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/TweetActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->e:Lcom/twitter/library/client/Session;

    .line 2603
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Lcom/twitter/library/provider/cn;->a(JJ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "association"

    .line 2604
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x23c1

    .line 2602
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/TweetFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2606
    return-void
.end method

.method static synthetic h(Lcom/twitter/android/TweetFragment;)Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/twitter/android/TweetFragment;->ae:Z

    return v0
.end method

.method static synthetic i(Lcom/twitter/android/TweetFragment;)Lcom/twitter/android/av/s;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->X:Lcom/twitter/android/av/s;

    return-object v0
.end method

.method static synthetic j(Lcom/twitter/android/TweetFragment;)Lcom/twitter/android/av/s;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->X:Lcom/twitter/android/av/s;

    return-object v0
.end method

.method static synthetic k(Lcom/twitter/android/TweetFragment;)Lcav;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->as:Lcav;

    return-object v0
.end method

.method static synthetic l(Lcom/twitter/android/TweetFragment;)Lcom/twitter/android/widget/ToggleImageButton;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->G:Lcom/twitter/android/widget/ToggleImageButton;

    return-object v0
.end method

.method static synthetic m(Lcom/twitter/android/TweetFragment;)Lcom/twitter/android/av/s;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->X:Lcom/twitter/android/av/s;

    return-object v0
.end method

.method static synthetic n(Lcom/twitter/android/TweetFragment;)Lcom/twitter/android/av/s;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->X:Lcom/twitter/android/av/s;

    return-object v0
.end method

.method static synthetic o(Lcom/twitter/android/TweetFragment;)Lciu;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->j:Lciu;

    return-object v0
.end method

.method static synthetic p(Lcom/twitter/android/TweetFragment;)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment;->H()V

    return-void
.end method

.method static synthetic q(Lcom/twitter/android/TweetFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->a_:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic r(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/client/bd;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->ab:Lcom/twitter/library/client/bd;

    return-object v0
.end method

.method static synthetic s(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic t(Lcom/twitter/android/TweetFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->a_:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic u(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic v(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/client/bd;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->ab:Lcom/twitter/library/client/bd;

    return-object v0
.end method

.method static synthetic w(Lcom/twitter/android/TweetFragment;)Lcom/twitter/library/widget/PageableListView;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/library/widget/PageableListView;

    return-object v0
.end method

.method static synthetic x(Lcom/twitter/android/TweetFragment;)Layj;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aX()Layj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic y(Lcom/twitter/android/TweetFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic z(Lcom/twitter/android/TweetFragment;)I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/twitter/android/TweetFragment;->t:I

    return v0
.end method


# virtual methods
.method public C()V
    .locals 2

    .prologue
    .line 2679
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/16 v1, 0x66

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a08fe

    .line 2680
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->a(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a08fd

    .line 2681
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->b(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a09bb

    .line 2682
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a05a7

    .line 2683
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 2684
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 2685
    invoke-virtual {v0, p0}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/Fragment;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 2686
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 2687
    return-void
.end method

.method protected D()Z
    .locals 1

    .prologue
    .line 485
    invoke-static {}, Lcom/twitter/library/av/aj;->a()Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 470
    invoke-super {p0, p1, p2}, Lcom/twitter/android/TweetListFragment;->a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 471
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/library/widget/PageableListView;

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/library/widget/PageableListView;

    .line 472
    return-object v1
.end method

.method protected a(Lcom/twitter/app/common/inject/t;)Laxl;
    .locals 4

    .prologue
    .line 655
    .line 656
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltr;->a(Landroid/content/Context;)Ltr;

    move-result-object v0

    .line 657
    new-instance v1, Lcom/twitter/android/vr;

    invoke-direct {v1, v0}, Lcom/twitter/android/vr;-><init>(Ltr;)V

    .line 659
    invoke-static {}, Lawj;->a()Lawl;

    move-result-object v0

    new-instance v2, Lcom/twitter/app/tweetdetails/internal/c;

    .line 661
    invoke-static {}, Laxr;->a()Laxr;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/twitter/app/tweetdetails/internal/c;-><init>(Lcom/twitter/android/vr;Laxr;)V

    .line 660
    invoke-virtual {v0, v2}, Lawl;->a(Lcom/twitter/app/tweetdetails/internal/c;)Lawl;

    move-result-object v0

    .line 662
    invoke-virtual {v0}, Lawl;->a()Laxl;

    move-result-object v0

    .line 659
    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 2597
    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->a()V

    .line 2598
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/widget/TweetDetailView;

    invoke-static {v0, v1}, Lcom/twitter/android/settings/MobileNotificationsActivity;->a(Landroid/content/Intent;Landroid/view/ViewGroup;)V

    .line 2599
    return-void
.end method

.method public a(IIZ)V
    .locals 2

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/library/widget/PageableListView;

    .line 1024
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1025
    if-eqz p3, :cond_1

    .line 1026
    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/widget/PageableListView;->smoothScrollToPositionFromTop(II)V

    .line 1031
    :cond_0
    :goto_0
    return-void

    .line 1028
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/twitter/app/common/list/aa;->a(II)V

    goto :goto_0
.end method

.method protected a(JJ)V
    .locals 3

    .prologue
    .line 497
    invoke-super {p0, p1, p2, p3, p4}, Lcom/twitter/android/TweetListFragment;->a(JJ)V

    .line 498
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->d:Lcom/twitter/android/vs;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/vs;->a(J)V

    .line 499
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->d:Lcom/twitter/android/vs;

    const-string/jumbo v1, "tweet::stream::results"

    invoke-virtual {v0, p1, p2, v1}, Lcom/twitter/android/vs;->a(JLjava/lang/String;)V

    .line 500
    return-void
.end method

.method public a(JLcom/twitter/model/core/Tweet;Z)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1750
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1751
    iget-wide v4, p3, Lcom/twitter/model/core/Tweet;->o:J

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->e:Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    move v0, v1

    .line 1752
    :goto_0
    if-eqz p4, :cond_3

    .line 1753
    iput-boolean v2, p3, Lcom/twitter/model/core/Tweet;->c:Z

    .line 1754
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->ac:Lcom/twitter/android/widget/ToggleImageButton;

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/ToggleImageButton;->setToggledOn(Z)V

    .line 1755
    if-eqz v0, :cond_0

    .line 1756
    const-string/jumbo v0, "self_unretweet"

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->c(Ljava/lang/String;)V

    .line 1758
    :cond_0
    const-string/jumbo v0, "unretweet"

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->c(Ljava/lang/String;)V

    .line 1768
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 1751
    goto :goto_0

    .line 1760
    :cond_3
    iput-boolean v1, p3, Lcom/twitter/model/core/Tweet;->c:Z

    .line 1761
    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->ac:Lcom/twitter/android/widget/ToggleImageButton;

    invoke-virtual {v2, v1}, Lcom/twitter/android/widget/ToggleImageButton;->setToggledOn(Z)V

    .line 1762
    if-eqz v0, :cond_4

    .line 1763
    const-string/jumbo v0, "self_retweet"

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->c(Ljava/lang/String;)V

    .line 1765
    :cond_4
    const-string/jumbo v0, "retweet"

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(JZI)V
    .locals 3

    .prologue
    .line 2460
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/TweetFragment;->g(J)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    .line 2461
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/twitter/model/core/Tweet;->a:Z

    if-ne v1, p3, :cond_0

    iget v1, v0, Lcom/twitter/model/core/Tweet;->k:I

    if-eq v1, p4, :cond_1

    .line 2462
    :cond_0
    iput-boolean p3, v0, Lcom/twitter/model/core/Tweet;->a:Z

    .line 2463
    iput p4, v0, Lcom/twitter/model/core/Tweet;->k:I

    .line 2464
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->x()V

    .line 2466
    :cond_1
    return-void
.end method

.method public a(JZZZ)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 1773
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1774
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->a_:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1800
    :cond_0
    :goto_0
    return-void

    .line 1778
    :cond_1
    if-nez p3, :cond_2

    .line 1779
    if-eqz p4, :cond_3

    .line 1780
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iput-boolean v2, v0, Lcom/twitter/model/core/Tweet;->c:Z

    .line 1781
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->ac:Lcom/twitter/android/widget/ToggleImageButton;

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/ToggleImageButton;->setToggledOn(Z)V

    .line 1794
    :cond_2
    :goto_1
    new-instance v0, Lcom/twitter/library/api/activity/f;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->a_:Landroid/content/Context;

    .line 1796
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v3, Lcom/twitter/model/core/Tweet;->p:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/twitter/library/api/activity/f;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V

    const/4 v1, 0x2

    .line 1794
    invoke-virtual {p0, v0, v1, v6}, Lcom/twitter/android/TweetFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto :goto_0

    .line 1783
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iput-boolean v6, v0, Lcom/twitter/model/core/Tweet;->c:Z

    .line 1784
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->ac:Lcom/twitter/android/widget/ToggleImageButton;

    invoke-virtual {v0, v6}, Lcom/twitter/android/widget/ToggleImageButton;->setToggledOn(Z)V

    .line 1785
    if-nez p5, :cond_2

    .line 1786
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->a_:Landroid/content/Context;

    const v1, 0x7f0a0908

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1787
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public a(Landroid/content/DialogInterface;II)V
    .locals 6

    .prologue
    .line 1888
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1890
    packed-switch p2, :pswitch_data_0

    .line 1914
    :cond_0
    :goto_0
    return-void

    .line 1892
    :pswitch_0
    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    .line 1893
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    if-eqz v1, :cond_1

    .line 1894
    const-string/jumbo v1, "delete"

    invoke-direct {p0, v1}, Lcom/twitter/android/TweetFragment;->c(Ljava/lang/String;)V

    .line 1895
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->ab:Lcom/twitter/library/client/bd;

    .line 1896
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->e:Lcom/twitter/library/client/Session;

    iget-object v4, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    .line 1895
    invoke-static {v2, v3, v4}, Lbtg;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/core/Tweet;)Lbtg;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 1899
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1900
    const-string/jumbo v2, "status_id"

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v3, Lcom/twitter/model/core/Tweet;->q:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1901
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 1902
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 1904
    :cond_1
    new-instance v0, Lbiv;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "ANDROID-17421"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lbiv;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lbix;->a(Lbiv;)V

    goto :goto_0

    .line 1890
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method

.method a(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 456
    const-string/jumbo v0, "as"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/ActivitySummary;

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/library/api/ActivitySummary;

    .line 457
    const-string/jumbo v0, "f"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/TweetFragment;->z:Z

    .line 458
    const-string/jumbo v0, "dw"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/TweetFragment;->A:Z

    .line 459
    const-string/jumbo v0, "fss"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/TweetFragment;->af:Z

    .line 460
    const-string/jumbo v0, "display_possibly_sensitive_media"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/TweetFragment;->a:Z

    .line 461
    const-string/jumbo v0, "suggested_tweet"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_0

    .line 463
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 464
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 466
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1279
    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/library/widget/PageableListView;

    .line 1280
    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/ut;

    .line 1282
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1366
    :cond_0
    :goto_0
    return-void

    .line 1284
    :pswitch_0
    invoke-virtual {v3}, Lcom/twitter/android/ut;->getCount()I

    move-result v1

    if-ne v1, v0, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1285
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1287
    :cond_1
    sget-object v1, Lcgi;->a:Lcgi;

    invoke-virtual {v1, p2}, Lcgi;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/Tweet;

    move-result-object v1

    .line 1288
    iget-wide v4, v1, Lcom/twitter/model/core/Tweet;->q:J

    iget-wide v6, p0, Lcom/twitter/android/TweetFragment;->ag:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_3

    .line 1292
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1293
    invoke-virtual {v3, v0}, Lcom/twitter/android/ut;->a(Ljava/util/List;)V

    .line 1294
    invoke-virtual {v3}, Lcom/twitter/android/ut;->notifyDataSetChanged()V

    .line 1296
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->o()V

    goto :goto_0

    .line 1291
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1300
    :pswitch_1
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1301
    invoke-virtual {v3, v1}, Lcom/twitter/android/ut;->a(I)Lcom/twitter/model/core/Tweet;

    move-result-object v4

    .line 1302
    sget-object v5, Lcgi;->a:Lcgi;

    invoke-virtual {v5, p2}, Lcgi;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/Tweet;

    move-result-object v5

    .line 1305
    invoke-virtual {v5}, Lcom/twitter/model/core/Tweet;->o()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1306
    invoke-virtual {v2, v1}, Lcom/twitter/library/widget/PageableListView;->a(Z)V

    .line 1309
    :cond_4
    invoke-virtual {v4, v5}, Lcom/twitter/model/core/Tweet;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1312
    invoke-virtual {v3, v1, v5}, Lcom/twitter/android/ut;->a(ILcom/twitter/model/core/Tweet;)V

    .line 1315
    :goto_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1316
    sget-object v1, Lcgi;->a:Lcgi;

    invoke-virtual {v1, p2}, Lcgi;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/Tweet;

    move-result-object v1

    .line 1317
    invoke-virtual {v4, v1}, Lcom/twitter/model/core/Tweet;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1324
    :cond_5
    if-lez v0, :cond_0

    .line 1325
    invoke-virtual {v3}, Lcom/twitter/android/ut;->notifyDataSetChanged()V

    .line 1326
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    .line 1327
    invoke-virtual {v2}, Lcom/twitter/library/widget/PageableListView;->getHeaderViewsCount()I

    move-result v1

    invoke-virtual {v3, v4}, Lcom/twitter/android/ut;->a(Lcom/twitter/model/core/Tweet;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1328
    invoke-virtual {v2}, Lcom/twitter/library/widget/PageableListView;->getLoadingHeaderHeight()I

    move-result v2

    .line 1326
    invoke-virtual {v0, v1, v2}, Lcom/twitter/app/common/list/aa;->a(II)V

    goto/16 :goto_0

    .line 1320
    :cond_6
    invoke-virtual {v3, v0, v1}, Lcom/twitter/android/ut;->a(ILcom/twitter/model/core/Tweet;)V

    .line 1321
    add-int/lit8 v0, v0, 0x1

    .line 1323
    goto :goto_2

    .line 1334
    :pswitch_2
    if-eqz p2, :cond_0

    .line 1335
    invoke-virtual {v3}, Lcom/twitter/android/ut;->b()Lcom/twitter/model/core/Tweet;

    move-result-object v2

    .line 1337
    invoke-interface {p2}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1339
    :cond_7
    sget-object v4, Lcgi;->a:Lcgi;

    invoke-virtual {v4, p2}, Lcgi;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/Tweet;

    move-result-object v4

    .line 1340
    invoke-virtual {v2, v4}, Lcom/twitter/model/core/Tweet;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v5, v4}, Lcom/twitter/model/core/Tweet;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-wide v6, v4, Lcom/twitter/model/core/Tweet;->q:J

    iget-wide v8, p0, Lcom/twitter/android/TweetFragment;->ag:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_9

    .line 1351
    :cond_8
    :goto_3
    if-lez v0, :cond_b

    .line 1352
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment;->O()Lcom/twitter/android/bp;

    move-result-object v0

    .line 1353
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/twitter/android/bp;->b:J

    .line 1354
    invoke-virtual {v3}, Lcom/twitter/android/ut;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1344
    :cond_9
    iget-object v5, p0, Lcom/twitter/android/TweetFragment;->ar:Ljava/util/Set;

    iget-wide v6, v4, Lcom/twitter/model/core/Tweet;->C:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1345
    invoke-virtual {v3}, Lcom/twitter/android/ut;->getCount()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v3, v5, v4}, Lcom/twitter/android/ut;->a(ILcom/twitter/model/core/Tweet;)V

    .line 1346
    add-int/lit8 v0, v0, 0x1

    .line 1349
    :cond_a
    invoke-interface {p2}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_3

    .line 1355
    :cond_b
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v2, 0x190

    if-lt v0, v2, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/library/widget/PageableListView;

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/PageableListView;->b(Z)V

    goto/16 :goto_0

    .line 1282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1675
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    .line 1676
    iget-boolean v1, v0, Lcom/twitter/model/core/Tweet;->a:Z

    if-eqz v1, :cond_1

    .line 1677
    new-instance v1, Lbrt;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->e:Lcom/twitter/library/client/Session;

    iget-wide v4, v0, Lcom/twitter/model/core/Tweet;->p:J

    iget-wide v6, v0, Lcom/twitter/model/core/Tweet;->q:J

    invoke-direct/range {v1 .. v7}, Lbrt;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JJ)V

    .line 1679
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbrt;->a(Lcss;)Lbrt;

    move-result-object v0

    const/4 v1, 0x4

    .line 1677
    invoke-virtual {p0, v0, v1, v8}, Lcom/twitter/android/TweetFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 1681
    invoke-direct {p0, v8}, Lcom/twitter/android/TweetFragment;->f(Z)V

    .line 1682
    const-string/jumbo v0, "unfavorite"

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->c(Ljava/lang/String;)V

    .line 1683
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->as:Lcav;

    if-eqz v0, :cond_0

    .line 1684
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->as:Lcav;

    invoke-virtual {v0, p1}, Lcav;->c(Landroid/view/View;)V

    .line 1700
    :cond_0
    :goto_0
    return-void

    .line 1687
    :cond_1
    new-instance v1, Lbrp;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->e:Lcom/twitter/library/client/Session;

    iget-wide v4, v0, Lcom/twitter/model/core/Tweet;->p:J

    iget-wide v6, v0, Lcom/twitter/model/core/Tweet;->q:J

    invoke-direct/range {v1 .. v7}, Lbrp;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JJ)V

    .line 1691
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbrp;->a(Lcss;)Lbrp;

    move-result-object v1

    .line 1692
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbrp;->a(Ljava/lang/Boolean;)Lbrp;

    move-result-object v0

    const/4 v1, 0x3

    .line 1687
    invoke-virtual {p0, v0, v1, v8}, Lcom/twitter/android/TweetFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 1694
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->f(Z)V

    .line 1695
    const-string/jumbo v0, "favorite"

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->c(Ljava/lang/String;)V

    .line 1696
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->as:Lcav;

    if-eqz v0, :cond_0

    .line 1697
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->as:Lcav;

    invoke-virtual {v0, p1}, Lcav;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;I[J)V
    .locals 4

    .prologue
    .line 1918
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1919
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1920
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/twitter/android/ip;->c(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    .line 1930
    :goto_0
    return-void

    .line 1922
    :cond_0
    new-instance v1, Lcom/twitter/app/users/q;

    invoke-direct {v1}, Lcom/twitter/app/users/q;-><init>()V

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->e:Lcom/twitter/library/client/Session;

    .line 1923
    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/twitter/app/users/q;->a(J)Lcom/twitter/app/users/q;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v2, Lcom/twitter/model/core/Tweet;->p:J

    .line 1924
    invoke-virtual {v1, v2, v3}, Lcom/twitter/app/users/q;->b(J)Lcom/twitter/app/users/q;

    move-result-object v1

    .line 1925
    invoke-virtual {v1, p2}, Lcom/twitter/app/users/q;->a(I)Lcom/twitter/app/users/q;

    move-result-object v1

    .line 1926
    invoke-virtual {v1, p3}, Lcom/twitter/app/users/q;->a([J)Lcom/twitter/app/users/q;

    move-result-object v1

    const/4 v2, 0x1

    .line 1927
    invoke-virtual {v1, v2}, Lcom/twitter/app/users/q;->a(Z)Lcom/twitter/app/users/q;

    move-result-object v1

    .line 1928
    invoke-virtual {v1, v0}, Lcom/twitter/app/users/q;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1922
    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 477
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/TweetListFragment;->a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Landroid/os/Bundle;)V

    .line 478
    if-eqz p2, :cond_0

    .line 479
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->d:Lcom/twitter/android/vs;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/vs;->b(Lcom/twitter/model/core/Tweet;Landroid/os/Bundle;)V

    .line 481
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 184
    check-cast p2, Lcom/twitter/model/core/Tweet;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/TweetFragment;->a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 1648
    invoke-super/range {p0 .. p5}, Lcom/twitter/android/TweetListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1650
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 1651
    instance-of v0, v1, Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1652
    check-cast v1, Lcom/twitter/model/core/Tweet;

    .line 1653
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 1655
    invoke-static {v0, v1}, Lcom/twitter/android/widget/ConfirmCancelPendingTweetDialog;->a(Landroid/support/v4/app/FragmentManager;Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/widget/ConfirmCancelPendingTweetDialog;

    .line 1662
    :goto_0
    return-void

    .line 1657
    :cond_0
    add-int/lit8 v0, p3, -0x1

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/ut;

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v1, v2}, Lcom/twitter/android/ut;->a(Lcom/twitter/model/core/Tweet;)I

    move-result v1

    if-ge v0, v1, :cond_1

    const-string/jumbo v0, "parent_tweet"

    .line 1659
    :goto_1
    const-string/jumbo v1, ""

    const-string/jumbo v2, "click"

    invoke-direct {p0, v1, v0, v2}, Lcom/twitter/android/TweetFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    invoke-direct {p0, p4, p5}, Lcom/twitter/android/TweetFragment;->h(J)V

    goto :goto_0

    .line 1657
    :cond_1
    const-string/jumbo v0, "child_tweet"

    goto :goto_1
.end method

.method public a(Laxg;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/twitter/android/TweetFragment;->al:Laxg;

    .line 323
    return-void
.end method

.method public a(Lclw;)V
    .locals 3

    .prologue
    .line 1464
    sget-object v0, Lcom/twitter/library/api/PromotedEvent;->n:Lcom/twitter/library/api/PromotedEvent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/library/api/PromotedEvent;)V

    .line 1465
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->o:Lcom/twitter/android/vw;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/Tweet;Lclw;Lcom/twitter/library/widget/TweetView;)V

    .line 1466
    return-void
.end method

.method protected a(Lcom/twitter/app/common/list/aj;)V
    .locals 1

    .prologue
    .line 504
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->a(Lcom/twitter/app/common/list/aj;)V

    .line 505
    const v0, 0x7f040090

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->c(I)Lcom/twitter/app/common/list/aj;

    .line 506
    return-void
.end method

.method a(Lcom/twitter/library/api/PromotedEvent;)V
    .locals 2

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1641
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aY()Lcom/twitter/android/client/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/twitter/android/client/c;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)V

    .line 1643
    :cond_0
    return-void
.end method

.method public final a(Lcom/twitter/library/service/x;II)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 849
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/TweetListFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 850
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 851
    packed-switch p2, :pswitch_data_0

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 853
    :pswitch_0
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    if-eqz v1, :cond_0

    .line 857
    iget-object v1, v0, Lcom/twitter/library/service/aa;->c:Landroid/os/Bundle;

    const-string/jumbo v2, "new_tweet"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 858
    invoke-direct {p0, p1, v1}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/library/service/x;I)V

    .line 859
    packed-switch p3, :pswitch_data_1

    .line 879
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 880
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment;->O()Lcom/twitter/android/bp;

    move-result-object v0

    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/twitter/android/bp;->a:J

    .line 881
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v4, v5, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_0

    .line 861
    :pswitch_1
    if-lez v1, :cond_1

    .line 862
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v7, v5, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 863
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment;->O()Lcom/twitter/android/bp;

    move-result-object v0

    .line 864
    iput-wide v8, v0, Lcom/twitter/android/bp;->c:J

    goto :goto_0

    .line 866
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/library/widget/PageableListView;

    invoke-virtual {v0, v6}, Lcom/twitter/library/widget/PageableListView;->a(Z)V

    goto :goto_0

    .line 871
    :pswitch_2
    if-lez v1, :cond_2

    .line 872
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_0

    .line 874
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/library/widget/PageableListView;

    invoke-virtual {v0, v6}, Lcom/twitter/library/widget/PageableListView;->b(Z)V

    goto :goto_0

    .line 884
    :cond_3
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment;->O()Lcom/twitter/android/bp;

    move-result-object v0

    iput-wide v8, v0, Lcom/twitter/android/bp;->a:J

    .line 885
    iput-boolean v6, p0, Lcom/twitter/android/TweetFragment;->z:Z

    .line 886
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->o()V

    .line 887
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/library/widget/PageableListView;

    invoke-virtual {v0, v6}, Lcom/twitter/library/widget/PageableListView;->a(Z)V

    .line 888
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 889
    if-eqz v0, :cond_0

    .line 890
    const v1, 0x7f130143

    .line 892
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a08ef

    .line 893
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    .line 891
    invoke-static {v0, v1, v2, v3}, Lcom/twitter/ui/widget/u;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    const v2, 0x7f0a08f0

    .line 895
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/twitter/android/ur;

    invoke-direct {v2, p0}, Lcom/twitter/android/ur;-><init>(Lcom/twitter/android/TweetFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 902
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto/16 :goto_0

    .line 910
    :pswitch_3
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->g()Lcom/twitter/internal/network/k;

    move-result-object v0

    .line 912
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/twitter/internal/network/k;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 913
    check-cast p1, Lcom/twitter/library/api/activity/f;

    invoke-virtual {p1}, Lcom/twitter/library/api/activity/f;->e()Lcom/twitter/library/api/ActivitySummary;

    move-result-object v0

    .line 915
    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/library/api/ActivitySummary;

    .line 916
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/ut;

    invoke-virtual {v0}, Lcom/twitter/android/ut;->notifyDataSetChanged()V

    .line 917
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment;->Q()V

    goto/16 :goto_0

    .line 922
    :pswitch_4
    check-cast p1, Lbrp;

    .line 923
    invoke-virtual {p1}, Lbrp;->s()[I

    move-result-object v1

    .line 926
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v0

    const/16 v2, 0x193

    if-ne v0, v2, :cond_4

    .line 927
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->a_:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/client/bz;->a(Landroid/content/Context;)Lcom/twitter/android/client/bz;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/bz;->a([I)V

    .line 931
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    .line 937
    new-instance v0, Lcom/twitter/library/api/activity/f;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->a_:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v3, Lcom/twitter/model/core/Tweet;->p:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/twitter/library/api/activity/f;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V

    invoke-virtual {p0, v0, v7, v6}, Lcom/twitter/android/TweetFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto/16 :goto_0

    .line 944
    :pswitch_5
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    .line 952
    new-instance v0, Lcom/twitter/library/api/activity/f;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->a_:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v3, Lcom/twitter/model/core/Tweet;->p:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/twitter/library/api/activity/f;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V

    invoke-virtual {p0, v0, v7, v6}, Lcom/twitter/android/TweetFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto/16 :goto_0

    .line 959
    :pswitch_6
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    check-cast p1, Lbvg;

    .line 961
    iget-object v0, p1, Lbvg;->a:Lcom/twitter/model/core/TwitterUser;

    .line 962
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v1, Lcom/twitter/model/core/Tweet;->o:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 963
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget v2, v0, Lcom/twitter/model/core/TwitterUser;->T:I

    iput v2, v1, Lcom/twitter/model/core/Tweet;->i:I

    .line 964
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v0, Lcom/twitter/model/core/TwitterUser;->z:J

    iput-wide v2, v1, Lcom/twitter/model/core/Tweet;->j:J

    .line 965
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment;->X()V

    goto/16 :goto_0

    .line 971
    :pswitch_7
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    if-eqz v1, :cond_0

    .line 975
    check-cast p1, Lbtn;

    .line 976
    invoke-virtual {p1}, Lbtn;->e()Lcom/twitter/model/core/Translation;

    move-result-object v1

    .line 977
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 978
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TweetDetailView;->a(Lcom/twitter/model/core/Translation;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 979
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetDetailView;->b()V

    goto/16 :goto_0

    .line 981
    :cond_5
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 982
    iget-object v2, v1, Lcom/twitter/model/core/Translation;->c:Ljava/lang/String;

    iget-object v1, v1, Lcom/twitter/model/core/Translation;->c:Ljava/lang/String;

    invoke-static {v2, v1}, Lcjg;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 984
    const v2, 0x7f0a08d5

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 987
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->a_:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 990
    :cond_6
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->a_:Landroid/content/Context;

    const v1, 0x7f0a08d3

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 991
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 851
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 859
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/twitter/model/core/MediaEntity;)V
    .locals 3

    .prologue
    .line 1470
    invoke-static {p1}, Lcug;->c(Lcom/twitter/model/core/MediaEntity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1471
    new-instance v0, Lcom/twitter/android/av/bj;

    invoke-direct {v0}, Lcom/twitter/android/av/bj;-><init>()V

    .line 1472
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/bj;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/av/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    .line 1473
    invoke-virtual {v0, v1}, Lcom/twitter/library/av/ap;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/av/ap;

    move-result-object v0

    const/4 v1, 0x1

    .line 1474
    invoke-virtual {v0, v1}, Lcom/twitter/library/av/ap;->c(Z)Lcom/twitter/library/av/ap;

    move-result-object v0

    const/4 v1, 0x0

    .line 1475
    invoke-virtual {v0, v1}, Lcom/twitter/library/av/ap;->e(Z)Lcom/twitter/library/av/ap;

    move-result-object v0

    .line 1476
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/ap;->a(Ljava/lang/Object;)V

    .line 1481
    :goto_0
    return-void

    .line 1478
    :cond_0
    sget-object v0, Lcom/twitter/library/api/PromotedEvent;->n:Lcom/twitter/library/api/PromotedEvent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/library/api/PromotedEvent;)V

    .line 1479
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->o:Lcom/twitter/android/vw;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/MediaEntity;Lcom/twitter/library/widget/TweetView;)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/core/Tweet;)V
    .locals 2

    .prologue
    .line 1871
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1872
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/twitter/android/ug;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/ug;-><init>(Lcom/twitter/android/TweetFragment;Lcom/twitter/model/core/Tweet;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1883
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/Session;Ljava/lang/String;IZ)V
    .locals 8

    .prologue
    .line 675
    iput-object p2, p0, Lcom/twitter/android/TweetFragment;->e:Lcom/twitter/library/client/Session;

    .line 676
    iput-object p1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    .line 677
    invoke-static {p1}, Lcom/twitter/library/card/CardContextFactory;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/card/CardContext;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->g:Lcom/twitter/library/card/CardContext;

    .line 678
    iput-object p3, p0, Lcom/twitter/android/TweetFragment;->s:Ljava/lang/String;

    .line 679
    iput p4, p0, Lcom/twitter/android/TweetFragment;->t:I

    .line 680
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->o:Lcom/twitter/android/vw;

    invoke-virtual {v0, p2}, Lcom/twitter/android/vw;->a(Lcom/twitter/library/client/Session;)V

    .line 681
    iput-boolean p5, p0, Lcom/twitter/android/TweetFragment;->ai:Z

    .line 682
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->ah:Lcom/twitter/android/qs;

    if-nez v0, :cond_b

    .line 683
    new-instance v0, Lcom/twitter/android/qs;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/twitter/android/qs;-><init>(Landroid/content/Context;Lcom/twitter/model/core/Tweet;)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->ah:Lcom/twitter/android/qs;

    .line 688
    :goto_0
    iget-boolean v0, p0, Lcom/twitter/android/TweetFragment;->y:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 694
    invoke-static {p1}, Lcom/twitter/android/av/m;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/TweetFragment;->y:Z

    .line 696
    sget-object v0, Lcom/twitter/library/api/PromotedEvent;->g:Lcom/twitter/library/api/PromotedEvent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/library/api/PromotedEvent;)V

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->ad:Lcom/twitter/android/widget/EngagementActionBar;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/EngagementActionBar;->setTweet(Lcom/twitter/model/core/Tweet;)V

    .line 701
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->ad:Lcom/twitter/android/widget/EngagementActionBar;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/EngagementActionBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    new-instance v0, Lcom/twitter/android/ut;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/ut;-><init>(Lcom/twitter/android/TweetFragment;Lcom/twitter/model/core/Tweet;)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/ut;

    .line 703
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/ut;

    invoke-virtual {v0, p0}, Lcom/twitter/android/ut;->a(Lcom/twitter/android/kn;)V

    .line 705
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    new-instance v0, Lcom/twitter/android/uo;

    invoke-direct {v0, p0}, Lcom/twitter/android/uo;-><init>(Lcom/twitter/android/TweetFragment;)V

    .line 714
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/TweetFragment;->a(Ljava/util/List;I)V

    .line 717
    :cond_1
    new-instance v0, Lcom/twitter/android/uu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/uu;-><init>(Lcom/twitter/android/TweetFragment;Lcom/twitter/android/ua;)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->am:Lcom/twitter/android/uu;

    .line 718
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->am:Lcom/twitter/android/uu;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->v:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/uu;->a(Ljava/util/List;Z)V

    .line 719
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->am:Lcom/twitter/android/uu;

    invoke-virtual {v0, p0}, Lcom/twitter/android/uu;->a(Lcom/twitter/android/kn;)V

    .line 721
    new-instance v0, Lcom/twitter/android/widget/h;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/ut;

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->am:Lcom/twitter/android/uu;

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/widget/h;-><init>(Landroid/widget/BaseAdapter;Landroid/widget/BaseAdapter;)V

    const/4 v1, 0x1

    .line 722
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/h;->a(Z)Lcom/twitter/android/widget/bt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/h;

    .line 723
    invoke-static {}, Lcom/twitter/android/revenue/z;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/h;->a(I)Lcom/twitter/android/widget/bt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/h;

    .line 724
    invoke-virtual {v0}, Lcom/twitter/android/widget/h;->a()Lcom/twitter/android/widget/f;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->n:Landroid/widget/BaseAdapter;

    .line 725
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/library/widget/PageableListView;

    .line 726
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->o()Z

    move-result v1

    .line 729
    invoke-virtual {v0}, Lcom/twitter/library/widget/PageableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-nez v2, :cond_3

    .line 732
    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/library/widget/PageableListView;

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->D:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/twitter/library/widget/PageableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 735
    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->B:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/twitter/library/widget/PageableListView;->a(Landroid/view/View;)V

    .line 738
    invoke-virtual {v0}, Lcom/twitter/library/widget/PageableListView;->b()V

    .line 740
    if-eqz v1, :cond_2

    .line 741
    invoke-virtual {v0}, Lcom/twitter/library/widget/PageableListView;->a()V

    .line 744
    :cond_2
    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->n:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v2}, Lcom/twitter/library/widget/PageableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 747
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/TweetFragment;->k:Z

    .line 748
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment;->O()Lcom/twitter/android/bp;

    move-result-object v0

    .line 749
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    .line 750
    iget-boolean v4, p0, Lcom/twitter/android/TweetFragment;->z:Z

    if-nez v4, :cond_4

    iget-wide v4, v0, Lcom/twitter/android/bp;->a:J

    const-wide/32 v6, 0x493e0

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_c

    .line 751
    :cond_4
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 755
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/widget/TweetDetailView;

    new-instance v2, Lcom/twitter/android/up;

    invoke-direct {v2, p0}, Lcom/twitter/android/up;-><init>(Lcom/twitter/android/TweetFragment;)V

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/TweetDetailView;->setOnTweetAnalyticsClickListener(Landroid/view/View$OnClickListener;)V

    .line 762
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/library/api/ActivitySummary;

    if-nez v0, :cond_5

    .line 763
    new-instance v0, Lcom/twitter/library/api/activity/f;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-wide v4, p1, Lcom/twitter/model/core/Tweet;->p:J

    invoke-direct {v0, v2, p2, v4, v5}, Lcom/twitter/library/api/activity/f;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/twitter/android/TweetFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 767
    :cond_5
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->p()Z

    move-result v0

    if-nez v0, :cond_6

    .line 768
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment;->H()V

    .line 771
    :cond_6
    if-eqz v1, :cond_7

    .line 772
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->b(Z)V

    .line 776
    :cond_7
    const-string/jumbo v0, "translate_tweet_auto"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 777
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment;->P()V

    .line 778
    const-string/jumbo v0, "translation_auto"

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->c(Ljava/lang/String;)V

    .line 781
    :cond_8
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 782
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 783
    if-eqz v2, :cond_a

    .line 784
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 785
    if-eqz v0, :cond_a

    .line 786
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 787
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 788
    :goto_2
    const-string/jumbo v3, "email_redirect_retweet"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_9

    const-string/jumbo v3, "retweet"

    .line 789
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 790
    :cond_9
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget-boolean v0, v0, Lcom/twitter/model/core/Tweet;->c:Z

    .line 793
    if-nez v0, :cond_e

    .line 794
    new-instance v0, Lcom/twitter/android/np;

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/np;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/twitter/model/core/Tweet;)V

    const/16 v1, 0x65

    .line 795
    invoke-virtual {v0, v1}, Lcom/twitter/android/np;->a(I)Lcom/twitter/android/np;

    move-result-object v0

    .line 796
    invoke-virtual {v0, p0}, Lcom/twitter/android/np;->a(Lcom/twitter/android/nq;)Lcom/twitter/android/np;

    move-result-object v0

    .line 797
    invoke-virtual {v0, p0}, Lcom/twitter/android/np;->a(Landroid/support/v4/app/Fragment;)Lcom/twitter/android/np;

    move-result-object v0

    .line 798
    invoke-virtual {v0}, Lcom/twitter/android/np;->a()Lcom/twitter/android/nm;

    move-result-object v0

    .line 799
    invoke-virtual {v0}, Lcom/twitter/android/nm;->b()V

    .line 818
    :cond_a
    :goto_3
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment;->F()Lcom/twitter/android/vr;

    move-result-object v0

    .line 821
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->e:Lcom/twitter/library/client/Session;

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/vr;->a(Lcom/twitter/library/client/Session;Ljava/lang/Object;)Lrx/o;

    move-result-object v1

    .line 823
    new-instance v2, Lcom/twitter/android/uq;

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/uq;-><init>(Lcom/twitter/android/TweetFragment;Lcom/twitter/android/vr;)V

    invoke-virtual {v1, v2}, Lrx/o;->c(Ldjf;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->an:Lrx/ap;

    .line 837
    return-void

    .line 685
    :cond_b
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->ah:Lcom/twitter/android/qs;

    invoke-virtual {v0, p1}, Lcom/twitter/android/qs;->a(Lcom/twitter/model/core/Tweet;)V

    goto/16 :goto_0

    .line 753
    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/Session;)V

    goto/16 :goto_1

    .line 787
    :cond_d
    const-string/jumbo v0, ""

    goto :goto_2

    .line 801
    :cond_e
    const-string/jumbo v0, "email_redirect_retweet"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_3

    .line 803
    :cond_f
    const-string/jumbo v1, "email_redirect_favorite"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_10

    const-string/jumbo v1, "favorite"

    .line 805
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string/jumbo v1, "like"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 808
    :cond_10
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget-boolean v0, v0, Lcom/twitter/model/core/Tweet;->a:Z

    if-nez v0, :cond_11

    .line 809
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->y()V

    goto :goto_3

    .line 811
    :cond_11
    const-string/jumbo v0, "email_redirect_favorite"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public a(Lcom/twitter/model/core/av;)V
    .locals 1

    .prologue
    .line 1429
    iget-object v0, p1, Lcom/twitter/model/core/av;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->b(Ljava/lang/String;)V

    .line 1430
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->j:Lciu;

    invoke-virtual {v0, p1}, Lciu;->a(Lcom/twitter/model/core/av;)V

    .line 1431
    return-void
.end method

.method public a(Lcom/twitter/model/core/b;)V
    .locals 2

    .prologue
    .line 1421
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1422
    invoke-static {v0, p1}, Lcom/twitter/android/fh;->a(Landroid/content/Context;Lcom/twitter/model/core/b;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1423
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->j:Lciu;

    invoke-virtual {v0, p1}, Lciu;->a(Lcom/twitter/model/core/b;)V

    .line 1424
    return-void
.end method

.method public a(Lcom/twitter/model/core/cx;)V
    .locals 10

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->i:Lcom/twitter/android/card/i;

    if-eqz v0, :cond_0

    .line 1445
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->i:Lcom/twitter/android/card/i;

    const-string/jumbo v1, "open_link"

    const-string/jumbo v2, "platform_card"

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/card/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->Y()Ljava/lang/String;

    move-result-object v0

    .line 1450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tweet::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "::open_link"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1451
    const-string/jumbo v0, "tweet::tweet::impression"

    .line 1453
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-static {v0}, Lcom/twitter/library/client/BrowserDataSourceFactory;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/client/BrowserDataSource;

    move-result-object v2

    iget-wide v4, p0, Lcom/twitter/android/TweetFragment;->aa:J

    const-string/jumbo v7, "tweet::tweet::impression"

    .line 1454
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v8

    const/4 v9, 0x0

    move-object v3, p1

    .line 1453
    invoke-static/range {v1 .. v9}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Lcom/twitter/library/client/BrowserDataSource;Lcom/twitter/model/core/cx;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)V

    .line 1455
    return-void
.end method

.method public a(Lcom/twitter/model/core/q;)V
    .locals 2

    .prologue
    .line 1413
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1414
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/twitter/android/fh;->a(Landroid/content/Context;Lcom/twitter/model/core/q;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1415
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->j:Lciu;

    invoke-virtual {v0, p1}, Lciu;->a(Lcom/twitter/model/core/q;)V

    .line 1416
    return-void
.end method

.method public a(Lcom/twitter/model/geo/TwitterPlace;)V
    .locals 1

    .prologue
    .line 1435
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1436
    if-eqz v0, :cond_0

    .line 1437
    invoke-static {v0, p1}, Lcom/twitter/android/geo/places/d;->a(Landroid/content/Context;Lcom/twitter/model/geo/TwitterPlace;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->startActivity(Landroid/content/Intent;)V

    .line 1439
    :cond_0
    return-void
.end method

.method protected a(Z)V
    .locals 1

    .prologue
    .line 490
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->a(Z)V

    .line 491
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->d:Lcom/twitter/android/vs;

    invoke-virtual {v0}, Lcom/twitter/android/vs;->a()V

    .line 492
    return-void
.end method

.method public a(ZI)V
    .locals 3

    .prologue
    .line 1007
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/library/widget/PageableListView;

    invoke-virtual {v0}, Lcom/twitter/library/widget/PageableListView;->getHeaderViewsCount()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/ut;

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    .line 1009
    invoke-virtual {v1, v2}, Lcom/twitter/android/ut;->a(Lcom/twitter/model/core/Tweet;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1010
    invoke-virtual {p0, v0, p2, p1}, Lcom/twitter/android/TweetFragment;->a(IIZ)V

    .line 1012
    :cond_0
    return-void
.end method

.method public a(JLcom/twitter/model/core/Tweet;Ljava/lang/Runnable;)Z
    .locals 7

    .prologue
    .line 1851
    const/4 v0, 0x0

    .line 1852
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->ar:Ljava/util/Set;

    iget-wide v2, p3, Lcom/twitter/model/core/Tweet;->C:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1853
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    if-eqz v1, :cond_1

    iget-wide v2, p3, Lcom/twitter/model/core/Tweet;->y:J

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v1, Lcom/twitter/model/core/Tweet;->C:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 1854
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1855
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/twitter/android/uf;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/twitter/android/uf;-><init>(Lcom/twitter/android/TweetFragment;Lcom/twitter/model/core/Tweet;J)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1864
    :cond_0
    const/4 v0, 0x1

    .line 1866
    :cond_1
    return v0
.end method

.method protected synthetic b(Lcom/twitter/app/common/inject/t;)Lcom/twitter/app/common/inject/b;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/app/common/inject/t;)Laxl;

    move-result-object v0

    return-object v0
.end method

.method public b(J)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 1383
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->p:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    if-eqz v0, :cond_0

    .line 1384
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->p:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 1385
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v1, Lcom/twitter/model/core/Tweet;->p:J

    .line 1386
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(J)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-object v6, v0

    .line 1393
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    .line 1394
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v5

    move-wide v2, p1

    move-object v7, v4

    .line 1393
    invoke-static/range {v1 .. v7}, Lcom/twitter/android/ProfileActivity;->a(Landroid/content/Context;JLjava/lang/String;Lcss;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/model/timeline/al;)V

    .line 1395
    return-void

    .line 1388
    :cond_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 1389
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v1, Lcom/twitter/model/core/Tweet;->p:J

    .line 1390
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(J)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-object v6, v0

    goto :goto_0
.end method

.method public b(JLcom/twitter/model/core/Tweet;Z)V
    .locals 3

    .prologue
    .line 1805
    iget-wide v0, p3, Lcom/twitter/model/core/Tweet;->o:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1806
    :goto_0
    if-eqz v0, :cond_0

    .line 1807
    const-string/jumbo v0, "self_quote"

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->c(Ljava/lang/String;)V

    .line 1809
    :cond_0
    const-string/jumbo v0, "quote"

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->c(Ljava/lang/String;)V

    .line 1810
    return-void

    .line 1805
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/twitter/model/core/Tweet;)V
    .locals 2

    .prologue
    .line 645
    iput-object p1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    .line 646
    invoke-static {p1}, Lcom/twitter/library/card/CardContextFactory;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/card/CardContext;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->g:Lcom/twitter/library/card/CardContext;

    .line 647
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->ad:Lcom/twitter/android/widget/EngagementActionBar;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/EngagementActionBar;->setTweet(Lcom/twitter/model/core/Tweet;)V

    .line 648
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/ut;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0, v1}, Lcom/twitter/android/ut;->b(Lcom/twitter/model/core/Tweet;)V

    .line 649
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->x()V

    .line 650
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 1003
    iget v0, p0, Lcom/twitter/android/TweetFragment;->F:I

    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/TweetFragment;->a(ZI)V

    .line 1004
    return-void
.end method

.method public b(Lcom/twitter/model/core/cx;)Z
    .locals 1

    .prologue
    .line 1459
    const/4 v0, 0x1

    return v0
.end method

.method public c(J)V
    .locals 3

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->o:Lcom/twitter/android/vw;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/Tweet;JLcom/twitter/library/widget/TweetView;)V

    .line 1486
    return-void
.end method

.method public c(JLcom/twitter/model/core/Tweet;Z)V
    .locals 4

    .prologue
    .line 1815
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 1816
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "tweet::retweet_dialog::dismiss"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1815
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1817
    return-void
.end method

.method public c(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1215
    iput-boolean v1, p0, Lcom/twitter/android/TweetFragment;->ae:Z

    .line 1216
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    .line 1217
    if-eqz p1, :cond_1

    .line 1218
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->u()V

    .line 1223
    :cond_0
    :goto_0
    return-void

    .line 1220
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/library/widget/PageableListView;

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/PageableListView;->b(Z)V

    goto :goto_0
.end method

.method public c_(J)V
    .locals 3

    .prologue
    .line 1834
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1835
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/twitter/android/ue;

    invoke-direct {v1, p0, p1, p2}, Lcom/twitter/android/ue;-><init>(Lcom/twitter/android/TweetFragment;J)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1845
    :cond_0
    return-void
.end method

.method public d(J)V
    .locals 3

    .prologue
    .line 1403
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1404
    if-eqz v0, :cond_0

    .line 1405
    invoke-static {v0, p1, p2}, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->c(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1408
    :cond_0
    return-void
.end method

.method public d(JLcom/twitter/model/core/Tweet;Z)V
    .locals 4

    .prologue
    .line 1822
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aY()Lcom/twitter/android/client/c;

    move-result-object v0

    .line 1825
    if-eqz v0, :cond_0

    .line 1826
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 1827
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "tweet::retweet_dialog::impression"

    aput-object v3, v1, v2

    .line 1828
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1826
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1830
    :cond_0
    return-void
.end method

.method public e(J)V
    .locals 1

    .prologue
    .line 2486
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/ut;

    if-eqz v0, :cond_0

    .line 2487
    iput-wide p1, p0, Lcom/twitter/android/TweetFragment;->ag:J

    .line 2488
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/ut;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/ut;->c(J)V

    .line 2490
    :cond_0
    return-void
.end method

.method public l()Lcom/twitter/library/api/ActivitySummary;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/library/api/ActivitySummary;

    return-object v0
.end method

.method public m()V
    .locals 4

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/library/widget/PageableListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/library/widget/PageableListView;

    .line 1161
    invoke-virtual {v0}, Lcom/twitter/library/widget/PageableListView;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/widget/TweetDetailView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/widget/TweetDetailView;

    .line 1162
    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetDetailView;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1165
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1166
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->B:Landroid/view/View;

    .line 1167
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 1168
    :goto_1
    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->B:Landroid/view/View;

    iget v3, p0, Lcom/twitter/android/TweetFragment;->E:I

    if-eqz v0, :cond_3

    .line 1169
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1168
    :goto_2
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/twitter/android/TweetFragment;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 1167
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1169
    :cond_3
    iget v0, p0, Lcom/twitter/android/TweetFragment;->E:I

    goto :goto_2
.end method

.method o()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1173
    iget-boolean v0, p0, Lcom/twitter/android/TweetFragment;->k:Z

    if-nez v0, :cond_1

    .line 1201
    :cond_0
    :goto_0
    return-void

    .line 1177
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/ut;

    .line 1178
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/library/widget/PageableListView;

    .line 1179
    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    .line 1181
    invoke-virtual {v0, v4}, Lcom/twitter/android/ut;->a(I)Lcom/twitter/model/core/Tweet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/model/core/Tweet;->o()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/twitter/library/widget/PageableListView;->a(Z)V

    .line 1182
    invoke-virtual {v0}, Lcom/twitter/android/ut;->b()Lcom/twitter/model/core/Tweet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/model/core/Tweet;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/twitter/library/widget/PageableListView;->b(Z)V

    .line 1183
    invoke-virtual {v0}, Lcom/twitter/android/ut;->notifyDataSetChanged()V

    .line 1185
    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1186
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->B:Landroid/view/View;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/ui/r;->a(Landroid/app/Activity;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/TweetFragment;->a(Landroid/view/View;I)V

    .line 1187
    iget v0, p0, Lcom/twitter/android/TweetFragment;->F:I

    invoke-virtual {p0, v4, v0}, Lcom/twitter/android/TweetFragment;->a(ZI)V

    .line 1189
    :cond_2
    iput-boolean v4, p0, Lcom/twitter/android/TweetFragment;->k:Z

    .line 1191
    const-string/jumbo v0, "tweet:complete"

    .line 1193
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aX()Layj;

    move-result-object v1

    sget-object v2, Laxz;->n:Laye;

    .line 1192
    invoke-static {v0, v1, v2}, Lcom/twitter/library/metrics/f;->b(Ljava/lang/String;Layj;Laye;)Lcom/twitter/library/metrics/f;

    move-result-object v0

    .line 1194
    iget-wide v2, p0, Lcom/twitter/android/TweetFragment;->aa:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/metrics/f;->b(J)V

    .line 1195
    invoke-virtual {v0}, Lcom/twitter/library/metrics/f;->j()V

    .line 1197
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->i:Lcom/twitter/android/card/i;

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->i:Lcom/twitter/android/card/i;

    const-string/jumbo v1, "impression"

    const-string/jumbo v2, "platform_card"

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/card/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1492
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    .line 1493
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1495
    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-static {v2}, Lcom/twitter/model/core/Tweet;->b(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v7

    .line 1496
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v8

    .line 1497
    sparse-switch v1, :sswitch_data_0

    .line 1584
    :cond_0
    :goto_0
    return-void

    .line 1500
    :sswitch_0
    const v0, 0x7f1302fb

    if-ne v1, v0, :cond_1

    .line 1501
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->j:Lciu;

    invoke-virtual {v0}, Lciu;->c()V

    .line 1505
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->o:J

    .line 1506
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/TweetFragment;->b(J)V

    goto :goto_0

    .line 1503
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->j:Lciu;

    invoke-virtual {v0}, Lciu;->d()V

    goto :goto_1

    .line 1510
    :sswitch_1
    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->m:Lcom/twitter/library/api/PromotedEvent;

    invoke-virtual {p0, v1}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/library/api/PromotedEvent;)V

    .line 1511
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->E()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->ad()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1512
    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->o:J

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/TweetFragment;->b(J)V

    goto :goto_0

    .line 1514
    :cond_2
    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/TweetFragment;->b(J)V

    goto :goto_0

    .line 1519
    :sswitch_2
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1520
    check-cast p1, Lcom/twitter/library/widget/ActionButton;

    .line 1521
    invoke-virtual {p1}, Lcom/twitter/library/widget/ActionButton;->isChecked()Z

    move-result v1

    .line 1522
    if-eqz v1, :cond_3

    const-string/jumbo v0, "unfollow"

    .line 1524
    :goto_2
    if-eqz v1, :cond_4

    .line 1525
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iput v11, v1, Lcom/twitter/model/core/Tweet;->i:I

    .line 1526
    iget-object v9, p0, Lcom/twitter/android/TweetFragment;->ab:Lcom/twitter/library/client/bd;

    new-instance v1, Lbuc;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v4, Lcom/twitter/model/core/Tweet;->o:J

    iget-object v6, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    .line 1527
    invoke-virtual {v6}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lbuc;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V

    .line 1526
    invoke-virtual {v9, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 1534
    :goto_3
    invoke-virtual {p1}, Lcom/twitter/library/widget/ActionButton;->toggle()V

    .line 1535
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 1536
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v1, v2, v3, v8, v10}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v2, Lcom/twitter/model/core/Tweet;->o:J

    iget-object v4, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    .line 1537
    invoke-virtual {v4}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v10}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(JLcss;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/String;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "tweet"

    aput-object v4, v3, v11

    aput-object v10, v3, v12

    const/4 v4, 0x2

    aput-object v7, v3, v4

    const/4 v4, 0x3

    aput-object v10, v3, v4

    aput-object v0, v3, v13

    .line 1538
    invoke-static {v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v11

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1535
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    .line 1522
    :cond_3
    const-string/jumbo v0, "follow"

    goto :goto_2

    .line 1529
    :cond_4
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iput v12, v1, Lcom/twitter/model/core/Tweet;->i:I

    .line 1530
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    .line 1531
    iget-object v9, p0, Lcom/twitter/android/TweetFragment;->ab:Lcom/twitter/library/client/bd;

    new-instance v1, Lbtz;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v4, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v4, Lcom/twitter/model/core/Tweet;->o:J

    iget-object v6, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    .line 1532
    invoke-virtual {v6}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lbtz;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V

    .line 1531
    invoke-virtual {v9, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    goto :goto_3

    .line 1540
    :cond_5
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1542
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->d()Ljava/lang/String;

    move-result-object v0

    .line 1540
    invoke-static {v1, v13, v0}, Lcom/twitter/android/ip;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1547
    :sswitch_3
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetDetailView;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1548
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetDetailView;->b()V

    goto/16 :goto_0

    .line 1550
    :cond_6
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment;->P()V

    .line 1551
    const-string/jumbo v0, "translation_button"

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1557
    :sswitch_4
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment;->F()Lcom/twitter/android/vr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/vr;->a()Lcom/twitter/model/av/o;

    move-result-object v0

    .line 1559
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->ao:Lcom/twitter/android/av/monetization/g;

    if-eqz v1, :cond_0

    .line 1560
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->ao:Lcom/twitter/android/av/monetization/g;

    new-instance v2, Lcom/twitter/android/av/monetization/e;

    invoke-direct {v2, v0}, Lcom/twitter/android/av/monetization/e;-><init>(Lcom/twitter/model/av/o;)V

    invoke-virtual {v1, v2}, Lcom/twitter/android/av/monetization/g;->c(Lauc;)V

    goto/16 :goto_0

    .line 1567
    :sswitch_5
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->j:Lciu;

    invoke-virtual {v0}, Lciu;->a()V

    .line 1568
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "twitter"

    .line 1569
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "tweet"

    .line 1570
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "status_id"

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v2, Lcom/twitter/model/core/Tweet;->t:J

    .line 1572
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1571
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1573
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1574
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/twitter/android/TweetActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1575
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "association"

    .line 1576
    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 1577
    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1497
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f130003 -> :sswitch_2
        0x7f13004e -> :sswitch_0
        0x7f130277 -> :sswitch_5
        0x7f1302fb -> :sswitch_0
        0x7f1304dc -> :sswitch_1
        0x7f13076b -> :sswitch_3
        0x7f130770 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 328
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 329
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v1, "tweet"

    .line 330
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 329
    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 332
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->p()Lcom/twitter/app/common/list/w;

    move-result-object v1

    .line 333
    const-string/jumbo v0, "source_association"

    invoke-virtual {v1, v0}, Lcom/twitter/app/common/list/w;->h(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->p:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 334
    const-string/jumbo v0, "timeline_moment"

    .line 335
    invoke-virtual {v1, v0}, Lcom/twitter/app/common/list/w;->i(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    sget-object v1, Lcom/twitter/model/moments/ad;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ad;

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->u:Lcom/twitter/model/moments/ad;

    .line 338
    if-eqz p1, :cond_0

    .line 339
    invoke-virtual {p0, p1}, Lcom/twitter/android/TweetFragment;->a(Landroid/os/Bundle;)V

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0369

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/TweetFragment;->E:I

    .line 342
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/TweetFragment;->F:I

    .line 343
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v3

    .line 344
    new-instance v0, Lcom/twitter/android/ua;

    const-string/jumbo v1, "tweet:stream:tweet:link:open_link"

    .line 345
    invoke-static {v4, v1, v4, v4}, Lciw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lciw;

    move-result-object v5

    new-instance v6, Lcom/twitter/android/uw;

    invoke-direct {v6, p0, p0, v3}, Lcom/twitter/android/uw;-><init>(Lcom/twitter/android/TweetFragment;Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/ua;-><init>(Lcom/twitter/android/TweetFragment;Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Lciw;Lcom/twitter/android/sn;)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->o:Lcom/twitter/android/vw;

    .line 383
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->o:Lcom/twitter/android/vw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/vw;->a(Z)V

    .line 384
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->o:Lcom/twitter/android/vw;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->p:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v0, v1}, Lcom/twitter/android/vw;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 386
    new-instance v0, Lciu;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/uk;

    invoke-direct {v2, p0}, Lcom/twitter/android/uk;-><init>(Lcom/twitter/android/TweetFragment;)V

    .line 392
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/TweetFragment;->p:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    new-instance v5, Lcom/twitter/android/ul;

    invoke-direct {v5, p0}, Lcom/twitter/android/ul;-><init>(Lcom/twitter/android/TweetFragment;)V

    iget-object v6, p0, Lcom/twitter/android/TweetFragment;->Z:Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct/range {v0 .. v6}, Lciu;-><init>(Landroid/content/Context;Lcom/twitter/util/object/i;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/util/object/i;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->j:Lciu;

    .line 400
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 402
    instance-of v1, v0, Lcom/twitter/android/TweetActivity;

    if-eqz v1, :cond_1

    .line 403
    new-instance v1, Lcom/twitter/android/um;

    invoke-direct {v1, p0}, Lcom/twitter/android/um;-><init>(Lcom/twitter/android/TweetFragment;)V

    iput-object v1, p0, Lcom/twitter/android/TweetFragment;->ap:Laum;

    .line 430
    new-instance v1, Lcom/twitter/android/av/monetization/g;

    check-cast v0, Lcom/twitter/android/TweetActivity;

    const/16 v2, 0x69

    invoke-direct {v1, v0, v2}, Lcom/twitter/android/av/monetization/g;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/twitter/android/TweetFragment;->ao:Lcom/twitter/android/av/monetization/g;

    .line 432
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->ao:Lcom/twitter/android/av/monetization/g;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->ap:Laum;

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/monetization/g;->a(Laum;)V

    .line 434
    :cond_1
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1242
    packed-switch p1, :pswitch_data_0

    .line 1262
    :goto_0
    return-object v4

    .line 1244
    :pswitch_0
    sget-object v0, Lcom/twitter/library/provider/dh;->j:Landroid/net/Uri;

    move-object v2, v0

    .line 1260
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->p:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 1261
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->e:Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 1262
    new-instance v0, Lcom/twitter/android/bt;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1263
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "ownerId"

    .line 1264
    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1265
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcho;->a:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    .line 1262
    goto :goto_0

    .line 1248
    :pswitch_1
    sget-object v0, Lcom/twitter/library/provider/dh;->k:Landroid/net/Uri;

    move-object v2, v0

    .line 1249
    goto :goto_1

    .line 1252
    :pswitch_2
    sget-object v0, Lcom/twitter/library/provider/dh;->l:Landroid/net/Uri;

    move-object v2, v0

    .line 1253
    goto :goto_1

    .line 1242
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->an:Lrx/ap;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->an:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->ao:Lcom/twitter/android/av/monetization/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->ap:Laum;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->ao:Lcom/twitter/android/av/monetization/g;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->ap:Laum;

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/monetization/g;->b(Laum;)V

    .line 446
    :cond_1
    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->onDestroy()V

    .line 447
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 184
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/TweetFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1274
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1604
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 1605
    const v3, 0x7f130769

    if-ne v2, v3, :cond_1

    .line 1606
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->e:Lcom/twitter/library/client/Session;

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "tweet"

    aput-object v4, v3, v1

    aput-object v6, v3, v0

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    .line 1607
    invoke-virtual {v5}, Lcom/twitter/model/core/Tweet;->Y()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v6, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "copy"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    .line 1606
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 1608
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 1609
    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v3}, Lcom/twitter/model/core/Tweet;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1610
    const v3, 0x7f0a0226

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1613
    :cond_0
    :goto_0
    return v0

    :cond_1
    const v3, 0x7f130277

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->o:Lcom/twitter/android/vw;

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v2, v3}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 629
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 630
    const-string/jumbo v0, "as"

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/library/api/ActivitySummary;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 631
    const-string/jumbo v0, "f"

    iget-boolean v1, p0, Lcom/twitter/android/TweetFragment;->z:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 632
    const-string/jumbo v0, "dw"

    iget-boolean v1, p0, Lcom/twitter/android/TweetFragment;->A:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 633
    const-string/jumbo v0, "fss"

    iget-boolean v1, p0, Lcom/twitter/android/TweetFragment;->af:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 635
    const-string/jumbo v0, "display_possibly_sensitive_media"

    iget-boolean v1, p0, Lcom/twitter/android/TweetFragment;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 636
    const-string/jumbo v0, "suggested_tweet"

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 637
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/TweetDetailView;->a(Landroid/os/Bundle;)V

    .line 638
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 1130
    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->onStart()V

    .line 1131
    iget-boolean v0, p0, Lcom/twitter/android/TweetFragment;->ak:Z

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetDetailView;->aP_()V

    .line 1133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/TweetFragment;->ak:Z

    .line 1135
    :cond_0
    invoke-static {p0}, Lcom/twitter/library/provider/cf;->b(Lcom/twitter/library/provider/cg;)V

    .line 1136
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 1141
    invoke-static {p0}, Lcom/twitter/library/provider/cf;->a(Lcom/twitter/library/provider/cg;)V

    .line 1142
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 1143
    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->d:Lcom/twitter/android/vs;

    const-string/jumbo v3, "tweet::stream::results"

    invoke-virtual {v2, v0, v1, v3}, Lcom/twitter/android/vs;->a(JLjava/lang/String;)V

    .line 1144
    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->d:Lcom/twitter/android/vs;

    invoke-virtual {v2, v0, v1}, Lcom/twitter/android/vs;->a(J)V

    .line 1145
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetDetailView;->f()V

    .line 1146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/TweetFragment;->ak:Z

    .line 1147
    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->onStop()V

    .line 1148
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 510
    invoke-super {p0, p1, p2}, Lcom/twitter/android/TweetListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 511
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/library/widget/PageableListView;

    .line 512
    invoke-virtual {v1, v5}, Lcom/twitter/library/widget/PageableListView;->setScrollingCacheEnabled(Z)V

    .line 513
    invoke-virtual {v1, v5}, Lcom/twitter/library/widget/PageableListView;->setCacheColorHint(I)V

    .line 514
    new-instance v0, Lcom/twitter/android/un;

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/un;-><init>(Lcom/twitter/android/TweetFragment;Lcom/twitter/library/widget/PageableListView;)V

    invoke-virtual {v1, v0}, Lcom/twitter/library/widget/PageableListView;->setOnPageScrollListener(Lcom/twitter/library/widget/x;)V

    .line 581
    invoke-virtual {v1}, Lcom/twitter/library/widget/PageableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 582
    const v0, 0x7f0403d1

    .line 583
    invoke-virtual {v2, v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/TweetDetailView;

    .line 584
    iget-object v3, v0, Lcom/twitter/android/widget/TweetDetailView;->a:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v3, p0}, Lcom/twitter/library/media/widget/UserImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetDetailView;->getNamePanel()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/TweetDetailView;->setOnMomentClickListener(Laci;)V

    .line 587
    new-instance v3, Lcom/twitter/android/widget/fp;

    iget-object v4, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/library/widget/PageableListView;

    invoke-direct {v3, v4, v0}, Lcom/twitter/android/widget/fp;-><init>(Landroid/view/View;Lcom/twitter/android/widget/TweetDetailView;)V

    .line 589
    iget-object v4, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/library/widget/PageableListView;

    invoke-virtual {v4, v3}, Lcom/twitter/library/widget/PageableListView;->setExploreByTouchHelper(Landroid/support/v4/widget/ExploreByTouchHelper;)V

    .line 591
    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetDetailView;->getTweetTextView()Landroid/widget/TextView;

    move-result-object v3

    .line 592
    if-eqz v3, :cond_0

    .line 593
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 596
    :cond_0
    iget-object v3, v0, Lcom/twitter/android/widget/TweetDetailView;->b:Lcom/twitter/ui/widget/BadgeView;

    invoke-virtual {v3, p0}, Lcom/twitter/ui/widget/BadgeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/TweetDetailView;->setQuoteTweetClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/TweetDetailView;->setQuoteTweetLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 599
    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/TweetDetailView;->setTranslationButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/TweetDetailView;->setOnMediaMonetizationClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    if-eqz p2, :cond_1

    .line 602
    invoke-virtual {v0, p2}, Lcom/twitter/android/widget/TweetDetailView;->b(Landroid/os/Bundle;)V

    .line 604
    :cond_1
    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->u:Lcom/twitter/model/moments/ad;

    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/TweetDetailView;->setMoment(Lcom/twitter/model/moments/ad;)V

    .line 605
    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/widget/TweetDetailView;

    .line 606
    iput-boolean v5, p0, Lcom/twitter/android/TweetFragment;->ak:Z

    .line 608
    iget-object v0, v0, Lcom/twitter/android/widget/TweetDetailView;->c:Lcom/twitter/android/widget/EngagementActionBar;

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->ad:Lcom/twitter/android/widget/EngagementActionBar;

    .line 609
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->ad:Lcom/twitter/android/widget/EngagementActionBar;

    invoke-virtual {v0}, Lcom/twitter/android/widget/EngagementActionBar;->b()V

    .line 610
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->ad:Lcom/twitter/android/widget/EngagementActionBar;

    const v3, 0x7f13002d

    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/EngagementActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ToggleImageButton;

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->G:Lcom/twitter/android/widget/ToggleImageButton;

    .line 611
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->ad:Lcom/twitter/android/widget/EngagementActionBar;

    const v3, 0x7f130061

    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/EngagementActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ToggleImageButton;

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->ac:Lcom/twitter/android/widget/ToggleImageButton;

    .line 613
    const v0, 0x7f040056

    invoke-virtual {v2, v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->C:Landroid/view/View;

    .line 614
    const v0, 0x7f040269

    invoke-virtual {v2, v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->B:Landroid/view/View;

    .line 615
    const v0, 0x7f0400aa

    invoke-virtual {v2, v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->D:Landroid/view/View;

    .line 617
    invoke-static {}, Lcay;->a()Lcay;

    move-result-object v0

    invoke-virtual {v0}, Lcay;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 618
    new-instance v0, Lcav;

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Lcav;-><init>(Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->as:Lcav;

    .line 619
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->as:Lcav;

    .line 620
    invoke-static {}, Lcay;->a()Lcay;

    move-result-object v1

    invoke-virtual {v1}, Lcay;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcav;->a(Ljava/util/List;)V

    .line 622
    :cond_2
    sget-object v0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/vt;

    .line 623
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v2

    iget v3, p0, Lcom/twitter/android/TweetFragment;->K:I

    iget-object v4, p0, Lcom/twitter/android/TweetFragment;->L:Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 624
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v5

    .line 622
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/vt;->a(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;ILcom/twitter/library/scribe/TwitterScribeItem;Lcom/twitter/library/client/bk;)Lcom/twitter/android/vs;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->d:Lcom/twitter/android/vs;

    .line 625
    return-void
.end method

.method public t()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1206
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/library/widget/PageableListView;

    .line 1208
    invoke-virtual {v0}, Lcom/twitter/library/widget/PageableListView;->getHeaderViewsCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/twitter/library/widget/PageableListView;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/widget/PageableListView;->setSelectionFromTop(II)V

    .line 1209
    invoke-virtual {v0, v3}, Lcom/twitter/library/widget/PageableListView;->b(Z)V

    .line 1210
    iput-boolean v3, p0, Lcom/twitter/android/TweetFragment;->ae:Z

    .line 1211
    return-void
.end method

.method public u()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 1226
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 1227
    invoke-virtual {p0, v6}, Lcom/twitter/android/TweetFragment;->a_(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/ut;

    invoke-virtual {v0}, Lcom/twitter/android/ut;->b()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    .line 1229
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment;->O()Lcom/twitter/android/bp;

    move-result-object v1

    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/twitter/android/bp;->b:J

    .line 1230
    new-instance v1, Lbrz;

    .line 1232
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->e:Lcom/twitter/library/client/Session;

    iget-object v4, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v4, Lcom/twitter/model/core/Tweet;->p:J

    invoke-direct {v1, v2, v3, v4, v5}, Lbrz;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V

    .line 1233
    iget-wide v2, v0, Lcom/twitter/model/core/Tweet;->p:J

    invoke-virtual {v1, v2, v3}, Lbrz;->c(J)Lbss;

    .line 1234
    invoke-direct {p0, v1}, Lcom/twitter/android/TweetFragment;->a(Lbrz;)V

    .line 1235
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, v6}, Lcom/twitter/android/TweetFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 1237
    :cond_0
    return-void
.end method

.method public v()V
    .locals 3

    .prologue
    .line 1732
    new-instance v0, Lcom/twitter/android/np;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/np;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/twitter/model/core/Tweet;)V

    const/16 v1, 0x65

    .line 1733
    invoke-virtual {v0, v1}, Lcom/twitter/android/np;->a(I)Lcom/twitter/android/np;

    move-result-object v0

    .line 1734
    invoke-virtual {v0, p0}, Lcom/twitter/android/np;->a(Lcom/twitter/android/nq;)Lcom/twitter/android/np;

    move-result-object v0

    .line 1735
    invoke-virtual {v0, p0}, Lcom/twitter/android/np;->a(Landroid/support/v4/app/Fragment;)Lcom/twitter/android/np;

    move-result-object v0

    .line 1736
    invoke-virtual {v0}, Lcom/twitter/android/np;->a()Lcom/twitter/android/nm;

    move-result-object v0

    .line 1737
    invoke-virtual {v0}, Lcom/twitter/android/nm;->a()V

    .line 1738
    return-void
.end method

.method public w()V
    .locals 3

    .prologue
    .line 1742
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/model/core/Tweet;

    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v2

    invoke-virtual {v2}, Lcbh;->h()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Z)V

    .line 1743
    const-string/jumbo v0, "share"

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->c(Ljava/lang/String;)V

    .line 1744
    return-void
.end method

.method public x()V
    .locals 2

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/ut;

    if-eqz v0, :cond_0

    .line 1976
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/ut;

    invoke-virtual {v0}, Lcom/twitter/android/ut;->notifyDataSetChanged()V

    .line 1979
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->i:Lcom/twitter/android/card/i;

    if-eqz v0, :cond_1

    .line 1980
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->i:Lcom/twitter/android/card/i;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->g:Lcom/twitter/library/card/CardContext;

    invoke-interface {v0, v1}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/card/CardContext;)V

    .line 1982
    :cond_1
    return-void
.end method

.method protected y()V
    .locals 4

    .prologue
    .line 2561
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 2562
    new-instance v1, Lcom/twitter/android/ui;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/ui;-><init>(Lcom/twitter/android/TweetFragment;Landroid/support/v4/app/FragmentActivity;)V

    .line 2579
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0905

    .line 2580
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0458

    .line 2581
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a00ce

    .line 2582
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a00fd

    const/4 v3, 0x0

    .line 2583
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2584
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2585
    new-instance v2, Lcom/twitter/android/uj;

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/uj;-><init>(Lcom/twitter/android/TweetFragment;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2592
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2593
    return-void
.end method
