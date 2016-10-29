.class public Lcom/twitter/android/sn;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lciv;


# static fields
.field private static final a:Z


# instance fields
.field private final b:Lcom/twitter/android/revenue/d;

.field protected final c:Lcom/twitter/android/client/c;

.field protected final d:Lcom/twitter/library/client/bk;

.field protected final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field protected final f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field protected final g:Landroid/content/Context;

.field protected final h:Lcom/twitter/library/client/bd;

.field protected final i:Lcom/twitter/android/timeline/bf;

.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcvo;->a()Z

    move-result v0

    sput-boolean v0, Lcom/twitter/android/sn;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 111
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/sn;-><init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/android/revenue/d;Lcom/twitter/android/timeline/bf;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/android/revenue/d;Lcom/twitter/android/timeline/bf;I)V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/sn;->g:Landroid/content/Context;

    .line 118
    iget-object v0, p0, Lcom/twitter/android/sn;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/client/c;->a(Landroid/content/Context;)Lcom/twitter/android/client/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/sn;->c:Lcom/twitter/android/client/c;

    .line 119
    iget-object v0, p0, Lcom/twitter/android/sn;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/sn;->h:Lcom/twitter/library/client/bd;

    .line 120
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/sn;->d:Lcom/twitter/library/client/bk;

    .line 121
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/android/sn;->e:Ljava/lang/ref/WeakReference;

    .line 122
    iput-object p2, p0, Lcom/twitter/android/sn;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 123
    iput-object p3, p0, Lcom/twitter/android/sn;->b:Lcom/twitter/android/revenue/d;

    .line 124
    iput-object p4, p0, Lcom/twitter/android/sn;->i:Lcom/twitter/android/timeline/bf;

    .line 125
    iput p5, p0, Lcom/twitter/android/sn;->j:I

    .line 126
    return-void
.end method

.method private static a(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 768
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 771
    new-instance v1, Lcom/twitter/android/ti;

    invoke-direct {v1, p0, v2}, Lcom/twitter/android/ti;-><init>(Landroid/view/View;I)V

    .line 772
    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 773
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 776
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 777
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 778
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 780
    return-object v0
.end method

.method private a(Lcom/twitter/android/timeline/bp;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 7

    .prologue
    .line 850
    instance-of v0, p1, Lcom/twitter/android/timeline/ca;

    if-eqz v0, :cond_0

    .line 851
    new-instance v0, Lcom/twitter/android/su;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/su;-><init>(Lcom/twitter/android/sn;Lcom/twitter/android/timeline/bp;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/twitter/android/sv;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/sv;-><init>(Lcom/twitter/android/sn;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(JLcom/twitter/library/service/aa;Lcom/twitter/library/util/FriendshipCache;)V
    .locals 0

    .prologue
    .line 93
    invoke-static {p0, p1, p2, p3}, Lcom/twitter/android/sn;->e(JLcom/twitter/library/service/aa;Lcom/twitter/library/util/FriendshipCache;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/twitter/model/core/ay;)V
    .locals 1

    .prologue
    .line 749
    new-instance v0, Lcom/twitter/android/dm/w;

    invoke-direct {v0}, Lcom/twitter/android/dm/w;-><init>()V

    .line 750
    invoke-virtual {v0, p2}, Lcom/twitter/android/dm/w;->a(Lcom/twitter/model/core/ay;)Lcom/twitter/android/dm/w;

    move-result-object v0

    .line 751
    invoke-virtual {v0}, Lcom/twitter/android/dm/w;->d()Lcom/twitter/android/dm/v;

    move-result-object v0

    .line 749
    invoke-static {p1, v0}, Lcom/twitter/android/dm/r;->a(Landroid/content/Context;Lcom/twitter/android/dm/v;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 752
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 919
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 920
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 921
    const v2, 0x7f0f019c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 922
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 923
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 924
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 925
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 926
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "OK"

    const/4 v2, 0x0

    .line 927
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 928
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 929
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 930
    return-void
.end method

.method protected static a(Landroid/support/v4/app/FragmentActivity;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    .prologue
    .line 898
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0901

    .line 899
    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0900

    .line 900
    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00fd

    .line 902
    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 903
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 904
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 905
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/sn;JLcom/twitter/library/service/aa;Lcom/twitter/library/util/FriendshipCache;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/sn;->c(JLcom/twitter/library/service/aa;Lcom/twitter/library/util/FriendshipCache;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/sn;Landroid/app/Activity;Lcom/twitter/model/core/ay;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/sn;->a(Landroid/app/Activity;Lcom/twitter/model/core/ay;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/sn;Lcom/twitter/android/timeline/ca;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/sn;->a(Lcom/twitter/android/timeline/ca;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/sn;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/sn;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct/range {p0 .. p5}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/sn;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/sn;->a(Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/sn;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/sn;->b(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    return-void
.end method

.method private a(Lcom/twitter/android/timeline/ca;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 869
    iget-object v0, p1, Lcom/twitter/android/timeline/ca;->b:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    .line 870
    if-eqz v0, :cond_1

    iget-object v0, v0, Lcss;->c:Ljava/lang/String;

    .line 871
    :goto_0
    iget-object v2, p0, Lcom/twitter/android/sn;->b:Lcom/twitter/android/revenue/d;

    if-eqz v2, :cond_0

    .line 872
    iget-object v2, p0, Lcom/twitter/android/sn;->b:Lcom/twitter/android/revenue/d;

    invoke-virtual {p1}, Lcom/twitter/android/timeline/ca;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/android/revenue/d;->d(Ljava/lang/String;)V

    .line 874
    :cond_0
    iget-object v2, p0, Lcom/twitter/android/sn;->c:Lcom/twitter/android/client/c;

    invoke-virtual {p1}, Lcom/twitter/android/timeline/ca;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, p2}, Lcom/twitter/android/client/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/api/PromotedEvent;)V

    .line 875
    iget-object v0, p1, Lcom/twitter/android/timeline/ca;->b:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0, p3, p4, v0, v1}, Lcom/twitter/android/sn;->b(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 876
    return-void

    :cond_1
    move-object v0, v1

    .line 870
    goto :goto_0
.end method

.method private a(Lcom/twitter/model/core/Tweet;Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeItem;)V
    .locals 1

    .prologue
    .line 987
    new-instance v0, Lcom/twitter/android/nj;

    invoke-direct {v0}, Lcom/twitter/android/nj;-><init>()V

    invoke-virtual {v0, p1}, Lcom/twitter/android/nj;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/nj;

    move-result-object v0

    .line 988
    invoke-virtual {v0, p2}, Lcom/twitter/android/nj;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 989
    const-string/jumbo v0, "report"

    invoke-direct {p0, v0, p1, p3}, Lcom/twitter/android/sn;->a(Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 990
    return-void
.end method

.method private a(Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 996
    new-instance v1, Lcom/twitter/android/lx;

    iget-object v0, p0, Lcom/twitter/android/sn;->g:Landroid/content/Context;

    .line 997
    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    invoke-direct {v1, p2, p3, v0, v3}, Lcom/twitter/android/lx;-><init>(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/bd;Lcom/twitter/android/ma;)V

    .line 998
    const-string/jumbo v2, ""

    if-eqz p5, :cond_0

    const-string/jumbo v0, "pin"

    :goto_0
    invoke-virtual {p0, v2, v0, p1, v3}, Lcom/twitter/android/sn;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    invoke-virtual {v1, p1, p5, p4, v0}, Lcom/twitter/android/lx;->a(Lcom/twitter/model/core/Tweet;ZLcom/twitter/library/client/Session;Lcom/twitter/library/scribe/TwitterScribeLog;)V

    .line 1000
    return-void

    .line 998
    :cond_0
    const-string/jumbo v0, "unpin"

    goto :goto_0
.end method

.method private a(Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    .prologue
    .line 978
    invoke-static {p2}, Larx;->a(Landroid/support/v4/app/FragmentActivity;)Larx;

    move-result-object v0

    .line 979
    invoke-virtual {v0, p1}, Larx;->a(Lcom/twitter/model/core/Tweet;)Larx;

    move-result-object v0

    .line 980
    invoke-virtual {v0}, Larx;->a()Lasa;

    move-result-object v0

    .line 981
    invoke-interface {v0}, Lasa;->a()V

    .line 982
    return-void
.end method

.method private a(Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/scribe/TwitterScribeItem;)V
    .locals 2

    .prologue
    .line 911
    const-string/jumbo v0, "tweet_analytics"

    const-string/jumbo v1, "click"

    invoke-direct {p0, v0, v1, p1, p3}, Lcom/twitter/android/sn;->b(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 912
    iget-wide v0, p1, Lcom/twitter/model/core/Tweet;->p:J

    invoke-static {p2, v0, v1}, Lcom/twitter/android/analytics/TweetAnalyticsWebViewActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 913
    return-void
.end method

.method private a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 880
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    return-void
.end method

.method private a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 885
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    .line 886
    if-eqz v0, :cond_1

    iget-object v4, v0, Lcss;->c:Ljava/lang/String;

    .line 887
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/sn;->c:Lcom/twitter/android/client/c;

    iget v1, p1, Lcom/twitter/model/core/Tweet;->L:I

    iget-wide v2, p1, Lcom/twitter/model/core/Tweet;->K:J

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/c;->a(IJLjava/lang/String;Lcom/twitter/library/api/PromotedEvent;)V

    .line 889
    invoke-direct {p0, p3, p4, p1, v6}, Lcom/twitter/android/sn;->b(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 890
    const-string/jumbo v0, "unspecified"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/twitter/android/sn;->h:Lcom/twitter/library/client/bd;

    new-instance v1, Lbrs;

    iget-object v2, p0, Lcom/twitter/android/sn;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/android/sn;->d:Lcom/twitter/library/client/bk;

    .line 892
    invoke-virtual {v3}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-direct {v1, v2, v3, p5}, Lbrs;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    .line 891
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 894
    :cond_0
    return-void

    :cond_1
    move-object v4, v6

    .line 886
    goto :goto_0
.end method

.method private a(Lcom/twitter/model/core/TweetActionType;Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;)V
    .locals 2

    .prologue
    .line 1005
    sget-object v0, Lcom/twitter/android/sw;->a:[I

    invoke-virtual {p1}, Lcom/twitter/model/core/TweetActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1044
    :goto_0
    :pswitch_0
    return-void

    .line 1007
    :pswitch_1
    const/4 v0, 0x1

    .line 1043
    :goto_1
    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v0, v1}, Lcom/twitter/android/ip;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    goto :goto_0

    .line 1011
    :pswitch_2
    const/16 v0, 0xa

    .line 1012
    goto :goto_1

    .line 1015
    :pswitch_3
    const/4 v0, 0x2

    .line 1016
    goto :goto_1

    .line 1019
    :pswitch_4
    const/4 v0, 0x3

    .line 1020
    goto :goto_1

    .line 1023
    :pswitch_5
    const/4 v0, 0x4

    .line 1024
    goto :goto_1

    .line 1027
    :pswitch_6
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/twitter/android/sn;->c(Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;)V

    goto :goto_0

    .line 1031
    :pswitch_7
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;)V

    goto :goto_0

    .line 1035
    :pswitch_8
    invoke-virtual {p0, p2, p4}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Landroid/app/Activity;)V

    goto :goto_0

    .line 1005
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private a(Lcom/twitter/model/core/TweetActionType;Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/library/scribe/TwitterScribeItem;Lcom/twitter/library/widget/av;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 936
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->b:Lcom/twitter/model/core/TweetActionType;

    if-ne p1, v1, :cond_1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    move-object v6, p8

    .line 937
    invoke-virtual/range {v1 .. v6}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;Lcom/twitter/library/scribe/TwitterScribeItem;Lcom/twitter/library/widget/av;)V

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 938
    :cond_1
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->c:Lcom/twitter/model/core/TweetActionType;

    if-ne p1, v1, :cond_2

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    move-object v6, p8

    .line 939
    invoke-virtual/range {v1 .. v6}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/scribe/TwitterScribeItem;Lcom/twitter/library/widget/av;)V

    goto :goto_0

    .line 940
    :cond_2
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->d:Lcom/twitter/model/core/TweetActionType;

    if-ne p1, v1, :cond_3

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    .line 941
    invoke-virtual/range {v1 .. v6}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    goto :goto_0

    .line 942
    :cond_3
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->e:Lcom/twitter/model/core/TweetActionType;

    if-eq p1, v1, :cond_4

    sget-object v1, Lcom/twitter/model/core/TweetActionType;->f:Lcom/twitter/model/core/TweetActionType;

    if-ne p1, v1, :cond_5

    :cond_4
    move-object v1, p0

    move-object v2, p2

    move-object v3, p6

    move-object v4, p7

    move-object v5, p8

    move-object/from16 v6, p10

    .line 943
    invoke-virtual/range {v1 .. v6}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/library/scribe/TwitterScribeItem;Lcom/twitter/library/widget/av;Ljava/lang/String;)V

    goto :goto_0

    .line 944
    :cond_5
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->g:Lcom/twitter/model/core/TweetActionType;

    if-ne p1, v1, :cond_6

    .line 945
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/twitter/android/sn;->b(Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;)V

    goto :goto_0

    .line 946
    :cond_6
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->h:Lcom/twitter/model/core/TweetActionType;

    if-ne p1, v1, :cond_7

    .line 947
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/twitter/android/sn;->c(Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;)V

    goto :goto_0

    .line 948
    :cond_7
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->i:Lcom/twitter/model/core/TweetActionType;

    if-ne p1, v1, :cond_8

    .line 949
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;)V

    goto :goto_0

    .line 950
    :cond_8
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->n:Lcom/twitter/model/core/TweetActionType;

    if-ne p1, v1, :cond_9

    .line 951
    move/from16 v0, p9

    invoke-virtual {p0, p2, p4, p7, v0}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/scribe/TwitterScribeItem;Z)V

    goto :goto_0

    .line 952
    :cond_9
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->j:Lcom/twitter/model/core/TweetActionType;

    if-ne p1, v1, :cond_a

    move-object v1, p0

    move-object v2, p2

    move-object v3, p6

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p10

    .line 953
    invoke-virtual/range {v1 .. v6}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/util/FriendshipCache;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    goto :goto_0

    .line 954
    :cond_a
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->k:Lcom/twitter/model/core/TweetActionType;

    if-ne p1, v1, :cond_b

    .line 955
    invoke-virtual {p0, p2, p6, p4, p5}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/util/FriendshipCache;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;)V

    goto :goto_0

    .line 956
    :cond_b
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->l:Lcom/twitter/model/core/TweetActionType;

    if-ne p1, v1, :cond_c

    move-object v1, p0

    move-object v2, p2

    move-object v3, p6

    move-object v4, p4

    move-object v5, p5

    move-object v6, p8

    .line 957
    invoke-virtual/range {v1 .. v6}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/util/FriendshipCache;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;Lcom/twitter/library/widget/av;)V

    goto :goto_0

    .line 958
    :cond_c
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->m:Lcom/twitter/model/core/TweetActionType;

    if-ne p1, v1, :cond_d

    move-object v1, p0

    move-object v2, p2

    move-object v3, p6

    move-object v4, p4

    move-object v5, p5

    move-object v6, p8

    .line 959
    invoke-virtual/range {v1 .. v6}, Lcom/twitter/android/sn;->b(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/util/FriendshipCache;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;Lcom/twitter/library/widget/av;)V

    goto/16 :goto_0

    .line 960
    :cond_d
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->s:Lcom/twitter/model/core/TweetActionType;

    if-ne p1, v1, :cond_e

    .line 961
    move-object/from16 v0, p11

    invoke-direct {p0, p4, v0}, Lcom/twitter/android/sn;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 962
    :cond_e
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->o:Lcom/twitter/model/core/TweetActionType;

    if-ne p1, v1, :cond_f

    .line 963
    invoke-direct {p0, p2, p4, p7}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    goto/16 :goto_0

    .line 964
    :cond_f
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->q:Lcom/twitter/model/core/TweetActionType;

    if-eq p1, v1, :cond_10

    sget-object v1, Lcom/twitter/model/core/TweetActionType;->r:Lcom/twitter/model/core/TweetActionType;

    if-ne p1, v1, :cond_12

    .line 965
    :cond_10
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->q:Lcom/twitter/model/core/TweetActionType;

    if-ne p1, v1, :cond_11

    const/4 v6, 0x1

    :goto_1
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;Z)V

    goto/16 :goto_0

    :cond_11
    const/4 v6, 0x0

    goto :goto_1

    .line 966
    :cond_12
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->t:Lcom/twitter/model/core/TweetActionType;

    if-ne p1, v1, :cond_13

    .line 967
    invoke-direct {p0, p2, p4, p7}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    goto/16 :goto_0

    .line 968
    :cond_13
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->u:Lcom/twitter/model/core/TweetActionType;

    if-ne p1, v1, :cond_14

    .line 969
    invoke-direct {p0, p2, p4}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/FragmentActivity;)V

    goto/16 :goto_0

    .line 970
    :cond_14
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->v:Lcom/twitter/model/core/TweetActionType;

    if-ne p1, v1, :cond_15

    .line 971
    invoke-virtual {p0, p2, p4}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 972
    :cond_15
    sget-object v1, Lcom/twitter/model/core/TweetActionType;->w:Lcom/twitter/model/core/TweetActionType;

    if-ne p1, v1, :cond_0

    .line 973
    invoke-virtual {p0, p2}, Lcom/twitter/android/sn;->c(Lcom/twitter/model/core/Tweet;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V
    .locals 1

    .prologue
    .line 155
    const-string/jumbo v0, ""

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/twitter/android/sn;->b(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 156
    return-void
.end method

.method static synthetic a(ZZLandroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 93
    invoke-static {p0, p1, p2, p3}, Lcom/twitter/android/sn;->b(ZZLandroid/content/Context;Z)V

    return-void
.end method

.method static synthetic b(JLcom/twitter/library/service/aa;Lcom/twitter/library/util/FriendshipCache;)V
    .locals 0

    .prologue
    .line 93
    invoke-static {p0, p1, p2, p3}, Lcom/twitter/android/sn;->f(JLcom/twitter/library/service/aa;Lcom/twitter/library/util/FriendshipCache;)V

    return-void
.end method

.method static synthetic b(Lcom/twitter/android/sn;JLcom/twitter/library/service/aa;Lcom/twitter/library/util/FriendshipCache;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/sn;->d(JLcom/twitter/library/service/aa;Lcom/twitter/library/util/FriendshipCache;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/twitter/android/sn;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 161
    return-void
.end method

.method private static b(ZZLandroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 316
    if-nez p0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    .line 317
    if-eqz p1, :cond_1

    const v0, 0x7f0a08ff

    .line 319
    :goto_0
    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 321
    :cond_0
    return-void

    .line 317
    :cond_1
    const v0, 0x7f0a0908

    goto :goto_0
.end method

.method private c(JLcom/twitter/library/service/aa;Lcom/twitter/library/util/FriendshipCache;)V
    .locals 1

    .prologue
    .line 368
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {p4, p1, p2}, Lcom/twitter/library/util/FriendshipCache;->f(J)V

    .line 371
    :cond_0
    return-void
.end method

.method private d(JLcom/twitter/library/service/aa;Lcom/twitter/library/util/FriendshipCache;)V
    .locals 1

    .prologue
    .line 390
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p4, p1, p2}, Lcom/twitter/library/util/FriendshipCache;->g(J)V

    .line 393
    :cond_0
    return-void
.end method

.method private static e(JLcom/twitter/library/service/aa;Lcom/twitter/library/util/FriendshipCache;)V
    .locals 2

    .prologue
    .line 435
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 436
    invoke-virtual {p3, p0, p1}, Lcom/twitter/library/util/FriendshipCache;->h(J)V

    .line 438
    :cond_0
    return-void
.end method

.method private static f(JLcom/twitter/library/service/aa;Lcom/twitter/library/util/FriendshipCache;)V
    .locals 2

    .prologue
    .line 479
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {p3, p0, p1}, Lcom/twitter/library/util/FriendshipCache;->i(J)V

    .line 482
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/android/np;)Lcom/twitter/android/np;
    .locals 0

    .prologue
    .line 311
    return-object p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 5

    .prologue
    .line 165
    invoke-static {p3}, Lcom/twitter/model/core/Tweet;->b(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v0

    .line 166
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/sn;->d:Lcom/twitter/library/client/bk;

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v2, p0, Lcom/twitter/android/sn;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/android/sn;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 167
    invoke-virtual {p0, p3}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, p3, v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/sn;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 168
    invoke-static {v4, v0, p1, p2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/sn;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 170
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 171
    invoke-virtual {v0, p4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 166
    return-object v0
.end method

.method protected a(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    instance-of v0, p1, Lcom/twitter/android/TweetActivity;

    if-eqz v0, :cond_0

    .line 527
    const-string/jumbo v0, "non_focused_tweet"

    .line 529
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const-string/jumbo v0, "focal"

    .line 149
    :goto_0
    return-object v0

    .line 146
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    const-string/jumbo v0, "ancestor"

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(JLandroid/support/v4/app/FragmentActivity;)V
    .locals 3

    .prologue
    .line 756
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "twitter"

    .line 757
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "tweet"

    .line 758
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "status_id"

    .line 759
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 760
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 761
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/TweetActivity;

    invoke-direct {v1, p3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 762
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "association"

    iget-object v2, p0, Lcom/twitter/android/sn;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 763
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 764
    invoke-virtual {p3, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 765
    return-void
.end method

.method protected a(JZI)V
    .locals 0

    .prologue
    .line 1102
    return-void
.end method

.method protected a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 813
    const v0, 0x7f13006f

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/timeline/bp;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 815
    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/sn;->a(Lcom/twitter/android/timeline/bp;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    .line 818
    sget-boolean v0, Lcom/twitter/android/sn;->a:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "animate_dismiss_enabled"

    .line 819
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    .line 820
    :goto_0
    if-eqz v0, :cond_1

    .line 822
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 823
    invoke-static {p1}, Lcom/twitter/android/sn;->a(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v2

    .line 824
    new-instance v3, Lcom/twitter/android/ss;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/twitter/android/ss;-><init>(Lcom/twitter/android/sn;Landroid/view/View;Ljava/lang/Runnable;I)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 840
    invoke-virtual {p1, v7}, Landroid/view/View;->setHasTransientState(Z)V

    .line 841
    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 845
    :goto_1
    return-void

    .line 819
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 843
    :cond_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method public a(Lcom/twitter/model/core/Tweet;Landroid/app/Activity;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1078
    const v0, 0x7f0a0b09

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p1, Lcom/twitter/model/core/Tweet;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1079
    invoke-static {p2, v0}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1080
    const v0, 0x7f0a0226

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1081
    return-void
.end method

.method protected a(Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 549
    const-string/jumbo v0, "dismiss"

    const-string/jumbo v1, "click"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/twitter/android/sn;->b(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 550
    new-instance v0, Lcom/twitter/android/th;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/th;-><init>(Lcom/twitter/android/sn;Lcom/twitter/model/core/Tweet;)V

    invoke-static {p3, v0}, Lcom/twitter/android/sn;->a(Landroid/support/v4/app/FragmentActivity;Landroid/content/DialogInterface$OnClickListener;)V

    .line 556
    return-void
.end method

.method protected a(Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;Lcom/twitter/library/scribe/TwitterScribeItem;)V
    .locals 2

    .prologue
    .line 326
    invoke-virtual {p0, p3}, Lcom/twitter/android/sn;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "reply"

    invoke-direct {p0, v0, v1, p1, p5}, Lcom/twitter/android/sn;->b(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 327
    invoke-static {}, Lcom/twitter/android/composer/ax;->a()Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 328
    invoke-virtual {v0, p1}, Lcom/twitter/android/composer/ax;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 329
    invoke-virtual {p4}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->b(Ljava/lang/String;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 330
    invoke-virtual {v0, p3}, Lcom/twitter/android/composer/ax;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 327
    invoke-virtual {p3, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 331
    return-void
.end method

.method protected a(Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/scribe/TwitterScribeItem;Lcom/twitter/library/widget/av;)V
    .locals 9

    .prologue
    .line 232
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/twitter/android/sn;->d:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    .line 235
    iget-object v8, p0, Lcom/twitter/android/sn;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 236
    new-instance v0, Lcom/twitter/android/sy;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/twitter/android/sy;-><init>(Lcom/twitter/android/sn;Ljava/lang/ref/WeakReference;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;JLcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 298
    new-instance v1, Lcom/twitter/android/np;

    invoke-direct {v1, p3, p1}, Lcom/twitter/android/np;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/twitter/model/core/Tweet;)V

    .line 299
    invoke-virtual {v1, v0}, Lcom/twitter/android/np;->a(Lcom/twitter/android/nq;)Lcom/twitter/android/np;

    move-result-object v0

    .line 300
    invoke-virtual {v0, p2}, Lcom/twitter/android/np;->a(Landroid/support/v4/app/Fragment;)Lcom/twitter/android/np;

    move-result-object v0

    .line 301
    invoke-virtual {p0, v0}, Lcom/twitter/android/sn;->a(Lcom/twitter/android/np;)Lcom/twitter/android/np;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lcom/twitter/android/np;->a()Lcom/twitter/android/nm;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcom/twitter/android/nm;->a()V

    .line 304
    return-void
.end method

.method protected a(Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;Lcom/twitter/library/scribe/TwitterScribeItem;Lcom/twitter/library/widget/av;)V
    .locals 8

    .prologue
    .line 179
    iget-boolean v0, p1, Lcom/twitter/model/core/Tweet;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 180
    :goto_0
    if-eqz p5, :cond_0

    .line 181
    invoke-interface {p5, v0}, Lcom/twitter/library/widget/av;->a(Z)V

    .line 184
    :cond_0
    if-eqz v0, :cond_2

    .line 185
    new-instance v1, Lbrp;

    iget-object v2, p0, Lcom/twitter/android/sn;->g:Landroid/content/Context;

    iget-wide v4, p1, Lcom/twitter/model/core/Tweet;->p:J

    iget-wide v6, p1, Lcom/twitter/model/core/Tweet;->q:J

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lbrp;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JJ)V

    .line 188
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbrp;->a(Lcss;)Lbrp;

    move-result-object v0

    .line 189
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrp;->a(Ljava/lang/Boolean;)Lbrp;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/twitter/android/sn;->h:Lcom/twitter/library/client/bd;

    new-instance v2, Lcom/twitter/android/so;

    invoke-direct {v2, p0}, Lcom/twitter/android/so;-><init>(Lcom/twitter/android/sn;)V

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 199
    invoke-virtual {p0, p2}, Lcom/twitter/android/sn;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "favorite"

    invoke-direct {p0, v0, v1, p1, p4}, Lcom/twitter/android/sn;->b(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 214
    :goto_1
    return-void

    .line 179
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 201
    :cond_2
    new-instance v1, Lbrt;

    iget-object v2, p0, Lcom/twitter/android/sn;->g:Landroid/content/Context;

    iget-wide v4, p1, Lcom/twitter/model/core/Tweet;->p:J

    iget-wide v6, p1, Lcom/twitter/model/core/Tweet;->q:J

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lbrt;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JJ)V

    .line 203
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbrt;->a(Lcss;)Lbrt;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/twitter/android/sn;->h:Lcom/twitter/library/client/bd;

    new-instance v2, Lcom/twitter/android/sx;

    iget-object v3, p0, Lcom/twitter/android/sn;->g:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/twitter/android/sx;-><init>(Lcom/twitter/android/sn;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 212
    invoke-virtual {p0, p2}, Lcom/twitter/android/sn;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unfavorite"

    invoke-direct {p0, v0, v1, p1, p4}, Lcom/twitter/android/sn;->b(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    goto :goto_1
.end method

.method protected a(Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/scribe/TwitterScribeItem;Z)V
    .locals 7

    .prologue
    .line 219
    if-eqz p4, :cond_0

    .line 220
    invoke-virtual {p0, p2}, Lcom/twitter/android/sn;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "share_via_dm"

    invoke-direct {p0, v0, v1, p1, p3}, Lcom/twitter/android/sn;->b(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 226
    :goto_0
    new-instance v0, Lcom/twitter/model/core/ay;

    invoke-direct {v0, p1}, Lcom/twitter/model/core/ay;-><init>(Lcom/twitter/model/core/Tweet;)V

    invoke-direct {p0, p2, v0}, Lcom/twitter/android/sn;->a(Landroid/app/Activity;Lcom/twitter/model/core/ay;)V

    .line 227
    return-void

    .line 222
    :cond_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/sn;->d:Lcom/twitter/library/client/bk;

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/sn;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v4, "share_sheet"

    const-string/jumbo v5, "tweet"

    const-string/jumbo v6, "share_via_dm"

    .line 223
    invoke-static {v3, v4, v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 222
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/core/Tweet;Landroid/view/View;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 574
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Landroid/view/View;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 575
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;Landroid/view/View;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 588
    invoke-static {}, Lcbe;->a()Lcbe;

    move-result-object v0

    invoke-virtual {v0}, Lcbe;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    const-string/jumbo v0, "caret"

    const-string/jumbo v1, "click"

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/twitter/android/sn;->b(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 593
    :goto_0
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    const/4 v0, 0x5

    new-array v7, v0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const v1, 0x7f0a08e9

    .line 595
    invoke-virtual {p3, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x1

    const v1, 0x7f0a08ed

    .line 596
    invoke-virtual {p3, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    const v1, 0x7f0a08ee

    .line 597
    invoke-virtual {p3, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x3

    const v1, 0x7f0a005d

    .line 598
    invoke-virtual {p3, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x4

    const v1, 0x7f0a00fd

    .line 599
    invoke-virtual {p3, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    .line 601
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0900

    .line 602
    invoke-virtual {p3, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v0, Lcom/twitter/android/sp;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/sp;-><init>(Lcom/twitter/android/sn;Landroid/view/View;Lcom/twitter/model/core/Tweet;Ljava/lang/String;Ljava/lang/Runnable;Landroid/support/v4/app/FragmentActivity;)V

    .line 603
    invoke-virtual {v8, v7, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 652
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 653
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 668
    :goto_1
    return-void

    .line 591
    :cond_0
    const-string/jumbo v0, "dismiss"

    const-string/jumbo v1, "click"

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/twitter/android/sn;->b(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    goto :goto_0

    .line 655
    :cond_1
    new-instance v0, Lcom/twitter/android/sq;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/sq;-><init>(Lcom/twitter/android/sn;Landroid/view/View;Lcom/twitter/model/core/Tweet;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {p3, v0}, Lcom/twitter/android/sn;->a(Landroid/support/v4/app/FragmentActivity;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1
.end method

.method protected a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/util/FriendshipCache;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;)V
    .locals 4

    .prologue
    .line 376
    invoke-virtual {p0, p3}, Lcom/twitter/android/sn;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unmute_user"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/twitter/android/sn;->b(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 377
    iget-object v0, p0, Lcom/twitter/android/sn;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    new-instance v1, Lbri;

    iget-object v2, p0, Lcom/twitter/android/sn;->g:Landroid/content/Context;

    invoke-direct {v1, v2, p4}, Lbri;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    iget-wide v2, p1, Lcom/twitter/model/core/Tweet;->o:J

    .line 378
    invoke-virtual {v1, v2, v3}, Lbri;->a(J)Lbra;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/ta;

    invoke-direct {v2, p0, p1, p2}, Lcom/twitter/android/ta;-><init>(Lcom/twitter/android/sn;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/util/FriendshipCache;)V

    .line 377
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 386
    return-void
.end method

.method protected a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/util/FriendshipCache;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;Lcom/twitter/library/widget/av;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 400
    invoke-virtual {p0, p3}, Lcom/twitter/android/sn;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "block_user"

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/twitter/android/sn;->b(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 401
    const-string/jumbo v0, "block_dialog"

    const-string/jumbo v1, "impression"

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/twitter/android/sn;->b(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 403
    iget-object v6, p0, Lcom/twitter/android/sn;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/twitter/library/view/ab;->b(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    .line 404
    invoke-virtual {p3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    new-instance v0, Lcom/twitter/android/tb;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/tb;-><init>(Lcom/twitter/android/sn;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/Session;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/library/widget/av;)V

    .line 403
    invoke-static {v6, v7, v8, v9, v0}, Lcom/twitter/android/util/bc;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/support/v4/app/FragmentManager;Lcom/twitter/app/common/base/m;)V

    .line 431
    return-void
.end method

.method protected a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/util/FriendshipCache;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 354
    invoke-virtual {p0, p3}, Lcom/twitter/android/sn;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mute_user"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/twitter/android/sn;->b(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 355
    iget-object v0, p0, Lcom/twitter/android/sn;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    new-instance v1, Lbre;

    iget-object v2, p0, Lcom/twitter/android/sn;->g:Landroid/content/Context;

    invoke-direct {v1, v2, p4}, Lbre;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    iget-wide v2, p1, Lcom/twitter/model/core/Tweet;->o:J

    .line 356
    invoke-virtual {v1, v2, v3}, Lbre;->a(J)Lbra;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/sz;

    invoke-direct {v2, p0, p1, p2}, Lcom/twitter/android/sz;-><init>(Lcom/twitter/android/sn;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/util/FriendshipCache;)V

    .line 355
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 364
    return-void
.end method

.method protected a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/library/scribe/TwitterScribeItem;Lcom/twitter/library/widget/av;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 337
    iget-wide v0, p1, Lcom/twitter/model/core/Tweet;->o:J

    invoke-virtual {p2, v0, v1}, Lcom/twitter/library/util/FriendshipCache;->k(J)Z

    move-result v0

    .line 338
    if-eqz v0, :cond_0

    invoke-static {}, Lcbe;->a()Lcbe;

    move-result-object v0

    invoke-virtual {v0}, Lcbe;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const/4 v0, 0x1

    invoke-virtual {p0, p5, v0}, Lcom/twitter/android/sn;->a(Ljava/lang/String;I)V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/sn;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/sn;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-static {v0, v1}, Lasb;->a(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lasb;

    move-result-object v0

    .line 342
    iget-object v1, p0, Lcom/twitter/android/sn;->g:Landroid/content/Context;

    invoke-static {v1, v0}, Larz;->a(Landroid/content/Context;Lasb;)Larz;

    move-result-object v0

    .line 343
    invoke-virtual {v0, p1}, Larz;->a(Lcom/twitter/model/core/Tweet;)Larz;

    move-result-object v0

    .line 344
    invoke-virtual {v0, p2}, Larz;->a(Lcom/twitter/library/util/FriendshipCache;)Larz;

    move-result-object v0

    .line 345
    invoke-virtual {v0, p3}, Larz;->a(Lcom/twitter/library/scribe/TwitterScribeItem;)Larz;

    move-result-object v0

    .line 346
    invoke-virtual {v0, p4}, Larz;->a(Lcom/twitter/library/widget/av;)Larz;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Larz;->a()Lasa;

    move-result-object v0

    .line 348
    invoke-interface {v0}, Lasa;->a()V

    .line 349
    return-void
.end method

.method a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/TweetView;Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 565
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Landroid/view/View;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method public a(Lcom/twitter/model/core/TweetActionType;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/library/scribe/TwitterScribeItem;Lcom/twitter/library/widget/av;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 1049
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/TweetActionType;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/library/scribe/TwitterScribeItem;Lcom/twitter/library/widget/av;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1051
    return-void
.end method

.method public a(Lcom/twitter/model/core/TweetActionType;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/library/scribe/TwitterScribeItem;Lcom/twitter/library/widget/av;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/twitter/android/sn;->c:Lcom/twitter/android/client/c;

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/twitter/android/sn;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 1058
    if-eqz v3, :cond_0

    .line 1059
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 1060
    if-eqz v4, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/twitter/android/sn;->d:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v5

    .line 1062
    invoke-virtual {v5}, Lcom/twitter/library/client/Session;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    .line 1063
    invoke-direct/range {v0 .. v11}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/TweetActionType;Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/library/scribe/TwitterScribeItem;Lcom/twitter/library/widget/av;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 1065
    :cond_1
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1066
    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/TweetActionType;Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/twitter/android/sn;->i:Lcom/twitter/android/timeline/bf;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/twitter/android/sn;->i:Lcom/twitter/android/timeline/bf;

    iget v1, p0, Lcom/twitter/android/sn;->j:I

    invoke-virtual {v0, p1, v1, p2}, Lcom/twitter/android/timeline/bf;->a(Ljava/lang/String;II)V

    .line 537
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/model/core/TweetActionType;Lcom/twitter/model/core/Tweet;Ljava/lang/String;Lcom/twitter/library/util/FriendshipCache;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1097
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v5, v4

    move-object v6, p3

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/TweetActionType;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/library/scribe/TwitterScribeItem;Lcom/twitter/library/widget/av;Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    const/4 v0, 0x1

    return v0
.end method

.method protected b(Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;)V
    .locals 2

    .prologue
    .line 486
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a08fe

    .line 487
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->a(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a08fd

    .line 488
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->b(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a09bb

    .line 489
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a05a7

    .line 490
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 491
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 492
    invoke-virtual {v0, p2}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/Fragment;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/tf;

    invoke-direct {v1, p0, p4, p1}, Lcom/twitter/android/tf;-><init>(Lcom/twitter/android/sn;Lcom/twitter/library/client/Session;Lcom/twitter/model/core/Tweet;)V

    .line 493
    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Lcom/twitter/app/common/base/m;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 516
    invoke-virtual {p3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 517
    return-void
.end method

.method protected b(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/util/FriendshipCache;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;Lcom/twitter/library/widget/av;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 445
    invoke-virtual {p0, p3}, Lcom/twitter/android/sn;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unblock_user"

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/twitter/android/sn;->b(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 446
    const-string/jumbo v0, "unblock_dialog"

    const-string/jumbo v1, "impression"

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/twitter/android/sn;->b(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 447
    iget-object v6, p0, Lcom/twitter/android/sn;->g:Landroid/content/Context;

    iget-object v7, p1, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    const/4 v8, -0x1

    .line 448
    invoke-virtual {p3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    new-instance v0, Lcom/twitter/android/td;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/td;-><init>(Lcom/twitter/android/sn;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/Session;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/library/widget/av;)V

    .line 447
    invoke-static {v6, v7, v8, v9, v0}, Lcom/twitter/android/util/bc;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/support/v4/app/FragmentManager;Lcom/twitter/app/common/base/m;)V

    .line 475
    return-void
.end method

.method public b(Lcom/twitter/model/core/Tweet;)Z
    .locals 14

    .prologue
    .line 675
    iget-object v0, p0, Lcom/twitter/android/sn;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 676
    if-nez v0, :cond_1

    const/4 v4, 0x0

    .line 677
    :goto_0
    if-eqz v4, :cond_0

    iget-object v0, p1, Lcom/twitter/model/core/Tweet;->s:Lcom/twitter/model/core/ay;

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 678
    :cond_0
    const/4 v0, 0x0

    .line 745
    :goto_1
    return v0

    .line 676
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    goto :goto_0

    .line 681
    :cond_2
    iget-object v5, p1, Lcom/twitter/model/core/Tweet;->s:Lcom/twitter/model/core/ay;

    .line 682
    iget-wide v6, p1, Lcom/twitter/model/core/Tweet;->t:J

    .line 683
    iget-object v0, p0, Lcom/twitter/android/sn;->d:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v8

    .line 684
    iget-object v0, p0, Lcom/twitter/android/sn;->d:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->d()Z

    move-result v0

    .line 686
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v1, v8, v9}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v10, p0, Lcom/twitter/android/sn;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v11, p0, Lcom/twitter/android/sn;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 688
    invoke-virtual {v11}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->c()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "quoted_tweet"

    const-string/jumbo v13, "long_press"

    .line 687
    invoke-static {v10, v11, v12, v13}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v1

    .line 686
    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    .line 691
    new-instance v3, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v3, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 692
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 693
    if-eqz v0, :cond_3

    .line 694
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sget-object v2, Lcom/twitter/model/core/TweetActionType;->n:Lcom/twitter/model/core/TweetActionType;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 695
    const v0, 0x7f0a0762

    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    :cond_3
    invoke-static {v5, v8, v9}, Lciz;->a(Lcom/twitter/model/core/ay;J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 698
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sget-object v2, Lcom/twitter/model/core/TweetActionType;->h:Lcom/twitter/model/core/TweetActionType;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 699
    const v0, 0x7f0a0813

    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sget-object v2, Lcom/twitter/model/core/TweetActionType;->p:Lcom/twitter/model/core/TweetActionType;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 702
    const v0, 0x7f0a099a

    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    new-instance v2, Lcom/twitter/android/widget/ec;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/twitter/android/widget/ec;-><init>(I)V

    .line 705
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Lcom/twitter/android/widget/ec;->a([Ljava/lang/CharSequence;)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 706
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/PromptDialogFragment;

    .line 707
    new-instance v1, Lcom/twitter/android/sr;

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/twitter/android/sr;-><init>(Lcom/twitter/android/sn;Landroid/util/SparseArray;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/model/core/ay;JJ)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/PromptDialogFragment;->a(Lcom/twitter/app/common/base/m;)Lcom/twitter/app/common/base/BaseDialogFragment;

    .line 743
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/PromptDialogFragment;->setRetainInstance(Z)V

    .line 744
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/PromptDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 745
    const/4 v0, 0x1

    goto/16 :goto_1
.end method

.method public c(Lcom/twitter/model/core/Tweet;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1087
    const-string/jumbo v0, "dontlike"

    invoke-static {v0, v4, v4}, Lcom/twitter/model/timeline/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/model/timeline/i;

    move-result-object v3

    .line 1088
    new-instance v0, Lbrv;

    iget-object v1, p0, Lcom/twitter/android/sn;->g:Landroid/content/Context;

    new-instance v2, Lcom/twitter/library/service/ab;

    .line 1089
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v6

    invoke-virtual {v6}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/twitter/library/service/ab;-><init>(Lcom/twitter/library/client/Session;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Long;

    iget-wide v8, p1, Lcom/twitter/model/core/Tweet;->C:J

    .line 1090
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v7, v4

    move-object v8, v4

    invoke-direct/range {v0 .. v8}, Lbrv;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Lcom/twitter/model/timeline/i;Lcom/twitter/model/timeline/al;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1091
    iget-object v1, p0, Lcom/twitter/android/sn;->h:Lcom/twitter/library/client/bd;

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 1092
    return-void
.end method

.method protected c(Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;)V
    .locals 3

    .prologue
    .line 521
    const/4 v0, 0x0

    invoke-static {p3, p1, v0}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Z)V

    .line 522
    invoke-virtual {p0, p3}, Lcom/twitter/android/sn;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "share"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/twitter/android/sn;->b(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 523
    return-void
.end method
