.class public Lcom/twitter/android/TweetFragment2;
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
.field private A:Landroid/view/View;

.field private B:Landroid/view/View;

.field private C:Landroid/view/View;

.field private D:I

.field private E:I

.field private F:Lcom/twitter/android/widget/ToggleImageButton;

.field private G:Lcom/twitter/android/widget/ToggleImageButton;

.field a:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private ac:Lcom/twitter/android/widget/EngagementActionBar;

.field private ad:Z

.field private ae:Z

.field private af:Lcom/twitter/android/qs;

.field private ag:Z

.field private ah:Ljava/lang/String;

.field private ai:Z

.field private aj:Laxg;

.field private ak:Lcom/twitter/android/vo;

.field private al:Lrx/ap;

.field private am:Lcom/twitter/android/av/monetization/g;

.field private an:Laum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laum",
            "<",
            "Lcom/twitter/model/av/o;",
            ">;"
        }
    .end annotation
.end field

.field private final ao:Lcom/twitter/library/util/FriendshipCache;

.field private ap:Lcav;

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

.field private m:Lcom/twitter/android/vm;

.field private n:Landroid/widget/BaseAdapter;

.field private o:Lcom/twitter/android/vw;

.field private p:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private q:Lcom/twitter/library/widget/PageableListView;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:Lcom/twitter/model/moments/ad;

.field private v:Lcom/twitter/model/timeline/dd;

.field private final w:Lcom/twitter/android/vn;

.field private final x:Landroid/view/View$OnClickListener;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 235
    new-instance v0, Lcom/twitter/android/vt;

    invoke-direct {v0}, Lcom/twitter/android/vt;-><init>()V

    sput-object v0, Lcom/twitter/android/TweetFragment2;->c:Lcom/twitter/android/vt;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 307
    invoke-direct {p0}, Lcom/twitter/android/TweetListFragment;-><init>()V

    .line 267
    new-instance v0, Lcom/twitter/android/vn;

    const-string/jumbo v1, "tweet:::show_more_suggested_button:impression"

    invoke-direct {v0, v1}, Lcom/twitter/android/vn;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->w:Lcom/twitter/android/vn;

    .line 271
    new-instance v0, Lcom/twitter/android/vp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/vp;-><init>(Lcom/twitter/android/TweetFragment2;Lcom/twitter/android/ux;)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->x:Landroid/view/View$OnClickListener;

    .line 303
    new-instance v0, Lcom/twitter/library/util/FriendshipCache;

    invoke-direct {v0}, Lcom/twitter/library/util/FriendshipCache;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->ao:Lcom/twitter/library/util/FriendshipCache;

    .line 308
    new-instance v0, Lcom/twitter/app/common/list/y;

    invoke-direct {v0}, Lcom/twitter/app/common/list/y;-><init>()V

    invoke-virtual {v0, v2}, Lcom/twitter/app/common/list/y;->h(Z)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    const-string/jumbo v1, "en_act"

    .line 309
    invoke-virtual {v0, v1, v2}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;Z)Lcom/twitter/app/common/base/g;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/y;->b()Lcom/twitter/app/common/list/w;

    move-result-object v0

    .line 308
    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/app/common/base/f;)V

    .line 310
    return-void
.end method

.method static synthetic A(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/android/card/i;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->i:Lcom/twitter/android/card/i;

    return-object v0
.end method

.method static synthetic B(Lcom/twitter/android/TweetFragment2;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic C(Lcom/twitter/android/TweetFragment2;)I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/twitter/android/TweetFragment2;->t:I

    return v0
.end method

.method static synthetic D(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/android/qs;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->af:Lcom/twitter/android/qs;

    return-object v0
.end method

.method static synthetic E(Lcom/twitter/android/TweetFragment2;)Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/twitter/android/TweetFragment2;->ag:Z

    return v0
.end method

.method private F()Lcom/twitter/android/vr;
    .locals 1

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->aB()Lcom/twitter/app/common/inject/b;

    move-result-object v0

    check-cast v0, Laxl;

    .line 657
    invoke-interface {v0}, Laxl;->c()Lcom/twitter/android/vr;

    move-result-object v0

    return-object v0
.end method

.method static synthetic F(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/api/ActivitySummary;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->l:Lcom/twitter/library/api/ActivitySummary;

    return-object v0
.end method

.method static synthetic G(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/android/widget/EngagementActionBar;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->ac:Lcom/twitter/android/widget/EngagementActionBar;

    return-object v0
.end method

.method private G()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 662
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->y()Laxo;

    move-result-object v0

    invoke-virtual {v0}, Laxo;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic H(Lcom/twitter/android/TweetFragment2;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->x:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private H()Lcom/twitter/android/timeline/br;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->m:Lcom/twitter/android/vm;

    invoke-virtual {v0}, Lcom/twitter/android/vm;->i()Lcmf;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/br;

    return-object v0
.end method

.method static synthetic I(Lcom/twitter/android/TweetFragment2;)Laxo;
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->y()Laxo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic J(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic K(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->p:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    return-object v0
.end method

.method static synthetic L(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic M(Lcom/twitter/android/TweetFragment2;)Laxg;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->aj:Laxg;

    return-object v0
.end method

.method private M()Lbtd;
    .locals 2

    .prologue
    .line 858
    new-instance v0, Lbte;

    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->H()Lcom/twitter/android/timeline/br;

    move-result-object v1

    invoke-direct {v0, v1}, Lbte;-><init>(Lcom/twitter/android/timeline/br;)V

    return-object v0
.end method

.method private O()Z
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->v:Lcom/twitter/model/timeline/dd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private P()V
    .locals 5

    .prologue
    .line 894
    new-instance v0, Lbry;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/TweetFragment2;->e:Lcom/twitter/library/client/Session;

    iget-object v3, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget-object v4, p0, Lcom/twitter/android/TweetFragment2;->m:Lcom/twitter/android/vm;

    .line 895
    invoke-virtual {v4}, Lcom/twitter/android/vm;->c()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lbry;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/core/Tweet;Ljava/util/List;)V

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 894
    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/TweetFragment2;->c(Lcom/twitter/library/service/x;II)Z

    .line 896
    return-void
.end method

.method private Q()Z
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->q:Lcom/twitter/library/widget/PageableListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->m:Lcom/twitter/android/vm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private S()V
    .locals 9

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    invoke-static {v0}, Lcih;->b(Lcom/twitter/model/core/Tweet;)Z

    move-result v1

    .line 1118
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    invoke-static {v0}, Lcug;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    .line 1119
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->p()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment2;->d(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1195
    :cond_0
    :goto_0
    return-void

    .line 1122
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->e:Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v0

    .line 1123
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->ac()Z

    move-result v8

    .line 1124
    iget-boolean v2, p0, Lcom/twitter/android/TweetFragment2;->a:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    .line 1125
    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->C()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/twitter/model/account/UserSettings;->k:Z

    if-eqz v0, :cond_2

    .line 1127
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->ad()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    move v7, v0

    .line 1129
    :goto_1
    new-instance v0, Lcjm;

    .line 1130
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    sget-object v4, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v5

    iget-object v6, p0, Lcom/twitter/android/TweetFragment2;->p:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct/range {v0 .. v6}, Lcjm;-><init>(ZLandroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 1131
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/twitter/android/TweetFragment2;->b:Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v0, v2, v3}, Lcjm;->a(ILjava/lang/Object;)V

    .line 1133
    iget-object v2, p0, Lcom/twitter/android/TweetFragment2;->a_:Landroid/content/Context;

    .line 1134
    invoke-static {v2}, Lbki;->a(Landroid/content/Context;)Lbki;

    move-result-object v2

    .line 1135
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->T()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1136
    new-instance v0, Lcom/twitter/android/uz;

    invoke-direct {v0, p0, v2}, Lcom/twitter/android/uz;-><init>(Lcom/twitter/android/TweetFragment2;Lbki;)V

    .line 1148
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->b:Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/TweetDetailView;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1127
    :cond_3
    const/4 v0, 0x0

    move v7, v0

    goto :goto_1

    .line 1149
    :cond_4
    if-eqz v7, :cond_5

    .line 1150
    new-instance v0, Lcom/twitter/android/va;

    invoke-direct {v0, p0}, Lcom/twitter/android/va;-><init>(Lcom/twitter/android/TweetFragment2;)V

    .line 1182
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->b:Lcom/twitter/android/widget/TweetDetailView;

    iget-object v2, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->D()Z

    move-result v2

    invoke-virtual {v1, v0, v8, v2}, Lcom/twitter/android/widget/TweetDetailView;->a(Lcom/twitter/library/widget/y;ZZ)V

    goto :goto_0

    .line 1184
    :cond_5
    invoke-virtual {v0}, Lcjm;->a()Lcom/twitter/library/widget/renderablecontent/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->h:Lcom/twitter/library/widget/renderablecontent/e;

    .line 1185
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->h:Lcom/twitter/library/widget/renderablecontent/e;

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 1186
    new-instance v0, Lcom/twitter/android/card/k;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->a_:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/twitter/android/card/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->i:Lcom/twitter/android/card/i;

    .line 1187
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->i:Lcom/twitter/android/card/i;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->g:Lcom/twitter/library/card/CardContext;

    invoke-interface {v0, v1}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/card/CardContext;)V

    .line 1188
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->i:Lcom/twitter/android/card/i;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 1189
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->i:Lcom/twitter/android/card/i;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->p:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-interface {v0, v1}, Lcom/twitter/android/card/i;->b(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 1191
    :cond_6
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->b:Lcom/twitter/android/widget/TweetDetailView;

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->b:Lcom/twitter/android/widget/TweetDetailView;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->h:Lcom/twitter/library/widget/renderablecontent/e;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TweetDetailView;->setContentHost(Lcom/twitter/library/widget/renderablecontent/e;)V

    goto/16 :goto_0
.end method

.method private T()Z
    .locals 2

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->a_:Landroid/content/Context;

    .line 1199
    invoke-static {v0}, Lbki;->a(Landroid/content/Context;)Lbki;

    move-result-object v0

    .line 1200
    iget-boolean v1, p0, Lcom/twitter/android/TweetFragment2;->z:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "twitter_access_android_media_forward_enabled"

    invoke-static {v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    .line 1201
    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->aj()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    .line 1202
    invoke-static {v1}, Lcom/twitter/library/av/playback/bm;->d(Lcom/twitter/model/core/Tweet;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1203
    invoke-virtual {v0}, Lbki;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1204
    :cond_0
    invoke-virtual {v0}, Lbki;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1200
    :goto_0
    return v0

    .line 1204
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private U()V
    .locals 3

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->a_:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->X()Lavh;

    move-result-object v1

    iget-object v1, v1, Lavh;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1300
    return-void
.end method

.method private X()Lavh;
    .locals 4

    .prologue
    .line 1303
    new-instance v0, Larq;

    invoke-direct {v0}, Larq;-><init>()V

    const/16 v1, 0xe

    .line 1304
    invoke-virtual {v0, v1}, Larq;->a(I)Larq;

    move-result-object v0

    .line 1305
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Larq;->b(J)Larq;

    move-result-object v0

    .line 1306
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Larq;->c(J)Larq;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v1, Lcom/twitter/model/core/Tweet;->p:J

    .line 1307
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Larq;->a(Ljava/lang/String;)Larq;

    move-result-object v0

    .line 1308
    invoke-virtual {v0}, Larq;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laro;

    .line 1303
    invoke-static {v0}, Larr;->a(Laro;)Lavh;

    move-result-object v0

    return-object v0
.end method

.method private Y()V
    .locals 7

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->ab:Lcom/twitter/library/client/bd;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->ah:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->a_:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    .line 1580
    invoke-static {v0, v1}, Lcjg;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->b:Lcom/twitter/android/widget/TweetDetailView;

    .line 1581
    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetDetailView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1582
    const-string/jumbo v0, "translation_request"

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment2;->c(Ljava/lang/String;)V

    .line 1583
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->a_:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1584
    if-eqz v0, :cond_1

    .line 1585
    :goto_0
    invoke-static {v0}, Lcom/twitter/util/a;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 1586
    new-instance v1, Lbtn;

    iget-object v2, p0, Lcom/twitter/android/TweetFragment2;->a_:Landroid/content/Context;

    .line 1587
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v0, Lcom/twitter/model/core/Tweet;->C:J

    invoke-direct/range {v1 .. v6}, Lbtn;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLjava/lang/String;)V

    .line 1588
    const/4 v0, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/twitter/android/TweetFragment2;->c(Lcom/twitter/library/service/x;II)Z

    .line 1589
    iget-object v0, v1, Lbtn;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->ah:Ljava/lang/String;

    .line 1591
    :cond_0
    return-void

    .line 1585
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/twitter/library/service/x;)I
    .locals 1

    .prologue
    .line 1108
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsx;

    .line 1109
    invoke-virtual {v0}, Lbsx;->H()I

    move-result v0

    return v0
.end method

.method private a(I)Lcom/twitter/android/timeline/cp;
    .locals 3

    .prologue
    .line 863
    packed-switch p1, :pswitch_data_0

    .line 878
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected fetch type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 865
    :pswitch_1
    const/4 v0, 0x0

    .line 875
    :goto_0
    return-object v0

    .line 868
    :pswitch_2
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->M()Lbtd;

    move-result-object v0

    invoke-interface {v0}, Lbtd;->a()Lcom/twitter/android/timeline/cp;

    move-result-object v0

    goto :goto_0

    .line 871
    :pswitch_3
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->M()Lbtd;

    move-result-object v0

    invoke-interface {v0}, Lbtd;->b()Lcom/twitter/android/timeline/cp;

    move-result-object v0

    goto :goto_0

    .line 874
    :pswitch_4
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->v:Lcom/twitter/model/timeline/dd;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->v:Lcom/twitter/model/timeline/dd;

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/model/timeline/dd;)Lcom/twitter/android/timeline/cp;

    move-result-object v0

    goto :goto_0

    .line 863
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(Lcom/twitter/model/timeline/dd;)Lcom/twitter/android/timeline/cp;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2631
    new-instance v0, Lcom/twitter/android/timeline/cp;

    const-wide/16 v2, -0x1

    move-object v4, v1

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/timeline/cp;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/timeline/al;Lcom/twitter/model/timeline/dd;)V

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/android/vo;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->ak:Lcom/twitter/android/vo;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/TweetFragment2;Lcom/twitter/library/widget/TweetView;)Lcom/twitter/library/media/widget/z;
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/library/widget/TweetView;)Lcom/twitter/library/media/widget/z;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/twitter/library/widget/TweetView;)Lcom/twitter/library/media/widget/z;
    .locals 1

    .prologue
    .line 2014
    new-instance v0, Lcom/twitter/android/vb;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/vb;-><init>(Lcom/twitter/android/TweetFragment2;Lcom/twitter/library/widget/TweetView;)V

    return-object v0
.end method

.method private a(JLcom/twitter/model/timeline/dd;)V
    .locals 5

    .prologue
    .line 2635
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/TweetActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->e:Lcom/twitter/library/client/Session;

    .line 2636
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Lcom/twitter/library/provider/cn;->a(JJ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "association"

    .line 2637
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 2638
    if-eqz p3, :cond_0

    .line 2639
    const-string/jumbo v1, "subbranch"

    sget-object v2, Lcom/twitter/model/timeline/dd;->a:Lcom/twitter/util/serialization/ae;

    invoke-static {v0, v1, p3, v2}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/content/Intent;

    .line 2642
    :cond_0
    const/16 v1, 0x23c1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/TweetFragment2;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2644
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 1230
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1231
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p2, v1, :cond_0

    .line 1232
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1233
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1235
    :cond_0
    return-void
.end method

.method private a(Lbry;)V
    .locals 3

    .prologue
    .line 1974
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->G()Ljava/util/List;

    move-result-object v0

    .line 1975
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1976
    invoke-virtual {p1}, Lbry;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1977
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->ae()V

    .line 1978
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->ak:Lcom/twitter/android/vo;

    if-eqz v1, :cond_0

    .line 1979
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->ak:Lcom/twitter/android/vo;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/vo;->a(Ljava/util/List;Z)V

    .line 1982
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/TweetFragment2;Lcom/twitter/library/widget/TweetView;Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/library/widget/TweetView;Lcom/twitter/model/core/Tweet;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/TweetFragment2;Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/twitter/android/TweetFragment2;->g(Lcom/twitter/model/core/Tweet;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/TweetFragment2;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/Session;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/Session;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/TweetFragment2;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/Session;I)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/Session;I)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/TweetFragment2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/twitter/android/TweetFragment2;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/TweetFragment2;Ljava/lang/String;Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/TweetFragment2;->a(Ljava/lang/String;Lcom/twitter/model/core/Tweet;)V

    return-void
.end method

.method private a(Lcom/twitter/library/widget/TweetView;Lcom/twitter/model/core/Tweet;)V
    .locals 1

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->ao:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0, p2}, Lcom/twitter/library/util/FriendshipCache;->a(Lcom/twitter/model/core/Tweet;)V

    .line 2002
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->ao:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/TweetView;->setFriendshipCache(Lcom/twitter/library/util/FriendshipCache;)V

    .line 2004
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->o:Lcom/twitter/android/vw;

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/TweetView;->setOnTweetViewClickListener(Lcom/twitter/library/view/aa;)V

    .line 2005
    sget v0, Lcom/twitter/library/util/al;->a:F

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/TweetView;->setContentSize(F)V

    .line 2006
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/TweetView;->setHideInlineActions(Z)V

    .line 2007
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->a_:Landroid/content/Context;

    .line 2008
    invoke-static {v0, p2}, Lcjg;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    .line 2007
    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/TweetView;->setDisplayTranslationBadge(Z)V

    .line 2009
    return-void
.end method

.method private a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/Session;)V
    .locals 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->q:Lcom/twitter/library/widget/PageableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/PageableListView;->b(Z)V

    .line 890
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    .line 889
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/Session;I)V

    .line 891
    return-void

    .line 890
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/Session;I)V
    .locals 1

    .prologue
    .line 839
    invoke-direct {p0, p3}, Lcom/twitter/android/TweetFragment2;->a(I)Lcom/twitter/android/timeline/cp;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/Session;ILcom/twitter/android/timeline/cp;)V

    .line 840
    return-void
.end method

.method private a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/Session;ILcom/twitter/android/timeline/cp;)V
    .locals 9

    .prologue
    .line 844
    new-instance v1, Lbsx;

    .line 845
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    iget-wide v6, p1, Lcom/twitter/model/core/Tweet;->p:J

    move-object v3, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lbsx;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JJLcom/twitter/android/timeline/cp;)V

    .line 847
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, p3}, Lcom/twitter/android/TweetFragment2;->c(Lcom/twitter/library/service/x;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->y()Laxo;

    move-result-object v0

    invoke-virtual {v0, p4}, Laxo;->a(Lcom/twitter/android/timeline/cp;)V

    .line 850
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/twitter/model/core/Tweet;)V
    .locals 6

    .prologue
    .line 2552
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    .line 2554
    if-eqz v1, :cond_0

    .line 2555
    invoke-virtual {v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v0

    .line 2559
    :goto_0
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 2560
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v3, p0, Lcom/twitter/android/TweetFragment2;->a_:Landroid/content/Context;

    const/4 v4, 0x0

    .line 2561
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

    .line 2562
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 2563
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 2564
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 2565
    return-void

    .line 2557
    :cond_0
    const-string/jumbo v0, "tweet"

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2547
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->j:Lciu;

    invoke-virtual {v0, p1, p2}, Lciu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2548
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1684
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 1685
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

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

    .line 1686
    invoke-static {v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const-string/jumbo v1, "tweet::tweet::impression"

    .line 1687
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->p:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 1688
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 1689
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1690
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/TweetFragment2;Lcom/twitter/library/service/x;II)Z
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/TweetFragment2;->c(Lcom/twitter/library/service/x;II)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/twitter/android/TweetFragment2;Z)Z
    .locals 0

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/twitter/android/TweetFragment2;->z:Z

    return p1
.end method

.method private ab()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 1922
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 1924
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->l:Lcom/twitter/library/api/ActivitySummary;

    if-eqz v1, :cond_1

    .line 1925
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget-boolean v1, v1, Lcom/twitter/model/core/Tweet;->a:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->l:Lcom/twitter/library/api/ActivitySummary;

    iget-object v1, v1, Lcom/twitter/library/api/ActivitySummary;->c:[J

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->l:Lcom/twitter/library/api/ActivitySummary;

    iget-object v1, v1, Lcom/twitter/library/api/ActivitySummary;->c:[J

    array-length v1, v1

    if-lez v1, :cond_0

    .line 1927
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->l:Lcom/twitter/library/api/ActivitySummary;

    iget-object v4, v1, Lcom/twitter/library/api/ActivitySummary;->c:[J

    array-length v5, v4

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-wide v6, v4, v1

    .line 1928
    cmp-long v6, v6, v2

    if-nez v6, :cond_2

    .line 1929
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iput-boolean v8, v1, Lcom/twitter/model/core/Tweet;->a:Z

    .line 1930
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->F:Lcom/twitter/android/widget/ToggleImageButton;

    invoke-virtual {v1, v8}, Lcom/twitter/android/widget/ToggleImageButton;->setToggledOn(Z)V

    .line 1936
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->ad()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->l:Lcom/twitter/library/api/ActivitySummary;

    iget-object v1, v1, Lcom/twitter/library/api/ActivitySummary;->d:[J

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->l:Lcom/twitter/library/api/ActivitySummary;

    iget-object v1, v1, Lcom/twitter/library/api/ActivitySummary;->d:[J

    array-length v1, v1

    if-lez v1, :cond_1

    .line 1938
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->l:Lcom/twitter/library/api/ActivitySummary;

    iget-object v1, v1, Lcom/twitter/library/api/ActivitySummary;->d:[J

    array-length v4, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget-wide v6, v1, v0

    .line 1939
    cmp-long v5, v6, v2

    if-nez v5, :cond_3

    .line 1940
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0, v8}, Lcom/twitter/model/core/Tweet;->a(Z)V

    .line 1941
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->G:Lcom/twitter/android/widget/ToggleImageButton;

    invoke-virtual {v0, v8}, Lcom/twitter/android/widget/ToggleImageButton;->setToggledOn(Z)V

    .line 1947
    :cond_1
    return-void

    .line 1927
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1938
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private ac()Z
    .locals 1

    .prologue
    .line 1950
    const-string/jumbo v0, "blocker_interstitial_enabled"

    .line 1951
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    .line 1952
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->ad()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ad()Z
    .locals 4

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->b:J

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->bf()Lcom/twitter/library/client/Session;

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

.method private ae()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 1987
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->G()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    const/4 v0, 0x1

    .line 1988
    :goto_0
    iget-object v4, p0, Lcom/twitter/android/TweetFragment2;->B:Landroid/view/View;

    if-eqz v0, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1989
    iget-object v4, p0, Lcom/twitter/android/TweetFragment2;->A:Landroid/view/View;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v0, :cond_3

    const v2, 0x7f12004a

    :goto_2
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1991
    iget-object v2, p0, Lcom/twitter/android/TweetFragment2;->C:Landroid/view/View;

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1993
    if-nez v0, :cond_0

    .line 1995
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->w:Lcom/twitter/android/vn;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/vn;->a(J)V

    .line 1997
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1987
    goto :goto_0

    :cond_2
    move v2, v1

    .line 1988
    goto :goto_1

    .line 1989
    :cond_3
    const v2, 0x7f120092

    goto :goto_2

    :cond_4
    move v1, v3

    .line 1991
    goto :goto_3
.end method

.method private ag()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 2527
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget v0, v0, Lcom/twitter/model/core/Tweet;->i:I

    invoke-static {v0}, Lcom/twitter/model/core/p;->a(I)Z

    move-result v2

    .line 2528
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v0, Lcom/twitter/model/core/Tweet;->o:J

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    move v0, v1

    .line 2529
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment2;->f(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v2, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/TweetFragment2;->ae:Z

    if-eqz v0, :cond_1

    .line 2533
    :cond_0
    iput-boolean v1, p0, Lcom/twitter/android/TweetFragment2;->ae:Z

    .line 2534
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->b:Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v0, p0, v2}, Lcom/twitter/android/widget/TweetDetailView;->a(Landroid/view/View$OnClickListener;Z)V

    .line 2536
    :cond_1
    return-void

    .line 2528
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/TweetFragment2;)Ljava/util/List;
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->G()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/TweetFragment2;Z)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/twitter/android/TweetFragment2;->f(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1610
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "screen_name"

    .line 1611
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1613
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->p:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    if-eqz v0, :cond_1

    .line 1614
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->p:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 1618
    :goto_0
    const-string/jumbo v2, "association"

    new-instance v3, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v3, v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    const/4 v0, 0x1

    .line 1620
    invoke-virtual {v3, v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v3, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v3, Lcom/twitter/model/core/Tweet;->p:J

    .line 1621
    invoke-virtual {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(J)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    .line 1618
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1623
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1624
    const-string/jumbo v0, "pc"

    iget-object v2, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    .line 1625
    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v2

    invoke-static {v2}, Lcss;->a(Lcss;)[B

    move-result-object v2

    .line 1624
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1627
    :cond_0
    invoke-virtual {p0, v1}, Lcom/twitter/android/TweetFragment2;->startActivity(Landroid/content/Intent;)V

    .line 1628
    return-void

    .line 1616
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/TweetFragment2;Lcom/twitter/library/service/x;II)Z
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/TweetFragment2;->c(Lcom/twitter/library/service/x;II)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->e:Lcom/twitter/library/client/Session;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2543
    const-string/jumbo v0, ""

    invoke-direct {p0, v0, p1}, Lcom/twitter/android/TweetFragment2;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    return-void
.end method

.method static synthetic c(Lcom/twitter/android/TweetFragment2;Lcom/twitter/library/service/x;II)Z
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/TweetFragment2;->c(Lcom/twitter/library/service/x;II)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/twitter/model/core/Tweet;)Z
    .locals 1

    .prologue
    .line 205
    invoke-static {p0}, Lcom/twitter/android/TweetFragment2;->e(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    return-object v0
.end method

.method private d(Lcom/twitter/model/core/Tweet;)Z
    .locals 1

    .prologue
    .line 1113
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

.method static synthetic e(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/android/vr;
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->F()Lcom/twitter/android/vr;

    move-result-object v0

    return-object v0
.end method

.method private static e(Lcom/twitter/model/core/Tweet;)Z
    .locals 1

    .prologue
    .line 1970
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

.method static synthetic f(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/android/vm;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->m:Lcom/twitter/android/vm;

    return-object v0
.end method

.method private f(Z)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1722
    if-eqz p1, :cond_0

    .line 1723
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iput-boolean v2, v0, Lcom/twitter/model/core/Tweet;->a:Z

    .line 1724
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget v1, v0, Lcom/twitter/model/core/Tweet;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/twitter/model/core/Tweet;->k:I

    .line 1725
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->F:Lcom/twitter/android/widget/ToggleImageButton;

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/ToggleImageButton;->setToggledOn(Z)V

    .line 1726
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->F:Lcom/twitter/android/widget/ToggleImageButton;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ToggleImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1736
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->l:Lcom/twitter/library/api/ActivitySummary;

    .line 1737
    if-eqz v0, :cond_1

    .line 1738
    iget-object v1, v0, Lcom/twitter/library/api/ActivitySummary;->d:[J

    .line 1739
    iget-object v0, v0, Lcom/twitter/library/api/ActivitySummary;->c:[J

    .line 1745
    :goto_1
    new-instance v2, Lcom/twitter/library/api/ActivitySummary;

    iget-object v3, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget v3, v3, Lcom/twitter/model/core/Tweet;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget v4, v4, Lcom/twitter/model/core/Tweet;->h:I

    .line 1746
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/twitter/library/api/ActivitySummary;-><init>(Ljava/lang/String;Ljava/lang/String;[J[J)V

    iput-object v2, p0, Lcom/twitter/android/TweetFragment2;->l:Lcom/twitter/library/api/ActivitySummary;

    .line 1747
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->b:Lcom/twitter/android/widget/TweetDetailView;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->l:Lcom/twitter/library/api/ActivitySummary;

    invoke-virtual {v0, v1, p0}, Lcom/twitter/android/widget/TweetDetailView;->a(Lcom/twitter/library/api/ActivitySummary;Lcom/twitter/android/widget/fo;)V

    .line 1748
    return-void

    .line 1728
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iput-boolean v3, v0, Lcom/twitter/model/core/Tweet;->a:Z

    .line 1729
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget v1, v1, Lcom/twitter/model/core/Tweet;->k:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/twitter/model/core/Tweet;->k:I

    .line 1730
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->F:Lcom/twitter/android/widget/ToggleImageButton;

    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/ToggleImageButton;->setToggledOn(Z)V

    .line 1731
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->F:Lcom/twitter/android/widget/ToggleImageButton;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ToggleImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1741
    :cond_1
    new-array v1, v3, [J

    .line 1742
    new-array v0, v3, [J

    goto :goto_1
.end method

.method private f(Lcom/twitter/model/core/Tweet;)Z
    .locals 1

    .prologue
    .line 2539
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

.method static synthetic g(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/android/av/s;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->X:Lcom/twitter/android/av/s;

    return-object v0
.end method

.method private g(Lcom/twitter/model/core/Tweet;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2569
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2570
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->e:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 2571
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v6, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "tweet:::quoted_tweet:show"

    aput-object v3, v2, v4

    .line 2572
    invoke-static {v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 2573
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 2575
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/android/av/s;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->X:Lcom/twitter/android/av/s;

    return-object v0
.end method

.method static synthetic i(Lcom/twitter/android/TweetFragment2;)Lcav;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->ap:Lcav;

    return-object v0
.end method

.method static synthetic j(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/android/widget/ToggleImageButton;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->F:Lcom/twitter/android/widget/ToggleImageButton;

    return-object v0
.end method

.method static synthetic k(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/android/av/s;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->X:Lcom/twitter/android/av/s;

    return-object v0
.end method

.method static synthetic l(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/android/av/s;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->X:Lcom/twitter/android/av/s;

    return-object v0
.end method

.method static synthetic m(Lcom/twitter/android/TweetFragment2;)Lciu;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->j:Lciu;

    return-object v0
.end method

.method static synthetic n(Lcom/twitter/android/TweetFragment2;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->S()V

    return-void
.end method

.method static synthetic o(Lcom/twitter/android/TweetFragment2;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->a_:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic p(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/client/bd;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->ab:Lcom/twitter/library/client/bd;

    return-object v0
.end method

.method static synthetic q(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic r(Lcom/twitter/android/TweetFragment2;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->a_:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic s(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic t(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/client/bd;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->ab:Lcom/twitter/library/client/bd;

    return-object v0
.end method

.method static synthetic u(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/android/timeline/br;
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->H()Lcom/twitter/android/timeline/br;

    move-result-object v0

    return-object v0
.end method

.method static synthetic v(Lcom/twitter/android/TweetFragment2;)Layj;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->aX()Layj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic w(Lcom/twitter/android/TweetFragment2;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->ag()V

    return-void
.end method

.method static synthetic x(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method private y()Laxo;
    .locals 1

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->aB()Lcom/twitter/app/common/inject/b;

    move-result-object v0

    check-cast v0, Laxl;

    .line 651
    invoke-interface {v0}, Laxl;->d()Laxo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic y(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/client/bd;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->ab:Lcom/twitter/library/client/bd;

    return-object v0
.end method

.method static synthetic z(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public C()V
    .locals 2

    .prologue
    .line 2717
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/16 v1, 0x66

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a08fe

    .line 2718
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->a(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a08fd

    .line 2719
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->b(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a09bb

    .line 2720
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a05a7

    .line 2721
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 2722
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 2723
    invoke-virtual {v0, p0}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/Fragment;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 2724
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 2725
    return-void
.end method

.method protected D()Z
    .locals 1

    .prologue
    .line 479
    invoke-static {}, Lcom/twitter/library/av/aj;->a()Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 466
    invoke-super {p0, p1, p2}, Lcom/twitter/android/TweetListFragment;->a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 467
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/library/widget/PageableListView;

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->q:Lcom/twitter/library/widget/PageableListView;

    .line 468
    return-object v1
.end method

.method protected a(Lcom/twitter/app/common/inject/t;)Laxl;
    .locals 4

    .prologue
    .line 639
    .line 640
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltr;->a(Landroid/content/Context;)Ltr;

    move-result-object v0

    .line 641
    new-instance v1, Lcom/twitter/android/vr;

    invoke-direct {v1, v0}, Lcom/twitter/android/vr;-><init>(Ltr;)V

    .line 643
    invoke-static {}, Lawj;->a()Lawl;

    move-result-object v0

    new-instance v2, Lcom/twitter/app/tweetdetails/internal/c;

    .line 645
    invoke-static {}, Laxr;->a()Laxr;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/twitter/app/tweetdetails/internal/c;-><init>(Lcom/twitter/android/vr;Laxr;)V

    .line 644
    invoke-virtual {v0, v2}, Lawl;->a(Lcom/twitter/app/tweetdetails/internal/c;)Lawl;

    move-result-object v0

    .line 645
    invoke-virtual {v0}, Lawl;->a()Laxl;

    move-result-object v0

    .line 643
    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 2625
    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->a()V

    .line 2626
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->b:Lcom/twitter/android/widget/TweetDetailView;

    invoke-static {v0, v1}, Lcom/twitter/android/settings/MobileNotificationsActivity;->a(Landroid/content/Intent;Landroid/view/ViewGroup;)V

    .line 2627
    return-void
.end method

.method public a(IIZ)V
    .locals 2

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->q:Lcom/twitter/library/widget/PageableListView;

    .line 1093
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->Q()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1094
    if-eqz p3, :cond_1

    .line 1095
    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/widget/PageableListView;->smoothScrollToPositionFromTop(II)V

    .line 1100
    :cond_0
    :goto_0
    return-void

    .line 1097
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/twitter/app/common/list/aa;->a(II)V

    goto :goto_0
.end method

.method protected a(JJ)V
    .locals 3

    .prologue
    .line 491
    invoke-super {p0, p1, p2, p3, p4}, Lcom/twitter/android/TweetListFragment;->a(JJ)V

    .line 492
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->d:Lcom/twitter/android/vs;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/vs;->a(J)V

    .line 493
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->d:Lcom/twitter/android/vs;

    const-string/jumbo v1, "tweet::stream::results"

    invoke-virtual {v0, p1, p2, v1}, Lcom/twitter/android/vs;->a(JLjava/lang/String;)V

    .line 494
    return-void
.end method

.method public a(JLcom/twitter/model/core/Tweet;Z)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1769
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1770
    iget-wide v4, p3, Lcom/twitter/model/core/Tweet;->o:J

    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->e:Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    move v0, v1

    .line 1771
    :goto_0
    if-eqz p4, :cond_3

    .line 1772
    iput-boolean v2, p3, Lcom/twitter/model/core/Tweet;->c:Z

    .line 1773
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->G:Lcom/twitter/android/widget/ToggleImageButton;

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/ToggleImageButton;->setToggledOn(Z)V

    .line 1774
    if-eqz v0, :cond_0

    .line 1775
    const-string/jumbo v0, "self_unretweet"

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment2;->c(Ljava/lang/String;)V

    .line 1777
    :cond_0
    const-string/jumbo v0, "unretweet"

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment2;->c(Ljava/lang/String;)V

    .line 1787
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 1770
    goto :goto_0

    .line 1779
    :cond_3
    iput-boolean v1, p3, Lcom/twitter/model/core/Tweet;->c:Z

    .line 1780
    iget-object v2, p0, Lcom/twitter/android/TweetFragment2;->G:Lcom/twitter/android/widget/ToggleImageButton;

    invoke-virtual {v2, v1}, Lcom/twitter/android/widget/ToggleImageButton;->setToggledOn(Z)V

    .line 1781
    if-eqz v0, :cond_4

    .line 1782
    const-string/jumbo v0, "self_retweet"

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment2;->c(Ljava/lang/String;)V

    .line 1784
    :cond_4
    const-string/jumbo v0, "retweet"

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment2;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(JZI)V
    .locals 3

    .prologue
    .line 2506
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->ak:Lcom/twitter/android/vo;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 2508
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/twitter/model/core/Tweet;->a:Z

    if-ne v1, p3, :cond_0

    iget v1, v0, Lcom/twitter/model/core/Tweet;->k:I

    if-eq v1, p4, :cond_1

    .line 2509
    :cond_0
    iput-boolean p3, v0, Lcom/twitter/model/core/Tweet;->a:Z

    .line 2510
    iput p4, v0, Lcom/twitter/model/core/Tweet;->k:I

    .line 2511
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->w()V

    .line 2513
    :cond_1
    return-void

    .line 2506
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->ak:Lcom/twitter/android/vo;

    .line 2507
    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/vo;->a(J)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    goto :goto_0
.end method

.method public a(JZZZ)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 1792
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1793
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->a_:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1819
    :cond_0
    :goto_0
    return-void

    .line 1797
    :cond_1
    if-nez p3, :cond_2

    .line 1798
    if-eqz p4, :cond_3

    .line 1799
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iput-boolean v2, v0, Lcom/twitter/model/core/Tweet;->c:Z

    .line 1800
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->G:Lcom/twitter/android/widget/ToggleImageButton;

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/ToggleImageButton;->setToggledOn(Z)V

    .line 1813
    :cond_2
    :goto_1
    new-instance v0, Lcom/twitter/library/api/activity/f;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->a_:Landroid/content/Context;

    .line 1815
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v3, Lcom/twitter/model/core/Tweet;->p:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/twitter/library/api/activity/f;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V

    const/4 v1, 0x2

    .line 1813
    invoke-virtual {p0, v0, v1, v6}, Lcom/twitter/android/TweetFragment2;->c(Lcom/twitter/library/service/x;II)Z

    goto :goto_0

    .line 1802
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iput-boolean v6, v0, Lcom/twitter/model/core/Tweet;->c:Z

    .line 1803
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->G:Lcom/twitter/android/widget/ToggleImageButton;

    invoke-virtual {v0, v6}, Lcom/twitter/android/widget/ToggleImageButton;->setToggledOn(Z)V

    .line 1804
    if-nez p5, :cond_2

    .line 1805
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->a_:Landroid/content/Context;

    const v1, 0x7f0a0908

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1806
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public a(Landroid/content/DialogInterface;II)V
    .locals 6

    .prologue
    .line 1873
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1875
    packed-switch p2, :pswitch_data_0

    .line 1899
    :cond_0
    :goto_0
    return-void

    .line 1877
    :pswitch_0
    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    .line 1878
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    if-eqz v1, :cond_1

    .line 1879
    const-string/jumbo v1, "delete"

    invoke-direct {p0, v1}, Lcom/twitter/android/TweetFragment2;->c(Ljava/lang/String;)V

    .line 1880
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->ab:Lcom/twitter/library/client/bd;

    .line 1881
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/TweetFragment2;->e:Lcom/twitter/library/client/Session;

    iget-object v4, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    .line 1880
    invoke-static {v2, v3, v4}, Lbtg;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/core/Tweet;)Lbtg;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 1884
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1885
    const-string/jumbo v2, "status_id"

    iget-object v3, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v3, Lcom/twitter/model/core/Tweet;->q:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1886
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 1887
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 1889
    :cond_1
    new-instance v0, Lbiv;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "ANDROID-17421"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lbiv;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lbix;->a(Lbiv;)V

    goto :goto_0

    .line 1875
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method

.method a(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 458
    const-string/jumbo v0, "as"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/ActivitySummary;

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->l:Lcom/twitter/library/api/ActivitySummary;

    .line 459
    const-string/jumbo v0, "dw"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/TweetFragment2;->z:Z

    .line 460
    const-string/jumbo v0, "fss"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/TweetFragment2;->ae:Z

    .line 461
    const-string/jumbo v0, "display_possibly_sensitive_media"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/TweetFragment2;->a:Z

    .line 462
    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 4
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
    const/4 v2, 0x0

    .line 1332
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1354
    :goto_0
    return-void

    .line 1334
    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->w()Lcom/twitter/refresh/widget/a;

    move-result-object v0

    .line 1335
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->m:Lcom/twitter/android/vm;

    invoke-virtual {v1, p2}, Lcom/twitter/android/vm;->b(Landroid/database/Cursor;)V

    .line 1336
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->q:Lcom/twitter/library/widget/PageableListView;

    invoke-virtual {v1, v2}, Lcom/twitter/library/widget/PageableListView;->b(Z)V

    .line 1337
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->q:Lcom/twitter/library/widget/PageableListView;

    invoke-virtual {v1, v2}, Lcom/twitter/library/widget/PageableListView;->a(Z)V

    .line 1338
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->y()Laxo;

    move-result-object v1

    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->M()Lbtd;

    move-result-object v2

    invoke-interface {v2}, Lbtd;->a()Lcom/twitter/android/timeline/cp;

    move-result-object v2

    .line 1339
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->M()Lbtd;

    move-result-object v3

    invoke-interface {v3}, Lbtd;->b()Lcom/twitter/android/timeline/cp;

    move-result-object v3

    .line 1338
    invoke-virtual {v1, v2, v3}, Laxo;->a(Lcom/twitter/android/timeline/cp;Lcom/twitter/android/timeline/cp;)V

    .line 1340
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->y()Laxo;

    move-result-object v1

    invoke-virtual {v1}, Laxo;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->y()Laxo;

    move-result-object v1

    invoke-virtual {v1}, Laxo;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1341
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->P()V

    .line 1343
    :cond_0
    iget-boolean v1, p0, Lcom/twitter/android/TweetFragment2;->k:Z

    if-eqz v1, :cond_1

    .line 1344
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->o()V

    goto :goto_0

    .line 1346
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/refresh/widget/a;Z)V

    goto :goto_0

    .line 1332
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1694
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    .line 1695
    iget-boolean v1, v0, Lcom/twitter/model/core/Tweet;->a:Z

    if-eqz v1, :cond_1

    .line 1696
    new-instance v1, Lbrt;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/TweetFragment2;->e:Lcom/twitter/library/client/Session;

    iget-wide v4, v0, Lcom/twitter/model/core/Tweet;->p:J

    iget-wide v6, v0, Lcom/twitter/model/core/Tweet;->q:J

    invoke-direct/range {v1 .. v7}, Lbrt;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JJ)V

    .line 1698
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbrt;->a(Lcss;)Lbrt;

    move-result-object v0

    const/4 v1, 0x4

    .line 1696
    invoke-virtual {p0, v0, v1, v8}, Lcom/twitter/android/TweetFragment2;->c(Lcom/twitter/library/service/x;II)Z

    .line 1700
    invoke-direct {p0, v8}, Lcom/twitter/android/TweetFragment2;->f(Z)V

    .line 1701
    const-string/jumbo v0, "unfavorite"

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment2;->c(Ljava/lang/String;)V

    .line 1702
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->ap:Lcav;

    if-eqz v0, :cond_0

    .line 1703
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->ap:Lcav;

    invoke-virtual {v0, p1}, Lcav;->c(Landroid/view/View;)V

    .line 1719
    :cond_0
    :goto_0
    return-void

    .line 1706
    :cond_1
    new-instance v1, Lbrp;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/TweetFragment2;->e:Lcom/twitter/library/client/Session;

    iget-wide v4, v0, Lcom/twitter/model/core/Tweet;->p:J

    iget-wide v6, v0, Lcom/twitter/model/core/Tweet;->q:J

    invoke-direct/range {v1 .. v7}, Lbrp;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JJ)V

    .line 1710
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbrp;->a(Lcss;)Lbrp;

    move-result-object v1

    .line 1711
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbrp;->a(Ljava/lang/Boolean;)Lbrp;

    move-result-object v0

    const/4 v1, 0x3

    .line 1706
    invoke-virtual {p0, v0, v1, v8}, Lcom/twitter/android/TweetFragment2;->c(Lcom/twitter/library/service/x;II)Z

    .line 1713
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment2;->f(Z)V

    .line 1714
    const-string/jumbo v0, "favorite"

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment2;->c(Ljava/lang/String;)V

    .line 1715
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->ap:Lcav;

    if-eqz v0, :cond_0

    .line 1716
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->ap:Lcav;

    invoke-virtual {v0, p1}, Lcav;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;I[J)V
    .locals 4

    .prologue
    .line 1903
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1904
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1905
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/twitter/android/ip;->c(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    .line 1915
    :goto_0
    return-void

    .line 1907
    :cond_0
    new-instance v1, Lcom/twitter/app/users/q;

    invoke-direct {v1}, Lcom/twitter/app/users/q;-><init>()V

    iget-object v2, p0, Lcom/twitter/android/TweetFragment2;->e:Lcom/twitter/library/client/Session;

    .line 1908
    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/twitter/app/users/q;->a(J)Lcom/twitter/app/users/q;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v2, Lcom/twitter/model/core/Tweet;->p:J

    .line 1909
    invoke-virtual {v1, v2, v3}, Lcom/twitter/app/users/q;->b(J)Lcom/twitter/app/users/q;

    move-result-object v1

    .line 1910
    invoke-virtual {v1, p2}, Lcom/twitter/app/users/q;->a(I)Lcom/twitter/app/users/q;

    move-result-object v1

    .line 1911
    invoke-virtual {v1, p3}, Lcom/twitter/app/users/q;->a([J)Lcom/twitter/app/users/q;

    move-result-object v1

    const/4 v2, 0x1

    .line 1912
    invoke-virtual {v1, v2}, Lcom/twitter/app/users/q;->a(Z)Lcom/twitter/app/users/q;

    move-result-object v1

    .line 1913
    invoke-virtual {v1, v0}, Lcom/twitter/app/users/q;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1907
    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment2;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 473
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/TweetListFragment;->a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Landroid/os/Bundle;)V

    .line 474
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->d:Lcom/twitter/android/vs;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/vs;->b(Lcom/twitter/model/core/Tweet;Landroid/os/Bundle;)V

    .line 475
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 205
    check-cast p2, Lcom/twitter/model/core/Tweet;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/TweetFragment2;->a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1640
    invoke-super/range {p0 .. p5}, Lcom/twitter/android/TweetListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1642
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 1643
    instance-of v1, v0, Lcom/twitter/android/timeline/al;

    if-eqz v1, :cond_1

    .line 1644
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/al;

    .line 1645
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1646
    iget-object v0, v0, Lcom/twitter/android/timeline/al;->b:Lcom/twitter/model/core/Tweet;

    .line 1647
    invoke-static {v1, v0}, Lcom/twitter/android/widget/ConfirmCancelPendingTweetDialog;->a(Landroid/support/v4/app/FragmentManager;Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/widget/ConfirmCancelPendingTweetDialog;

    .line 1681
    :cond_0
    :goto_0
    return-void

    .line 1648
    :cond_1
    instance-of v1, v0, Lcom/twitter/android/timeline/cn;

    if-eqz v1, :cond_3

    .line 1649
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/cn;

    .line 1650
    invoke-static {v0}, Lcjd;->a(Lcom/twitter/android/timeline/cn;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "parent_tweet"

    .line 1651
    :goto_1
    const-string/jumbo v2, ""

    const-string/jumbo v3, "click"

    invoke-direct {p0, v2, v1, v3}, Lcom/twitter/android/TweetFragment2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    iget-object v0, v0, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->q:J

    invoke-direct {p0, v0, v1, v4}, Lcom/twitter/android/TweetFragment2;->a(JLcom/twitter/model/timeline/dd;)V

    goto :goto_0

    .line 1650
    :cond_2
    const-string/jumbo v1, "child_tweet"

    goto :goto_1

    .line 1653
    :cond_3
    instance-of v1, v0, Lcom/twitter/model/core/Tweet;

    if-eqz v1, :cond_4

    .line 1655
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    .line 1656
    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->q:J

    invoke-direct {p0, v0, v1, v4}, Lcom/twitter/android/TweetFragment2;->a(JLcom/twitter/model/timeline/dd;)V

    goto :goto_0

    .line 1657
    :cond_4
    instance-of v1, v0, Lcom/twitter/android/timeline/cp;

    if-eqz v1, :cond_0

    .line 1658
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/cp;

    .line 1659
    iget-object v1, v0, Lcom/twitter/android/timeline/cp;->a:Lcom/twitter/model/timeline/dd;

    iget v1, v1, Lcom/twitter/model/timeline/dd;->c:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1669
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laxj;

    .line 1670
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Laxj;->a(Z)V

    .line 1671
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->y()Laxo;

    move-result-object v1

    iget-object v2, v0, Lcom/twitter/android/timeline/cp;->a:Lcom/twitter/model/timeline/dd;

    invoke-virtual {v1, v2}, Laxo;->a(Lcom/twitter/model/timeline/dd;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1672
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/Session;ILcom/twitter/android/timeline/cp;)V

    goto :goto_0

    .line 1661
    :pswitch_1
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->H()Lcom/twitter/android/timeline/br;

    move-result-object v1

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v1, v2}, Lcom/twitter/android/timeline/br;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/timeline/bp;

    .line 1662
    instance-of v2, v1, Lcom/twitter/android/timeline/cn;

    if-eqz v2, :cond_0

    .line 1663
    invoke-static {v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/timeline/cn;

    .line 1664
    iget-object v1, v1, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v1, Lcom/twitter/model/core/Tweet;->q:J

    iget-object v0, v0, Lcom/twitter/android/timeline/cp;->a:Lcom/twitter/model/timeline/dd;

    invoke-direct {p0, v2, v3, v0}, Lcom/twitter/android/TweetFragment2;->a(JLcom/twitter/model/timeline/dd;)V

    goto/16 :goto_0

    .line 1659
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Laxg;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/twitter/android/TweetFragment2;->aj:Laxg;

    .line 321
    return-void
.end method

.method public a(Lclw;)V
    .locals 3

    .prologue
    .line 1456
    sget-object v0, Lcom/twitter/library/api/PromotedEvent;->n:Lcom/twitter/library/api/PromotedEvent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/library/api/PromotedEvent;)V

    .line 1457
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->o:Lcom/twitter/android/vw;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/Tweet;Lclw;Lcom/twitter/library/widget/TweetView;)V

    .line 1458
    return-void
.end method

.method protected a(Lcom/twitter/app/common/list/aj;)V
    .locals 1

    .prologue
    .line 514
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->a(Lcom/twitter/app/common/list/aj;)V

    .line 515
    const v0, 0x7f040090

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->c(I)Lcom/twitter/app/common/list/aj;

    .line 516
    return-void
.end method

.method a(Lcom/twitter/library/api/PromotedEvent;)V
    .locals 2

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1633
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->aY()Lcom/twitter/android/client/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/twitter/android/client/c;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)V

    .line 1635
    :cond_0
    return-void
.end method

.method public final a(Lcom/twitter/library/service/x;II)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 900
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/TweetListFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 901
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 902
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->U()Z

    move-result v1

    .line 903
    packed-switch p2, :pswitch_data_0

    .line 1068
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 905
    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    .line 908
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsx;

    .line 909
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->y()Laxo;

    move-result-object v2

    invoke-virtual {v0}, Lbsx;->y()Lcom/twitter/android/timeline/cp;

    move-result-object v3

    .line 910
    invoke-virtual {v0}, Lbsx;->H()I

    move-result v0

    .line 909
    invoke-virtual {v2, v3, v1, v0}, Laxo;->a(Lcom/twitter/android/timeline/cp;ZI)V

    .line 911
    packed-switch p3, :pswitch_data_1

    .line 965
    :cond_1
    :goto_1
    :pswitch_2
    if-eqz v1, :cond_0

    .line 966
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_0

    .line 914
    :pswitch_3
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->q:Lcom/twitter/library/widget/PageableListView;

    invoke-virtual {v0, v6}, Lcom/twitter/library/widget/PageableListView;->b(Z)V

    .line 915
    if-nez v1, :cond_2

    .line 916
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->q:Lcom/twitter/library/widget/PageableListView;

    invoke-virtual {v0, v6}, Lcom/twitter/library/widget/PageableListView;->a(Z)V

    .line 917
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->o()V

    .line 918
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 919
    if-eqz v0, :cond_1

    .line 920
    const v2, 0x7f130143

    .line 922
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a08ef

    .line 923
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x2

    .line 921
    invoke-static {v0, v2, v3, v4}, Lcom/twitter/ui/widget/u;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v2

    const v3, 0x7f0a08f0

    .line 925
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/twitter/android/vl;

    invoke-direct {v3, p0}, Lcom/twitter/android/vl;-><init>(Lcom/twitter/android/TweetFragment2;)V

    invoke-virtual {v2, v0, v3}, Landroid/support/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 932
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_1

    .line 935
    :cond_2
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->y()Laxo;

    move-result-object v0

    invoke-virtual {v0}, Laxo;->a()V

    .line 936
    invoke-direct {p0, p1}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/library/service/x;)I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 937
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->y()Laxo;

    move-result-object v0

    invoke-virtual {v0}, Laxo;->d()V

    .line 938
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->y()Laxo;

    move-result-object v0

    invoke-virtual {v0}, Laxo;->e()V

    goto :goto_1

    .line 944
    :pswitch_4
    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/library/service/x;)I

    move-result v0

    if-nez v0, :cond_3

    .line 945
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->y()Laxo;

    move-result-object v0

    invoke-virtual {v0}, Laxo;->d()V

    .line 947
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->q:Lcom/twitter/library/widget/PageableListView;

    invoke-virtual {v0, v6}, Lcom/twitter/library/widget/PageableListView;->a(Z)V

    goto :goto_1

    .line 951
    :pswitch_5
    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/library/service/x;)I

    move-result v0

    if-nez v0, :cond_4

    .line 952
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->y()Laxo;

    move-result-object v0

    invoke-virtual {v0}, Laxo;->e()V

    .line 954
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->q:Lcom/twitter/library/widget/PageableListView;

    invoke-virtual {v0, v6}, Lcom/twitter/library/widget/PageableListView;->b(Z)V

    goto/16 :goto_1

    .line 958
    :pswitch_6
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->m:Lcom/twitter/android/vm;

    invoke-virtual {v0}, Lcom/twitter/android/vm;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 971
    :pswitch_7
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->g()Lcom/twitter/internal/network/k;

    move-result-object v0

    .line 973
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/twitter/internal/network/k;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 974
    check-cast p1, Lcom/twitter/library/api/activity/f;

    invoke-virtual {p1}, Lcom/twitter/library/api/activity/f;->e()Lcom/twitter/library/api/ActivitySummary;

    move-result-object v0

    .line 976
    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->l:Lcom/twitter/library/api/ActivitySummary;

    .line 977
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->m:Lcom/twitter/android/vm;

    invoke-virtual {v0}, Lcom/twitter/android/vm;->notifyDataSetChanged()V

    .line 978
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->ab()V

    goto/16 :goto_0

    .line 983
    :pswitch_8
    check-cast p1, Lbrp;

    .line 984
    invoke-virtual {p1}, Lbrp;->s()[I

    move-result-object v1

    .line 987
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v0

    const/16 v2, 0x193

    if-ne v0, v2, :cond_5

    .line 988
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->a_:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/client/bz;->a(Landroid/content/Context;)Lcom/twitter/android/client/bz;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/bz;->a([I)V

    .line 992
    :cond_5
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    .line 998
    new-instance v0, Lcom/twitter/library/api/activity/f;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->a_:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v3, Lcom/twitter/model/core/Tweet;->p:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/twitter/library/api/activity/f;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V

    invoke-virtual {p0, v0, v7, v6}, Lcom/twitter/android/TweetFragment2;->c(Lcom/twitter/library/service/x;II)Z

    goto/16 :goto_0

    .line 1005
    :pswitch_9
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    .line 1013
    new-instance v0, Lcom/twitter/library/api/activity/f;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->a_:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v3, Lcom/twitter/model/core/Tweet;->p:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/twitter/library/api/activity/f;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V

    invoke-virtual {p0, v0, v7, v6}, Lcom/twitter/android/TweetFragment2;->c(Lcom/twitter/library/service/x;II)Z

    goto/16 :goto_0

    .line 1020
    :pswitch_a
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    check-cast p1, Lbvg;

    .line 1022
    iget-object v0, p1, Lbvg;->a:Lcom/twitter/model/core/TwitterUser;

    .line 1023
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v1, Lcom/twitter/model/core/Tweet;->o:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1024
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget v2, v0, Lcom/twitter/model/core/TwitterUser;->T:I

    iput v2, v1, Lcom/twitter/model/core/Tweet;->i:I

    .line 1025
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v0, Lcom/twitter/model/core/TwitterUser;->z:J

    iput-wide v2, v1, Lcom/twitter/model/core/Tweet;->j:J

    .line 1026
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->ag()V

    goto/16 :goto_0

    .line 1032
    :pswitch_b
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    if-eqz v1, :cond_0

    .line 1036
    check-cast p1, Lbtn;

    .line 1037
    invoke-virtual {p1}, Lbtn;->e()Lcom/twitter/model/core/Translation;

    move-result-object v1

    .line 1038
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 1039
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->b:Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TweetDetailView;->a(Lcom/twitter/model/core/Translation;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1040
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->b:Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetDetailView;->b()V

    goto/16 :goto_0

    .line 1042
    :cond_6
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1043
    iget-object v2, v1, Lcom/twitter/model/core/Translation;->c:Ljava/lang/String;

    iget-object v1, v1, Lcom/twitter/model/core/Translation;->c:Ljava/lang/String;

    invoke-static {v2, v1}, Lcjg;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1045
    const v2, 0x7f0a08d5

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1048
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->a_:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1051
    :cond_7
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->a_:Landroid/content/Context;

    const v1, 0x7f0a08d3

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1052
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1057
    :pswitch_c
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbry;

    .line 1059
    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment2;->a(Lbry;)V

    .line 1060
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->y()Laxo;

    move-result-object v0

    invoke-virtual {v0}, Laxo;->f()V

    goto/16 :goto_0

    .line 903
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
    .end packed-switch

    .line 911
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lcom/twitter/model/core/MediaEntity;)V
    .locals 3

    .prologue
    .line 1462
    invoke-static {p1}, Lcug;->c(Lcom/twitter/model/core/MediaEntity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1463
    new-instance v0, Lcom/twitter/android/av/bj;

    invoke-direct {v0}, Lcom/twitter/android/av/bj;-><init>()V

    .line 1464
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/bj;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/av/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    .line 1465
    invoke-virtual {v0, v1}, Lcom/twitter/library/av/ap;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/av/ap;

    move-result-object v0

    const/4 v1, 0x1

    .line 1466
    invoke-virtual {v0, v1}, Lcom/twitter/library/av/ap;->c(Z)Lcom/twitter/library/av/ap;

    move-result-object v0

    const/4 v1, 0x0

    .line 1467
    invoke-virtual {v0, v1}, Lcom/twitter/library/av/ap;->e(Z)Lcom/twitter/library/av/ap;

    move-result-object v0

    .line 1468
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/ap;->a(Ljava/lang/Object;)V

    .line 1473
    :goto_0
    return-void

    .line 1470
    :cond_0
    sget-object v0, Lcom/twitter/library/api/PromotedEvent;->n:Lcom/twitter/library/api/PromotedEvent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/library/api/PromotedEvent;)V

    .line 1471
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->o:Lcom/twitter/android/vw;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/MediaEntity;Lcom/twitter/library/widget/TweetView;)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 1867
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->U()V

    .line 1868
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/Session;Ljava/lang/String;IZ)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 669
    iput-object p2, p0, Lcom/twitter/android/TweetFragment2;->e:Lcom/twitter/library/client/Session;

    .line 670
    iput-object p1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    .line 671
    invoke-static {p1}, Lcom/twitter/library/card/CardContextFactory;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/card/CardContext;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->g:Lcom/twitter/library/card/CardContext;

    .line 672
    iput-object p3, p0, Lcom/twitter/android/TweetFragment2;->s:Ljava/lang/String;

    .line 673
    iput p4, p0, Lcom/twitter/android/TweetFragment2;->t:I

    .line 674
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->o:Lcom/twitter/android/vw;

    invoke-virtual {v0, p2}, Lcom/twitter/android/vw;->a(Lcom/twitter/library/client/Session;)V

    .line 675
    iput-boolean p5, p0, Lcom/twitter/android/TweetFragment2;->ag:Z

    .line 676
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->af:Lcom/twitter/android/qs;

    if-nez v0, :cond_a

    .line 677
    new-instance v0, Lcom/twitter/android/qs;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3, p1}, Lcom/twitter/android/qs;-><init>(Landroid/content/Context;Lcom/twitter/model/core/Tweet;)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->af:Lcom/twitter/android/qs;

    .line 682
    :goto_0
    iget-boolean v0, p0, Lcom/twitter/android/TweetFragment2;->y:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 688
    invoke-static {p1}, Lcom/twitter/android/av/m;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    iput-boolean v2, p0, Lcom/twitter/android/TweetFragment2;->y:Z

    .line 690
    sget-object v0, Lcom/twitter/library/api/PromotedEvent;->g:Lcom/twitter/library/api/PromotedEvent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/library/api/PromotedEvent;)V

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->ac:Lcom/twitter/android/widget/EngagementActionBar;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/EngagementActionBar;->setTweet(Lcom/twitter/model/core/Tweet;)V

    .line 695
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->ac:Lcom/twitter/android/widget/EngagementActionBar;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/EngagementActionBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    new-instance v0, Lcom/twitter/android/vm;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, p0, v3, p0}, Lcom/twitter/android/vm;-><init>(Lcom/twitter/android/TweetFragment2;Landroid/content/Context;Lcom/twitter/android/kn;)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->m:Lcom/twitter/android/vm;

    .line 698
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    new-instance v0, Lcom/twitter/android/vi;

    invoke-direct {v0, p0}, Lcom/twitter/android/vi;-><init>(Lcom/twitter/android/TweetFragment2;)V

    .line 707
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/twitter/android/TweetFragment2;->a(Ljava/util/List;I)V

    .line 710
    :cond_1
    new-instance v0, Lcom/twitter/android/vo;

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/vo;-><init>(Lcom/twitter/android/TweetFragment2;Lcom/twitter/android/ux;)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->ak:Lcom/twitter/android/vo;

    .line 711
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->ak:Lcom/twitter/android/vo;

    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->G()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Lcom/twitter/android/vo;->a(Ljava/util/List;Z)V

    .line 712
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->ak:Lcom/twitter/android/vo;

    invoke-virtual {v0, p0}, Lcom/twitter/android/vo;->a(Lcom/twitter/android/kn;)V

    .line 714
    new-instance v0, Lcom/twitter/android/widget/h;

    iget-object v3, p0, Lcom/twitter/android/TweetFragment2;->m:Lcom/twitter/android/vm;

    iget-object v4, p0, Lcom/twitter/android/TweetFragment2;->ak:Lcom/twitter/android/vo;

    invoke-direct {v0, v3, v4}, Lcom/twitter/android/widget/h;-><init>(Landroid/widget/BaseAdapter;Landroid/widget/BaseAdapter;)V

    .line 715
    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/h;->a(Z)Lcom/twitter/android/widget/bt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/h;

    .line 716
    invoke-static {}, Lcom/twitter/android/revenue/z;->g()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/h;->a(I)Lcom/twitter/android/widget/bt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/h;

    .line 717
    invoke-virtual {v0}, Lcom/twitter/android/widget/h;->a()Lcom/twitter/android/widget/f;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->n:Landroid/widget/BaseAdapter;

    .line 718
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->q:Lcom/twitter/library/widget/PageableListView;

    .line 719
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->o()Z

    move-result v7

    .line 722
    invoke-virtual {v0}, Lcom/twitter/library/widget/PageableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-nez v3, :cond_3

    .line 725
    iget-object v3, p0, Lcom/twitter/android/TweetFragment2;->q:Lcom/twitter/library/widget/PageableListView;

    iget-object v4, p0, Lcom/twitter/android/TweetFragment2;->C:Landroid/view/View;

    invoke-virtual {v3, v4, v1, v6}, Lcom/twitter/library/widget/PageableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 728
    iget-object v3, p0, Lcom/twitter/android/TweetFragment2;->A:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/twitter/library/widget/PageableListView;->a(Landroid/view/View;)V

    .line 731
    invoke-virtual {v0}, Lcom/twitter/library/widget/PageableListView;->b()V

    .line 733
    if-eqz v7, :cond_2

    .line 734
    invoke-virtual {v0}, Lcom/twitter/library/widget/PageableListView;->a()V

    .line 735
    invoke-virtual {v0, v6}, Lcom/twitter/library/widget/PageableListView;->a(Z)V

    .line 737
    :cond_2
    invoke-virtual {v0, v6}, Lcom/twitter/library/widget/PageableListView;->b(Z)V

    .line 739
    iget-object v3, p0, Lcom/twitter/android/TweetFragment2;->n:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v3}, Lcom/twitter/library/widget/PageableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 742
    :cond_3
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->y()Laxo;

    move-result-object v0

    .line 743
    invoke-virtual {p2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Laxo;->a(J)V

    .line 744
    invoke-virtual {v0}, Laxo;->b()Z

    move-result v3

    .line 745
    if-nez v3, :cond_b

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/twitter/android/TweetFragment2;->k:Z

    .line 746
    if-eqz v3, :cond_c

    .line 747
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 754
    :goto_2
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->b:Lcom/twitter/android/widget/TweetDetailView;

    new-instance v1, Lcom/twitter/android/vj;

    invoke-direct {v1, p0}, Lcom/twitter/android/vj;-><init>(Lcom/twitter/android/TweetFragment2;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TweetDetailView;->setOnTweetAnalyticsClickListener(Landroid/view/View$OnClickListener;)V

    .line 761
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->l:Lcom/twitter/library/api/ActivitySummary;

    if-nez v0, :cond_4

    .line 762
    new-instance v0, Lcom/twitter/library/api/activity/f;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-wide v2, p1, Lcom/twitter/model/core/Tweet;->p:J

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/twitter/library/api/activity/f;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v6}, Lcom/twitter/android/TweetFragment2;->c(Lcom/twitter/library/service/x;II)Z

    .line 766
    :cond_4
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->p()Z

    move-result v0

    if-nez v0, :cond_5

    .line 767
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->S()V

    .line 770
    :cond_5
    if-eqz v7, :cond_6

    .line 771
    invoke-virtual {p0, v6}, Lcom/twitter/android/TweetFragment2;->b(Z)V

    .line 775
    :cond_6
    const-string/jumbo v0, "translate_tweet_auto"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 776
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->Y()V

    .line 777
    const-string/jumbo v0, "translation_auto"

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment2;->c(Ljava/lang/String;)V

    .line 780
    :cond_7
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 781
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 782
    if-eqz v2, :cond_9

    .line 783
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 784
    if-eqz v0, :cond_9

    .line 785
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 786
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 787
    :goto_3
    const-string/jumbo v3, "email_redirect_retweet"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "retweet"

    .line 788
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 789
    :cond_8
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget-boolean v0, v0, Lcom/twitter/model/core/Tweet;->c:Z

    .line 792
    if-nez v0, :cond_e

    .line 793
    new-instance v0, Lcom/twitter/android/np;

    iget-object v2, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/np;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/twitter/model/core/Tweet;)V

    const/16 v1, 0x65

    .line 794
    invoke-virtual {v0, v1}, Lcom/twitter/android/np;->a(I)Lcom/twitter/android/np;

    move-result-object v0

    .line 795
    invoke-virtual {v0, p0}, Lcom/twitter/android/np;->a(Lcom/twitter/android/nq;)Lcom/twitter/android/np;

    move-result-object v0

    .line 796
    invoke-virtual {v0, p0}, Lcom/twitter/android/np;->a(Landroid/support/v4/app/Fragment;)Lcom/twitter/android/np;

    move-result-object v0

    .line 797
    invoke-virtual {v0}, Lcom/twitter/android/np;->a()Lcom/twitter/android/nm;

    move-result-object v0

    .line 798
    invoke-virtual {v0}, Lcom/twitter/android/nm;->b()V

    .line 817
    :cond_9
    :goto_4
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->F()Lcom/twitter/android/vr;

    move-result-object v0

    .line 820
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->e:Lcom/twitter/library/client/Session;

    iget-object v2, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/vr;->a(Lcom/twitter/library/client/Session;Ljava/lang/Object;)Lrx/o;

    move-result-object v1

    .line 822
    new-instance v2, Lcom/twitter/android/vk;

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/vk;-><init>(Lcom/twitter/android/TweetFragment2;Lcom/twitter/android/vr;)V

    invoke-virtual {v1, v2}, Lrx/o;->c(Ldjf;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->al:Lrx/ap;

    .line 836
    return-void

    .line 679
    :cond_a
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->af:Lcom/twitter/android/qs;

    invoke-virtual {v0, p1}, Lcom/twitter/android/qs;->a(Lcom/twitter/model/core/Tweet;)V

    goto/16 :goto_0

    :cond_b
    move v0, v6

    .line 745
    goto/16 :goto_1

    .line 750
    :cond_c
    new-instance v0, Lcom/twitter/android/timeline/cn;

    iget-object v2, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v2, Lcom/twitter/model/core/Tweet;->C:J

    iget-object v4, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/timeline/cn;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/core/Tweet;Lcom/twitter/model/timeline/al;)V

    .line 751
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->m:Lcom/twitter/android/vm;

    new-instance v2, Lcmo;

    invoke-static {v0}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Lcmo;-><init>(Ljava/lang/Iterable;)V

    invoke-virtual {v1, v2}, Lcom/twitter/android/vm;->a(Lcmf;)Lcmf;

    .line 752
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/Session;)V

    goto/16 :goto_2

    .line 786
    :cond_d
    const-string/jumbo v0, ""

    goto :goto_3

    .line 800
    :cond_e
    const-string/jumbo v0, "email_redirect_retweet"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_4

    .line 802
    :cond_f
    const-string/jumbo v1, "email_redirect_favorite"

    invoke-virtual {v2, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_10

    const-string/jumbo v1, "favorite"

    .line 804
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string/jumbo v1, "like"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 807
    :cond_10
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget-boolean v0, v0, Lcom/twitter/model/core/Tweet;->a:Z

    if-nez v0, :cond_11

    .line 808
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->x()V

    goto :goto_4

    .line 810
    :cond_11
    const-string/jumbo v0, "email_redirect_favorite"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public a(Lcom/twitter/model/core/av;)V
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p1, Lcom/twitter/model/core/av;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment2;->b(Ljava/lang/String;)V

    .line 1422
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->j:Lciu;

    invoke-virtual {v0, p1}, Lciu;->a(Lcom/twitter/model/core/av;)V

    .line 1423
    return-void
.end method

.method public a(Lcom/twitter/model/core/b;)V
    .locals 2

    .prologue
    .line 1413
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1414
    invoke-static {v0, p1}, Lcom/twitter/android/fh;->a(Landroid/content/Context;Lcom/twitter/model/core/b;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1415
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->j:Lciu;

    invoke-virtual {v0, p1}, Lciu;->a(Lcom/twitter/model/core/b;)V

    .line 1416
    return-void
.end method

.method public a(Lcom/twitter/model/core/cx;)V
    .locals 10

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->i:Lcom/twitter/android/card/i;

    if-eqz v0, :cond_0

    .line 1437
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->i:Lcom/twitter/android/card/i;

    const-string/jumbo v1, "open_link"

    const-string/jumbo v2, "platform_card"

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/card/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->Y()Ljava/lang/String;

    move-result-object v0

    .line 1442
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

    .line 1443
    const-string/jumbo v0, "tweet::tweet::impression"

    .line 1445
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    invoke-static {v0}, Lcom/twitter/library/client/BrowserDataSourceFactory;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/client/BrowserDataSource;

    move-result-object v2

    iget-wide v4, p0, Lcom/twitter/android/TweetFragment2;->aa:J

    const-string/jumbo v7, "tweet::tweet::impression"

    .line 1446
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v8

    const/4 v9, 0x0

    move-object v3, p1

    .line 1445
    invoke-static/range {v1 .. v9}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Lcom/twitter/library/client/BrowserDataSource;Lcom/twitter/model/core/cx;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)V

    .line 1447
    return-void
.end method

.method public a(Lcom/twitter/model/core/q;)V
    .locals 2

    .prologue
    .line 1405
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1406
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/twitter/android/fh;->a(Landroid/content/Context;Lcom/twitter/model/core/q;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1407
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->j:Lciu;

    invoke-virtual {v0, p1}, Lciu;->a(Lcom/twitter/model/core/q;)V

    .line 1408
    return-void
.end method

.method public a(Lcom/twitter/model/geo/TwitterPlace;)V
    .locals 1

    .prologue
    .line 1427
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1428
    if-eqz v0, :cond_0

    .line 1429
    invoke-static {v0, p1}, Lcom/twitter/android/geo/places/d;->a(Landroid/content/Context;Lcom/twitter/model/geo/TwitterPlace;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment2;->startActivity(Landroid/content/Intent;)V

    .line 1431
    :cond_0
    return-void
.end method

.method protected a(Lcom/twitter/refresh/widget/a;Z)V
    .locals 4

    .prologue
    .line 1358
    iget-wide v0, p1, Lcom/twitter/refresh/widget/a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1359
    iget-wide v0, p1, Lcom/twitter/refresh/widget/a;->c:J

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/TweetFragment2;->a(J)I

    move-result v0

    .line 1360
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    .line 1361
    iget-object v2, v1, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 1362
    iget v2, p1, Lcom/twitter/refresh/widget/a;->d:I

    invoke-virtual {v1, v0, v2}, Lcom/twitter/app/common/list/aa;->a(II)V

    .line 1365
    :cond_0
    return-void
.end method

.method protected a(Z)V
    .locals 1

    .prologue
    .line 484
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->a(Z)V

    .line 485
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->d:Lcom/twitter/android/vs;

    invoke-virtual {v0}, Lcom/twitter/android/vs;->a()V

    .line 486
    return-void
.end method

.method public a(ZI)V
    .locals 4

    .prologue
    .line 1076
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->q:Lcom/twitter/library/widget/PageableListView;

    invoke-virtual {v0}, Lcom/twitter/library/widget/PageableListView;->getHeaderViewsCount()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->m:Lcom/twitter/android/vm;

    iget-object v2, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v2, Lcom/twitter/model/core/Tweet;->C:J

    .line 1078
    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/vm;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 1079
    invoke-virtual {p0, v0, p2, p1}, Lcom/twitter/android/TweetFragment2;->a(IIZ)V

    .line 1081
    :cond_0
    return-void
.end method

.method public a(JLcom/twitter/model/core/Tweet;Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 1862
    const/4 v0, 0x0

    return v0
.end method

.method protected a_(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 498
    packed-switch p1, :pswitch_data_0

    .line 507
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->a_(I)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 500
    :pswitch_0
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->a_(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->y()Laxo;

    move-result-object v2

    invoke-virtual {v2}, Laxo;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/twitter/android/TweetFragment2;->m:Lcom/twitter/android/vm;

    .line 501
    invoke-virtual {v2}, Lcom/twitter/android/vm;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->O()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 504
    :pswitch_1
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->a_(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->y()Laxo;

    move-result-object v2

    invoke-virtual {v2}, Laxo;->i()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 498
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected synthetic b(Lcom/twitter/app/common/inject/t;)Lcom/twitter/app/common/inject/b;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/app/common/inject/t;)Laxl;

    move-result-object v0

    return-object v0
.end method

.method public b(J)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 1375
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->p:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    if-eqz v0, :cond_0

    .line 1376
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->p:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 1377
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v1, Lcom/twitter/model/core/Tweet;->p:J

    .line 1378
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(J)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-object v6, v0

    .line 1385
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    .line 1386
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v5

    move-wide v2, p1

    move-object v7, v4

    .line 1385
    invoke-static/range {v1 .. v7}, Lcom/twitter/android/ProfileActivity;->a(Landroid/content/Context;JLjava/lang/String;Lcss;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/model/timeline/al;)V

    .line 1387
    return-void

    .line 1380
    :cond_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 1381
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v1, Lcom/twitter/model/core/Tweet;->p:J

    .line 1382
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(J)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-object v6, v0

    goto :goto_0
.end method

.method public b(JLcom/twitter/model/core/Tweet;Z)V
    .locals 3

    .prologue
    .line 1824
    iget-wide v0, p3, Lcom/twitter/model/core/Tweet;->o:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1825
    :goto_0
    if-eqz v0, :cond_0

    .line 1826
    const-string/jumbo v0, "self_quote"

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment2;->c(Ljava/lang/String;)V

    .line 1828
    :cond_0
    const-string/jumbo v0, "quote"

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment2;->c(Ljava/lang/String;)V

    .line 1829
    return-void

    .line 1824
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/twitter/model/core/Tweet;)V
    .locals 2

    .prologue
    .line 630
    iput-object p1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    .line 631
    invoke-static {p1}, Lcom/twitter/library/card/CardContextFactory;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/card/CardContext;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->g:Lcom/twitter/library/card/CardContext;

    .line 632
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->ac:Lcom/twitter/android/widget/EngagementActionBar;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/EngagementActionBar;->setTweet(Lcom/twitter/model/core/Tweet;)V

    .line 633
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->w()V

    .line 634
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 1072
    iget v0, p0, Lcom/twitter/android/TweetFragment2;->E:I

    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/TweetFragment2;->a(ZI)V

    .line 1073
    return-void
.end method

.method public b(Lcom/twitter/model/core/cx;)Z
    .locals 1

    .prologue
    .line 1451
    const/4 v0, 0x1

    return v0
.end method

.method public c(J)V
    .locals 3

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->o:Lcom/twitter/android/vw;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/Tweet;JLcom/twitter/library/widget/TweetView;)V

    .line 1478
    return-void
.end method

.method public c(JLcom/twitter/model/core/Tweet;Z)V
    .locals 4

    .prologue
    .line 1834
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 1835
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->bf()Lcom/twitter/library/client/Session;

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

    .line 1834
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1836
    return-void
.end method

.method public c(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1285
    iput-boolean v1, p0, Lcom/twitter/android/TweetFragment2;->ad:Z

    .line 1286
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    .line 1287
    if-eqz p1, :cond_1

    .line 1291
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->U()V

    .line 1296
    :cond_0
    :goto_0
    return-void

    .line 1293
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->q:Lcom/twitter/library/widget/PageableListView;

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/PageableListView;->b(Z)V

    goto :goto_0
.end method

.method public c_(J)V
    .locals 0

    .prologue
    .line 1853
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->U()V

    .line 1854
    return-void
.end method

.method public d(J)V
    .locals 3

    .prologue
    .line 1395
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1396
    if-eqz v0, :cond_0

    .line 1397
    invoke-static {v0, p1, p2}, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->c(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1400
    :cond_0
    return-void
.end method

.method public d(JLcom/twitter/model/core/Tweet;Z)V
    .locals 4

    .prologue
    .line 1841
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->aY()Lcom/twitter/android/client/c;

    move-result-object v0

    .line 1844
    if-eqz v0, :cond_0

    .line 1845
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 1846
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "tweet::retweet_dialog::impression"

    aput-object v3, v1, v2

    .line 1847
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1845
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1849
    :cond_0
    return-void
.end method

.method public e(J)V
    .locals 3

    .prologue
    .line 2523
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 2524
    return-void
.end method

.method public l()Lcom/twitter/library/api/ActivitySummary;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->l:Lcom/twitter/library/api/ActivitySummary;

    return-object v0
.end method

.method public m()V
    .locals 4

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->q:Lcom/twitter/library/widget/PageableListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->q:Lcom/twitter/library/widget/PageableListView;

    .line 1240
    invoke-virtual {v0}, Lcom/twitter/library/widget/PageableListView;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->b:Lcom/twitter/android/widget/TweetDetailView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->b:Lcom/twitter/android/widget/TweetDetailView;

    .line 1241
    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetDetailView;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1244
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1245
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->A:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->A:Landroid/view/View;

    .line 1246
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 1247
    :goto_1
    iget-object v2, p0, Lcom/twitter/android/TweetFragment2;->A:Landroid/view/View;

    iget v3, p0, Lcom/twitter/android/TweetFragment2;->D:I

    if-eqz v0, :cond_3

    .line 1248
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1247
    :goto_2
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/twitter/android/TweetFragment2;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 1246
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1248
    :cond_3
    iget v0, p0, Lcom/twitter/android/TweetFragment2;->D:I

    goto :goto_2
.end method

.method o()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1252
    iget-boolean v0, p0, Lcom/twitter/android/TweetFragment2;->k:Z

    if-nez v0, :cond_1

    .line 1274
    :cond_0
    :goto_0
    return-void

    .line 1256
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    .line 1257
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->m:Lcom/twitter/android/vm;

    invoke-virtual {v1}, Lcom/twitter/android/vm;->notifyDataSetChanged()V

    .line 1258
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1259
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->A:Landroid/view/View;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/ui/r;->a(Landroid/app/Activity;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/TweetFragment2;->a(Landroid/view/View;I)V

    .line 1260
    iget v0, p0, Lcom/twitter/android/TweetFragment2;->E:I

    invoke-virtual {p0, v2, v0}, Lcom/twitter/android/TweetFragment2;->a(ZI)V

    .line 1262
    :cond_2
    iput-boolean v2, p0, Lcom/twitter/android/TweetFragment2;->k:Z

    .line 1264
    const-string/jumbo v0, "urt_conv:complete"

    .line 1266
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->aX()Layj;

    move-result-object v1

    sget-object v2, Laxz;->n:Laye;

    .line 1265
    invoke-static {v0, v1, v2}, Lcom/twitter/library/metrics/f;->b(Ljava/lang/String;Layj;Laye;)Lcom/twitter/library/metrics/f;

    move-result-object v0

    .line 1267
    iget-wide v2, p0, Lcom/twitter/android/TweetFragment2;->aa:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/metrics/f;->b(J)V

    .line 1268
    invoke-virtual {v0}, Lcom/twitter/library/metrics/f;->j()V

    .line 1270
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->i:Lcom/twitter/android/card/i;

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->i:Lcom/twitter/android/card/i;

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

    .line 1484
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    .line 1485
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1487
    iget-object v2, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    invoke-static {v2}, Lcom/twitter/model/core/Tweet;->b(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v7

    .line 1488
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v8

    .line 1489
    sparse-switch v1, :sswitch_data_0

    .line 1576
    :cond_0
    :goto_0
    return-void

    .line 1492
    :sswitch_0
    const v0, 0x7f1302fb

    if-ne v1, v0, :cond_1

    .line 1493
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->j:Lciu;

    invoke-virtual {v0}, Lciu;->c()V

    .line 1497
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->o:J

    .line 1498
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/TweetFragment2;->b(J)V

    goto :goto_0

    .line 1495
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->j:Lciu;

    invoke-virtual {v0}, Lciu;->d()V

    goto :goto_1

    .line 1502
    :sswitch_1
    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->m:Lcom/twitter/library/api/PromotedEvent;

    invoke-virtual {p0, v1}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/library/api/PromotedEvent;)V

    .line 1503
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->E()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->ad()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1504
    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->o:J

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/TweetFragment2;->b(J)V

    goto :goto_0

    .line 1506
    :cond_2
    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/TweetFragment2;->b(J)V

    goto :goto_0

    .line 1511
    :sswitch_2
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1512
    check-cast p1, Lcom/twitter/library/widget/ActionButton;

    .line 1513
    invoke-virtual {p1}, Lcom/twitter/library/widget/ActionButton;->isChecked()Z

    move-result v1

    .line 1514
    if-eqz v1, :cond_3

    const-string/jumbo v0, "unfollow"

    .line 1516
    :goto_2
    if-eqz v1, :cond_4

    .line 1517
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iput v11, v1, Lcom/twitter/model/core/Tweet;->i:I

    .line 1518
    iget-object v9, p0, Lcom/twitter/android/TweetFragment2;->ab:Lcom/twitter/library/client/bd;

    new-instance v1, Lbuc;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v4, Lcom/twitter/model/core/Tweet;->o:J

    iget-object v6, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    .line 1519
    invoke-virtual {v6}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lbuc;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V

    .line 1518
    invoke-virtual {v9, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 1526
    :goto_3
    invoke-virtual {p1}, Lcom/twitter/library/widget/ActionButton;->toggle()V

    .line 1527
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 1528
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v1, v2, v3, v8, v10}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v2, Lcom/twitter/model/core/Tweet;->o:J

    iget-object v4, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    .line 1529
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

    .line 1530
    invoke-static {v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v11

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1527
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    .line 1514
    :cond_3
    const-string/jumbo v0, "follow"

    goto :goto_2

    .line 1521
    :cond_4
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iput v12, v1, Lcom/twitter/model/core/Tweet;->i:I

    .line 1522
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    .line 1523
    iget-object v9, p0, Lcom/twitter/android/TweetFragment2;->ab:Lcom/twitter/library/client/bd;

    new-instance v1, Lbtz;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v4, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v4, Lcom/twitter/model/core/Tweet;->o:J

    iget-object v6, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    .line 1524
    invoke-virtual {v6}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lbtz;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V

    .line 1523
    invoke-virtual {v9, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    goto :goto_3

    .line 1532
    :cond_5
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1534
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->d()Ljava/lang/String;

    move-result-object v0

    .line 1532
    invoke-static {v1, v13, v0}, Lcom/twitter/android/ip;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1539
    :sswitch_3
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->b:Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetDetailView;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1540
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->b:Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetDetailView;->b()V

    goto/16 :goto_0

    .line 1542
    :cond_6
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->Y()V

    .line 1543
    const-string/jumbo v0, "translation_button"

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment2;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1549
    :sswitch_4
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->F()Lcom/twitter/android/vr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/vr;->a()Lcom/twitter/model/av/o;

    move-result-object v0

    .line 1551
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->am:Lcom/twitter/android/av/monetization/g;

    if-eqz v1, :cond_0

    .line 1552
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->am:Lcom/twitter/android/av/monetization/g;

    new-instance v2, Lcom/twitter/android/av/monetization/e;

    invoke-direct {v2, v0}, Lcom/twitter/android/av/monetization/e;-><init>(Lcom/twitter/model/av/o;)V

    invoke-virtual {v1, v2}, Lcom/twitter/android/av/monetization/g;->c(Lauc;)V

    goto/16 :goto_0

    .line 1559
    :sswitch_5
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->j:Lciu;

    invoke-virtual {v0}, Lciu;->a()V

    .line 1560
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "twitter"

    .line 1561
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "tweet"

    .line 1562
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "status_id"

    iget-object v2, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v2, Lcom/twitter/model/core/Tweet;->t:J

    .line 1564
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1563
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1565
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1566
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/twitter/android/TweetActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1567
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "association"

    .line 1568
    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 1569
    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment2;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1489
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

    .line 326
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 327
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v1, "tweet"

    .line 328
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 327
    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 330
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->p()Lcom/twitter/app/common/list/w;

    move-result-object v1

    .line 331
    const-string/jumbo v0, "source_association"

    invoke-virtual {v1, v0}, Lcom/twitter/app/common/list/w;->h(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->p:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 332
    const-string/jumbo v0, "timeline_moment"

    .line 333
    invoke-virtual {v1, v0}, Lcom/twitter/app/common/list/w;->i(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    sget-object v2, Lcom/twitter/model/moments/ad;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v2}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ad;

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->u:Lcom/twitter/model/moments/ad;

    .line 335
    const-string/jumbo v0, "subbranch"

    .line 336
    invoke-virtual {v1, v0}, Lcom/twitter/app/common/list/w;->i(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    sget-object v1, Lcom/twitter/model/timeline/dd;->a:Lcom/twitter/util/serialization/ae;

    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/dd;

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->v:Lcom/twitter/model/timeline/dd;

    .line 339
    if-eqz p1, :cond_0

    .line 340
    invoke-virtual {p0, p1}, Lcom/twitter/android/TweetFragment2;->a(Landroid/os/Bundle;)V

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0369

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/TweetFragment2;->D:I

    .line 343
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/TweetFragment2;->E:I

    .line 344
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v3

    .line 345
    new-instance v0, Lcom/twitter/android/ux;

    const-string/jumbo v1, "tweet:stream:tweet:link:open_link"

    .line 346
    invoke-static {v4, v1, v4, v4}, Lciw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lciw;

    move-result-object v5

    new-instance v6, Lcom/twitter/android/vq;

    invoke-direct {v6, p0, p0, v3}, Lcom/twitter/android/vq;-><init>(Lcom/twitter/android/TweetFragment2;Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/ux;-><init>(Lcom/twitter/android/TweetFragment2;Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Lciw;Lcom/twitter/android/sn;)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->o:Lcom/twitter/android/vw;

    .line 385
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->o:Lcom/twitter/android/vw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/vw;->a(Z)V

    .line 386
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->o:Lcom/twitter/android/vw;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->p:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v0, v1}, Lcom/twitter/android/vw;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 388
    new-instance v0, Lciu;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/ve;

    invoke-direct {v2, p0}, Lcom/twitter/android/ve;-><init>(Lcom/twitter/android/TweetFragment2;)V

    .line 394
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/TweetFragment2;->p:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    new-instance v5, Lcom/twitter/android/vf;

    invoke-direct {v5, p0}, Lcom/twitter/android/vf;-><init>(Lcom/twitter/android/TweetFragment2;)V

    iget-object v6, p0, Lcom/twitter/android/TweetFragment2;->Z:Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct/range {v0 .. v6}, Lciu;-><init>(Landroid/content/Context;Lcom/twitter/util/object/i;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/util/object/i;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->j:Lciu;

    .line 402
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 404
    instance-of v1, v0, Lcom/twitter/android/TweetActivity;

    if-eqz v1, :cond_1

    .line 405
    new-instance v1, Lcom/twitter/android/vg;

    invoke-direct {v1, p0}, Lcom/twitter/android/vg;-><init>(Lcom/twitter/android/TweetFragment2;)V

    iput-object v1, p0, Lcom/twitter/android/TweetFragment2;->an:Laum;

    .line 432
    new-instance v1, Lcom/twitter/android/av/monetization/g;

    check-cast v0, Lcom/twitter/android/TweetActivity;

    const/16 v2, 0x69

    invoke-direct {v1, v0, v2}, Lcom/twitter/android/av/monetization/g;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/twitter/android/TweetFragment2;->am:Lcom/twitter/android/av/monetization/g;

    .line 434
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->am:Lcom/twitter/android/av/monetization/g;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->an:Laum;

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/monetization/g;->a(Laum;)V

    .line 436
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
    .line 1313
    packed-switch p1, :pswitch_data_0

    .line 1320
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1315
    :pswitch_0
    invoke-direct {p0}, Lcom/twitter/android/TweetFragment2;->X()Lavh;

    move-result-object v6

    .line 1316
    new-instance v0, Lcom/twitter/android/bt;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, v6, Lavh;->a:Landroid/net/Uri;

    iget-object v3, v6, Lavh;->b:[Ljava/lang/String;

    iget-object v4, v6, Lavh;->c:Ljava/lang/String;

    iget-object v5, v6, Lavh;->d:[Ljava/lang/String;

    iget-object v6, v6, Lavh;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1313
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->al:Lrx/ap;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->al:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->am:Lcom/twitter/android/av/monetization/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->an:Laum;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->am:Lcom/twitter/android/av/monetization/g;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->an:Laum;

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/monetization/g;->b(Laum;)V

    .line 448
    :cond_1
    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->onDestroy()V

    .line 449
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 205
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/TweetFragment2;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 1327
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1596
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 1597
    const v3, 0x7f130769

    if-ne v2, v3, :cond_1

    .line 1598
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v3, p0, Lcom/twitter/android/TweetFragment2;->e:Lcom/twitter/library/client/Session;

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "tweet"

    aput-object v4, v3, v1

    aput-object v6, v3, v0

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    .line 1599
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

    .line 1598
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 1600
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 1601
    iget-object v3, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v3}, Lcom/twitter/model/core/Tweet;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1602
    const v3, 0x7f0a0226

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1605
    :cond_0
    :goto_0
    return v0

    :cond_1
    const v3, 0x7f130277

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/twitter/android/TweetFragment2;->o:Lcom/twitter/android/vw;

    iget-object v3, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

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
    .line 616
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 617
    const-string/jumbo v0, "as"

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->l:Lcom/twitter/library/api/ActivitySummary;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 618
    const-string/jumbo v0, "dw"

    iget-boolean v1, p0, Lcom/twitter/android/TweetFragment2;->z:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 619
    const-string/jumbo v0, "fss"

    iget-boolean v1, p0, Lcom/twitter/android/TweetFragment2;->ae:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 621
    const-string/jumbo v0, "display_possibly_sensitive_media"

    iget-boolean v1, p0, Lcom/twitter/android/TweetFragment2;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 622
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->b:Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/TweetDetailView;->a(Landroid/os/Bundle;)V

    .line 623
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 1209
    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->onStart()V

    .line 1210
    iget-boolean v0, p0, Lcom/twitter/android/TweetFragment2;->ai:Z

    if-eqz v0, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->b:Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetDetailView;->aP_()V

    .line 1212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/TweetFragment2;->ai:Z

    .line 1214
    :cond_0
    invoke-static {p0}, Lcom/twitter/library/provider/cf;->b(Lcom/twitter/library/provider/cg;)V

    .line 1215
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 1220
    invoke-static {p0}, Lcom/twitter/library/provider/cf;->a(Lcom/twitter/library/provider/cg;)V

    .line 1221
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 1222
    iget-object v2, p0, Lcom/twitter/android/TweetFragment2;->d:Lcom/twitter/android/vs;

    const-string/jumbo v3, "tweet::stream::results"

    invoke-virtual {v2, v0, v1, v3}, Lcom/twitter/android/vs;->a(JLjava/lang/String;)V

    .line 1223
    iget-object v2, p0, Lcom/twitter/android/TweetFragment2;->d:Lcom/twitter/android/vs;

    invoke-virtual {v2, v0, v1}, Lcom/twitter/android/vs;->a(J)V

    .line 1224
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->b:Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetDetailView;->f()V

    .line 1225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/TweetFragment2;->ai:Z

    .line 1226
    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->onStop()V

    .line 1227
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 520
    invoke-super {p0, p1, p2}, Lcom/twitter/android/TweetListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 521
    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->q:Lcom/twitter/library/widget/PageableListView;

    .line 522
    invoke-virtual {v1, v5}, Lcom/twitter/library/widget/PageableListView;->setScrollingCacheEnabled(Z)V

    .line 523
    invoke-virtual {v1, v5}, Lcom/twitter/library/widget/PageableListView;->setCacheColorHint(I)V

    .line 524
    new-instance v0, Lcom/twitter/android/vh;

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/vh;-><init>(Lcom/twitter/android/TweetFragment2;Lcom/twitter/library/widget/PageableListView;)V

    invoke-virtual {v1, v0}, Lcom/twitter/library/widget/PageableListView;->setOnPageScrollListener(Lcom/twitter/library/widget/x;)V

    .line 569
    invoke-virtual {v1}, Lcom/twitter/library/widget/PageableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 570
    const v0, 0x7f0403d1

    .line 571
    invoke-virtual {v2, v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/TweetDetailView;

    .line 572
    iget-object v3, v0, Lcom/twitter/android/widget/TweetDetailView;->a:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v3, p0}, Lcom/twitter/library/media/widget/UserImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetDetailView;->getNamePanel()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/TweetDetailView;->setOnMomentClickListener(Laci;)V

    .line 575
    new-instance v3, Lcom/twitter/android/widget/fp;

    iget-object v4, p0, Lcom/twitter/android/TweetFragment2;->q:Lcom/twitter/library/widget/PageableListView;

    invoke-direct {v3, v4, v0}, Lcom/twitter/android/widget/fp;-><init>(Landroid/view/View;Lcom/twitter/android/widget/TweetDetailView;)V

    .line 577
    iget-object v4, p0, Lcom/twitter/android/TweetFragment2;->q:Lcom/twitter/library/widget/PageableListView;

    invoke-virtual {v4, v3}, Lcom/twitter/library/widget/PageableListView;->setExploreByTouchHelper(Landroid/support/v4/widget/ExploreByTouchHelper;)V

    .line 579
    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetDetailView;->getTweetTextView()Landroid/widget/TextView;

    move-result-object v3

    .line 580
    if-eqz v3, :cond_0

    .line 581
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 584
    :cond_0
    iget-object v3, v0, Lcom/twitter/android/widget/TweetDetailView;->b:Lcom/twitter/ui/widget/BadgeView;

    invoke-virtual {v3, p0}, Lcom/twitter/ui/widget/BadgeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/TweetDetailView;->setQuoteTweetClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/TweetDetailView;->setQuoteTweetLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 587
    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/TweetDetailView;->setTranslationButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/TweetDetailView;->setOnMediaMonetizationClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    if-eqz p2, :cond_1

    .line 590
    invoke-virtual {v0, p2}, Lcom/twitter/android/widget/TweetDetailView;->b(Landroid/os/Bundle;)V

    .line 592
    :cond_1
    iget-object v3, p0, Lcom/twitter/android/TweetFragment2;->u:Lcom/twitter/model/moments/ad;

    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/TweetDetailView;->setMoment(Lcom/twitter/model/moments/ad;)V

    .line 593
    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->b:Lcom/twitter/android/widget/TweetDetailView;

    .line 594
    iput-boolean v5, p0, Lcom/twitter/android/TweetFragment2;->ai:Z

    .line 596
    iget-object v0, v0, Lcom/twitter/android/widget/TweetDetailView;->c:Lcom/twitter/android/widget/EngagementActionBar;

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->ac:Lcom/twitter/android/widget/EngagementActionBar;

    .line 597
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->ac:Lcom/twitter/android/widget/EngagementActionBar;

    invoke-virtual {v0}, Lcom/twitter/android/widget/EngagementActionBar;->b()V

    .line 598
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->ac:Lcom/twitter/android/widget/EngagementActionBar;

    const v3, 0x7f13002d

    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/EngagementActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ToggleImageButton;

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->F:Lcom/twitter/android/widget/ToggleImageButton;

    .line 599
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->ac:Lcom/twitter/android/widget/EngagementActionBar;

    const v3, 0x7f130061

    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/EngagementActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ToggleImageButton;

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->G:Lcom/twitter/android/widget/ToggleImageButton;

    .line 601
    const v0, 0x7f040056

    invoke-virtual {v2, v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->B:Landroid/view/View;

    .line 602
    const v0, 0x7f040269

    invoke-virtual {v2, v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->A:Landroid/view/View;

    .line 603
    const v0, 0x7f0400aa

    invoke-virtual {v2, v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->C:Landroid/view/View;

    .line 605
    invoke-static {}, Lcay;->a()Lcay;

    move-result-object v0

    invoke-virtual {v0}, Lcay;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 606
    new-instance v0, Lcav;

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Lcav;-><init>(Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->ap:Lcav;

    .line 607
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->ap:Lcav;

    .line 608
    invoke-static {}, Lcay;->a()Lcay;

    move-result-object v1

    invoke-virtual {v1}, Lcay;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcav;->a(Ljava/util/List;)V

    .line 610
    :cond_2
    sget-object v0, Lcom/twitter/android/TweetFragment2;->c:Lcom/twitter/android/vt;

    .line 611
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v2

    iget v3, p0, Lcom/twitter/android/TweetFragment2;->K:I

    iget-object v4, p0, Lcom/twitter/android/TweetFragment2;->L:Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v5

    .line 610
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/vt;->a(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;ILcom/twitter/library/scribe/TwitterScribeItem;Lcom/twitter/library/client/bk;)Lcom/twitter/android/vs;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetFragment2;->d:Lcom/twitter/android/vs;

    .line 612
    return-void
.end method

.method public t()V
    .locals 3

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->q:Lcom/twitter/library/widget/PageableListView;

    .line 1279
    invoke-virtual {v0}, Lcom/twitter/library/widget/PageableListView;->getHeaderViewsCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/twitter/library/widget/PageableListView;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/widget/PageableListView;->setSelectionFromTop(II)V

    .line 1280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/TweetFragment2;->ad:Z

    .line 1281
    return-void
.end method

.method public u()V
    .locals 3

    .prologue
    .line 1751
    new-instance v0, Lcom/twitter/android/np;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/np;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/twitter/model/core/Tweet;)V

    const/16 v1, 0x65

    .line 1752
    invoke-virtual {v0, v1}, Lcom/twitter/android/np;->a(I)Lcom/twitter/android/np;

    move-result-object v0

    .line 1753
    invoke-virtual {v0, p0}, Lcom/twitter/android/np;->a(Lcom/twitter/android/nq;)Lcom/twitter/android/np;

    move-result-object v0

    .line 1754
    invoke-virtual {v0, p0}, Lcom/twitter/android/np;->a(Landroid/support/v4/app/Fragment;)Lcom/twitter/android/np;

    move-result-object v0

    .line 1755
    invoke-virtual {v0}, Lcom/twitter/android/np;->a()Lcom/twitter/android/nm;

    move-result-object v0

    .line 1756
    invoke-virtual {v0}, Lcom/twitter/android/nm;->a()V

    .line 1757
    return-void
.end method

.method public v()V
    .locals 3

    .prologue
    .line 1761
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->f:Lcom/twitter/model/core/Tweet;

    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v2

    invoke-virtual {v2}, Lcbh;->h()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Z)V

    .line 1762
    const-string/jumbo v0, "share"

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment2;->c(Ljava/lang/String;)V

    .line 1763
    return-void
.end method

.method public w()V
    .locals 2

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->m:Lcom/twitter/android/vm;

    if-eqz v0, :cond_0

    .line 1961
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->m:Lcom/twitter/android/vm;

    invoke-virtual {v0}, Lcom/twitter/android/vm;->notifyDataSetChanged()V

    .line 1964
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->i:Lcom/twitter/android/card/i;

    if-eqz v0, :cond_1

    .line 1965
    iget-object v0, p0, Lcom/twitter/android/TweetFragment2;->i:Lcom/twitter/android/card/i;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment2;->g:Lcom/twitter/library/card/CardContext;

    invoke-interface {v0, v1}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/card/CardContext;)V

    .line 1967
    :cond_1
    return-void
.end method

.method protected x()V
    .locals 4

    .prologue
    .line 2589
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 2590
    new-instance v1, Lcom/twitter/android/vc;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/vc;-><init>(Lcom/twitter/android/TweetFragment2;Landroid/support/v4/app/FragmentActivity;)V

    .line 2607
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0905

    .line 2608
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0458

    .line 2609
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a00ce

    .line 2610
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a00fd

    const/4 v3, 0x0

    .line 2611
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2612
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2613
    new-instance v2, Lcom/twitter/android/vd;

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/vd;-><init>(Lcom/twitter/android/TweetFragment2;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2620
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2621
    return-void
.end method
