.class public Lcom/twitter/android/widget/TweetDetailView;
.super Landroid/widget/LinearLayout;
.source "Twttr"

# interfaces
.implements Lcjb;
.implements Lcom/twitter/library/media/widget/aa;
.implements Lcom/twitter/library/revenue/b;
.implements Lcom/twitter/library/widget/c;
.implements Lcom/twitter/media/ui/image/g;


# instance fields
.field private A:Lcom/twitter/library/widget/renderablecontent/e;

.field private B:Ljava/lang/CharSequence;

.field private C:Ljava/lang/CharSequence;

.field private D:Landroid/view/View;

.field private E:Lcom/twitter/ui/widget/TypefacesTextView;

.field private F:Lcom/twitter/ui/widget/TypefacesTextView;

.field private G:Lcom/twitter/model/core/Translation;

.field private H:Lcom/twitter/library/view/QuoteView;

.field private I:Lcom/twitter/library/widget/PossiblySensitiveWarningView;

.field private J:Landroid/view/View;

.field private K:Z

.field private L:Lcom/twitter/android/widget/fu;

.field private M:Lcom/twitter/library/widget/ActionButton;

.field private N:Lcom/twitter/model/core/TwitterUser;

.field private O:Lcom/twitter/library/revenue/a;

.field private P:Lcom/twitter/model/moments/ad;

.field private Q:Laci;

.field public a:Lcom/twitter/library/media/widget/UserImageView;

.field public b:Lcom/twitter/ui/widget/BadgeView;

.field public c:Lcom/twitter/android/widget/EngagementActionBar;

.field private d:Lcom/twitter/library/api/ActivitySummary;

.field private e:Lcom/twitter/android/widget/fo;

.field private f:Lcom/twitter/model/core/Tweet;

.field private g:Lcom/twitter/library/view/m;

.field private h:Lcom/twitter/android/qs;

.field private i:Ljava/text/SimpleDateFormat;

.field private final j:Lcom/twitter/media/ui/image/h;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/widget/TextView;

.field private o:Lcom/twitter/library/widget/SocialBylineView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/view/View;

.field private u:Landroid/view/ViewGroup;

.field private v:Landroid/view/ViewGroup;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/view/ViewGroup;

.field private y:Landroid/view/ViewGroup;

.field private z:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/widget/TweetDetailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/widget/TweetDetailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    new-instance v0, Lcom/twitter/media/ui/image/h;

    invoke-direct {v0}, Lcom/twitter/media/ui/image/h;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->j:Lcom/twitter/media/ui/image/h;

    .line 186
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/widget/TweetDetailView;)Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->f:Lcom/twitter/model/core/Tweet;

    return-object v0
.end method

.method private a(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 999
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->i:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 1000
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 1001
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0a77

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->i:Ljava/text/SimpleDateFormat;

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->i:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;IIJIJ)V
    .locals 11

    .prologue
    .line 644
    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    .line 648
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-wide/from16 v9, p9

    .line 649
    invoke-static/range {v0 .. v10}, Lcom/twitter/library/util/ah;->a(Landroid/content/res/Resources;ILjava/lang/String;Ljava/lang/String;IIJIJ)Ljava/lang/String;

    move-result-object v1

    .line 651
    if-nez v1, :cond_1

    .line 652
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->o:Lcom/twitter/library/widget/SocialBylineView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SocialBylineView;->setVisibility(I)V

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->o:Lcom/twitter/library/widget/SocialBylineView;

    invoke-virtual {v2, v1}, Lcom/twitter/library/widget/SocialBylineView;->setLabel(Ljava/lang/CharSequence;)V

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-wide/from16 v9, p9

    .line 656
    invoke-static/range {v0 .. v10}, Lcom/twitter/library/util/ah;->b(Landroid/content/res/Resources;ILjava/lang/String;Ljava/lang/String;IIJIJ)Ljava/lang/String;

    move-result-object v0

    .line 658
    if-eqz v0, :cond_2

    .line 659
    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->o:Lcom/twitter/library/widget/SocialBylineView;

    invoke-virtual {v1, v0}, Lcom/twitter/library/widget/SocialBylineView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 661
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->h:Lcom/twitter/android/qs;

    if-eqz v0, :cond_3

    .line 662
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->o:Lcom/twitter/library/widget/SocialBylineView;

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->h:Lcom/twitter/android/qs;

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SocialBylineView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 664
    :cond_3
    invoke-static {p1}, Lcom/twitter/library/util/ah;->a(I)I

    move-result v0

    .line 665
    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->o:Lcom/twitter/library/widget/SocialBylineView;

    invoke-virtual {v1, v0}, Lcom/twitter/library/widget/SocialBylineView;->setIcon(I)V

    .line 666
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->o:Lcom/twitter/library/widget/SocialBylineView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SocialBylineView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    .line 797
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 798
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 801
    const/4 v2, 0x3

    const v3, 0x7f1303db

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 802
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 803
    const v1, 0x7f13007a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setId(I)V

    .line 805
    const v1, 0x7f130466

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    const v1, 0x7f130468

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 809
    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 810
    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->t:Landroid/view/View;

    .line 811
    invoke-direct {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->b(Landroid/view/View;)V

    .line 812
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 690
    iput-object p1, p0, Lcom/twitter/android/widget/TweetDetailView;->t:Landroid/view/View;

    .line 691
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->t:Landroid/view/View;

    const v1, 0x7f130073

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 693
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 694
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 695
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->f:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->t:Landroid/view/View;

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->f:Lcom/twitter/model/core/Tweet;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/twitter/library/view/ab;->a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->t:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->b(Landroid/view/View;)V

    .line 701
    return-void
.end method

.method private a(Landroid/widget/TextView;Z)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v0, 0x3

    .line 1008
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 1009
    if-eqz p2, :cond_0

    const/4 v0, 0x4

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 1013
    :goto_0
    return-void

    .line 1011
    :cond_1
    if-eqz p2, :cond_2

    const/4 v0, 0x5

    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method

.method private a(Lcom/twitter/library/api/ActivitySummary;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 679
    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->L:Lcom/twitter/android/widget/fu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->f:Lcom/twitter/model/core/Tweet;

    if-eqz v1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->L:Lcom/twitter/android/widget/fu;

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/twitter/android/widget/fu;->a(Landroid/content/res/Resources;Lcom/twitter/library/api/ActivitySummary;)V

    .line 681
    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->L:Lcom/twitter/android/widget/fu;

    iget-object v1, v1, Lcom/twitter/android/widget/fu;->a:Landroid/view/View;

    .line 682
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 683
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->y:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 684
    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->y:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->f:Lcom/twitter/model/core/Tweet;

    invoke-static {v2}, Lciz;->m(Lcom/twitter/model/core/Tweet;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 687
    :cond_0
    return-void

    .line 684
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private a(Lcom/twitter/model/core/Tweet;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 868
    iget-object v0, p1, Lcom/twitter/model/core/Tweet;->I:Lcom/twitter/model/geo/TwitterPlace;

    .line 869
    if-nez v0, :cond_0

    .line 893
    :goto_0
    return-void

    .line 872
    :cond_0
    iget-object v1, v0, Lcom/twitter/model/geo/TwitterPlace;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/twitter/model/geo/TwitterPlace;->f:Ljava/lang/String;

    .line 873
    :goto_1
    iget-boolean v1, p1, Lcom/twitter/model/core/Tweet;->P:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 874
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->q:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 875
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->q:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 872
    :cond_2
    iget-object v0, v0, Lcom/twitter/model/geo/TwitterPlace;->d:Ljava/lang/String;

    goto :goto_1

    .line 878
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a08eb

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 879
    invoke-direct {p0}, Lcom/twitter/android/widget/TweetDetailView;->n()Z

    move-result v2

    if-nez v2, :cond_4

    .line 880
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 881
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 884
    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 885
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 887
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->N:Lcom/twitter/model/core/TwitterUser;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->N:Lcom/twitter/model/core/TwitterUser;

    iget-wide v4, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    .line 888
    :goto_2
    new-instance v0, Lcom/twitter/android/widget/ft;

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/widget/ft;-><init>(Lcom/twitter/android/widget/TweetDetailView;Landroid/content/Context;Lcom/twitter/model/core/Tweet;J)V

    .line 889
    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v2, 0x11

    .line 888
    invoke-virtual {v7, v0, v6, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 890
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 891
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->q:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/twitter/ui/view/p;->a(Landroid/widget/TextView;)V

    .line 892
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 887
    :cond_5
    const-wide/16 v4, 0x0

    goto :goto_2
.end method

.method private a(Lcss;)V
    .locals 2

    .prologue
    .line 630
    if-eqz p1, :cond_0

    .line 631
    iget-object v0, p1, Lcss;->f:Ljava/lang/String;

    .line 632
    if-eqz v0, :cond_1

    .line 633
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/twitter/android/widget/TweetDetailView;->b(ILjava/lang/String;)V

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->o:Lcom/twitter/library/widget/SocialBylineView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SocialBylineView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 897
    return-void
.end method

.method static a(Ljava/lang/String;Lcom/twitter/model/core/Tweet;J)V
    .locals 6

    .prologue
    .line 919
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 920
    invoke-static {}, Lcom/twitter/library/scribe/TwitterScribeItem;->b()Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v1

    .line 921
    iget-wide v2, p1, Lcom/twitter/model/core/Tweet;->C:J

    iput-wide v2, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    .line 922
    new-instance v0, Lcom/twitter/library/scribe/ScribeGeoDetails$ScribeGeoPlace;

    invoke-direct {v0}, Lcom/twitter/library/scribe/ScribeGeoDetails$ScribeGeoPlace;-><init>()V

    .line 923
    iget-object v2, p1, Lcom/twitter/model/core/Tweet;->I:Lcom/twitter/model/geo/TwitterPlace;

    iget-object v2, v2, Lcom/twitter/model/geo/TwitterPlace;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/twitter/library/scribe/ScribeGeoDetails$ScribeGeoPlace;->a:Ljava/lang/String;

    .line 924
    iget-object v2, p1, Lcom/twitter/model/core/Tweet;->I:Lcom/twitter/model/geo/TwitterPlace;

    iget-object v2, v2, Lcom/twitter/model/geo/TwitterPlace;->c:Lcom/twitter/model/geo/TwitterPlace$PlaceType;

    invoke-virtual {v2}, Lcom/twitter/model/geo/TwitterPlace$PlaceType;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/twitter/library/scribe/ScribeGeoDetails$ScribeGeoPlace;->b:Ljava/lang/String;

    .line 925
    iget-object v2, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->am:Lcom/twitter/library/scribe/ScribeGeoDetails;

    iget-object v2, v2, Lcom/twitter/library/scribe/ScribeGeoDetails;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, p2, p3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tweet::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":place_tag:click"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 927
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 928
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 926
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 930
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/16 v10, 0x21

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 585
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 586
    invoke-static {p1, p2}, Lcjg;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 588
    const v2, 0x7f0a08d4

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v1, v3, v8

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 589
    const-string/jumbo v3, "$b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 590
    new-instance v4, Landroid/text/style/ImageSpan;

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0202a4

    invoke-direct {v4, v5, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    .line 591
    invoke-virtual {v4}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 592
    invoke-virtual {v4}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 593
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f120001

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 596
    :cond_0
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 597
    add-int/lit8 v2, v3, 0x2

    invoke-virtual {v5, v4, v3, v2, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 598
    new-instance v2, Lcom/twitter/android/widget/fm;

    invoke-direct {v2, p0}, Lcom/twitter/android/widget/fm;-><init>(Lcom/twitter/android/widget/TweetDetailView;)V

    .line 623
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v5, v2, v3, v4, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 625
    iput-object v5, p0, Lcom/twitter/android/widget/TweetDetailView;->C:Ljava/lang/CharSequence;

    .line 626
    const v2, 0x7f0a08d6

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v1, v3, v8

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->B:Ljava/lang/CharSequence;

    .line 627
    return-void
.end method

.method static synthetic b(Lcom/twitter/android/widget/TweetDetailView;)Lcom/twitter/library/view/m;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->g:Lcom/twitter/library/view/m;

    return-object v0
.end method

.method private b(ILjava/lang/String;)V
    .locals 11

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 671
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v4

    move v8, v4

    move-wide v9, v6

    invoke-direct/range {v0 .. v10}, Lcom/twitter/android/widget/TweetDetailView;->a(ILjava/lang/String;Ljava/lang/String;IIJIJ)V

    .line 672
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 990
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 991
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->I:Lcom/twitter/library/widget/PossiblySensitiveWarningView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/PossiblySensitiveWarningView;->setVisibility(I)V

    .line 992
    if-eqz p1, :cond_0

    .line 993
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 994
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->u:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 996
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/twitter/android/widget/TweetDetailView;)Lcom/twitter/model/moments/ad;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->P:Lcom/twitter/model/moments/ad;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/widget/TweetDetailView;)Laci;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->Q:Laci;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/android/widget/TweetDetailView;)Lcom/twitter/model/core/TwitterUser;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->N:Lcom/twitter/model/core/TwitterUser;

    return-object v0
.end method

.method static synthetic f(Lcom/twitter/android/widget/TweetDetailView;)Lcom/twitter/library/api/ActivitySummary;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->d:Lcom/twitter/library/api/ActivitySummary;

    return-object v0
.end method

.method static synthetic g(Lcom/twitter/android/widget/TweetDetailView;)Lcom/twitter/android/widget/fo;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->e:Lcom/twitter/android/widget/fo;

    return-object v0
.end method

.method private getContentContainer()Lcom/twitter/library/widget/renderablecontent/c;
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->A:Lcom/twitter/library/widget/renderablecontent/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->A:Lcom/twitter/library/widget/renderablecontent/e;

    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/e;->h()Lcom/twitter/library/widget/renderablecontent/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->A:Lcom/twitter/library/widget/renderablecontent/e;

    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/e;->h()Lcom/twitter/library/widget/renderablecontent/c;

    move-result-object v0

    .line 723
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/library/widget/renderablecontent/c;->B:Lcom/twitter/library/widget/renderablecontent/c;

    goto :goto_0
.end method

.method static synthetic h(Lcom/twitter/android/widget/TweetDetailView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 484
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->f:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->N:Lcom/twitter/model/core/TwitterUser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->o:J

    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->N:Lcom/twitter/model/core/TwitterUser;

    iget-wide v2, v2, Lcom/twitter/model/core/TwitterUser;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->N:Lcom/twitter/model/core/TwitterUser;

    .line 485
    invoke-static {v0}, Lbkn;->a(Lcom/twitter/model/core/TwitterUser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->x:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->x:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/twitter/android/widget/TweetDetailView;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->z:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private i()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 493
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->f:Lcom/twitter/model/core/Tweet;

    .line 494
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->P()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 496
    sget-object v2, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    .line 497
    invoke-static {v0, v2}, Lcug;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/util/math/Size;)Ljava/util/List;

    move-result-object v0

    .line 498
    invoke-static {v0}, Lcuk;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 500
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020562

    invoke-static {v2, v0, v3}, Lcom/twitter/library/media/util/aa;->b(Landroid/content/Context;Ljava/util/List;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 501
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->r:Landroid/widget/TextView;

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 503
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->r:Landroid/widget/TextView;

    .line 504
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 505
    const v2, 0x7f0f04c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 507
    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 508
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 509
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 513
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->r:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 675
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->a(Lcom/twitter/library/api/ActivitySummary;)V

    .line 676
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 727
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->A:Lcom/twitter/library/widget/renderablecontent/e;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->A:Lcom/twitter/library/widget/renderablecontent/e;

    .line 729
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->A:Lcom/twitter/library/widget/renderablecontent/e;

    .line 730
    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/e;->bi_()V

    .line 731
    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/e;->d()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->t:Landroid/view/View;

    .line 732
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->c()V

    .line 734
    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->A:Lcom/twitter/library/widget/renderablecontent/e;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->A:Lcom/twitter/library/widget/renderablecontent/e;

    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/e;->bh_()V

    .line 739
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->d()V

    .line 740
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->A:Lcom/twitter/library/widget/renderablecontent/e;

    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/e;->c()V

    .line 742
    :cond_0
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    .line 835
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->L:Lcom/twitter/android/widget/fu;

    if-nez v0, :cond_0

    .line 836
    new-instance v0, Lcom/twitter/android/widget/fu;

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0403d6

    const/4 v3, 0x0

    .line 837
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/widget/fn;

    invoke-direct {v2, p0}, Lcom/twitter/android/widget/fn;-><init>(Lcom/twitter/android/widget/TweetDetailView;)V

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/widget/fu;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->L:Lcom/twitter/android/widget/fu;

    .line 839
    :cond_0
    return-void
.end method

.method private n()Z
    .locals 1

    .prologue
    .line 864
    const-string/jumbo v0, "poi_place_pivot_tweet_detail"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private o()V
    .locals 5

    .prologue
    .line 933
    iget-boolean v0, p0, Lcom/twitter/android/widget/TweetDetailView;->K:Z

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->J:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 935
    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->a:Lcom/twitter/library/media/widget/UserImageView;

    invoke-static {v1}, Lcom/twitter/util/ui/r;->e(Landroid/view/View;)I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    .line 936
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->a:Lcom/twitter/library/media/widget/UserImageView;

    invoke-static {v2, p0}, Lcom/twitter/util/ui/r;->b(Landroid/view/View;Landroid/view/View;)I

    move-result v2

    .line 937
    iget-object v3, p0, Lcom/twitter/android/widget/TweetDetailView;->J:Landroid/view/View;

    const/4 v4, 0x0

    add-int/2addr v0, v1

    invoke-virtual {v3, v1, v4, v0, v2}, Landroid/view/View;->layout(IIII)V

    .line 939
    :cond_0
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->b:Lcom/twitter/ui/widget/BadgeView;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->b:Lcom/twitter/ui/widget/BadgeView;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/ui/widget/BadgeView;->a(ILjava/lang/String;)V

    .line 911
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->G:Lcom/twitter/model/core/Translation;

    if-eqz v0, :cond_0

    .line 565
    const-string/jumbo v0, "translated_tweet"

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->G:Lcom/twitter/model/core/Translation;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 566
    const-string/jumbo v1, "show_translation"

    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->F:Lcom/twitter/ui/widget/TypefacesTextView;

    .line 567
    invoke-virtual {v0}, Lcom/twitter/ui/widget/TypefacesTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 566
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 569
    :cond_0
    return-void

    .line 567
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 5

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 783
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04019d

    const/4 v3, 0x0

    .line 784
    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 786
    invoke-static {v2}, Lbki;->a(Landroid/content/Context;)Lbki;

    move-result-object v1

    invoke-virtual {v1}, Lbki;->f()Ljava/lang/String;

    move-result-object v3

    .line 787
    invoke-static {v3}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 788
    const v1, 0x7f130465

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 789
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 790
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    :cond_0
    invoke-direct {p0, v2, p1, v0}, Lcom/twitter/android/widget/TweetDetailView;->a(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/ViewGroup;)V

    .line 793
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;Z)V
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->M:Lcom/twitter/library/widget/ActionButton;

    .line 857
    const v1, 0x7f0200be

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/ActionButton;->setBackgroundResource(I)V

    .line 858
    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/ActionButton;->a(I)V

    .line 859
    invoke-virtual {v0, p2}, Lcom/twitter/library/widget/ActionButton;->setChecked(Z)V

    .line 860
    invoke-virtual {v0, p1}, Lcom/twitter/library/widget/ActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 861
    return-void
.end method

.method public a(Lcom/twitter/library/api/ActivitySummary;Lcom/twitter/android/widget/fo;)V
    .locals 0

    .prologue
    .line 849
    iput-object p1, p0, Lcom/twitter/android/widget/TweetDetailView;->d:Lcom/twitter/library/api/ActivitySummary;

    .line 850
    iput-object p2, p0, Lcom/twitter/android/widget/TweetDetailView;->e:Lcom/twitter/android/widget/fo;

    .line 851
    invoke-direct {p0}, Lcom/twitter/android/widget/TweetDetailView;->m()V

    .line 852
    invoke-direct {p0, p1}, Lcom/twitter/android/widget/TweetDetailView;->a(Lcom/twitter/library/api/ActivitySummary;)V

    .line 853
    return-void
.end method

.method public a(Lcom/twitter/library/media/widget/TweetMediaView;Lclw;)V
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->g:Lcom/twitter/library/view/m;

    invoke-interface {v0, p2}, Lcom/twitter/library/view/m;->a(Lclw;)V

    .line 769
    return-void
.end method

.method public a(Lcom/twitter/library/media/widget/TweetMediaView;Lcom/twitter/model/core/MediaEntity;)V
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->g:Lcom/twitter/library/view/m;

    invoke-interface {v0, p2}, Lcom/twitter/library/view/m;->a(Lcom/twitter/model/core/MediaEntity;)V

    .line 774
    return-void
.end method

.method public a(Lcom/twitter/library/media/widget/TweetMediaView;Lcom/twitter/model/media/EditableMedia;)V
    .locals 0

    .prologue
    .line 779
    return-void
.end method

.method public a(Lcom/twitter/library/widget/y;ZZ)V
    .locals 2

    .prologue
    .line 816
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getContext()Landroid/content/Context;

    .line 817
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->I:Lcom/twitter/library/widget/PossiblySensitiveWarningView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/PossiblySensitiveWarningView;->setVisibility(I)V

    .line 818
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->I:Lcom/twitter/library/widget/PossiblySensitiveWarningView;

    invoke-virtual {v0, p1}, Lcom/twitter/library/widget/PossiblySensitiveWarningView;->setListener(Lcom/twitter/library/widget/y;)V

    .line 819
    if-eqz p2, :cond_0

    .line 820
    if-eqz p3, :cond_1

    .line 821
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->I:Lcom/twitter/library/widget/PossiblySensitiveWarningView;

    invoke-virtual {v0}, Lcom/twitter/library/widget/PossiblySensitiveWarningView;->g()V

    .line 826
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->requestLayout()V

    .line 827
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->c()V

    .line 828
    return-void

    .line 823
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->I:Lcom/twitter/library/widget/PossiblySensitiveWarningView;

    invoke-virtual {v0}, Lcom/twitter/library/widget/PossiblySensitiveWarningView;->h()V

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/av/o;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 466
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 467
    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->w:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/twitter/model/av/o;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0a0513

    .line 468
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 467
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_1

    .line 473
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 474
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 475
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 476
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 481
    :goto_1
    return-void

    .line 468
    :cond_0
    const v2, 0x7f0a0514

    .line 469
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/view/m;Ljava/lang/String;ILcom/twitter/android/qs;ZZ)V
    .locals 14

    .prologue
    .line 301
    iput-object p1, p0, Lcom/twitter/android/widget/TweetDetailView;->f:Lcom/twitter/model/core/Tweet;

    .line 302
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->f:Lcom/twitter/model/core/Tweet;

    invoke-static {v2}, Lciz;->m(Lcom/twitter/model/core/Tweet;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 303
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->y:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 304
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->c:Lcom/twitter/android/widget/EngagementActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/EngagementActionBar;->setVisibility(I)V

    .line 309
    :goto_0
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->g:Lcom/twitter/library/view/m;

    .line 310
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->h:Lcom/twitter/android/qs;

    .line 311
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 313
    invoke-static {p1}, Lcom/twitter/library/provider/aq;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/provider/aq;

    move-result-object v2

    .line 314
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/twitter/library/provider/aq;->a(Z)Lcom/twitter/library/provider/aq;

    move-result-object v3

    .line 315
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->aq()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->p()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Lcom/twitter/library/provider/aq;->b(Z)Lcom/twitter/library/provider/aq;

    move-result-object v2

    .line 316
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->U()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/twitter/library/provider/aq;->c(Z)Lcom/twitter/library/provider/aq;

    move-result-object v2

    .line 317
    invoke-static {p1}, Lcih;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/twitter/library/provider/aq;->e(Z)Lcom/twitter/library/provider/aq;

    move-result-object v2

    .line 318
    invoke-virtual {v2}, Lcom/twitter/library/provider/aq;->a()Lcom/twitter/model/core/i;

    move-result-object v3

    .line 320
    const/4 v2, 0x0

    .line 321
    iget-object v4, v3, Lcom/twitter/model/core/i;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 322
    iget-object v3, p0, Lcom/twitter/android/widget/TweetDetailView;->l:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    :cond_1
    :goto_2
    invoke-static {v2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 337
    iget-object v3, p0, Lcom/twitter/android/widget/TweetDetailView;->l:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/twitter/android/widget/TweetDetailView;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v4}, Lcom/twitter/model/core/Tweet;->n()Z

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/twitter/android/widget/TweetDetailView;->a(Landroid/widget/TextView;Z)V

    .line 338
    iget-object v3, p0, Lcom/twitter/android/widget/TweetDetailView;->l:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    iget-object v3, p0, Lcom/twitter/android/widget/TweetDetailView;->l:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    :goto_3
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->n:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v3, p0, Lcom/twitter/android/widget/TweetDetailView;->n:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->c()Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v2, 0x8

    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->M:Lcom/twitter/library/widget/ActionButton;

    iget-object v3, p1, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/twitter/library/widget/ActionButton;->setUsername(Ljava/lang/String;)V

    .line 347
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->k:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/twitter/model/core/Tweet;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->O:Lcom/twitter/library/revenue/a;

    invoke-virtual {v2, p1, v13}, Lcom/twitter/library/revenue/a;->a(Lcom/twitter/model/core/Tweet;Landroid/content/res/Resources;)V

    .line 351
    if-eqz p7, :cond_c

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->o()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    :goto_5
    iput-boolean v2, p0, Lcom/twitter/android/widget/TweetDetailView;->K:Z

    .line 352
    iget-object v3, p0, Lcom/twitter/android/widget/TweetDetailView;->J:Landroid/view/View;

    iget-boolean v2, p0, Lcom/twitter/android/widget/TweetDetailView;->K:Z

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 354
    iget-boolean v2, p1, Lcom/twitter/model/core/Tweet;->c:Z

    .line 355
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->s()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 356
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ad()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    .line 357
    const/16 v2, 0xd

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/twitter/android/widget/TweetDetailView;->b(ILjava/lang/String;)V

    .line 391
    :cond_2
    :goto_7
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->a:Lcom/twitter/library/media/widget/UserImageView;

    iget-object v3, p1, Lcom/twitter/model/core/Tweet;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/twitter/library/media/widget/UserImageView;->a(Ljava/lang/String;)Z

    .line 392
    iget-object v3, p0, Lcom/twitter/android/widget/TweetDetailView;->a:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->c()Z

    move-result v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {v3, v2}, Lcom/twitter/library/media/widget/UserImageView;->a(Z)V

    .line 394
    iget-boolean v2, p1, Lcom/twitter/model/core/Tweet;->H:Z

    if-eqz v2, :cond_18

    .line 395
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->s:Landroid/widget/ImageView;

    const v3, 0x7f0206a2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 396
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->s:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 397
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->s:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    :goto_9
    iget-wide v2, p1, Lcom/twitter/model/core/Tweet;->m:J

    invoke-direct {p0, v2, v3}, Lcom/twitter/android/widget/TweetDetailView;->a(J)Ljava/lang/String;

    move-result-object v6

    .line 408
    invoke-direct {p0, p1}, Lcom/twitter/android/widget/TweetDetailView;->a(Lcom/twitter/model/core/Tweet;)V

    .line 409
    invoke-direct {p0, v6}, Lcom/twitter/android/widget/TweetDetailView;->a(Ljava/lang/String;)V

    .line 410
    invoke-direct {p0}, Lcom/twitter/android/widget/TweetDetailView;->j()V

    .line 413
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->G:Lcom/twitter/model/core/Translation;

    if-nez v2, :cond_1a

    .line 414
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/widget/TweetDetailView;->f:Lcom/twitter/model/core/Tweet;

    invoke-static {v2, v3}, Lcjg;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 415
    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 417
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    .line 416
    invoke-static {v2}, Lcom/twitter/util/a;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 418
    iget-object v3, p1, Lcom/twitter/model/core/Tweet;->N:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/twitter/android/widget/TweetDetailView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->E:Lcom/twitter/ui/widget/TypefacesTextView;

    iget-object v3, p0, Lcom/twitter/android/widget/TweetDetailView;->B:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/twitter/ui/widget/TypefacesTextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->D:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 428
    :cond_3
    :goto_a
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->o:Lcom/twitter/library/widget/SocialBylineView;

    .line 429
    invoke-virtual {v2}, Lcom/twitter/library/widget/SocialBylineView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 430
    iget-object v3, p0, Lcom/twitter/android/widget/TweetDetailView;->l:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    .line 431
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/twitter/model/core/Tweet;->w:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 432
    const v3, 0x7f0a08c5

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, ""

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v6, v7, v8

    const/4 v8, 0x4

    aput-object v2, v7, v8

    invoke-virtual {v13, v3, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 438
    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/TweetDetailView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 439
    invoke-direct {p0}, Lcom/twitter/android/widget/TweetDetailView;->i()V

    .line 443
    invoke-static {p1}, Lcih;->c(Lcom/twitter/model/core/Tweet;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->p()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 444
    :cond_4
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->p()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 446
    iget-object v3, p0, Lcom/twitter/android/widget/TweetDetailView;->u:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/twitter/android/widget/TweetDetailView;->u:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/twitter/android/widget/TweetDetailView;->u:Landroid/view/ViewGroup;

    .line 447
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v10

    .line 446
    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 449
    :cond_5
    iget-object v3, p0, Lcom/twitter/android/widget/TweetDetailView;->u:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->requestLayout()V

    .line 450
    iget-object v3, p0, Lcom/twitter/android/widget/TweetDetailView;->f:Lcom/twitter/model/core/Tweet;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 451
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    .line 450
    invoke-static/range {v2 .. v7}, Lcom/twitter/library/view/ab;->a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_6
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->U()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 455
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->H:Lcom/twitter/library/view/QuoteView;

    iget-object v3, p0, Lcom/twitter/android/widget/TweetDetailView;->f:Lcom/twitter/model/core/Tweet;

    iget-object v3, v3, Lcom/twitter/model/core/Tweet;->s:Lcom/twitter/model/core/ay;

    invoke-virtual {v2, v3}, Lcom/twitter/library/view/QuoteView;->setQuoteData(Lcom/twitter/model/core/ay;)V

    .line 456
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->H:Lcom/twitter/library/view/QuoteView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/twitter/library/view/QuoteView;->setVisibility(I)V

    .line 461
    :goto_b
    invoke-direct {p0}, Lcom/twitter/android/widget/TweetDetailView;->h()V

    .line 462
    return-void

    .line 306
    :cond_7
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->y:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 307
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->c:Lcom/twitter/android/widget/EngagementActionBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/EngagementActionBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 315
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 324
    :cond_9
    iget-object v2, v3, Lcom/twitter/model/core/i;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/twitter/library/view/o;->a(Ljava/lang/CharSequence;)Lcom/twitter/library/view/o;

    move-result-object v2

    iget-object v4, v3, Lcom/twitter/model/core/i;->b:Lcom/twitter/model/core/bm;

    .line 325
    invoke-virtual {v2, v4}, Lcom/twitter/library/view/o;->a(Lcom/twitter/model/core/bm;)Lcom/twitter/library/view/o;

    move-result-object v2

    .line 326
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/twitter/library/view/o;->a(Lcom/twitter/library/view/m;)Lcom/twitter/library/view/o;

    move-result-object v2

    const v4, 0x7f1200c3

    .line 327
    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/twitter/library/view/o;->b(I)Lcom/twitter/library/view/o;

    move-result-object v2

    .line 328
    invoke-virtual {v2}, Lcom/twitter/library/view/o;->a()Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 330
    invoke-static {}, Lcom/twitter/library/view/d;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/twitter/android/widget/TweetDetailView;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v4}, Lcom/twitter/model/core/Tweet;->m()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 331
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v3, Lcom/twitter/model/core/i;->b:Lcom/twitter/model/core/bm;

    iget-object v3, v3, Lcom/twitter/model/core/bm;->f:Lcom/twitter/model/core/j;

    const/4 v5, 0x1

    invoke-static {v4, v3, v2, v5}, Lcom/twitter/library/view/d;->a(Landroid/content/Context;Ljava/lang/Iterable;Landroid/text/SpannableStringBuilder;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto/16 :goto_2

    .line 341
    :cond_a
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->l:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 345
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 351
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 352
    :cond_d
    const/16 v2, 0x8

    goto/16 :goto_6

    .line 359
    :cond_e
    iget-boolean v3, p1, Lcom/twitter/model/core/Tweet;->G:Z

    if-eqz v3, :cond_f

    iget v3, p1, Lcom/twitter/model/core/Tweet;->f:I

    const/16 v4, 0x17

    if-eq v3, v4, :cond_f

    .line 360
    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/twitter/android/widget/TweetDetailView;->b(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 361
    :cond_f
    iget-boolean v3, p1, Lcom/twitter/model/core/Tweet;->X:Z

    if-eqz v3, :cond_10

    iget v3, p1, Lcom/twitter/model/core/Tweet;->f:I

    const/16 v4, 0x17

    if-eq v3, v4, :cond_10

    .line 362
    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/twitter/android/widget/TweetDetailView;->b(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 363
    :cond_10
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->r()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ac()Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_11
    if-nez v2, :cond_12

    .line 364
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/twitter/android/widget/TweetDetailView;->a(Lcss;)V

    goto/16 :goto_7

    .line 365
    :cond_12
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ad()Z

    move-result v3

    if-eqz v3, :cond_13

    if-nez v2, :cond_13

    .line 366
    const/16 v2, 0xd

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/twitter/android/widget/TweetDetailView;->b(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 367
    :cond_13
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->P:Lcom/twitter/model/moments/ad;

    if-eqz v2, :cond_14

    .line 368
    const/16 v2, 0x2b

    iget-object v3, p0, Lcom/twitter/android/widget/TweetDetailView;->P:Lcom/twitter/model/moments/ad;

    iget-object v3, v3, Lcom/twitter/model/moments/ad;->c:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/twitter/android/widget/TweetDetailView;->b(ILjava/lang/String;)V

    .line 369
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->Q:Laci;

    if-eqz v2, :cond_2

    .line 370
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->o:Lcom/twitter/library/widget/SocialBylineView;

    new-instance v3, Lcom/twitter/android/widget/fl;

    invoke-direct {v3, p0}, Lcom/twitter/android/widget/fl;-><init>(Lcom/twitter/android/widget/TweetDetailView;)V

    invoke-virtual {v2, v3}, Lcom/twitter/library/widget/SocialBylineView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    .line 377
    :cond_14
    iget v2, p1, Lcom/twitter/model/core/Tweet;->f:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    .line 378
    iget v3, p1, Lcom/twitter/model/core/Tweet;->f:I

    iget-object v4, p1, Lcom/twitter/model/core/Tweet;->g:Ljava/lang/String;

    iget-object v5, p1, Lcom/twitter/model/core/Tweet;->V:Ljava/lang/String;

    iget v6, p1, Lcom/twitter/model/core/Tweet;->S:I

    iget v7, p1, Lcom/twitter/model/core/Tweet;->U:I

    iget-wide v8, p1, Lcom/twitter/model/core/Tweet;->Y:J

    iget v10, p1, Lcom/twitter/model/core/Tweet;->T:I

    iget-wide v11, p1, Lcom/twitter/model/core/Tweet;->m:J

    move-object v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/twitter/android/widget/TweetDetailView;->a(ILjava/lang/String;Ljava/lang/String;IIJIJ)V

    goto/16 :goto_7

    .line 382
    :cond_15
    invoke-static/range {p3 .. p3}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    if-nez p6, :cond_16

    if-eqz p4, :cond_16

    .line 383
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->o:Lcom/twitter/library/widget/SocialBylineView;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/twitter/library/widget/SocialBylineView;->setLabel(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->o:Lcom/twitter/library/widget/SocialBylineView;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/twitter/library/widget/SocialBylineView;->setIcon(I)V

    .line 385
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->o:Lcom/twitter/library/widget/SocialBylineView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/twitter/library/widget/SocialBylineView;->setVisibility(I)V

    goto/16 :goto_7

    .line 387
    :cond_16
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->b:Lcom/twitter/ui/widget/BadgeView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/twitter/ui/widget/BadgeView;->setVisibility(I)V

    .line 388
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->o:Lcom/twitter/library/widget/SocialBylineView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/twitter/library/widget/SocialBylineView;->setVisibility(I)V

    goto/16 :goto_7

    .line 392
    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 398
    :cond_18
    iget-boolean v2, p1, Lcom/twitter/model/core/Tweet;->B:Z

    if-eqz v2, :cond_19

    .line 399
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->s:Landroid/widget/ImageView;

    const v3, 0x7f020450

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 400
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->s:Landroid/widget/ImageView;

    const v3, 0x7f12006d

    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 401
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->s:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    .line 403
    :cond_19
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->s:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    .line 422
    :cond_1a
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->G:Lcom/twitter/model/core/Translation;

    iget-object v2, v2, Lcom/twitter/model/core/Translation;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/widget/TweetDetailView;->G:Lcom/twitter/model/core/Translation;

    iget-object v3, v3, Lcom/twitter/model/core/Translation;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 423
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->G:Lcom/twitter/model/core/Translation;

    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/TweetDetailView;->a(Lcom/twitter/model/core/Translation;)Z

    .line 424
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->D:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 426
    :cond_1b
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->D:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 458
    :cond_1c
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->H:Lcom/twitter/library/view/QuoteView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/twitter/library/view/QuoteView;->setVisibility(I)V

    goto/16 :goto_b
.end method

.method public a(Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/account/UserSettings;)V
    .locals 2

    .prologue
    .line 292
    iput-object p1, p0, Lcom/twitter/android/widget/TweetDetailView;->N:Lcom/twitter/model/core/TwitterUser;

    .line 293
    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->H:Lcom/twitter/library/view/QuoteView;

    if-eqz p2, :cond_0

    iget-boolean v0, p2, Lcom/twitter/model/account/UserSettings;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/library/view/QuoteView;->setDisplaySensitiveMedia(Z)V

    .line 295
    invoke-direct {p0}, Lcom/twitter/android/widget/TweetDetailView;->h()V

    .line 296
    return-void

    .line 293
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->G:Lcom/twitter/model/core/Translation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/core/Translation;)Z
    .locals 3

    .prologue
    .line 525
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/twitter/model/core/Translation;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/core/Translation;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->D:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 527
    const/4 v0, 0x0

    .line 542
    :goto_0
    return v0

    .line 531
    :cond_1
    iget-object v0, p1, Lcom/twitter/model/core/Translation;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->f:Lcom/twitter/model/core/Tweet;

    iget-object v1, v1, Lcom/twitter/model/core/Tweet;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 532
    iget-object v0, p1, Lcom/twitter/model/core/Translation;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/core/Translation;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/widget/TweetDetailView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 535
    iget-object v1, p1, Lcom/twitter/model/core/Translation;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/library/view/o;->a(Ljava/lang/CharSequence;)Lcom/twitter/library/view/o;

    move-result-object v1

    iget-object v2, p1, Lcom/twitter/model/core/Translation;->e:Lcom/twitter/model/core/bm;

    .line 536
    invoke-virtual {v1, v2}, Lcom/twitter/library/view/o;->a(Lcom/twitter/model/core/bm;)Lcom/twitter/library/view/o;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->g:Lcom/twitter/library/view/m;

    .line 537
    invoke-virtual {v1, v2}, Lcom/twitter/library/view/o;->a(Lcom/twitter/library/view/m;)Lcom/twitter/library/view/o;

    move-result-object v1

    const v2, 0x7f1200c3

    .line 538
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/twitter/library/view/o;->b(I)Lcom/twitter/library/view/o;

    move-result-object v0

    .line 539
    invoke-virtual {v0}, Lcom/twitter/library/view/o;->a()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 540
    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->F:Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/TypefacesTextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iput-object p1, p0, Lcom/twitter/android/widget/TweetDetailView;->G:Lcom/twitter/model/core/Translation;

    .line 542
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public aP_()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->j:Lcom/twitter/media/ui/image/h;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/h;->aP_()V

    .line 268
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->F:Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TypefacesTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->E:Lcom/twitter/ui/widget/TypefacesTextView;

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->B:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TypefacesTextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->F:Lcom/twitter/ui/widget/TypefacesTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TypefacesTextView;->setVisibility(I)V

    .line 561
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->E:Lcom/twitter/ui/widget/TypefacesTextView;

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->C:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TypefacesTextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->F:Lcom/twitter/ui/widget/TypefacesTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TypefacesTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 572
    const-string/jumbo v0, "translated_tweet"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Translation;

    .line 573
    const-string/jumbo v2, "show_translation"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 574
    if-eqz v0, :cond_0

    .line 575
    iget-object v3, v0, Lcom/twitter/model/core/Translation;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/twitter/model/core/Translation;->c:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/twitter/android/widget/TweetDetailView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->G:Lcom/twitter/model/core/Translation;

    .line 579
    iget-object v3, p0, Lcom/twitter/android/widget/TweetDetailView;->F:Lcom/twitter/ui/widget/TypefacesTextView;

    if-eqz v2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/twitter/ui/widget/TypefacesTextView;->setVisibility(I)V

    .line 580
    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->E:Lcom/twitter/ui/widget/TypefacesTextView;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->C:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/TypefacesTextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    :cond_0
    return-void

    .line 579
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 580
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->B:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public c()V
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->u:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->u:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 707
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->t:Landroid/view/View;

    .line 709
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/widget/TweetDetailView;->j()V

    .line 710
    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->A:Lcom/twitter/library/widget/renderablecontent/e;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->A:Lcom/twitter/library/widget/renderablecontent/e;

    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/e;->d()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->a(Landroid/view/View;)V

    .line 748
    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 901
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->b:Lcom/twitter/ui/widget/BadgeView;

    if-eqz v0, :cond_0

    .line 902
    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->b:Lcom/twitter/ui/widget/BadgeView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/BadgeView;->setVisibility(I)V

    .line 904
    :cond_0
    return-void

    .line 902
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->j:Lcom/twitter/media/ui/image/h;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/h;->f()V

    .line 273
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->I:Lcom/twitter/library/widget/PossiblySensitiveWarningView;

    invoke-virtual {v0}, Lcom/twitter/library/widget/PossiblySensitiveWarningView;->h()V

    .line 832
    return-void
.end method

.method public getActionButton()Lcom/twitter/library/widget/ActionButton;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->M:Lcom/twitter/library/widget/ActionButton;

    return-object v0
.end method

.method public getAutoPlayableItem()Lcom/twitter/library/widget/a;
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/twitter/android/widget/TweetDetailView;->getContentContainer()Lcom/twitter/library/widget/renderablecontent/c;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/widget/d;->a(Lcom/twitter/library/widget/renderablecontent/c;)Lcom/twitter/library/widget/a;

    move-result-object v0

    return-object v0
.end method

.method public getNamePanel()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->m:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getTweetTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongViewCast"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 197
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 198
    const v0, 0x7f130420

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 199
    const v1, 0x7f1300e2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->s:Landroid/widget/ImageView;

    .line 200
    const v1, 0x7f1303f9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->n:Landroid/widget/TextView;

    .line 201
    const v1, 0x7f13004c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->k:Landroid/widget/TextView;

    .line 202
    const v1, 0x7f13004e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->m:Landroid/widget/RelativeLayout;

    .line 203
    invoke-static {}, Lcam;->a()Lcam;

    move-result-object v1

    invoke-virtual {v1}, Lcam;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->k:Landroid/widget/TextView;

    .line 205
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 204
    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 206
    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->n:Landroid/widget/TextView;

    .line 207
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 206
    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 209
    :cond_0
    const v1, 0x7f1302fb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/UserImageView;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->a:Lcom/twitter/library/media/widget/UserImageView;

    .line 210
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->j:Lcom/twitter/media/ui/image/h;

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->a:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/h;->a(Lcom/twitter/media/ui/image/g;)V

    .line 212
    const v0, 0x7f130769

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->l:Landroid/widget/TextView;

    .line 213
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/ui/widget/ax;->a(Landroid/content/Context;)Lcom/twitter/ui/widget/ax;

    move-result-object v1

    iget-object v1, v1, Lcom/twitter/ui/widget/ax;->e:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 214
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->l:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/twitter/ui/view/p;->a(Landroid/widget/TextView;)V

    .line 215
    const v0, 0x7f13006a

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/SocialBylineView;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->o:Lcom/twitter/library/widget/SocialBylineView;

    .line 216
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->o:Lcom/twitter/library/widget/SocialBylineView;

    invoke-static {}, Lcom/twitter/util/ak;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SocialBylineView;->setRenderRTL(Z)V

    .line 217
    const v0, 0x7f13076e

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->p:Landroid/widget/TextView;

    .line 218
    const v0, 0x7f13076f

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->q:Landroid/widget/TextView;

    .line 219
    const v0, 0x7f1305ed

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->r:Landroid/widget/TextView;

    .line 220
    const v0, 0x7f130003

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/ActionButton;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->M:Lcom/twitter/library/widget/ActionButton;

    .line 221
    const v0, 0x7f1306c6

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->u:Landroid/view/ViewGroup;

    .line 222
    const v0, 0x7f130770

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->v:Landroid/view/ViewGroup;

    .line 223
    const v0, 0x7f130771

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->w:Landroid/widget/TextView;

    .line 224
    const v0, 0x7f130772

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->x:Landroid/view/ViewGroup;

    .line 225
    const v0, 0x7f130464

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->y:Landroid/view/ViewGroup;

    .line 226
    const v0, 0x7f1303db

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->z:Landroid/view/ViewGroup;

    .line 228
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->r:Landroid/widget/TextView;

    new-instance v1, Lcom/twitter/android/widget/fk;

    invoke-direct {v1, p0}, Lcom/twitter/android/widget/fk;-><init>(Lcom/twitter/android/widget/TweetDetailView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    const v0, 0x7f1304dc

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/BadgeView;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->b:Lcom/twitter/ui/widget/BadgeView;

    .line 237
    new-instance v0, Lcom/twitter/library/revenue/a;

    const v1, 0x7f020291

    const v2, 0x7f020292

    const v3, 0x7f02028f

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/twitter/library/revenue/a;-><init>(Lcom/twitter/library/revenue/b;III)V

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->O:Lcom/twitter/library/revenue/a;

    .line 240
    const v0, 0x7f130060

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/EngagementActionBar;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->c:Lcom/twitter/android/widget/EngagementActionBar;

    .line 242
    const v0, 0x7f13076b

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TypefacesTextView;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->E:Lcom/twitter/ui/widget/TypefacesTextView;

    .line 243
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->E:Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-static {v0}, Lcom/twitter/ui/view/p;->a(Landroid/widget/TextView;)V

    .line 244
    const v0, 0x7f13076c

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TypefacesTextView;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->F:Lcom/twitter/ui/widget/TypefacesTextView;

    .line 245
    const v0, 0x7f13076a

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->D:Landroid/view/View;

    .line 246
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->F:Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-static {v0}, Lcom/twitter/ui/view/p;->a(Landroid/widget/TextView;)V

    .line 248
    const v0, 0x7f130277

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/view/QuoteView;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->H:Lcom/twitter/library/view/QuoteView;

    .line 249
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->H:Lcom/twitter/library/view/QuoteView;

    invoke-static {}, Lcom/twitter/util/ak;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/view/QuoteView;->setRenderRtl(Z)V

    .line 250
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->j:Lcom/twitter/media/ui/image/h;

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->H:Lcom/twitter/library/view/QuoteView;

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/h;->a(Lcom/twitter/media/ui/image/g;)V

    .line 252
    const v0, 0x7f13076d

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/PossiblySensitiveWarningView;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->I:Lcom/twitter/library/widget/PossiblySensitiveWarningView;

    .line 253
    const v0, 0x7f130766

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->J:Landroid/view/View;

    .line 255
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->o:Lcom/twitter/library/widget/SocialBylineView;

    invoke-static {}, Lcam;->a()Lcam;

    move-result-object v1

    invoke-virtual {v1}, Lcam;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SocialBylineView;->setMinIconWidth(I)V

    .line 256
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->a:Lcom/twitter/library/media/widget/UserImageView;

    invoke-static {}, Lcam;->a()Lcam;

    move-result-object v1

    invoke-virtual {v1}, Lcam;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->setSize(I)V

    .line 257
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 261
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 262
    invoke-direct {p0}, Lcom/twitter/android/widget/TweetDetailView;->o()V

    .line 263
    return-void
.end method

.method public setContentHost(Lcom/twitter/library/widget/renderablecontent/e;)V
    .locals 0

    .prologue
    .line 713
    invoke-direct {p0}, Lcom/twitter/android/widget/TweetDetailView;->k()V

    .line 714
    iput-object p1, p0, Lcom/twitter/android/widget/TweetDetailView;->A:Lcom/twitter/library/widget/renderablecontent/e;

    .line 715
    invoke-direct {p0}, Lcom/twitter/android/widget/TweetDetailView;->l()V

    .line 716
    return-void
.end method

.method public setMoment(Lcom/twitter/model/moments/ad;)V
    .locals 0

    .prologue
    .line 914
    iput-object p1, p0, Lcom/twitter/android/widget/TweetDetailView;->P:Lcom/twitter/model/moments/ad;

    .line 915
    return-void
.end method

.method public setOnMediaMonetizationClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    return-void
.end method

.method public setOnMomentClickListener(Laci;)V
    .locals 0

    .prologue
    .line 751
    iput-object p1, p0, Lcom/twitter/android/widget/TweetDetailView;->Q:Laci;

    .line 752
    return-void
.end method

.method public setOnTweetAnalyticsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->x:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    return-void
.end method

.method public setQuoteTweetClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->H:Lcom/twitter/library/view/QuoteView;

    invoke-virtual {v0, p1}, Lcom/twitter/library/view/QuoteView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    return-void
.end method

.method public setQuoteTweetLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->H:Lcom/twitter/library/view/QuoteView;

    invoke-virtual {v0, p1}, Lcom/twitter/library/view/QuoteView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 289
    return-void
.end method

.method public setTranslationButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->E:Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-virtual {v0, p1}, Lcom/twitter/ui/widget/TypefacesTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    return-void
.end method
