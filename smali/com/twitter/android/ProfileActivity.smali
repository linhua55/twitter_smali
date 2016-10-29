.class public Lcom/twitter/android/ProfileActivity;
.super Lcom/twitter/android/ScrollingHeaderUserQueryActivity;
.source "Twttr"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/android/ads/a;
.implements Lcom/twitter/android/businessprofiles/c;
.implements Lcom/twitter/android/mr;
.implements Lcom/twitter/android/profiles/ak;
.implements Lcom/twitter/android/profiles/ap;
.implements Lcom/twitter/android/profiles/aq;
.implements Lcom/twitter/android/profiles/e;
.implements Lcom/twitter/android/profiles/k;
.implements Lcom/twitter/android/profiles/t;
.implements Lcom/twitter/android/profiles/z;
.implements Lcom/twitter/app/common/base/m;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field public static final e:Landroid/net/Uri;

.field public static final f:Landroid/net/Uri;

.field public static final g:Landroid/net/Uri;

.field public static final h:Landroid/net/Uri;

.field public static final i:Landroid/net/Uri;

.field public static final j:Landroid/net/Uri;

.field public static final k:Landroid/net/Uri;

.field public static final l:Landroid/net/Uri;


# instance fields
.field private K:Lcom/twitter/android/mo;

.field private L:Lcom/twitter/android/profiles/v;

.field private M:Lcom/twitter/android/profiles/ProfileDetailsViewManager;

.field private N:Lcom/twitter/android/profiles/HeaderImageView;

.field private O:Lcom/twitter/library/media/widget/UserImageView;

.field private P:Lcom/twitter/android/profiles/a;

.field private Q:Lcom/twitter/android/widget/TweetStatView;

.field private R:Lcom/twitter/android/widget/TweetStatView;

.field private S:Ljava/lang/String;

.field private T:Landroid/widget/ImageView;

.field private U:Landroid/widget/ImageView;

.field private V:F

.field private W:Ljava/lang/String;

.field private X:Landroid/widget/LinearLayout;

.field private Y:I

.field private Z:Z

.field private aA:Landroid/view/View;

.field private aB:Landroid/view/View;

.field private aC:Lcom/twitter/android/metrics/d;

.field private aD:Z

.field private aE:Z

.field private aF:Ljava/lang/String;

.field private aG:Z

.field private aH:Lcom/twitter/android/profiles/f;

.field private aI:Lcom/twitter/android/profiles/ao;

.field private aJ:Lcom/twitter/android/profiles/s;

.field private aK:Laqp;

.field private final aL:Z

.field private aM:Z

.field private aN:Landroid/widget/TextView;

.field private aO:Lbjl;

.field private aP:Lbjl;

.field private aQ:Lcom/twitter/android/profiles/animation/BalloonSetAnimationView;

.field private aR:Z

.field private aS:Lcom/twitter/model/ads/e;

.field private aT:Z

.field private aU:Landroid/view/ViewGroup;

.field private aV:Lcom/twitter/ui/widget/TypefacesTextView;

.field private aW:Lcom/twitter/model/businessprofiles/m;

.field private aX:Landroid/widget/FrameLayout;

.field private aY:Lanf;

.field private aa:I

.field private ab:Ljava/lang/String;

.field private ac:Z

.field private ad:Z

.field private ae:Lcom/twitter/library/util/FriendshipCache;

.field private af:Lcss;

.field private ag:Z

.field private ah:Landroid/content/SharedPreferences;

.field private ai:Lcom/twitter/model/core/TwitterUser;

.field private aj:Landroid/net/Uri;

.field private ak:Z

.field private al:Lcom/twitter/android/ns;

.field private am:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private an:Lcom/twitter/model/timeline/al;

.field private ao:Lcom/twitter/android/qg;

.field private ap:Landroid/widget/ListView;

.field private aq:Landroid/widget/LinearLayout;

.field private ar:I

.field private as:Landroid/view/View;

.field private at:Landroid/view/ViewGroup;

.field private au:Lcom/twitter/library/service/z;

.field private av:Lcom/twitter/android/mn;

.field private aw:Lcom/twitter/android/profiles/y;

.field private ax:Z

.field private ay:Z

.field private az:Lcom/twitter/android/ProfileActivity$DisplayState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    const-string/jumbo v0, "twitter://profile/featured"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/ProfileActivity;->a:Landroid/net/Uri;

    .line 209
    const-string/jumbo v0, "twitter://profile/tweets"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/ProfileActivity;->b:Landroid/net/Uri;

    .line 210
    const-string/jumbo v0, "twitter://profile/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/ProfileActivity;->c:Landroid/net/Uri;

    .line 211
    const-string/jumbo v0, "twitter://profile/favorites"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/ProfileActivity;->d:Landroid/net/Uri;

    .line 212
    const-string/jumbo v0, "twitter://profile/protected_account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/ProfileActivity;->e:Landroid/net/Uri;

    .line 213
    const-string/jumbo v0, "twitter://profile/blocked_account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/ProfileActivity;->f:Landroid/net/Uri;

    .line 214
    const-string/jumbo v0, "twitter://profile/blocker_interstitial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/ProfileActivity;->g:Landroid/net/Uri;

    .line 215
    const-string/jumbo v0, "twitter://profile/followers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/ProfileActivity;->h:Landroid/net/Uri;

    .line 216
    const-string/jumbo v0, "twitter://profile/following"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/ProfileActivity;->i:Landroid/net/Uri;

    .line 217
    const-string/jumbo v0, "twitter://profile/follow"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/ProfileActivity;->j:Landroid/net/Uri;

    .line 220
    const-string/jumbo v0, "twitter://profile/device_follow"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/ProfileActivity;->k:Landroid/net/Uri;

    .line 223
    const-string/jumbo v0, "twitter://profile/vine/enable_display"

    .line 224
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/ProfileActivity;->l:Landroid/net/Uri;

    .line 223
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 193
    invoke-direct {p0}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;-><init>()V

    .line 363
    sget-object v0, Lcom/twitter/android/ProfileActivity$DisplayState;->a:Lcom/twitter/android/ProfileActivity$DisplayState;

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->az:Lcom/twitter/android/ProfileActivity$DisplayState;

    .line 367
    iput-boolean v2, p0, Lcom/twitter/android/ProfileActivity;->aD:Z

    .line 368
    iput-boolean v1, p0, Lcom/twitter/android/ProfileActivity;->aE:Z

    .line 376
    iput-boolean v2, p0, Lcom/twitter/android/ProfileActivity;->aL:Z

    .line 377
    iput-boolean v1, p0, Lcom/twitter/android/ProfileActivity;->aM:Z

    return-void
.end method

.method private C()V
    .locals 2

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->m:Ljava/util/List;

    .line 751
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->K:Lcom/twitter/android/mo;

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/twitter/android/mo;->a(Ljava/util/List;)V

    .line 752
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->n:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/twitter/android/mp;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->n:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/mp;

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/twitter/android/mp;->a(Ljava/util/List;)V

    .line 755
    :cond_0
    return-void
.end method

.method private D()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 760
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aj:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 815
    :goto_0
    return-void

    .line 764
    :cond_0
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v0

    .line 765
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 766
    sget-object v2, Lcom/twitter/android/ProfileActivity;->h:Landroid/net/Uri;

    iget-object v3, p0, Lcom/twitter/android/ProfileActivity;->aj:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 767
    if-eqz v0, :cond_2

    .line 769
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->S:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/twitter/android/ip;->b(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    .line 814
    :cond_1
    :goto_1
    iput-object v5, p0, Lcom/twitter/android/ProfileActivity;->aj:Landroid/net/Uri;

    goto :goto_0

    .line 773
    :cond_2
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    .line 772
    invoke-static {p0, v0, v1, v2, v5}, Lcom/twitter/android/util/u;->a(Landroid/content/Context;JLcom/twitter/model/core/TwitterUser;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 775
    :cond_3
    sget-object v2, Lcom/twitter/android/ProfileActivity;->i:Landroid/net/Uri;

    iget-object v3, p0, Lcom/twitter/android/ProfileActivity;->aj:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 776
    if-eqz v0, :cond_4

    .line 778
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->S:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/twitter/android/ip;->b(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    goto :goto_1

    .line 781
    :cond_4
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->ar()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 783
    :cond_5
    sget-object v2, Lcom/twitter/android/ProfileActivity;->j:Landroid/net/Uri;

    iget-object v3, p0, Lcom/twitter/android/ProfileActivity;->aj:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 784
    if-eqz v0, :cond_6

    .line 785
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->S:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/twitter/android/ip;->b(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    goto :goto_1

    .line 787
    :cond_6
    iget-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->C:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    invoke-static {v0}, Lcom/twitter/model/core/p;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    .line 788
    invoke-static {v0}, Lcom/twitter/model/core/p;->f(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    invoke-static {v0}, Lcom/twitter/model/core/p;->e(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 789
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->r(I)V

    goto :goto_1

    .line 791
    :cond_7
    sget-object v2, Lcom/twitter/android/ProfileActivity;->k:Landroid/net/Uri;

    iget-object v3, p0, Lcom/twitter/android/ProfileActivity;->aj:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 794
    if-nez v0, :cond_1

    .line 795
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aI:Lcom/twitter/android/profiles/ao;

    .line 796
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/twitter/android/profiles/as;->a(Landroid/content/Context;J)Z

    move-result v1

    .line 795
    invoke-static {v0, v4, v1}, Lcom/twitter/android/profiles/as;->a(Lcom/twitter/android/profiles/ao;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->r(I)V

    goto/16 :goto_1

    .line 800
    :cond_8
    sget-object v2, Lcom/twitter/android/ProfileActivity;->l:Landroid/net/Uri;

    iget-object v3, p0, Lcom/twitter/android/ProfileActivity;->aj:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 801
    if-nez v0, :cond_1

    .line 802
    const-string/jumbo v0, "me:::vine:add"

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->c(Ljava/lang/String;)V

    .line 803
    new-instance v0, Lcom/twitter/library/client/az;

    invoke-direct {v0, v4}, Lcom/twitter/library/client/az;-><init>(Z)V

    .line 804
    invoke-static {p0, v1, v0}, Lcom/twitter/android/client/bv;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/library/client/az;)Ljava/lang/String;

    .line 805
    const v0, 0x7f0a038d

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 809
    :cond_9
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aj:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->b(Landroid/net/Uri;)I

    move-result v0

    .line 810
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 811
    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileActivity;->a(I)V

    goto/16 :goto_1
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;Lcss;Lcom/twitter/library/scribe/TwitterScribeAssociation;ILcom/twitter/library/api/PromotedEvent;Lcom/twitter/model/timeline/al;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 424
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "user_id"

    .line 425
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "association"

    .line 426
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "scribe_content"

    sget-object v2, Lcom/twitter/model/timeline/al;->a:Lcom/twitter/util/serialization/d;

    .line 428
    invoke-static {p8, v2}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v2

    .line 427
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "screen_name"

    .line 429
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 431
    const/4 v1, -0x1

    if-eq p6, v1, :cond_0

    .line 432
    const-string/jumbo v1, "friendship"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 435
    :cond_0
    if-eqz p4, :cond_2

    .line 436
    if-eqz p7, :cond_1

    .line 437
    invoke-static {p0}, Lcom/twitter/android/client/c;->a(Landroid/content/Context;)Lcom/twitter/android/client/c;

    move-result-object v1

    invoke-virtual {v1, p7, p4}, Lcom/twitter/android/client/c;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)V

    .line 439
    :cond_1
    const-string/jumbo v1, "pc"

    invoke-static {p4}, Lcss;->a(Lcss;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 442
    :cond_2
    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/twitter/library/media/widget/UserImageView;)Landroid/widget/FrameLayout;
    .locals 5

    .prologue
    .line 854
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 855
    const v1, 0x7f0402a5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 856
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 857
    invoke-virtual {p1}, Lcom/twitter/library/media/widget/UserImageView;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    check-cast v1, Lcom/twitter/media/ui/image/RichImageView;

    .line 858
    invoke-virtual {v1}, Lcom/twitter/media/ui/image/RichImageView;->getCornerRadii()[F

    move-result-object v1

    .line 860
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12016c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 861
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget v1, v1, v3

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 862
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 863
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 864
    invoke-virtual {p1, v0}, Lcom/twitter/library/media/widget/UserImageView;->addView(Landroid/view/View;)V

    .line 866
    return-object v0

    .line 861
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/ProfileActivity;)Lcom/twitter/android/composer/ComposerDockLayout;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->G:Lcom/twitter/android/composer/ComposerDockLayout;

    return-object v0
.end method

.method private a(Lcom/twitter/model/core/TwitterUser;Z)Lcom/twitter/model/core/TwitterUser;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1829
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/client/bv;->a(Lcom/twitter/library/client/Session;)Lcom/twitter/library/client/az;

    move-result-object v1

    .line 1830
    iget-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->C:Z

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-boolean v0, v1, Lcom/twitter/library/client/az;->i:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1831
    :goto_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_0

    iget-object v2, p1, Lcom/twitter/model/core/TwitterUser;->G:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1856
    :cond_0
    :goto_1
    return-object p1

    .line 1830
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1834
    :cond_2
    new-instance v2, Lcom/twitter/model/core/cv;

    invoke-direct {v2, p1}, Lcom/twitter/model/core/cv;-><init>(Lcom/twitter/model/core/TwitterUser;)V

    .line 1835
    if-eqz v0, :cond_5

    .line 1836
    iget-object v0, v1, Lcom/twitter/library/client/az;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/twitter/model/core/cv;->h(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-object v3, v1, Lcom/twitter/library/client/az;->h:Lcom/twitter/util/collection/ab;

    .line 1837
    invoke-virtual {v0, v3}, Lcom/twitter/model/core/cv;->a(Lcom/twitter/util/collection/ab;)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-object v3, v1, Lcom/twitter/library/client/az;->d:Ljava/lang/String;

    .line 1838
    invoke-virtual {v0, v3}, Lcom/twitter/model/core/cv;->b(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    .line 1841
    iget-boolean v0, v1, Lcom/twitter/library/client/az;->j:Z

    if-eqz v0, :cond_3

    .line 1842
    iget-object v0, v1, Lcom/twitter/library/client/az;->e:Ljava/lang/String;

    invoke-static {v0}, Lcum;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/model/core/cv;->e(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 1843
    invoke-virtual {v0, v4}, Lcom/twitter/model/core/cv;->a(Lcom/twitter/model/core/bm;)Lcom/twitter/model/core/cv;

    .line 1845
    :cond_3
    iget-boolean v0, v1, Lcom/twitter/library/client/az;->k:Z

    if-eqz v0, :cond_4

    .line 1846
    iget-object v0, v1, Lcom/twitter/library/client/az;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/twitter/model/core/cv;->f(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 1847
    invoke-virtual {v0, v4}, Lcom/twitter/model/core/cv;->b(Lcom/twitter/model/core/bm;)Lcom/twitter/model/core/cv;

    .line 1849
    :cond_4
    iget-object v0, v1, Lcom/twitter/library/client/az;->l:Lcom/twitter/model/profile/ExtendedProfile;

    if-eqz v0, :cond_5

    .line 1850
    iget-object v0, v1, Lcom/twitter/library/client/az;->l:Lcom/twitter/model/profile/ExtendedProfile;

    invoke-virtual {v2, v0}, Lcom/twitter/model/core/cv;->a(Lcom/twitter/model/profile/ExtendedProfile;)Lcom/twitter/model/core/cv;

    .line 1853
    :cond_5
    if-eqz p2, :cond_6

    .line 1854
    invoke-virtual {v2, v4}, Lcom/twitter/model/core/cv;->i(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    .line 1856
    :cond_6
    invoke-virtual {v2}, Lcom/twitter/model/core/cv;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    move-object p1, v0

    goto :goto_1
.end method

.method private a(JLcss;)V
    .locals 7

    .prologue
    .line 2139
    new-instance v1, Lbtz;

    .line 2140
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lbtz;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V

    const/4 v0, 0x1

    .line 2141
    invoke-virtual {v1, v0}, Lbtz;->b(Z)Lbtz;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    .line 2142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbtz;->a(Ljava/lang/Integer;)Lbtz;

    move-result-object v0

    .line 2143
    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ProfileActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 2144
    return-void
.end method

.method private a(JLjava/lang/String;)V
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 2435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->ag:Z

    .line 2436
    iget-object v5, p0, Lcom/twitter/android/ProfileActivity;->af:Lcss;

    const/4 v7, -0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v8, v6

    move-object v9, v6

    invoke-static/range {v1 .. v9}, Lcom/twitter/android/ProfileActivity;->a(Landroid/content/Context;JLjava/lang/String;Lcss;Lcom/twitter/library/scribe/TwitterScribeAssociation;ILcom/twitter/library/api/PromotedEvent;Lcom/twitter/model/timeline/al;)Landroid/content/Intent;

    move-result-object v0

    .line 2438
    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 2439
    const v0, 0x7f050050

    const v1, 0x7f050051

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ProfileActivity;->overridePendingTransition(II)V

    .line 2440
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->finish()V

    .line 2441
    return-void
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;Lcss;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/model/timeline/al;)V
    .locals 1

    .prologue
    .line 395
    invoke-static/range {p0 .. p6}, Lcom/twitter/android/ProfileActivity;->b(Landroid/content/Context;JLjava/lang/String;Lcss;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/model/timeline/al;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 396
    return-void
.end method

.method private a(Lcom/twitter/android/ProfileActivity$DisplayState;)V
    .locals 2

    .prologue
    .line 718
    iput-object p1, p0, Lcom/twitter/android/ProfileActivity;->az:Lcom/twitter/android/ProfileActivity$DisplayState;

    .line 720
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->az:Lcom/twitter/android/ProfileActivity$DisplayState;

    sget-object v1, Lcom/twitter/android/ProfileActivity$DisplayState;->a:Lcom/twitter/android/ProfileActivity$DisplayState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->az:Lcom/twitter/android/ProfileActivity$DisplayState;

    sget-object v1, Lcom/twitter/android/ProfileActivity$DisplayState;->b:Lcom/twitter/android/ProfileActivity$DisplayState;

    if-eq v0, v1, :cond_0

    .line 722
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aC:Lcom/twitter/android/metrics/d;

    invoke-virtual {v0}, Lcom/twitter/android/metrics/d;->k()V

    .line 725
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 726
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 727
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 728
    if-eqz v1, :cond_1

    .line 729
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 731
    :cond_1
    new-instance v1, Lcom/twitter/android/profiles/ah;

    invoke-direct {v1}, Lcom/twitter/android/profiles/ah;-><init>()V

    .line 732
    invoke-virtual {v1, p0}, Lcom/twitter/android/profiles/ah;->a(Landroid/content/Context;)Lcom/twitter/android/profiles/ah;

    move-result-object v1

    .line 733
    invoke-virtual {v1, v0}, Lcom/twitter/android/profiles/ah;->a(Landroid/os/Bundle;)Lcom/twitter/android/profiles/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    .line 734
    invoke-virtual {v0, v1}, Lcom/twitter/android/profiles/ah;->a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/android/profiles/ah;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/android/ProfileActivity;->C:Z

    .line 735
    invoke-virtual {v0, v1}, Lcom/twitter/android/profiles/ah;->a(Z)Lcom/twitter/android/profiles/ah;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    .line 736
    invoke-virtual {v0, v1}, Lcom/twitter/android/profiles/ah;->a(I)Lcom/twitter/android/profiles/ah;

    move-result-object v0

    .line 737
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->O()Lccf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/profiles/ah;->a(Lccf;)Lcom/twitter/android/profiles/ah;

    move-result-object v0

    .line 738
    invoke-virtual {v0, p1}, Lcom/twitter/android/profiles/ah;->a(Lcom/twitter/android/ProfileActivity$DisplayState;)Lcom/twitter/android/profiles/ah;

    move-result-object v0

    .line 739
    invoke-virtual {v0}, Lcom/twitter/android/profiles/ah;->a()Lcom/twitter/android/profiles/v;

    move-result-object v0

    .line 740
    if-eqz v0, :cond_2

    .line 741
    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->L:Lcom/twitter/android/profiles/v;

    .line 744
    :cond_2
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->C()V

    .line 745
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->aj()V

    .line 746
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->D()V

    .line 747
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/ProfileActivity;I)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/twitter/android/ProfileActivity;->p(I)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/ProfileActivity;Z)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/twitter/android/ProfileActivity;->j(Z)V

    return-void
.end method

.method private a(Lcom/twitter/android/widget/LoggedOutBar;)V
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->G:Lcom/twitter/android/composer/ComposerDockLayout;

    new-instance v1, Lcom/twitter/android/mc;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/mc;-><init>(Lcom/twitter/android/ProfileActivity;Lcom/twitter/android/widget/LoggedOutBar;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ComposerDockLayout;->a(Lcom/twitter/internal/android/widget/g;)V

    .line 686
    return-void
.end method

.method private a(Lcom/twitter/android/widget/TweetStatView;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 1903
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1904
    int-to-long v2, p3

    invoke-static {v0, v2, v3}, Lcom/twitter/util/s;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/android/widget/TweetStatView;->setValue(Ljava/lang/CharSequence;)V

    .line 1905
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/android/widget/TweetStatView;->setName(Ljava/lang/CharSequence;)V

    .line 1906
    return-void
.end method

.method private a(Lcom/twitter/internal/android/widget/ToolBar;)V
    .locals 8

    .prologue
    .line 1884
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1886
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1887
    new-instance v0, Lcom/twitter/android/profiles/r;

    invoke-direct {v0}, Lcom/twitter/android/profiles/r;-><init>()V

    .line 1889
    invoke-static {p0}, Lcom/twitter/android/ip;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1890
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/twitter/internal/android/widget/ToolBar;->setDisplayShowHomeAsUpEnabled(Z)V

    .line 1897
    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Lcom/twitter/android/profiles/ar;->a(Lcom/twitter/internal/android/widget/ToolBar;)V

    .line 1898
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aJ:Lcom/twitter/android/profiles/s;

    invoke-interface {v0, p0}, Lcom/twitter/android/profiles/s;->a(Lcom/twitter/android/profiles/t;)V

    .line 1900
    :cond_1
    return-void

    .line 1893
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v1

    .line 1894
    new-instance v0, Lcom/twitter/android/profiles/q;

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    iget v3, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    iget-boolean v4, p0, Lcom/twitter/android/ProfileActivity;->C:Z

    iget-object v5, p0, Lcom/twitter/android/ProfileActivity;->aS:Lcom/twitter/model/ads/e;

    iget-boolean v6, p0, Lcom/twitter/android/ProfileActivity;->aT:Z

    .line 1895
    invoke-static {p0}, Lcom/twitter/android/moments/ui/maker/cd;->a(Landroid/content/Context;)Lcom/twitter/android/moments/ui/maker/cd;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/profiles/q;-><init>(Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/core/TwitterUser;IZLcom/twitter/model/ads/e;ZLcom/twitter/android/moments/ui/maker/cd;)V

    goto :goto_0
.end method

.method private a(ZZ)V
    .locals 1

    .prologue
    .line 1717
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1718
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aO:Lbjl;

    invoke-virtual {v0, p1}, Lbjl;->b(Z)Lbjl;

    .line 1719
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aP:Lbjl;

    invoke-virtual {v0, p2}, Lbjl;->b(Z)Lbjl;

    .line 1721
    :cond_0
    return-void
.end method

.method private varargs a([Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1991
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->aI:Lcom/twitter/android/profiles/ao;

    invoke-static {v0, v1, v2, p1}, Lcom/twitter/android/profiles/as;->a(JLcom/twitter/android/profiles/ao;[Ljava/lang/String;)V

    .line 1992
    return-void
.end method

.method private a(ILandroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 1037
    invoke-direct {p0, p1}, Lcom/twitter/android/ProfileActivity;->m(I)Lcom/twitter/library/client/ax;

    move-result-object v0

    .line 1038
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/twitter/library/client/ax;->a:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/ProfileActivity;ILandroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/ProfileActivity;->a(ILandroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private aA()V
    .locals 1

    .prologue
    .line 2227
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->n(I)V

    .line 2228
    const-string/jumbo v0, "profile::user:device_follow"

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->c(Ljava/lang/String;)V

    .line 2229
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->g(Z)V

    .line 2230
    return-void
.end method

.method private aB()Z
    .locals 2

    .prologue
    .line 2603
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aI:Lcom/twitter/android/profiles/ao;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/ao;->a()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aI:Lcom/twitter/android/profiles/ao;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/ao;->a()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->t:Lcom/twitter/model/profile/ExtendedProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aI:Lcom/twitter/android/profiles/ao;

    .line 2604
    invoke-virtual {v0}, Lcom/twitter/android/profiles/ao;->a()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->t:Lcom/twitter/model/profile/ExtendedProfile;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Lcom/twitter/android/profiles/as;->a(Lcom/twitter/model/profile/ExtendedProfile;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2603
    :goto_0
    return v0

    .line 2604
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aC()V
    .locals 4

    .prologue
    .line 2617
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 2618
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ax;

    .line 2619
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/ax;->a(Landroid/support/v4/app/FragmentManager;)Lcom/twitter/app/common/base/BaseFragment;

    move-result-object v0

    .line 2620
    instance-of v3, v0, Lcom/twitter/android/TimelineFragment;

    if-eqz v3, :cond_0

    .line 2621
    check-cast v0, Lcom/twitter/android/TimelineFragment;

    invoke-virtual {v0}, Lcom/twitter/android/TimelineFragment;->af_()V

    goto :goto_0

    .line 2624
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aH:Lcom/twitter/android/profiles/f;

    if-eqz v0, :cond_2

    .line 2625
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aH:Lcom/twitter/android/profiles/f;

    invoke-interface {v0}, Lcom/twitter/android/profiles/f;->o()V

    .line 2627
    :cond_2
    return-void
.end method

.method private aD()V
    .locals 5

    .prologue
    .line 2902
    const v0, 0x7f13063d

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->aN:Landroid/widget/TextView;

    .line 2904
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const v1, 0x7f0a06a0

    .line 2905
    invoke-virtual {p0, v1}, Lcom/twitter/android/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2906
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2908
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 2909
    const v2, 0x7f0a091e

    invoke-virtual {p0, v2}, Lcom/twitter/android/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2910
    new-instance v2, Lcom/twitter/android/mi;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1200c3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/twitter/android/mi;-><init>(Lcom/twitter/android/ProfileActivity;I)V

    .line 2915
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    .line 2910
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2917
    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->aN:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/twitter/ui/view/p;->a(Landroid/widget/TextView;)V

    .line 2918
    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->aN:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2919
    return-void
.end method

.method private aE()V
    .locals 4

    .prologue
    .line 2922
    invoke-static {}, Laqu;->a()Laqu;

    move-result-object v0

    .line 2923
    const-string/jumbo v1, "fatigue_account_notif_profile_tooltip"

    iget-wide v2, p0, Lcom/twitter/android/ProfileActivity;->I:J

    invoke-static {p0, v1, v2, v3}, Lcom/twitter/android/util/t;->a(Landroid/content/Context;Ljava/lang/String;J)Lcom/twitter/android/util/t;

    move-result-object v1

    .line 2925
    new-instance v2, Laqo;

    invoke-direct {v2, v1}, Laqo;-><init>(Lcom/twitter/android/util/t;)V

    .line 2926
    new-instance v1, Laqq;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v1, p0, v3, v2, v0}, Laqq;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Laqn;Laqt;)V

    iput-object v1, p0, Lcom/twitter/android/ProfileActivity;->aK:Laqp;

    .line 2928
    return-void
.end method

.method private ae()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->L:Lcom/twitter/android/profiles/v;

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->L:Lcom/twitter/android/profiles/v;

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->K:Lcom/twitter/android/mo;

    invoke-virtual {v1}, Lcom/twitter/android/mo;->a()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/twitter/android/ProfileActivity;->m(I)Lcom/twitter/library/client/ax;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/twitter/android/profiles/v;->a(Lcom/twitter/library/client/ax;Lcom/twitter/model/core/TwitterUser;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 1055
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private af()V
    .locals 8

    .prologue
    .line 1441
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    .line 1442
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->E:Lcom/twitter/android/profiles/au;

    const-string/jumbo v1, "ads_account_permissions"

    invoke-virtual {v0, v1}, Lcom/twitter/android/profiles/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1443
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/ads/c;->b(Lcom/twitter/model/core/TwitterUser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->E:Lcom/twitter/android/profiles/au;

    new-instance v1, Lcom/twitter/android/ads/b;

    const/4 v2, 0x7

    invoke-direct {v1, p0, p0, v3, v2}, Lcom/twitter/android/ads/b;-><init>(Landroid/content/Context;Lcom/twitter/android/ads/a;Landroid/support/v4/app/LoaderManager;I)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/profiles/au;->a(Lcom/twitter/android/profiles/at;)V

    .line 1450
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->E:Lcom/twitter/android/profiles/au;

    const-string/jumbo v1, "business_profile"

    invoke-virtual {v0, v1}, Lcom/twitter/android/profiles/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->aW:Lcom/twitter/model/businessprofiles/m;

    .line 1451
    invoke-static {v0, v1}, Lbyi;->a(Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/businessprofiles/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1452
    iget-object v7, p0, Lcom/twitter/android/ProfileActivity;->E:Lcom/twitter/android/profiles/au;

    new-instance v0, Lcom/twitter/android/businessprofiles/d;

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    .line 1458
    invoke-static {p0}, Lbyi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/businessprofiles/d;-><init>(Landroid/content/Context;Lcom/twitter/android/businessprofiles/c;Landroid/support/v4/app/LoaderManager;ILcom/twitter/model/core/TwitterUser;Ljava/lang/String;)V

    .line 1452
    invoke-virtual {v7, v0}, Lcom/twitter/android/profiles/au;->a(Lcom/twitter/android/profiles/at;)V

    .line 1460
    :cond_1
    return-void
.end method

.method private ag()V
    .locals 1

    .prologue
    .line 1464
    iget-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->aD:Z

    if-eqz v0, :cond_0

    .line 1465
    const-string/jumbo v0, ":::impression"

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->c(Ljava/lang/String;)V

    .line 1468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->aD:Z

    .line 1470
    :cond_0
    return-void
.end method

.method private ah()V
    .locals 4

    .prologue
    .line 1474
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, ":user:muted_button:click"

    invoke-direct {p0, v2}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->a([Ljava/lang/String;)V

    .line 1475
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->B:Ljava/lang/String;

    const/16 v1, 0xb

    .line 1476
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 1475
    invoke-static {p0, v0, v1, v2, v3}, Lcom/twitter/android/util/bc;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)Z

    .line 1477
    return-void
.end method

.method private ai()V
    .locals 3

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->N:Lcom/twitter/android/profiles/HeaderImageView;

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->aI:Lcom/twitter/android/profiles/ao;

    invoke-virtual {v0, v1}, Lcom/twitter/android/profiles/HeaderImageView;->setProfileUser(Lcom/twitter/android/profiles/ao;)V

    .line 1526
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->Q:Lcom/twitter/android/widget/TweetStatView;

    const v1, 0x7f0a068b

    invoke-virtual {p0, v1}, Lcom/twitter/android/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    iget v2, v2, Lcom/twitter/model/core/TwitterUser;->Q:I

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/ProfileActivity;->a(Lcom/twitter/android/widget/TweetStatView;Ljava/lang/String;I)V

    .line 1527
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->R:Lcom/twitter/android/widget/TweetStatView;

    const v1, 0x7f0a068c

    invoke-virtual {p0, v1}, Lcom/twitter/android/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    iget v2, v2, Lcom/twitter/model/core/TwitterUser;->v:I

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/ProfileActivity;->a(Lcom/twitter/android/widget/TweetStatView;Ljava/lang/String;I)V

    .line 1528
    iget-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->C:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1529
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->d(Lcom/twitter/model/core/TwitterUser;)V

    .line 1534
    :goto_0
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->al()V

    .line 1535
    return-void

    .line 1531
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aX:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1532
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->O:Lcom/twitter/library/media/widget/UserImageView;

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/media/widget/UserImageView;->a(Lcom/twitter/model/core/TwitterUser;Z)Z

    goto :goto_0
.end method

.method private aj()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/16 v10, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1539
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v8, :cond_7

    move v0, v8

    .line 1540
    :goto_0
    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->p:Lcom/twitter/internal/android/widget/HorizontalListView;

    if-eqz v0, :cond_8

    move v1, v9

    :goto_1
    invoke-virtual {v2, v1}, Lcom/twitter/internal/android/widget/HorizontalListView;->setVisibility(I)V

    .line 1541
    if-eqz v0, :cond_9

    .line 1542
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0330

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_2
    iput v1, p0, Lcom/twitter/android/ProfileActivity;->x:I

    .line 1543
    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->as:Landroid/view/View;

    if-eqz v0, :cond_a

    move v0, v9

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1544
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aw:Lcom/twitter/android/profiles/y;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/y;->f()V

    .line 1545
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->az:Lcom/twitter/android/ProfileActivity$DisplayState;

    sget-object v1, Lcom/twitter/android/ProfileActivity$DisplayState;->c:Lcom/twitter/android/ProfileActivity$DisplayState;

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aW:Lcom/twitter/model/businessprofiles/m;

    if-eqz v0, :cond_c

    .line 1547
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->M:Lcom/twitter/android/profiles/ProfileDetailsViewManager;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/twitter/android/profiles/ProfileDetailsViewManager$IconItemType;

    sget-object v2, Lcom/twitter/android/profiles/ProfileDetailsViewManager$IconItemType;->a:Lcom/twitter/android/profiles/ProfileDetailsViewManager$IconItemType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/twitter/android/profiles/ProfileDetailsViewManager$IconItemType;->b:Lcom/twitter/android/profiles/ProfileDetailsViewManager$IconItemType;

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/profiles/ProfileDetailsViewManager;->a(Ljava/util/List;)V

    .line 1550
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->aq()V

    .line 1557
    new-instance v0, Lcom/twitter/android/businessprofiles/a;

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->at:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->as:Landroid/view/View;

    iget-object v3, p0, Lcom/twitter/android/ProfileActivity;->aW:Lcom/twitter/model/businessprofiles/m;

    iget-object v4, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/businessprofiles/a;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/twitter/model/businessprofiles/m;Lcom/twitter/model/core/TwitterUser;Landroid/app/Activity;)V

    .line 1563
    invoke-virtual {v0}, Lcom/twitter/android/businessprofiles/a;->a()Z

    move-result v12

    .line 1564
    if-nez v12, :cond_10

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aW:Lcom/twitter/model/businessprofiles/m;

    invoke-static {v0}, Lbyi;->a(Lcom/twitter/model/businessprofiles/m;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1565
    new-instance v0, Lcom/twitter/android/businessprofiles/f;

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->aU:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/twitter/android/ProfileActivity;->aW:Lcom/twitter/model/businessprofiles/m;

    iget-object v4, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->aW:Lcom/twitter/model/businessprofiles/m;

    iget-object v2, v2, Lcom/twitter/model/businessprofiles/m;->h:Lcom/twitter/model/businessprofiles/q;

    iget-object v5, v2, Lcom/twitter/model/businessprofiles/q;->d:Lcom/twitter/model/core/TwitterUser;

    .line 1571
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/businessprofiles/f;-><init>(Landroid/view/ViewGroup;Landroid/app/Activity;Lcom/twitter/model/businessprofiles/m;Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/core/TwitterUser;J)V

    .line 1572
    invoke-virtual {v0}, Lcom/twitter/android/businessprofiles/f;->c()Z

    move-result v0

    .line 1573
    if-eqz v0, :cond_0

    .line 1574
    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->aw:Lcom/twitter/android/profiles/y;

    invoke-virtual {v1}, Lcom/twitter/android/profiles/y;->e()V

    :cond_0
    move v11, v0

    .line 1578
    :goto_4
    if-nez v11, :cond_1

    if-nez v12, :cond_1

    invoke-static {}, Lbyi;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    .line 1579
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    iget-wide v4, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_b

    move v0, v8

    :goto_5
    invoke-static {v1, v0}, Lcom/twitter/android/profiles/as;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1580
    new-instance v1, Lcom/twitter/android/businessprofiles/e;

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->aU:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/twitter/android/ProfileActivity;->aW:Lcom/twitter/model/businessprofiles/m;

    iget-object v5, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    .line 1585
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/twitter/android/businessprofiles/e;-><init>(Landroid/view/ViewGroup;Landroid/app/Activity;Lcom/twitter/model/businessprofiles/m;Lcom/twitter/model/core/TwitterUser;J)V

    .line 1586
    invoke-virtual {v1}, Lcom/twitter/android/businessprofiles/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1587
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aw:Lcom/twitter/android/profiles/y;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/y;->e()V

    .line 1591
    :cond_1
    if-nez v11, :cond_2

    .line 1592
    new-instance v0, Lcom/twitter/android/businessprofiles/g;

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->aW:Lcom/twitter/model/businessprofiles/m;

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->aV:Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-direct {v0, v1, p0, v2}, Lcom/twitter/android/businessprofiles/g;-><init>(Lcom/twitter/model/businessprofiles/m;Landroid/content/Context;Lcom/twitter/ui/widget/TypefacesTextView;)V

    .line 1594
    invoke-virtual {v0}, Lcom/twitter/android/businessprofiles/g;->a()V

    .line 1601
    :cond_2
    :goto_6
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->az:Lcom/twitter/android/ProfileActivity$DisplayState;

    sget-object v1, Lcom/twitter/android/ProfileActivity$DisplayState;->b:Lcom/twitter/android/ProfileActivity$DisplayState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->az:Lcom/twitter/android/ProfileActivity$DisplayState;

    sget-object v1, Lcom/twitter/android/ProfileActivity$DisplayState;->c:Lcom/twitter/android/ProfileActivity$DisplayState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->az:Lcom/twitter/android/ProfileActivity$DisplayState;

    sget-object v1, Lcom/twitter/android/ProfileActivity$DisplayState;->f:Lcom/twitter/android/ProfileActivity$DisplayState;

    if-ne v0, v1, :cond_d

    .line 1604
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aA:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1605
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aB:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1606
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aw:Lcom/twitter/android/profiles/y;

    iget v1, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    invoke-virtual {v0, v1}, Lcom/twitter/android/profiles/y;->b(I)V

    .line 1611
    :goto_7
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->az:Lcom/twitter/android/ProfileActivity$DisplayState;

    sget-object v1, Lcom/twitter/android/ProfileActivity$DisplayState;->b:Lcom/twitter/android/ProfileActivity$DisplayState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->az:Lcom/twitter/android/ProfileActivity$DisplayState;

    sget-object v1, Lcom/twitter/android/ProfileActivity$DisplayState;->c:Lcom/twitter/android/ProfileActivity$DisplayState;

    if-ne v0, v1, :cond_e

    .line 1613
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->R:Lcom/twitter/android/widget/TweetStatView;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/TweetStatView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1614
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->Q:Lcom/twitter/android/widget/TweetStatView;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/TweetStatView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1619
    :goto_8
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->az:Lcom/twitter/android/ProfileActivity$DisplayState;

    sget-object v1, Lcom/twitter/android/ProfileActivity$DisplayState;->e:Lcom/twitter/android/ProfileActivity$DisplayState;

    if-ne v0, v1, :cond_f

    .line 1620
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aH:Lcom/twitter/android/profiles/f;

    if-eqz v0, :cond_5

    .line 1621
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aH:Lcom/twitter/android/profiles/f;

    invoke-interface {v0}, Lcom/twitter/android/profiles/f;->a()V

    .line 1623
    :cond_5
    invoke-virtual {p0, v8}, Lcom/twitter/android/ProfileActivity;->b(Z)V

    .line 1624
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, "blocker_interstitial:::impression"

    invoke-direct {p0, v1}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->a([Ljava/lang/String;)V

    .line 1629
    :goto_9
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->ak()V

    .line 1630
    iput-boolean v8, p0, Lcom/twitter/android/ProfileActivity;->aM:Z

    .line 1632
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->az:Lcom/twitter/android/ProfileActivity$DisplayState;

    sget-object v1, Lcom/twitter/android/ProfileActivity$DisplayState;->d:Lcom/twitter/android/ProfileActivity$DisplayState;

    if-ne v0, v1, :cond_6

    .line 1633
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aw:Lcom/twitter/android/profiles/y;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/y;->c()V

    .line 1634
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->M()Lcom/twitter/android/client/SearchSuggestionController;

    move-result-object v0

    const-string/jumbo v1, "blocked_profile"

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/SearchSuggestionController;->a(Ljava/lang/String;)Lcom/twitter/android/client/SearchSuggestionController;

    .line 1635
    iget-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->ax:Z

    if-eqz v0, :cond_6

    .line 1636
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, "blocked_profile:profile:::impression"

    aput-object v1, v0, v9

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->a([Ljava/lang/String;)V

    .line 1637
    iput-boolean v9, p0, Lcom/twitter/android/ProfileActivity;->ax:Z

    .line 1640
    :cond_6
    return-void

    :cond_7
    move v0, v9

    .line 1539
    goto/16 :goto_0

    :cond_8
    move v1, v10

    .line 1540
    goto/16 :goto_1

    :cond_9
    move v1, v9

    .line 1542
    goto/16 :goto_2

    :cond_a
    move v0, v10

    .line 1543
    goto/16 :goto_3

    :cond_b
    move v0, v9

    .line 1579
    goto/16 :goto_5

    .line 1597
    :cond_c
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aU:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1598
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aV:Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-virtual {v0, v10}, Lcom/twitter/ui/widget/TypefacesTextView;->setVisibility(I)V

    .line 1599
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->at:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_6

    .line 1608
    :cond_d
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aA:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1609
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aB:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 1616
    :cond_e
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->R:Lcom/twitter/android/widget/TweetStatView;

    invoke-virtual {v0, v13}, Lcom/twitter/android/widget/TweetStatView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1617
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->Q:Lcom/twitter/android/widget/TweetStatView;

    invoke-virtual {v0, v13}, Lcom/twitter/android/widget/TweetStatView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    .line 1626
    :cond_f
    invoke-virtual {p0, v9}, Lcom/twitter/android/ProfileActivity;->b(Z)V

    goto :goto_9

    :cond_10
    move v11, v9

    goto/16 :goto_4
.end method

.method private ak()V
    .locals 2

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->az:Lcom/twitter/android/ProfileActivity$DisplayState;

    sget-object v1, Lcom/twitter/android/ProfileActivity$DisplayState;->e:Lcom/twitter/android/ProfileActivity$DisplayState;

    if-ne v0, v1, :cond_0

    .line 1644
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileActivity;->h(Z)V

    .line 1648
    :goto_0
    return-void

    .line 1646
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileActivity;->h(Z)V

    goto :goto_0
.end method

.method private al()V
    .locals 4

    .prologue
    .line 1724
    iget-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->C:Z

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    invoke-static {v0, v1}, Lcom/twitter/android/profiles/as;->a(ZLcom/twitter/model/core/TwitterUser;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1725
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->ap:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 1726
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->X:Landroid/widget/LinearLayout;

    const v1, 0x7f13063e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->ap:Landroid/widget/ListView;

    .line 1728
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->ap:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1731
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->ao:Lcom/twitter/android/qg;

    if-nez v0, :cond_1

    .line 1732
    new-instance v0, Lcom/twitter/app/users/q;

    invoke-direct {v0}, Lcom/twitter/app/users/q;-><init>()V

    const/16 v1, 0x12

    .line 1733
    invoke-virtual {v0, v1}, Lcom/twitter/app/users/q;->a(I)Lcom/twitter/app/users/q;

    move-result-object v0

    .line 1734
    invoke-virtual {v0, p0}, Lcom/twitter/app/users/q;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1735
    new-instance v1, Lcom/twitter/android/qh;

    const v2, 0x7f0a03bb

    .line 1736
    invoke-virtual {p0, v2}, Lcom/twitter/android/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/twitter/android/qh;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 1735
    invoke-static {v1}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1737
    invoke-static {}, Lcom/twitter/util/ak;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f040339

    move v1, v0

    .line 1739
    :goto_0
    new-instance v3, Lcom/twitter/android/qg;

    .line 1740
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/twitter/android/qh;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/android/qh;

    invoke-direct {v3, v0, v1}, Lcom/twitter/android/qg;-><init>([Lcom/twitter/android/qh;I)V

    iput-object v3, p0, Lcom/twitter/android/ProfileActivity;->ao:Lcom/twitter/android/qg;

    .line 1742
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->ap:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->ao:Lcom/twitter/android/qg;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1746
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aY:Lanf;

    if-nez v0, :cond_2

    .line 1747
    new-instance v0, Lanf;

    new-instance v1, Lank;

    new-instance v2, Lazn;

    .line 1748
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lazn;-><init>(Landroid/content/ContentResolver;)V

    invoke-direct {v1, v2}, Lank;-><init>(Lazt;)V

    invoke-direct {v0, v1}, Lanf;-><init>(Lane;)V

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->aY:Lanf;

    .line 1750
    :cond_2
    new-instance v0, Lcom/twitter/android/ml;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/ml;-><init>(Lcom/twitter/android/ProfileActivity;Lcom/twitter/android/mc;)V

    .line 1751
    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->aY:Lanf;

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    iget-wide v2, v2, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-virtual {v1, v2, v3}, Lanf;->a(J)Lrx/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    .line 1753
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->am()V

    .line 1756
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aq:Landroid/widget/LinearLayout;

    if-nez v0, :cond_4

    .line 1757
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->X:Landroid/widget/LinearLayout;

    const v1, 0x7f130635

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->aq:Landroid/widget/LinearLayout;

    .line 1760
    :cond_4
    return-void

    .line 1737
    :cond_5
    const v0, 0x7f0402bb

    move v1, v0

    goto :goto_0
.end method

.method private am()V
    .locals 3

    .prologue
    .line 1763
    iget v0, p0, Lcom/twitter/android/ProfileActivity;->ar:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    .line 1764
    new-instance v0, Lbuo;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lbuo;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;I)V

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ProfileActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 1765
    iget v0, p0, Lcom/twitter/android/ProfileActivity;->ar:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/twitter/android/ProfileActivity;->ar:I

    .line 1767
    :cond_0
    return-void
.end method

.method private an()V
    .locals 6

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 1771
    iget v1, p0, Lcom/twitter/android/ProfileActivity;->ar:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->aI:Lcom/twitter/android/profiles/ao;

    const/4 v2, 0x0

    .line 1773
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcom/twitter/android/profiles/as;->a(Landroid/content/Context;J)Z

    move-result v3

    .line 1772
    invoke-static {v1, v2, v3}, Lcom/twitter/android/profiles/as;->a(Lcom/twitter/android/profiles/ao;ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1774
    new-instance v1, Lbuj;

    invoke-direct {v1, p0, v0}, Lbuj;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aI:Lcom/twitter/android/profiles/ao;

    .line 1776
    invoke-virtual {v0}, Lcom/twitter/android/profiles/ao;->e()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lbuj;->a(J)Lbuj;

    move-result-object v0

    .line 1777
    iget v1, p0, Lcom/twitter/android/ProfileActivity;->ar:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/twitter/android/ProfileActivity;->ar:I

    .line 1778
    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ProfileActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 1780
    :cond_0
    return-void
.end method

.method private ao()V
    .locals 7

    .prologue
    .line 1792
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->h()Lcom/twitter/android/profiles/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/profiles/ao;->a()Lcom/twitter/model/core/TwitterUser;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/ProfileActivity;->af:Lcss;

    .line 1793
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    const/4 v6, 0x7

    move-object v1, p0

    .line 1792
    invoke-static/range {v1 .. v6}, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->a(Landroid/app/Activity;Lcom/twitter/model/core/TwitterUser;Lcss;JI)V

    .line 1794
    return-void
.end method

.method private ap()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 1799
    iget-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->C:Z

    invoke-static {v0}, Lcom/twitter/android/profilecompletionmodule/u;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1800
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/ProfileActivity;->A:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "profile"

    aput-object v2, v1, v5

    const-string/jumbo v2, "edit_profile_flow"

    aput-object v2, v1, v6

    const/4 v2, 0x0

    aput-object v2, v1, v7

    const-string/jumbo v2, "header"

    aput-object v2, v1, v8

    const-string/jumbo v2, "launch"

    aput-object v2, v1, v4

    .line 1801
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1800
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1802
    const-string/jumbo v0, "profile"

    invoke-static {p0, v0}, Lcom/twitter/android/profilecompletionmodule/ProfileCompletionFlowActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1809
    :goto_0
    invoke-virtual {p0, v0, v4}, Lcom/twitter/android/ProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1810
    return-void

    .line 1804
    :cond_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/ProfileActivity;->A:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "profile"

    aput-object v2, v1, v5

    const-string/jumbo v2, "edit_profile"

    aput-object v2, v1, v6

    const/4 v2, 0x0

    aput-object v2, v1, v7

    const-string/jumbo v2, "header"

    aput-object v2, v1, v8

    const-string/jumbo v2, "launch"

    aput-object v2, v1, v4

    .line 1805
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1804
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1806
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/twitter/android/avatars/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/twitter/android/EditProfileWithAvatarDrawerActivity;

    :goto_1
    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-class v0, Lcom/twitter/android/EditProfileActivity;

    goto :goto_1
.end method

.method private aq()V
    .locals 3

    .prologue
    .line 1813
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    const/4 v1, 0x5

    .line 1814
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-boolean v1, p0, Lcom/twitter/android/ProfileActivity;->C:Z

    .line 1815
    invoke-static {v1}, Lcom/twitter/android/profiles/as;->a(Z)Ljava/lang/String;

    move-result-object v1

    .line 1814
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 1817
    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->M:Lcom/twitter/android/profiles/ProfileDetailsViewManager;

    new-instance v2, Lcom/twitter/android/widget/do;

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/widget/do;-><init>(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    invoke-virtual {v1, v2}, Lcom/twitter/android/profiles/ProfileDetailsViewManager;->a(Lcom/twitter/library/view/m;)V

    .line 1818
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->M:Lcom/twitter/android/profiles/ProfileDetailsViewManager;

    new-instance v1, Lcom/twitter/android/mf;

    invoke-direct {v1, p0}, Lcom/twitter/android/mf;-><init>(Lcom/twitter/android/ProfileActivity;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/profiles/ProfileDetailsViewManager;->a(Landroid/view/View$OnClickListener;)Lcom/twitter/android/profiles/ProfileDetailsViewManager;

    .line 1824
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->M:Lcom/twitter/android/profiles/ProfileDetailsViewManager;

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->aI:Lcom/twitter/android/profiles/ao;

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/twitter/android/profiles/ProfileDetailsViewManager;->a(Lcom/twitter/android/profiles/ao;Ljava/lang/String;Landroid/content/Context;)V

    .line 1825
    return-void
.end method

.method private ar()Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1909
    new-instance v0, Lcom/twitter/app/users/q;

    invoke-direct {v0}, Lcom/twitter/app/users/q;-><init>()V

    iget-wide v2, p0, Lcom/twitter/android/ProfileActivity;->A:J

    .line 1910
    invoke-virtual {v0, v2, v3}, Lcom/twitter/app/users/q;->a(J)Lcom/twitter/app/users/q;

    move-result-object v0

    const/4 v1, 0x0

    .line 1911
    invoke-virtual {v0, v1}, Lcom/twitter/app/users/q;->a(I)Lcom/twitter/app/users/q;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    iget-object v1, v1, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    .line 1912
    invoke-virtual {v0, v1}, Lcom/twitter/app/users/q;->d(Ljava/lang/String;)Lcom/twitter/app/users/q;

    move-result-object v0

    .line 1913
    invoke-virtual {v0, v4}, Lcom/twitter/app/users/q;->c(Z)Lcom/twitter/app/users/q;

    move-result-object v0

    .line 1914
    invoke-virtual {v0, v4}, Lcom/twitter/app/users/q;->a(Z)Lcom/twitter/app/users/q;

    move-result-object v0

    .line 1915
    invoke-virtual {v0, p0}, Lcom/twitter/app/users/q;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1909
    return-object v0
.end method

.method private as()V
    .locals 3

    .prologue
    .line 1969
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, ":user:mute_dialog:mute_user"

    invoke-direct {p0, v2}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->a([Ljava/lang/String;)V

    .line 1970
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aJ:Lcom/twitter/android/profiles/s;

    invoke-interface {v0}, Lcom/twitter/android/profiles/s;->a()V

    .line 1971
    return-void
.end method

.method private at()V
    .locals 4

    .prologue
    .line 2147
    new-instance v0, Lbty;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lbty;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    iget-wide v2, p0, Lcom/twitter/android/ProfileActivity;->A:J

    .line 2148
    invoke-virtual {v0, v2, v3}, Lbty;->a(J)Lbty;

    move-result-object v0

    const/4 v1, 0x3

    .line 2147
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ProfileActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 2149
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->o(I)V

    .line 2150
    return-void
.end method

.method private au()V
    .locals 7

    .prologue
    .line 2154
    iget v0, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    invoke-static {v0}, Lcom/twitter/model/core/p;->c(I)Z

    move-result v0

    .line 2155
    iget v1, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    invoke-static {v1}, Lcom/twitter/model/core/p;->a(I)Z

    move-result v1

    .line 2156
    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    iget-boolean v2, v2, Lcom/twitter/model/core/TwitterUser;->m:Z

    if-eqz v2, :cond_2

    .line 2157
    const/16 v2, 0x4000

    invoke-direct {p0, v2}, Lcom/twitter/android/ProfileActivity;->n(I)V

    .line 2161
    :goto_0
    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/twitter/android/ProfileActivity;->ad:Z

    if-eqz v1, :cond_0

    .line 2162
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/twitter/android/ProfileActivity;->r(I)V

    .line 2164
    :cond_0
    new-instance v1, Lbtz;

    .line 2165
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-wide v4, p0, Lcom/twitter/android/ProfileActivity;->A:J

    iget-object v6, p0, Lcom/twitter/android/ProfileActivity;->af:Lcss;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lbtz;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V

    const/4 v2, 0x0

    .line 2166
    invoke-virtual {v1, v2}, Lbtz;->a(Z)Lbtz;

    move-result-object v1

    const/4 v2, -0x1

    .line 2167
    invoke-virtual {v1, v2}, Lbtz;->a(I)Lbtz;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    iget-boolean v2, v2, Lcom/twitter/model/core/TwitterUser;->m:Z

    .line 2168
    invoke-virtual {v1, v2}, Lbtz;->e(Z)Lbtz;

    move-result-object v1

    .line 2169
    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Lcom/twitter/android/ProfileActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 2170
    const-string/jumbo v1, "profile::user:follow"

    invoke-direct {p0, v1}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/twitter/android/ProfileActivity;->c(Ljava/lang/String;)V

    .line 2171
    if-eqz v0, :cond_1

    .line 2172
    const-string/jumbo v0, "profile::user:follow_back"

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->c(Ljava/lang/String;)V

    .line 2174
    :cond_1
    return-void

    .line 2159
    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/twitter/android/ProfileActivity;->n(I)V

    goto :goto_0
.end method

.method private av()V
    .locals 1

    .prologue
    .line 2178
    const-string/jumbo v0, "profile::user:unfollow"

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->c(Ljava/lang/String;)V

    .line 2179
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->aw()V

    .line 2180
    return-void
.end method

.method private aw()V
    .locals 7

    .prologue
    .line 2183
    iget-object v6, p0, Lcom/twitter/android/ProfileActivity;->af:Lcss;

    .line 2184
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->o(I)V

    .line 2185
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->ae:Lcom/twitter/library/util/FriendshipCache;

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    iget-wide v2, v1, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/util/FriendshipCache;->c(J)V

    .line 2186
    new-instance v1, Lbuc;

    .line 2187
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-wide v4, p0, Lcom/twitter/android/ProfileActivity;->A:J

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lbuc;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V

    const/4 v0, -0x1

    .line 2188
    invoke-virtual {v1, v0}, Lbuc;->a(I)Lbuc;

    move-result-object v0

    .line 2189
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ProfileActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 2190
    return-void
.end method

.method private ax()V
    .locals 1

    .prologue
    .line 2194
    const-string/jumbo v0, ":user:block_dialog:block"

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->c(Ljava/lang/String;)V

    .line 2195
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->ay()V

    .line 2196
    return-void
.end method

.method private ay()V
    .locals 8

    .prologue
    .line 2199
    new-instance v1, Lbrc;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-wide v4, p0, Lcom/twitter/android/ProfileActivity;->A:J

    iget-object v6, p0, Lcom/twitter/android/ProfileActivity;->af:Lcss;

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lbrc;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;I)V

    .line 2201
    const/4 v0, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/ProfileActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 2202
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->n(I)V

    .line 2203
    return-void
.end method

.method private az()V
    .locals 1

    .prologue
    .line 2220
    const/16 v0, 0x810

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->o(I)V

    .line 2221
    const-string/jumbo v0, "profile::user:device_unfollow"

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->c(Ljava/lang/String;)V

    .line 2222
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->g(Z)V

    .line 2223
    return-void
.end method

.method private b(Landroid/net/Uri;)I
    .locals 2

    .prologue
    .line 1042
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1043
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ax;

    iget-object v0, v0, Lcom/twitter/library/client/ax;->a:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    :goto_1
    return v1

    .line 1042
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1047
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;JLjava/lang/String;Lcss;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/model/timeline/al;)Landroid/content/Intent;
    .locals 11

    .prologue
    .line 403
    const/4 v7, -0x1

    sget-object v8, Lcom/twitter/library/api/PromotedEvent;->c:Lcom/twitter/library/api/PromotedEvent;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p6

    invoke-static/range {v1 .. v9}, Lcom/twitter/android/ProfileActivity;->a(Landroid/content/Context;JLjava/lang/String;Lcss;Lcom/twitter/library/scribe/TwitterScribeAssociation;ILcom/twitter/library/api/PromotedEvent;Lcom/twitter/model/timeline/al;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/ProfileActivity;)Lcom/twitter/android/composer/ComposerDockLayout;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->G:Lcom/twitter/android/composer/ComposerDockLayout;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1974
    iget-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->C:Z

    iget v1, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    invoke-static {v0, v1}, Lcom/twitter/android/profiles/as;->a(ZI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/twitter/android/ProfileActivity;->C:Z

    invoke-static {v1}, Lcom/twitter/android/profiles/as;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1980
    :goto_0
    return-object v0

    .line 1977
    :cond_0
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "blocked_profile:profile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1980
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "blocked_profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 1664
    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->N:Lcom/twitter/android/profiles/HeaderImageView;

    const v1, 0x7f0a0422

    invoke-virtual {p0, v1}, Lcom/twitter/android/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/profiles/HeaderImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1665
    invoke-virtual {p0, p1}, Lcom/twitter/android/ProfileActivity;->a(Landroid/graphics/Bitmap;)V

    .line 1666
    iget-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->ak:Z

    if-nez v0, :cond_1

    .line 1667
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->al:Lcom/twitter/android/ns;

    if-eqz v0, :cond_0

    .line 1668
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->al:Lcom/twitter/android/ns;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/ns;->cancel(Z)Z

    .line 1670
    :cond_0
    new-instance v0, Lcom/twitter/android/ns;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/ns;-><init>(Lcom/twitter/android/ScrollingHeaderActivity;Z)V

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->al:Lcom/twitter/android/ns;

    .line 1671
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->al:Lcom/twitter/android/ns;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/android/ns;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1676
    :cond_1
    :goto_0
    return-void

    .line 1673
    :catch_0
    move-exception v0

    .line 1674
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->z:Lcom/twitter/android/nz;

    invoke-interface {v0}, Lcom/twitter/android/nz;->b()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 1919
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1921
    const-string/jumbo v0, "_normal."

    const-string/jumbo v1, "."

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1922
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/ImageActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1923
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcom/twitter/android/ProfileActivity;->B:Ljava/lang/String;

    .line 1924
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "image_url"

    .line 1925
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1927
    iget-boolean v1, p0, Lcom/twitter/android/ProfileActivity;->C:Z

    if-eqz v1, :cond_1

    .line 1928
    const-string/jumbo v1, "action_label_resid"

    const v2, 0x7f0a0345

    .line 1929
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "action_return_intent"

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "place"

    .line 1931
    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 1930
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1932
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1937
    :cond_0
    :goto_0
    return-void

    .line 1934
    :cond_1
    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/twitter/android/ProfileActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/content/res/Resources;)Lcom/twitter/library/media/widget/UserImageView;
    .locals 2

    .prologue
    .line 845
    new-instance v0, Lcom/twitter/library/media/widget/UserImageView;

    invoke-direct {v0, p0}, Lcom/twitter/library/media/widget/UserImageView;-><init>(Landroid/content/Context;)V

    .line 846
    const v1, 0x7f1302fb

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->setId(I)V

    .line 847
    invoke-static {p1, v0}, Lcom/twitter/android/profiles/as;->a(Landroid/content/res/Resources;Lcom/twitter/library/media/widget/UserImageView;)V

    .line 848
    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 1986
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/ProfileActivity;->A:J

    iget-object v4, p0, Lcom/twitter/android/ProfileActivity;->aI:Lcom/twitter/android/profiles/ao;

    iget-object v5, p0, Lcom/twitter/android/ProfileActivity;->af:Lcss;

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    .line 1987
    invoke-static {v1}, Lcom/twitter/android/profiles/as;->b(Lcom/twitter/model/core/TwitterUser;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/twitter/android/ProfileActivity;->am:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/twitter/android/ProfileActivity;->an:Lcom/twitter/model/timeline/al;

    move-object v1, p1

    .line 1986
    invoke-static/range {v0 .. v9}, Lcom/twitter/android/profiles/as;->a(Lcom/twitter/library/client/Session;Ljava/lang/String;JLcom/twitter/android/profiles/ao;Lcss;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeItem;Lcom/twitter/model/timeline/al;)V

    .line 1988
    return-void
.end method

.method private c(Z)V
    .locals 3

    .prologue
    .line 697
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    if-nez v0, :cond_2

    .line 698
    sget-object v0, Lcom/twitter/android/ProfileActivity$DisplayState;->a:Lcom/twitter/android/ProfileActivity$DisplayState;

    .line 712
    :goto_0
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->az:Lcom/twitter/android/ProfileActivity$DisplayState;

    if-eq v1, v0, :cond_1

    .line 713
    :cond_0
    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->a(Lcom/twitter/android/ProfileActivity$DisplayState;)V

    .line 715
    :cond_1
    return-void

    .line 699
    :cond_2
    iget-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->C:Z

    iget v1, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    invoke-static {v0, v1}, Lcom/twitter/android/profiles/as;->a(ZI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 700
    sget-object v0, Lcom/twitter/android/ProfileActivity$DisplayState;->d:Lcom/twitter/android/ProfileActivity$DisplayState;

    goto :goto_0

    .line 701
    :cond_3
    iget-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->C:Z

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    iget v2, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    invoke-static {v0, v1, v2}, Lcom/twitter/android/profiles/as;->a(ZLcom/twitter/model/core/TwitterUser;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 702
    sget-object v0, Lcom/twitter/android/ProfileActivity$DisplayState;->f:Lcom/twitter/android/ProfileActivity$DisplayState;

    goto :goto_0

    .line 703
    :cond_4
    iget-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->C:Z

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    iget v2, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    invoke-static {v0, v1, v2}, Lcom/twitter/android/profiles/as;->b(ZLcom/twitter/model/core/TwitterUser;I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->ay:Z

    if-nez v0, :cond_5

    .line 705
    sget-object v0, Lcom/twitter/android/ProfileActivity$DisplayState;->e:Lcom/twitter/android/ProfileActivity$DisplayState;

    goto :goto_0

    .line 706
    :cond_5
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->aW:Lcom/twitter/model/businessprofiles/m;

    invoke-static {v0, v1}, Lbyi;->b(Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/businessprofiles/m;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 707
    sget-object v0, Lcom/twitter/android/ProfileActivity$DisplayState;->c:Lcom/twitter/android/ProfileActivity$DisplayState;

    goto :goto_0

    .line 709
    :cond_6
    sget-object v0, Lcom/twitter/android/ProfileActivity$DisplayState;->b:Lcom/twitter/android/ProfileActivity$DisplayState;

    goto :goto_0
.end method

.method static synthetic d(Lcom/twitter/android/ProfileActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/twitter/model/core/TwitterUser;)V
    .locals 2

    .prologue
    .line 870
    iget v0, p1, Lcom/twitter/model/core/TwitterUser;->j:I

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aX:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 872
    iget v1, p1, Lcom/twitter/model/core/TwitterUser;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 873
    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->aX:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aX:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 876
    return-void
.end method

.method private d(Z)V
    .locals 3

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->Z:Z

    if-eqz v0, :cond_1

    .line 1491
    :cond_0
    :goto_0
    return-void

    .line 1484
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aI:Lcom/twitter/android/profiles/ao;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/ao;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1485
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->N:Lcom/twitter/android/profiles/HeaderImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/twitter/android/ProfileActivity;->b(Landroid/content/res/Resources;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/profiles/HeaderImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1490
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->Z:Z

    goto :goto_0

    .line 1487
    :cond_2
    invoke-direct {p0, p1}, Lcom/twitter/android/ProfileActivity;->e(Z)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/twitter/android/ProfileActivity;)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->aC()V

    return-void
.end method

.method private e(Z)V
    .locals 5

    .prologue
    .line 1494
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1495
    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileActivity;->b(Landroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/ProfileActivity;->s:I

    .line 1496
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/twitter/android/ProfileActivity;->s:I

    iget v1, p0, Lcom/twitter/android/ProfileActivity;->Y:I

    if-eq v0, v1, :cond_0

    .line 1498
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->z:Lcom/twitter/android/nz;

    invoke-interface {v0}, Lcom/twitter/android/nz;->b()V

    .line 1500
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget v4, p0, Lcom/twitter/android/ProfileActivity;->Y:I

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget v4, p0, Lcom/twitter/android/ProfileActivity;->s:I

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1505
    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->N:Lcom/twitter/android/profiles/HeaderImageView;

    invoke-virtual {v1, v0}, Lcom/twitter/android/profiles/HeaderImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1506
    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1512
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->av:Lcom/twitter/android/mn;

    new-instance v1, Lcom/twitter/android/me;

    invoke-direct {v1, p0}, Lcom/twitter/android/me;-><init>(Lcom/twitter/android/ProfileActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/mn;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1522
    :goto_0
    return-void

    .line 1519
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->z:Lcom/twitter/android/nz;

    invoke-interface {v0}, Lcom/twitter/android/nz;->a()V

    .line 1520
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->N:Lcom/twitter/android/profiles/HeaderImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lcom/twitter/android/ProfileActivity;->s:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/profiles/HeaderImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/twitter/android/ProfileActivity;)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->ah()V

    return-void
.end method

.method private f(Z)V
    .locals 2

    .prologue
    .line 1962
    iget v0, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    invoke-static {v0}, Lcom/twitter/android/profiles/as;->a(I)I

    move-result v0

    .line 1964
    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->aN:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1965
    return-void
.end method

.method static synthetic g(Lcom/twitter/android/ProfileActivity;)Lcom/twitter/android/metrics/d;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aC:Lcom/twitter/android/metrics/d;

    return-object v0
.end method

.method private g(Z)V
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/4 v0, 0x1

    .line 2206
    invoke-static {}, Lcba;->a()Z

    move-result v1

    .line 2207
    if-eqz v1, :cond_1

    .line 2208
    if-eqz p1, :cond_0

    .line 2210
    :goto_0
    new-instance v1, Lbvb;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    iget-object v4, p0, Lcom/twitter/android/ProfileActivity;->af:Lcss;

    invoke-direct {v1, p0, v2, v3, v4}, Lbvb;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/core/TwitterUser;Lcss;)V

    .line 2211
    invoke-virtual {v1, v0, p1}, Lbvb;->a(IZ)Lbvb;

    move-result-object v0

    .line 2210
    invoke-virtual {p0, v0, v5}, Lcom/twitter/android/ProfileActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 2216
    :goto_1
    return-void

    .line 2208
    :cond_0
    const/16 v0, 0x10

    goto :goto_0

    .line 2213
    :cond_1
    new-instance v1, Lbvb;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lbvb;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/core/TwitterUser;Lcss;)V

    .line 2214
    invoke-virtual {v1, v0, p1}, Lbvb;->a(IZ)Lbvb;

    move-result-object v0

    .line 2213
    invoke-virtual {p0, v0, v5}, Lcom/twitter/android/ProfileActivity;->b(Lcom/twitter/library/service/x;I)Z

    goto :goto_1
.end method

.method static synthetic h(Lcom/twitter/android/ProfileActivity;)Lcom/twitter/android/qg;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->ao:Lcom/twitter/android/qg;

    return-object v0
.end method

.method static synthetic i(Lcom/twitter/android/ProfileActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->ap:Landroid/widget/ListView;

    return-object v0
.end method

.method private i(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2420
    if-eqz p1, :cond_0

    .line 2421
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->ah:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "profile_device_follow_dialog_shown"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2422
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->q(I)V

    .line 2423
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->ah:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "profile_device_follow_dialog_shown"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2424
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2432
    :cond_0
    :goto_0
    return-void

    .line 2426
    :cond_1
    const v0, 0x7f0a0951

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    .line 2427
    invoke-virtual {v2}, Lcom/twitter/model/core/TwitterUser;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ProfileActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2426
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2429
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic j(Lcom/twitter/android/ProfileActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->as:Landroid/view/View;

    return-object v0
.end method

.method private j(Z)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2573
    new-instance v0, Lcom/twitter/android/profiles/b;

    invoke-direct {v0}, Lcom/twitter/android/profiles/b;-><init>()V

    iget-object v4, p0, Lcom/twitter/android/ProfileActivity;->aI:Lcom/twitter/android/profiles/ao;

    .line 2574
    invoke-virtual {v0, v4}, Lcom/twitter/android/profiles/b;->a(Lcom/twitter/android/profiles/ao;)Lcom/twitter/android/profiles/c;

    move-result-object v5

    .line 2575
    if-eqz v5, :cond_7

    move v0, v1

    .line 2576
    :goto_0
    iget v4, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    invoke-static {v4}, Lcom/twitter/model/core/p;->e(I)Z

    move-result v4

    .line 2577
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->aB()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v0, :cond_6

    .line 2578
    :cond_0
    invoke-static {}, Lbug;->a()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2579
    invoke-static {}, Lbug;->b()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2580
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->hasWindowFocus()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/twitter/android/ProfileActivity;->aR:Z

    if-eqz v6, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    if-eqz p1, :cond_6

    .line 2582
    :cond_2
    if-eqz p1, :cond_3

    .line 2583
    new-array v4, v1, [Ljava/lang/String;

    const-string/jumbo v6, "::birthday:click"

    invoke-direct {p0, v6}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-direct {p0, v4}, Lcom/twitter/android/ProfileActivity;->a([Ljava/lang/String;)V

    .line 2585
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v4

    const v6, 0x7f13003d

    invoke-virtual {v4, v6}, Lcom/twitter/internal/android/widget/ToolBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 2586
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v4

    const v7, 0x7f130052

    invoke-virtual {v4, v7}, Lcom/twitter/internal/android/widget/ToolBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 2587
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v7

    const v8, 0x7f1307cc

    invoke-virtual {v7, v8}, Lcom/twitter/internal/android/widget/ToolBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v4

    .line 2589
    iget-object v4, p0, Lcom/twitter/android/ProfileActivity;->aQ:Lcom/twitter/android/profiles/animation/BalloonSetAnimationView;

    iget-object v8, p0, Lcom/twitter/android/ProfileActivity;->aI:Lcom/twitter/android/profiles/ao;

    invoke-virtual {v4, v8}, Lcom/twitter/android/profiles/animation/BalloonSetAnimationView;->setProfileUser(Lcom/twitter/android/profiles/ao;)V

    .line 2590
    iget-object v4, p0, Lcom/twitter/android/ProfileActivity;->aQ:Lcom/twitter/android/profiles/animation/BalloonSetAnimationView;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v8

    invoke-virtual {v8}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/twitter/android/profiles/animation/BalloonSetAnimationView;->setUserId(J)V

    .line 2592
    iget-object v8, p0, Lcom/twitter/android/ProfileActivity;->aQ:Lcom/twitter/android/profiles/animation/BalloonSetAnimationView;

    if-eqz v5, :cond_8

    iget-object v4, v5, Lcom/twitter/android/profiles/c;->b:[Ljava/lang/String;

    :goto_1
    if-eqz v5, :cond_4

    iget-object v3, v5, Lcom/twitter/android/profiles/c;->c:[I

    :cond_4
    invoke-virtual {v8, v6, v7, v4, v3}, Lcom/twitter/android/profiles/animation/BalloonSetAnimationView;->a(II[Ljava/lang/String;[I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2595
    new-array v1, v1, [Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string/jumbo v0, "::balloon_override:play"

    :goto_2
    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, Lcom/twitter/android/ProfileActivity;->a([Ljava/lang/String;)V

    .line 2598
    :cond_5
    iput-boolean v2, p0, Lcom/twitter/android/ProfileActivity;->aR:Z

    .line 2600
    :cond_6
    return-void

    :cond_7
    move v0, v2

    .line 2575
    goto/16 :goto_0

    :cond_8
    move-object v4, v3

    .line 2592
    goto :goto_1

    .line 2595
    :cond_9
    const-string/jumbo v0, "::birthday:play"

    goto :goto_2
.end method

.method private m(I)Lcom/twitter/library/client/ax;
    .locals 1

    .prologue
    .line 1030
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ax;

    .line 1033
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n(I)V
    .locals 1

    .prologue
    .line 1861
    iget v0, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    invoke-static {v0, p1}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->p(I)V

    .line 1862
    return-void
.end method

.method private o(I)V
    .locals 1

    .prologue
    .line 1865
    iget v0, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    invoke-static {v0, p1}, Lcom/twitter/model/core/p;->b(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->p(I)V

    .line 1866
    return-void
.end method

.method private p(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1869
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aw:Lcom/twitter/android/profiles/y;

    invoke-virtual {v0, p1}, Lcom/twitter/android/profiles/y;->a(I)V

    .line 1870
    iput p1, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    .line 1871
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->a(Lcom/twitter/internal/android/widget/ToolBar;)V

    .line 1872
    invoke-direct {p0, v1}, Lcom/twitter/android/ProfileActivity;->f(Z)V

    .line 1873
    invoke-direct {p0, v1}, Lcom/twitter/android/ProfileActivity;->c(Z)V

    .line 1874
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aI:Lcom/twitter/android/profiles/ao;

    iget v1, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    invoke-virtual {v0, v1}, Lcom/twitter/android/profiles/ao;->a(I)V

    .line 1876
    invoke-static {}, Lcba;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aw:Lcom/twitter/android/profiles/y;

    .line 1877
    invoke-virtual {v0}, Lcom/twitter/android/profiles/y;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aK:Laqp;

    .line 1878
    invoke-interface {v0}, Laqp;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1879
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aK:Laqp;

    invoke-interface {v0}, Laqp;->b()V

    .line 1881
    :cond_0
    return-void
.end method

.method private q(I)V
    .locals 2

    .prologue
    .line 1995
    invoke-direct {p0, p1}, Lcom/twitter/android/ProfileActivity;->s(I)Lcom/twitter/android/widget/PromptDialogFragment;

    move-result-object v0

    .line 1996
    if-eqz v0, :cond_0

    .line 1997
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/PromptDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 1999
    :cond_0
    return-void
.end method

.method private r(I)V
    .locals 3

    .prologue
    .line 2002
    invoke-direct {p0, p1}, Lcom/twitter/android/ProfileActivity;->s(I)Lcom/twitter/android/widget/PromptDialogFragment;

    move-result-object v0

    .line 2003
    if-eqz v0, :cond_0

    .line 2006
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/twitter/android/mg;

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/mg;-><init>(Lcom/twitter/android/ProfileActivity;Lcom/twitter/android/widget/PromptDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2013
    :cond_0
    return-void
.end method

.method private s(I)Lcom/twitter/android/widget/PromptDialogFragment;
    .locals 11

    .prologue
    const v3, 0x7f0a03b7

    const v1, 0x7f0a00fd

    const v5, 0x7f0a05e4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2018
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    if-nez v0, :cond_0

    .line 2019
    const/4 v0, 0x0

    .line 2135
    :goto_0
    return-object v0

    .line 2022
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 2025
    const v4, 0x7f0a09bb

    .line 2026
    const v2, 0x7f0a05a7

    .line 2027
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->c()Ljava/lang/String;

    move-result-object v9

    .line 2029
    packed-switch p1, :pswitch_data_0

    .line 2124
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2031
    :pswitch_1
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/16 v2, 0xe

    invoke-direct {v0, v2}, Lcom/twitter/android/widget/ec;-><init>(I)V

    .line 2032
    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/ec;->a(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 2033
    const v2, 0x7f0a0959

    move v4, v6

    move v10, v1

    move-object v1, v0

    move v0, v2

    move v2, v10

    .line 2128
    :goto_1
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v9, v5, v7

    .line 2129
    invoke-virtual {v8, v0, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/ec;->a(Ljava/lang/CharSequence;)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 2130
    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    .line 2131
    if-eqz v4, :cond_1

    .line 2132
    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    .line 2135
    :cond_1
    invoke-virtual {v1}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/PromptDialogFragment;

    goto :goto_0

    .line 2039
    :pswitch_2
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/16 v2, 0xc

    invoke-direct {v0, v2}, Lcom/twitter/android/widget/ec;-><init>(I)V

    .line 2040
    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->a(Ljava/lang/String;)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 2041
    const v3, 0x7f0a0945

    .line 2042
    const v1, 0x7f0a05a7

    .line 2043
    const v2, 0x7f0a09bb

    move v4, v6

    move v10, v1

    move-object v1, v0

    move v0, v3

    move v3, v2

    move v2, v10

    .line 2044
    goto :goto_1

    .line 2047
    :pswitch_3
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/4 v2, 0x6

    invoke-direct {v0, v2}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v2, 0x7f0a0947

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v9, v3, v7

    .line 2048
    invoke-virtual {v8, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/ec;->a(Ljava/lang/String;)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v2, 0x7f0a0955

    .line 2049
    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/ec;->e(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 2050
    const v3, 0x7f0a0946

    .line 2051
    const v2, 0x7f0a094c

    move v4, v6

    move v10, v1

    move-object v1, v0

    move v0, v3

    move v3, v10

    .line 2053
    goto :goto_1

    .line 2057
    :pswitch_4
    new-instance v0, Lcom/twitter/android/widget/ec;

    invoke-direct {v0, v6}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a094c

    .line 2058
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->a(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 2059
    const v1, 0x7f0a094e

    .line 2060
    iget v3, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    invoke-static {v3}, Lcom/twitter/model/core/p;->i(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    invoke-static {v3}, Lcom/twitter/model/core/p;->b(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2061
    :cond_2
    const v3, 0x7f0a0955

    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/ec;->e(I)Lcom/twitter/android/widget/eb;

    move v3, v4

    move v4, v6

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    goto/16 :goto_1

    .line 2067
    :pswitch_5
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a096a

    .line 2068
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->a(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 2069
    const v1, 0x7f0a096b

    move v3, v4

    move v4, v6

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    .line 2070
    goto/16 :goto_1

    .line 2075
    :pswitch_6
    iput-boolean v7, p0, Lcom/twitter/android/ProfileActivity;->ad:Z

    .line 2076
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a0950

    .line 2077
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->a(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 2078
    const v2, 0x7f0a094f

    .line 2080
    const v1, 0x7f0a05b0

    .line 2084
    const-string/jumbo v3, "::device_follow_prompt:impression"

    invoke-direct {p0, v3}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/twitter/android/ProfileActivity;->c(Ljava/lang/String;)V

    move v3, v5

    move v4, v6

    move-object v10, v0

    move v0, v2

    move v2, v1

    move-object v1, v10

    .line 2085
    goto/16 :goto_1

    .line 2088
    :pswitch_7
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a0971

    .line 2089
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->a(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 2091
    const v1, 0x7f0a0970

    move v3, v5

    move v4, v7

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    .line 2094
    goto/16 :goto_1

    .line 2097
    :pswitch_8
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/16 v2, 0x9

    invoke-direct {v0, v2}, Lcom/twitter/android/widget/ec;-><init>(I)V

    .line 2098
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0952

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2099
    const v2, 0x7f0a0953

    .line 2102
    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/ec;->a(Ljava/lang/String;)Lcom/twitter/android/widget/eb;

    move v3, v5

    move v4, v6

    move-object v10, v0

    move v0, v2

    move v2, v1

    move-object v1, v10

    .line 2103
    goto/16 :goto_1

    .line 2107
    :pswitch_9
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a0961

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v9, v3, v7

    .line 2108
    invoke-virtual {v8, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->a(Ljava/lang/String;)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 2109
    const v1, 0x7f0a0960

    move v3, v5

    move v4, v7

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    .line 2112
    goto/16 :goto_1

    .line 2116
    :pswitch_a
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a0963

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v9, v3, v7

    .line 2117
    invoke-virtual {v8, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->a(Ljava/lang/String;)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 2118
    const v1, 0x7f0a0962

    move v3, v5

    move v4, v7

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    .line 2121
    goto/16 :goto_1

    :cond_3
    move v3, v4

    move v4, v6

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    goto/16 :goto_1

    .line 2029
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected E_()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 2445
    iget-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->ag:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ad()Landroid/content/Intent;

    move-result-object v0

    .line 2446
    :goto_0
    if-eqz v0, :cond_0

    .line 2447
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2449
    :cond_0
    return-object v0

    .line 2445
    :cond_1
    invoke-super {p0}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->E_()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method protected T_()I
    .locals 1

    .prologue
    .line 1025
    iget v0, p0, Lcom/twitter/android/ProfileActivity;->V:F

    float-to-int v0, v0

    return v0
.end method

.method protected a(Landroid/content/res/Resources;)I
    .locals 2

    .prologue
    .line 2863
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2864
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected a(Ljava/util/List;Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/client/ax;",
            ">;",
            "Landroid/support/v4/view/ViewPager;",
            ")",
            "Landroid/support/v4/view/PagerAdapter;"
        }
    .end annotation

    .prologue
    .line 2828
    new-instance v0, Lcom/twitter/android/mp;

    iget-object v5, p0, Lcom/twitter/android/ProfileActivity;->p:Lcom/twitter/internal/android/widget/HorizontalListView;

    iget-object v6, p0, Lcom/twitter/android/ProfileActivity;->K:Lcom/twitter/android/mo;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/mp;-><init>(Lcom/twitter/android/ProfileActivity;Landroid/support/v4/app/FragmentActivity;Ljava/util/List;Landroid/support/v4/view/ViewPager;Lcom/twitter/internal/android/widget/HorizontalListView;Lcom/twitter/android/kj;)V

    return-object v0
.end method

.method protected a(Ljava/util/List;)Landroid/widget/BaseAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/client/ax;",
            ">;)",
            "Landroid/widget/BaseAdapter;"
        }
    .end annotation

    .prologue
    .line 2821
    new-instance v0, Lcom/twitter/android/mo;

    invoke-direct {v0, p1}, Lcom/twitter/android/mo;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->K:Lcom/twitter/android/mo;

    .line 2822
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->K:Lcom/twitter/android/mo;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 1

    .prologue
    .line 2809
    const v0, 0x7f0402a4

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 2810
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(Z)V

    .line 2811
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2812
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->c(Z)V

    .line 2813
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->a(I)V

    .line 2815
    :cond_0
    return-object p2
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2848
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->B:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(I)V
    .locals 1

    .prologue
    .line 2841
    invoke-super {p0, p1}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->a(I)V

    .line 2842
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->n:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2843
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->K:Lcom/twitter/android/mo;

    invoke-virtual {v0, p1}, Lcom/twitter/android/mo;->a(I)V

    .line 2844
    return-void
.end method

.method public a(II)V
    .locals 2

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->O:Lcom/twitter/library/media/widget/UserImageView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->setTranslationY(F)V

    .line 1003
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->N:Lcom/twitter/android/profiles/HeaderImageView;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/HeaderImageView;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->av:Lcom/twitter/android/mn;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/twitter/android/mn;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1011
    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->av:Lcom/twitter/android/mn;

    invoke-virtual {v1, v0}, Lcom/twitter/android/mn;->sendMessage(Landroid/os/Message;)Z

    .line 1015
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aQ:Lcom/twitter/android/profiles/animation/BalloonSetAnimationView;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/animation/BalloonSetAnimationView;->a()V

    .line 1016
    return-void

    .line 1013
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->P:Lcom/twitter/android/profiles/a;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lcom/twitter/android/profiles/a;->a(I)V

    goto :goto_0
.end method

.method public a(Landroid/content/DialogInterface;II)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v1, -0x2

    const/4 v0, -0x1

    .line 1078
    iget-wide v4, p0, Lcom/twitter/android/ProfileActivity;->A:J

    .line 1079
    iget-object v6, p0, Lcom/twitter/android/ProfileActivity;->af:Lcss;

    .line 1080
    packed-switch p2, :pswitch_data_0

    .line 1178
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1082
    :pswitch_1
    if-ne p3, v0, :cond_0

    .line 1083
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->at()V

    goto :goto_0

    .line 1088
    :pswitch_2
    if-ne p3, v0, :cond_1

    .line 1089
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->ax()V

    goto :goto_0

    .line 1090
    :cond_1
    if-ne p3, v1, :cond_0

    .line 1091
    const-string/jumbo v0, ":user:block_dialog:cancel"

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 1096
    :pswitch_3
    if-ne p3, v0, :cond_2

    .line 1097
    new-instance v1, Lbrc;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v3

    const/4 v7, 0x3

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lbrc;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;I)V

    .line 1099
    invoke-virtual {p0, v1, v9}, Lcom/twitter/android/ProfileActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 1100
    const-string/jumbo v0, ":user:unblock_dialog:unblock"

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->c(Ljava/lang/String;)V

    .line 1101
    invoke-direct {p0, v9}, Lcom/twitter/android/ProfileActivity;->o(I)V

    goto :goto_0

    .line 1102
    :cond_2
    if-ne p3, v1, :cond_0

    .line 1103
    const-string/jumbo v0, ":user:unblock_dialog:cancel"

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 1108
    :pswitch_4
    if-ne p3, v0, :cond_0

    .line 1109
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->au()V

    goto :goto_0

    .line 1114
    :pswitch_5
    if-ne p3, v1, :cond_3

    .line 1115
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->av()V

    goto :goto_0

    .line 1116
    :cond_3
    const/4 v0, -0x3

    if-ne p3, v0, :cond_0

    .line 1117
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->az()V

    goto :goto_0

    .line 1122
    :pswitch_6
    if-ne p3, v0, :cond_4

    .line 1123
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->av()V

    goto :goto_0

    .line 1124
    :cond_4
    const/4 v0, -0x3

    if-ne p3, v0, :cond_0

    .line 1125
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->az()V

    goto :goto_0

    .line 1130
    :pswitch_7
    if-ne p3, v0, :cond_0

    .line 1131
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->az()V

    goto :goto_0

    .line 1136
    :pswitch_8
    if-ne p3, v0, :cond_0

    .line 1137
    new-instance v1, Lbrc;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-wide v4, p0, Lcom/twitter/android/ProfileActivity;->A:J

    iget-object v6, p0, Lcom/twitter/android/ProfileActivity;->af:Lcss;

    const/4 v7, 0x2

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lbrc;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;I)V

    .line 1139
    const-string/jumbo v0, "spam"

    iput-object v0, v1, Lbrc;->j:Ljava/lang/String;

    .line 1140
    iput-boolean v8, v1, Lbrc;->g:Z

    .line 1141
    const/4 v0, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/ProfileActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 1143
    invoke-direct {p0, v9}, Lcom/twitter/android/ProfileActivity;->n(I)V

    .line 1144
    const-string/jumbo v0, ":::report_as_spam"

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1149
    :pswitch_9
    if-ne p3, v0, :cond_5

    .line 1150
    const-string/jumbo v0, "::device_follow_prompt:accept"

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->c(Ljava/lang/String;)V

    .line 1151
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->aA()V

    goto/16 :goto_0

    .line 1152
    :cond_5
    if-ne p3, v1, :cond_0

    .line 1153
    const-string/jumbo v0, "::device_follow_prompt:dismiss"

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1158
    :pswitch_a
    if-ne p3, v0, :cond_6

    .line 1159
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->as()V

    goto/16 :goto_0

    .line 1161
    :cond_6
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, ":user:mute_dialog:cancel"

    invoke-direct {p0, v1}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1166
    :pswitch_b
    if-ne p3, v0, :cond_7

    .line 1167
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, ":user:muted_button:unmute_user"

    invoke-direct {p0, v1}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->a([Ljava/lang/String;)V

    .line 1168
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aJ:Lcom/twitter/android/profiles/s;

    invoke-interface {v0}, Lcom/twitter/android/profiles/s;->b()V

    goto/16 :goto_0

    .line 1170
    :cond_7
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, ":user:muted_button:cancel"

    invoke-direct {p0, v1}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1080
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_1
        :pswitch_9
        :pswitch_4
    .end packed-switch
.end method

.method protected a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 2858
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->N:Lcom/twitter/android/profiles/HeaderImageView;

    invoke-virtual {v0, p1}, Lcom/twitter/android/profiles/HeaderImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2859
    return-void
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/library/client/d;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 447
    invoke-super {p0, p1, p2}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->a(Landroid/os/Bundle;Lcom/twitter/library/client/d;)V

    .line 448
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->ak()V

    .line 449
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 451
    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    const v0, 0x7f130621

    .line 453
    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/LoggedOutBar;

    .line 454
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/LoggedOutBar;->setVisibility(I)V

    .line 455
    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/LoggedOutBar;->setDefaultOnClickListener(Landroid/app/Activity;)V

    .line 456
    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->a(Lcom/twitter/android/widget/LoggedOutBar;)V

    .line 458
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 449
    goto :goto_0
.end method

.method public a(Lcom/twitter/android/profiles/ao;)V
    .locals 1

    .prologue
    .line 992
    invoke-virtual {p1}, Lcom/twitter/android/profiles/ao;->a()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    .line 993
    invoke-virtual {p1}, Lcom/twitter/android/profiles/ao;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->C:Z

    .line 994
    invoke-virtual {p1}, Lcom/twitter/android/profiles/ao;->d()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    .line 995
    invoke-virtual {p1}, Lcom/twitter/android/profiles/ao;->c()Lcom/twitter/library/util/FriendshipCache;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->ae:Lcom/twitter/library/util/FriendshipCache;

    .line 997
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->an()V

    .line 998
    return-void
.end method

.method public a(Lcom/twitter/library/service/x;I)V
    .locals 10

    .prologue
    const v8, 0x7f0a026b

    const/16 v4, 0x200

    const/16 v7, 0x10

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2267
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 2268
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/service/x;)Lcom/twitter/library/client/Session;

    move-result-object v3

    .line 2270
    packed-switch p2, :pswitch_data_0

    .line 2413
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->a(Lcom/twitter/library/service/x;I)V

    .line 2417
    :cond_0
    :goto_0
    return-void

    .line 2272
    :pswitch_1
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2273
    check-cast p1, Lbul;

    .line 2274
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lbul;->a:J

    iget-wide v2, p0, Lcom/twitter/android/ProfileActivity;->A:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2275
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    iget v1, p1, Lbul;->b:I

    iput v1, v0, Lcom/twitter/model/core/TwitterUser;->T:I

    .line 2276
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    iget v0, v0, Lcom/twitter/model/core/TwitterUser;->T:I

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->p(I)V

    goto :goto_0

    .line 2282
    :pswitch_2
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2283
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->n(I)V

    goto :goto_0

    .line 2285
    :cond_1
    iput-boolean v2, p0, Lcom/twitter/android/ProfileActivity;->ay:Z

    .line 2286
    invoke-direct {p0, v2}, Lcom/twitter/android/ProfileActivity;->c(Z)V

    goto :goto_0

    .line 2291
    :pswitch_3
    if-eqz v3, :cond_0

    .line 2292
    check-cast p1, Lbtz;

    .line 2294
    invoke-virtual {p1}, Lbtz;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    .line 2295
    if-eqz v0, :cond_2

    .line 2296
    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v1

    .line 2297
    :cond_2
    if-nez v2, :cond_3

    .line 2298
    iget v0, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    invoke-static {v0, v1}, Lcom/twitter/model/core/p;->b(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    goto :goto_0

    .line 2300
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    iget-boolean v0, v0, Lcom/twitter/model/core/TwitterUser;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aH:Lcom/twitter/android/profiles/f;

    if-eqz v0, :cond_0

    .line 2301
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aH:Lcom/twitter/android/profiles/f;

    invoke-interface {v0}, Lcom/twitter/android/profiles/f;->n()V

    goto :goto_0

    .line 2308
    :pswitch_4
    if-eqz v3, :cond_0

    .line 2309
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2310
    iget v0, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    invoke-static {v0, v1}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    .line 2311
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2312
    const v0, 0x7f0a094d

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2313
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2315
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aH:Lcom/twitter/android/profiles/f;

    if-eqz v0, :cond_0

    .line 2316
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aH:Lcom/twitter/android/profiles/f;

    invoke-interface {v0}, Lcom/twitter/android/profiles/f;->a()V

    goto/16 :goto_0

    .line 2322
    :pswitch_5
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->g()Lcom/twitter/internal/network/k;

    move-result-object v0

    .line 2323
    if-eqz v0, :cond_5

    iget v0, v0, Lcom/twitter/internal/network/k;->a:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_5

    .line 2324
    const v0, 0x7f0a048a

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2325
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2327
    :cond_5
    const v0, 0x7f0a0489

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2328
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2333
    :pswitch_6
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Lbrc;

    iget-wide v0, p1, Lbrc;->b:J

    iget-wide v2, p0, Lcom/twitter/android/ProfileActivity;->A:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2335
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->p()V

    goto/16 :goto_0

    .line 2340
    :pswitch_7
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_6

    check-cast p1, Lbrc;

    iget-wide v2, p1, Lbrc;->b:J

    iget-wide v4, p0, Lcom/twitter/android/ProfileActivity;->A:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    .line 2341
    iget v0, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    invoke-static {v0}, Lcom/twitter/model/core/p;->e(I)Z

    move-result v0

    .line 2342
    if-eqz v0, :cond_0

    .line 2344
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->p()V

    goto/16 :goto_0

    .line 2347
    :cond_6
    const v0, 0x7f0a0969

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2348
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2353
    :pswitch_8
    iget v3, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    invoke-static {v3}, Lcom/twitter/model/core/p;->g(I)Z

    move-result v3

    .line 2354
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2355
    if-eqz v3, :cond_7

    const v0, 0x7f0a096f

    .line 2358
    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v3}, Lcom/twitter/model/core/TwitterUser;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ProfileActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2359
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2355
    :cond_7
    const v0, 0x7f0a096d

    goto :goto_1

    .line 2361
    :cond_8
    invoke-static {p0, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2362
    if-eqz v3, :cond_9

    .line 2363
    invoke-direct {p0, v4}, Lcom/twitter/android/ProfileActivity;->o(I)V

    goto/16 :goto_0

    .line 2365
    :cond_9
    invoke-direct {p0, v4}, Lcom/twitter/android/ProfileActivity;->n(I)V

    goto/16 :goto_0

    .line 2371
    :pswitch_9
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->N()Lcom/twitter/library/service/ab;

    move-result-object v3

    .line 2372
    if-eqz v3, :cond_0

    .line 2375
    iget-wide v4, v3, Lcom/twitter/library/service/ab;->c:J

    invoke-static {p0, v4, v5}, Lcom/twitter/library/platform/notifications/PushRegistration;->c(Landroid/content/Context;J)Z

    move-result v4

    .line 2376
    iget v5, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    invoke-static {v5}, Lcom/twitter/model/core/p;->i(I)Z

    move-result v5

    .line 2378
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v6

    if-eqz v6, :cond_b

    if-nez v4, :cond_a

    if-nez v5, :cond_b

    .line 2379
    :cond_a
    invoke-direct {p0, v5}, Lcom/twitter/android/ProfileActivity;->i(Z)V

    goto/16 :goto_0

    .line 2382
    :cond_b
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v0

    const/16 v6, 0x3e9

    if-eq v0, v6, :cond_c

    if-nez v4, :cond_e

    .line 2383
    :cond_c
    invoke-static {p0}, Lcom/twitter/android/client/y;->a(Landroid/content/Context;)Lcom/twitter/android/client/y;

    move-result-object v6

    iget-wide v8, v3, Lcom/twitter/library/service/ab;->c:J

    if-nez v4, :cond_d

    move v0, v1

    :goto_2
    invoke-virtual {v6, v8, v9, v0, v1}, Lcom/twitter/android/client/y;->a(JZZ)V

    .line 2385
    invoke-direct {p0, v5}, Lcom/twitter/android/ProfileActivity;->i(Z)V

    goto/16 :goto_0

    :cond_d
    move v0, v2

    .line 2383
    goto :goto_2

    .line 2387
    :cond_e
    invoke-static {p0, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2388
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2389
    if-eqz v5, :cond_f

    .line 2390
    invoke-direct {p0, v7}, Lcom/twitter/android/ProfileActivity;->o(I)V

    goto/16 :goto_0

    .line 2392
    :cond_f
    invoke-direct {p0, v7}, Lcom/twitter/android/ProfileActivity;->n(I)V

    goto/16 :goto_0

    .line 2398
    :pswitch_a
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2399
    check-cast p1, Lbuj;

    .line 2400
    invoke-virtual {p1}, Lbuj;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->ad:Z

    goto/16 :goto_0

    .line 2402
    :cond_10
    iput-boolean v2, p0, Lcom/twitter/android/ProfileActivity;->ad:Z

    .line 2403
    iget v0, p0, Lcom/twitter/android/ProfileActivity;->ar:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/twitter/android/ProfileActivity;->ar:I

    goto/16 :goto_0

    .line 2408
    :pswitch_b
    iget v0, p0, Lcom/twitter/android/ProfileActivity;->ar:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/twitter/android/ProfileActivity;->ar:I

    .line 2409
    invoke-super {p0, p1, p2}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->a(Lcom/twitter/library/service/x;I)V

    goto/16 :goto_0

    .line 2270
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method public a(Lcom/twitter/model/ads/e;)V
    .locals 3

    .prologue
    .line 1421
    iput-object p1, p0, Lcom/twitter/android/ProfileActivity;->aS:Lcom/twitter/model/ads/e;

    .line 1422
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f03be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 1424
    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->aw:Lcom/twitter/android/profiles/y;

    invoke-virtual {v1}, Lcom/twitter/android/profiles/y;->d()Lcom/twitter/ui/widget/TwitterButton;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 1425
    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->aw:Lcom/twitter/android/profiles/y;

    invoke-virtual {v1}, Lcom/twitter/android/profiles/y;->d()Lcom/twitter/ui/widget/TwitterButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/ui/widget/TwitterButton;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->O:Lcom/twitter/library/media/widget/UserImageView;

    .line 1426
    invoke-virtual {v2}, Lcom/twitter/library/media/widget/UserImageView;->getRight()I

    move-result v2

    add-int/2addr v0, v2

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->aT:Z

    .line 1428
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aw:Lcom/twitter/android/profiles/y;

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->aS:Lcom/twitter/model/ads/e;

    iget-boolean v2, p0, Lcom/twitter/android/ProfileActivity;->aT:Z

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/profiles/y;->a(Lcom/twitter/model/ads/e;Z)V

    .line 1429
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->a(Lcom/twitter/internal/android/widget/ToolBar;)V

    .line 1430
    return-void

    .line 1426
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/businessprofiles/m;)V
    .locals 1

    .prologue
    .line 1434
    iput-object p1, p0, Lcom/twitter/android/ProfileActivity;->aW:Lcom/twitter/model/businessprofiles/m;

    .line 1435
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aW:Lcom/twitter/model/businessprofiles/m;

    if-eqz v0, :cond_0

    .line 1436
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->c(Z)V

    .line 1438
    :cond_0
    return-void
.end method

.method protected a(Lcom/twitter/model/core/TwitterUser;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1383
    invoke-direct {p0, p1, v6}, Lcom/twitter/android/ProfileActivity;->a(Lcom/twitter/model/core/TwitterUser;Z)Lcom/twitter/model/core/TwitterUser;

    move-result-object v5

    .line 1384
    invoke-super {p0, v5}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->a(Lcom/twitter/model/core/TwitterUser;)V

    .line 1385
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->S:Ljava/lang/String;

    .line 1386
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aw:Lcom/twitter/android/profiles/y;

    invoke-virtual {v0, v5}, Lcom/twitter/android/profiles/y;->a(Lcom/twitter/model/core/TwitterUser;)V

    .line 1387
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aI:Lcom/twitter/android/profiles/ao;

    iget-boolean v1, p0, Lcom/twitter/android/ProfileActivity;->C:Z

    invoke-virtual {v0, v5, v1}, Lcom/twitter/android/profiles/ao;->a(Lcom/twitter/model/core/TwitterUser;Z)V

    .line 1388
    iget v0, v5, Lcom/twitter/model/core/TwitterUser;->T:I

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->p(I)V

    .line 1390
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->aq()V

    .line 1391
    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->T:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->U:Landroid/widget/ImageView;

    iget-boolean v3, v5, Lcom/twitter/model/core/TwitterUser;->n:Z

    iget-boolean v4, v5, Lcom/twitter/model/core/TwitterUser;->o:Z

    iget-boolean v5, v5, Lcom/twitter/model/core/TwitterUser;->m:Z

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/profiles/af;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;ZZZ)V

    .line 1394
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->N:Lcom/twitter/android/profiles/HeaderImageView;

    invoke-virtual {v0, p0}, Lcom/twitter/android/profiles/HeaderImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1398
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->ai:Lcom/twitter/model/core/TwitterUser;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->d(Z)V

    .line 1400
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->O:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v0, p0}, Lcom/twitter/library/media/widget/UserImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1404
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twitter/internal/android/widget/ToolBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1406
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->ag()V

    .line 1408
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->af()V

    .line 1410
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->ai()V

    .line 1412
    iget-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->ac:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aH:Lcom/twitter/android/profiles/f;

    if-eqz v0, :cond_0

    .line 1413
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aH:Lcom/twitter/android/profiles/f;

    invoke-interface {v0}, Lcom/twitter/android/profiles/f;->n()V

    .line 1414
    iput-boolean v6, p0, Lcom/twitter/android/ProfileActivity;->ac:Z

    .line 1416
    :cond_0
    invoke-direct {p0, v6}, Lcom/twitter/android/ProfileActivity;->j(Z)V

    .line 1417
    return-void

    .line 1385
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v6

    .line 1398
    goto :goto_1
.end method

.method a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1783
    iget-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->C:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1784
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/sticky/default_profile_images/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1785
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->ap()V

    .line 1789
    :cond_1
    :goto_0
    return-void

    .line 1786
    :cond_2
    if-eqz p1, :cond_1

    .line 1787
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 1652
    if-eqz p2, :cond_0

    .line 1653
    iput-object p1, p0, Lcom/twitter/android/ProfileActivity;->W:Ljava/lang/String;

    .line 1654
    invoke-direct {p0, p2}, Lcom/twitter/android/ProfileActivity;->b(Landroid/graphics/Bitmap;)V

    .line 1660
    :goto_0
    return-void

    .line 1656
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->W:Ljava/lang/String;

    .line 1657
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->z:Lcom/twitter/android/nz;

    invoke-interface {v0}, Lcom/twitter/android/nz;->b()V

    .line 1658
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->N:Lcom/twitter/android/profiles/HeaderImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->u()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/profiles/HeaderImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 1061
    invoke-super {p0, p1}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->a(Z)V

    .line 1062
    if-eqz p1, :cond_0

    .line 1063
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->B()V

    .line 1065
    :cond_0
    return-void
.end method

.method public a(Lcyd;)Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 1182
    invoke-interface {p1}, Lcyd;->a()I

    move-result v1

    .line 1183
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 1184
    sparse-switch v1, :sswitch_data_0

    .line 1266
    invoke-super {p0, p1}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->a(Lcyd;)Z

    move-result v6

    .line 1270
    :cond_0
    :goto_0
    return v6

    .line 1186
    :sswitch_0
    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    if-eqz v1, :cond_3

    .line 1187
    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v1}, Lcom/twitter/model/core/TwitterUser;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    iget-object v2, v2, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    iget-object v3, v3, Lcom/twitter/model/core/TwitterUser;->g:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    iget-boolean v2, p0, Lcom/twitter/android/ProfileActivity;->C:Z

    invoke-static {v2}, Lcom/twitter/android/profiles/as;->a(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    aput-object v5, v1, v6

    const-string/jumbo v0, "user"

    aput-object v0, v1, v4

    aput-object v5, v1, v7

    const/4 v0, 0x4

    const-string/jumbo v2, "share"

    aput-object v2, v1, v0

    invoke-direct {p0, v1}, Lcom/twitter/android/ProfileActivity;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 1196
    :sswitch_1
    iget v1, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    invoke-static {v1}, Lcom/twitter/model/core/p;->g(I)Z

    move-result v1

    .line 1197
    if-nez v1, :cond_2

    .line 1198
    const/16 v2, 0x200

    invoke-direct {p0, v2}, Lcom/twitter/android/ProfileActivity;->n(I)V

    .line 1202
    :goto_1
    new-instance v2, Lbvb;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    invoke-direct {v2, p0, v3, v4, v5}, Lbvb;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/core/TwitterUser;Lcss;)V

    const/4 v3, 0x4

    if-nez v1, :cond_1

    move v0, v6

    .line 1203
    :cond_1
    invoke-virtual {v2, v3, v0}, Lbvb;->a(IZ)Lbvb;

    move-result-object v0

    const/16 v1, 0xe

    .line 1202
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ProfileActivity;->b(Lcom/twitter/library/service/x;I)Z

    goto :goto_0

    .line 1200
    :cond_2
    const/16 v2, 0x200

    invoke-direct {p0, v2}, Lcom/twitter/android/ProfileActivity;->o(I)V

    goto :goto_1

    .line 1208
    :sswitch_2
    iget-wide v0, p0, Lcom/twitter/android/ProfileActivity;->A:J

    invoke-static {p0, v0, v1, v2, v3}, Lcom/twitter/android/profiles/as;->a(Lcom/twitter/library/client/AbsFragmentActivity;JJ)V

    .line 1209
    const-string/jumbo v0, ":::add_to_list"

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 1213
    :sswitch_3
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, ":user:unmute_dialog:open"

    invoke-direct {p0, v2}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-direct {p0, v1}, Lcom/twitter/android/ProfileActivity;->a([Ljava/lang/String;)V

    .line 1214
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, ":user:unmute_dialog:unmute_user"

    invoke-direct {p0, v2}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-direct {p0, v1}, Lcom/twitter/android/ProfileActivity;->a([Ljava/lang/String;)V

    .line 1215
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aJ:Lcom/twitter/android/profiles/s;

    invoke-interface {v0}, Lcom/twitter/android/profiles/s;->b()V

    goto/16 :goto_0

    .line 1219
    :sswitch_4
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, ":user:mute_dialog:open"

    invoke-direct {p0, v2}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-direct {p0, v1}, Lcom/twitter/android/ProfileActivity;->a([Ljava/lang/String;)V

    .line 1220
    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->B:Ljava/lang/String;

    iget v2, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    const/16 v3, 0xa

    .line 1222
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    move-object v0, p0

    .line 1220
    invoke-static/range {v0 .. v5}, Lcom/twitter/android/util/bc;->a(Landroid/content/Context;Ljava/lang/String;IILandroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1223
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->as()V

    goto/16 :goto_0

    .line 1228
    :sswitch_5
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, ":user:block_dialog:impression"

    invoke-direct {p0, v2}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-direct {p0, v1}, Lcom/twitter/android/ProfileActivity;->a([Ljava/lang/String;)V

    .line 1229
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->B:Ljava/lang/String;

    .line 1230
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1229
    invoke-static {p0, v0, v4, v1}, Lcom/twitter/android/util/bc;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/support/v4/app/FragmentManager;)V

    goto/16 :goto_0

    .line 1234
    :sswitch_6
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, ":user:unblock_dialog:impression"

    invoke-direct {p0, v2}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-direct {p0, v1}, Lcom/twitter/android/ProfileActivity;->a([Ljava/lang/String;)V

    .line 1235
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->B:Ljava/lang/String;

    .line 1236
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1235
    invoke-static {p0, v0, v7, v1}, Lcom/twitter/android/util/bc;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/support/v4/app/FragmentManager;)V

    goto/16 :goto_0

    .line 1240
    :sswitch_7
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    iget v1, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    invoke-static {p0, v0, v1}, Lcom/twitter/android/profiles/as;->a(Lcom/twitter/library/client/AbsFragmentActivity;Lcom/twitter/model/core/TwitterUser;I)V

    goto/16 :goto_0

    .line 1244
    :sswitch_8
    iget-wide v0, p0, Lcom/twitter/android/ProfileActivity;->A:J

    invoke-static {p0, v0, v1}, Lcom/twitter/android/profiles/as;->b(Landroid/content/Context;J)V

    goto/16 :goto_0

    .line 1248
    :sswitch_9
    invoke-static {p0}, Lcom/twitter/android/profiles/as;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1252
    :sswitch_a
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "user_id"

    iget-wide v4, p0, Lcom/twitter/android/ProfileActivity;->A:J

    .line 1253
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "friendship"

    iget v3, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    .line 1254
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 1252
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ProfileActivity;->setResult(ILandroid/content/Intent;)V

    .line 1255
    invoke-super {p0, p1}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->a(Lcyd;)Z

    move-result v6

    goto/16 :goto_0

    .line 1258
    :sswitch_b
    invoke-static {p0}, Lcom/twitter/android/ads/AdsCompanionWebViewActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 1270
    :cond_3
    :goto_2
    invoke-super {p0, p1}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->a(Lcyd;)Z

    move-result v6

    goto/16 :goto_0

    .line 1262
    :sswitch_c
    iget-wide v0, p0, Lcom/twitter/android/ProfileActivity;->A:J

    invoke-static {p0, v0, v1}, Lcom/twitter/android/moments/ui/guide/av;->a(Landroid/app/Activity;J)V

    goto :goto_2

    .line 1184
    :sswitch_data_0
    .sparse-switch
        0x7f13003d -> :sswitch_a
        0x7f1307c0 -> :sswitch_5
        0x7f1307ec -> :sswitch_4
        0x7f1307f6 -> :sswitch_0
        0x7f1307f7 -> :sswitch_1
        0x7f1307f8 -> :sswitch_1
        0x7f1307f9 -> :sswitch_9
        0x7f1307fa -> :sswitch_2
        0x7f1307fb -> :sswitch_8
        0x7f1307fc -> :sswitch_c
        0x7f1307fd -> :sswitch_3
        0x7f1307fe -> :sswitch_6
        0x7f1307ff -> :sswitch_7
        0x7f130800 -> :sswitch_b
    .end sparse-switch
.end method

.method public a(Lcyg;)Z
    .locals 1

    .prologue
    .line 981
    invoke-super {p0, p1}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->a(Lcyg;)Z

    .line 982
    const v0, 0x7f140024

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 983
    const/4 v0, 0x1

    return v0
.end method

.method public ak_()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1701
    invoke-direct {p0, v0, v0}, Lcom/twitter/android/ProfileActivity;->a(ZZ)V

    .line 1702
    return-void
.end method

.method protected b(Landroid/content/res/Resources;)I
    .locals 2

    .prologue
    .line 2869
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    iget v1, p0, Lcom/twitter/android/ProfileActivity;->Y:I

    invoke-static {v0, v1}, Lcom/twitter/android/profiles/as;->a(Lcom/twitter/model/core/TwitterUser;I)I

    move-result v0

    return v0
.end method

.method public b(Lcyg;)I
    .locals 4

    .prologue
    .line 1951
    invoke-super {p0, p1}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->b(Lcyg;)I

    move-result v1

    .line 1952
    invoke-interface {p1}, Lcyg;->j()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/ToolBar;

    .line 1953
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v2

    const v3, 0x7f1307ec

    invoke-virtual {v2, v3}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/ProfileActivity;->aO:Lbjl;

    .line 1954
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v2

    const v3, 0x7f1307fd

    invoke-virtual {v2, v3}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/ProfileActivity;->aP:Lbjl;

    .line 1955
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1956
    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->a(Lcom/twitter/internal/android/widget/ToolBar;)V

    .line 1958
    :cond_0
    return v1
.end method

.method protected b(I)V
    .locals 1

    .prologue
    .line 2886
    invoke-super {p0, p1}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->b(I)V

    .line 2887
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->ak:Z

    .line 2888
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->al:Lcom/twitter/android/ns;

    .line 2889
    return-void
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 12

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v7

    .line 463
    invoke-virtual {v7}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->aF:Ljava/lang/String;

    .line 465
    invoke-virtual {v7}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->K()Layj;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/metrics/d;->a(JLayj;Z)Lcom/twitter/android/metrics/d;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->aC:Lcom/twitter/android/metrics/d;

    .line 466
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aC:Lcom/twitter/android/metrics/d;

    invoke-virtual {v0}, Lcom/twitter/android/metrics/d;->i()V

    .line 467
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 469
    invoke-super {p0, p1, p2}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V

    .line 470
    sget-object v0, Lcom/twitter/android/ProfileActivity$DisplayState;->a:Lcom/twitter/android/ProfileActivity$DisplayState;

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->az:Lcom/twitter/android/ProfileActivity$DisplayState;

    .line 471
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileActivity;->c(F)V

    .line 472
    new-instance v0, Lcom/twitter/android/mm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/mm;-><init>(Lcom/twitter/android/ProfileActivity;Lcom/twitter/android/mc;)V

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->au:Lcom/twitter/library/service/z;

    .line 473
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->J:Lcom/twitter/library/client/bd;

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->au:Lcom/twitter/library/service/z;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/z;)V

    .line 474
    new-instance v0, Lcom/twitter/android/mn;

    invoke-direct {v0, p0}, Lcom/twitter/android/mn;-><init>(Lcom/twitter/android/ProfileActivity;)V

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->av:Lcom/twitter/android/mn;

    .line 475
    iget-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->C:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/twitter/android/profilecompletionmodule/u;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    invoke-static {p0}, Lcom/twitter/android/widget/ProfileEmptyAvatarOverlay;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 479
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 481
    const-string/jumbo v0, "association"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->am:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 482
    const-string/jumbo v0, "scribe_content"

    sget-object v1, Lcom/twitter/model/timeline/al;->a:Lcom/twitter/util/serialization/d;

    invoke-static {v2, v0, v1}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/al;

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->an:Lcom/twitter/model/timeline/al;

    .line 484
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->ah:Landroid/content/SharedPreferences;

    .line 486
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->B:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/twitter/android/ProfileActivity;->A:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_6

    :cond_1
    const/4 v0, 0x1

    .line 487
    :goto_0
    if-nez v0, :cond_11

    .line 488
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 489
    if-eqz v1, :cond_11

    .line 490
    const-string/jumbo v3, "com.twitter.android.action.USER_SHOW"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "com.twitter.android.action.USER_SHOW_TYPEAHEAD"

    .line 491
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 492
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->B:Ljava/lang/String;

    .line 493
    const/4 v0, 0x1

    move v1, v0

    .line 502
    :goto_1
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 503
    if-eqz v0, :cond_3

    .line 504
    const-string/jumbo v3, "pc"

    .line 505
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 504
    invoke-static {v0}, Lcss;->a([B)Lcss;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->af:Lcss;

    .line 508
    :cond_3
    if-eqz p1, :cond_9

    .line 509
    const-string/jumbo v0, "state_friendship_cache"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 510
    const-string/jumbo v0, "state_friendship_cache"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/util/FriendshipCache;

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->ae:Lcom/twitter/library/util/FriendshipCache;

    .line 516
    :goto_2
    const-string/jumbo v0, "state_friendship"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    .line 517
    const-string/jumbo v0, "state_fr"

    const/4 v3, 0x0

    .line 518
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->ac:Z

    .line 519
    const-string/jumbo v0, "state_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->ai:Lcom/twitter/model/core/TwitterUser;

    .line 520
    const-string/jumbo v0, "state_fetch_flags"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/ProfileActivity;->ar:I

    .line 521
    const-string/jumbo v0, "should_hide_blocker_interstitial"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->ay:Z

    .line 523
    const-string/jumbo v0, "show_dev_follow_rec_prompt"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->ad:Z

    .line 525
    const-string/jumbo v0, "show_balloon_animation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->aR:Z

    .line 537
    :goto_3
    new-instance v0, Lcom/twitter/android/profiles/ao;

    iget-object v3, p0, Lcom/twitter/android/ProfileActivity;->ai:Lcom/twitter/model/core/TwitterUser;

    iget-boolean v4, p0, Lcom/twitter/android/ProfileActivity;->C:Z

    iget-object v5, p0, Lcom/twitter/android/ProfileActivity;->ae:Lcom/twitter/library/util/FriendshipCache;

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/twitter/android/profiles/ao;-><init>(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;ZLcom/twitter/library/util/FriendshipCache;)V

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->aI:Lcom/twitter/android/profiles/ao;

    .line 538
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aI:Lcom/twitter/android/profiles/ao;

    invoke-virtual {v0, p0}, Lcom/twitter/android/profiles/ao;->a(Lcom/twitter/android/profiles/ap;)V

    .line 540
    if-nez v1, :cond_b

    .line 541
    const v0, 0x7f0a0957

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 542
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->b()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 544
    :cond_4
    new-instance v0, Lbiv;

    invoke-direct {v0}, Lbiv;-><init>()V

    const-string/jumbo v1, "intent_extras"

    .line 545
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v0

    const-string/jumbo v1, "intent_data"

    .line 546
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Insufficient arguments to launch ProfileActivity."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v0, v1}, Lbiv;->a(Ljava/lang/Throwable;)Lbiv;

    move-result-object v0

    .line 544
    invoke-static {v0}, Lbix;->a(Lbiv;)V

    .line 550
    :cond_5
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->finish()V

    .line 643
    :goto_4
    return-void

    .line 486
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 494
    :cond_7
    const-string/jumbo v3, "twitter"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 496
    new-instance v0, Lcom/twitter/android/mk;

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/mk;-><init>(Lcom/twitter/android/ProfileActivity;Landroid/net/Uri;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/android/mk;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 497
    const/4 v0, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 513
    :cond_8
    new-instance v0, Lcom/twitter/library/util/FriendshipCache;

    const/4 v3, 0x6

    invoke-direct {v0, v3}, Lcom/twitter/library/util/FriendshipCache;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->ae:Lcom/twitter/library/util/FriendshipCache;

    goto/16 :goto_2

    .line 527
    :cond_9
    const-string/jumbo v0, "profile"

    invoke-static {p0, v0}, Lcom/twitter/android/ip;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 528
    new-instance v0, Lcom/twitter/library/util/FriendshipCache;

    const/4 v3, 0x6

    invoke-direct {v0, v3}, Lcom/twitter/library/util/FriendshipCache;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->ae:Lcom/twitter/library/util/FriendshipCache;

    .line 529
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    .line 530
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->ac:Z

    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->ax:Z

    .line 532
    const-string/jumbo v0, "start_page"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 533
    const-string/jumbo v0, "start_page"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->aj:Landroid/net/Uri;

    .line 535
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->aR:Z

    goto/16 :goto_3

    .line 554
    :cond_b
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->M()Lcom/twitter/android/client/SearchSuggestionController;

    move-result-object v0

    .line 555
    iget-wide v4, p0, Lcom/twitter/android/ProfileActivity;->A:J

    invoke-virtual {v7}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v10

    cmp-long v1, v4, v10

    if-eqz v1, :cond_10

    .line 556
    const-string/jumbo v1, "profile"

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/SearchSuggestionController;->a(Ljava/lang/String;)Lcom/twitter/android/client/SearchSuggestionController;

    .line 561
    :goto_5
    const-string/jumbo v0, "reason"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->ab:Ljava/lang/String;

    .line 563
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 565
    const v1, 0x7f0402ad

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    .line 570
    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    iput-object v6, p0, Lcom/twitter/android/ProfileActivity;->X:Landroid/widget/LinearLayout;

    .line 573
    new-instance v0, Lcom/twitter/android/profiles/ProfileDetailsViewManager;

    invoke-direct {v0, v6}, Lcom/twitter/android/profiles/ProfileDetailsViewManager;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->M:Lcom/twitter/android/profiles/ProfileDetailsViewManager;

    .line 574
    const v0, 0x7f1300e2

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->T:Landroid/widget/ImageView;

    .line 575
    const v0, 0x7f130633

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->U:Landroid/widget/ImageView;

    .line 576
    const v0, 0x7f130642

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profiles/HeaderImageView;

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->N:Lcom/twitter/android/profiles/HeaderImageView;

    .line 577
    const-string/jumbo v0, "bitmaps"

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileActivity;->a_(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 578
    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->N:Lcom/twitter/android/profiles/HeaderImageView;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->u()I

    move-result v2

    invoke-virtual {v1, p0, v0, v2}, Lcom/twitter/android/profiles/HeaderImageView;->a(Lcom/twitter/android/profiles/k;Ljava/util/Set;I)V

    .line 579
    invoke-direct {p0, v8}, Lcom/twitter/android/ProfileActivity;->c(Landroid/content/res/Resources;)Lcom/twitter/library/media/widget/UserImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->O:Lcom/twitter/library/media/widget/UserImageView;

    .line 580
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->O:Lcom/twitter/library/media/widget/UserImageView;

    invoke-static {p0, v0}, Lcom/twitter/android/ProfileActivity;->a(Landroid/content/Context;Lcom/twitter/library/media/widget/UserImageView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->aX:Landroid/widget/FrameLayout;

    .line 581
    new-instance v0, Lcom/twitter/android/profiles/a;

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->O:Lcom/twitter/library/media/widget/UserImageView;

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->N:Lcom/twitter/android/profiles/HeaderImageView;

    iget v3, p0, Lcom/twitter/android/ProfileActivity;->r:I

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/profiles/a;-><init>(Lcom/twitter/media/ui/image/MediaImageView;Lcom/twitter/media/ui/image/BackgroundImageView;I)V

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->P:Lcom/twitter/android/profiles/a;

    .line 583
    const v0, 0x7f130640

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->as:Landroid/view/View;

    .line 584
    const v0, 0x7f13063f

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->at:Landroid/view/ViewGroup;

    .line 585
    const v0, 0x7f13063c

    .line 586
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->aU:Landroid/view/ViewGroup;

    .line 587
    const v0, 0x7f13063b

    .line 588
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TypefacesTextView;

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->aV:Lcom/twitter/ui/widget/TypefacesTextView;

    .line 589
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aV:Lcom/twitter/ui/widget/TypefacesTextView;

    .line 590
    invoke-virtual {v0}, Lcom/twitter/ui/widget/TypefacesTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 591
    if-eqz v0, :cond_c

    .line 592
    const v1, 0x7f120153

    .line 593
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 592
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 596
    :cond_c
    new-instance v0, Lcom/twitter/android/profiles/y;

    const v1, 0x7f13034e

    .line 597
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v4

    iget-boolean v5, p0, Lcom/twitter/android/ProfileActivity;->C:Z

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/profiles/y;-><init>(Landroid/content/Context;Lcom/twitter/android/profiles/z;Landroid/widget/LinearLayout;Lcom/twitter/model/core/TwitterUser;Z)V

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->aw:Lcom/twitter/android/profiles/y;

    .line 599
    const v0, 0x7f1304f3

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/TweetStatView;

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->R:Lcom/twitter/android/widget/TweetStatView;

    .line 600
    const v0, 0x7f1304f4

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/TweetStatView;

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->Q:Lcom/twitter/android/widget/TweetStatView;

    .line 602
    const v0, 0x7f130639

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->aA:Landroid/view/View;

    .line 603
    const v0, 0x7f130464

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->aB:Landroid/view/View;

    .line 604
    const v0, 0x7f130622

    .line 605
    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profiles/animation/BalloonSetAnimationView;

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->aQ:Lcom/twitter/android/profiles/animation/BalloonSetAnimationView;

    .line 606
    invoke-virtual {p0, v6}, Lcom/twitter/android/ProfileActivity;->setHeaderView(Landroid/view/View;)V

    .line 608
    const v0, 0x7f13004c

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 609
    const v1, 0x7f0f03bc

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget v2, p0, Lcom/twitter/android/ProfileActivity;->r:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 611
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    add-float/2addr v0, v1

    iput v0, p0, Lcom/twitter/android/ProfileActivity;->V:F

    .line 612
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->o:Lcom/twitter/android/widget/UnboundedFrameLayout;

    const v1, 0x7f130637

    .line 613
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/UnboundedFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 614
    new-instance v0, Lcom/twitter/android/profiles/g;

    .line 615
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/ProfileActivity;->aI:Lcom/twitter/android/profiles/ao;

    iget-object v4, p0, Lcom/twitter/android/ProfileActivity;->am:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/profiles/g;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/bk;Lcom/twitter/android/profiles/ao;Lcom/twitter/library/scribe/TwitterScribeAssociation;Landroid/view/View;)V

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->aH:Lcom/twitter/android/profiles/f;

    .line 617
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aH:Lcom/twitter/android/profiles/f;

    invoke-interface {v0, p0}, Lcom/twitter/android/profiles/f;->a(Lcom/twitter/android/profiles/ak;)V

    .line 618
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aH:Lcom/twitter/android/profiles/f;

    invoke-interface {v0, p1}, Lcom/twitter/android/profiles/f;->a(Landroid/os/Bundle;)V

    .line 623
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->aE()V

    .line 624
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->aD()V

    .line 626
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->ai:Lcom/twitter/model/core/TwitterUser;

    if-eqz v0, :cond_d

    .line 627
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->ai:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileActivity;->a(Lcom/twitter/model/core/TwitterUser;)V

    .line 630
    :cond_d
    iget-wide v0, p0, Lcom/twitter/android/ProfileActivity;->A:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->B:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 631
    :cond_e
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->A()V

    .line 633
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->ai:Lcom/twitter/model/core/TwitterUser;

    .line 635
    const v0, 0x7f12016c

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/ProfileActivity;->Y:I

    .line 637
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->aE:Z

    .line 640
    new-instance v0, Lcom/twitter/android/profiles/u;

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->aI:Lcom/twitter/android/profiles/ao;

    new-instance v5, Lcom/twitter/android/nk;

    invoke-direct {v5, p0}, Lcom/twitter/android/nk;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    move-object v3, v7

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/profiles/u;-><init>(Lcom/twitter/android/profiles/t;Lcom/twitter/android/profiles/ao;Lcom/twitter/library/client/Session;Landroid/content/Context;Lcom/twitter/android/nk;)V

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->aJ:Lcom/twitter/android/profiles/s;

    .line 642
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aJ:Lcom/twitter/android/profiles/s;

    invoke-interface {v0, p0}, Lcom/twitter/android/profiles/s;->a(Lcom/twitter/android/profiles/t;)V

    goto/16 :goto_4

    .line 558
    :cond_10
    const-string/jumbo v1, "me"

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/SearchSuggestionController;->a(Ljava/lang/String;)Lcom/twitter/android/client/SearchSuggestionController;

    goto/16 :goto_5

    :cond_11
    move v1, v0

    goto/16 :goto_1
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2853
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->ae()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 2932
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aw:Lcom/twitter/android/profiles/y;

    invoke-virtual {v0, p1}, Lcom/twitter/android/profiles/y;->c(I)V

    .line 2933
    return-void
.end method

.method protected d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/client/ax;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2894
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->L:Lcom/twitter/android/profiles/v;

    if-eqz v0, :cond_0

    .line 2895
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->L:Lcom/twitter/android/profiles/v;

    invoke-interface {v0}, Lcom/twitter/android/profiles/v;->a()Ljava/util/List;

    move-result-object v0

    .line 2897
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 829
    invoke-super {p0}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->e()V

    .line 836
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->av:Lcom/twitter/android/mn;

    new-instance v1, Lcom/twitter/android/md;

    invoke-direct {v1, p0}, Lcom/twitter/android/md;-><init>(Lcom/twitter/android/ProfileActivity;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/mn;->post(Ljava/lang/Runnable;)Z

    .line 842
    return-void
.end method

.method public f()Lcom/twitter/library/util/FriendshipCache;
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->ae:Lcom/twitter/library/util/FriendshipCache;

    return-object v0
.end method

.method public h()Lcom/twitter/android/profiles/ao;
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aI:Lcom/twitter/android/profiles/ao;

    return-object v0
.end method

.method protected i()I
    .locals 1

    .prologue
    .line 1020
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->T_()I

    move-result v0

    return v0
.end method

.method public l()V
    .locals 2

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aN:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1707
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/ProfileActivity;->a(ZZ)V

    .line 1708
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1712
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aN:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1713
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/twitter/android/ProfileActivity;->a(ZZ)V

    .line 1714
    return-void
.end method

.method protected n()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1941
    iget-wide v0, p0, Lcom/twitter/android/ProfileActivity;->A:J

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1944
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1680
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aF:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/twitter/util/collection/CollectionUtils;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1697
    :cond_0
    :goto_0
    return-void

    .line 1685
    :cond_1
    array-length v4, p1

    move v2, v1

    move v0, v3

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, p1, v2

    .line 1688
    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/twitter/android/ProfileActivity;->aF:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v1

    .line 1685
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1693
    :cond_3
    if-eqz v0, :cond_0

    .line 1694
    iput-boolean v3, p0, Lcom/twitter/android/ProfileActivity;->aG:Z

    .line 1695
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->aF:Ljava/lang/String;

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    .prologue
    const-wide/16 v6, 0x0

    const/4 v10, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 2454
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2455
    if-nez p2, :cond_1

    .line 2568
    :cond_0
    :goto_0
    return-void

    .line 2459
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2461
    :pswitch_0
    invoke-static {p3}, Lcom/twitter/app/lists/d;->a(Landroid/content/Intent;)Lcom/twitter/app/lists/d;

    move-result-object v0

    .line 2462
    new-instance v1, Lbpi;

    .line 2463
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 2464
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v3

    .line 2465
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/twitter/app/lists/d;->b:J

    iget-wide v8, v0, Lcom/twitter/app/lists/d;->a:J

    invoke-direct/range {v1 .. v10}, Lbpi;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JJJI)V

    .line 2469
    const/4 v0, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/ProfileActivity;->b(Lcom/twitter/library/service/x;I)Z

    goto :goto_0

    .line 2473
    :pswitch_1
    if-ne v4, p2, :cond_0

    if-eqz p3, :cond_0

    .line 2474
    const-string/jumbo v0, "remove_header"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2475
    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    invoke-direct {p0, v1, v0}, Lcom/twitter/android/ProfileActivity;->a(Lcom/twitter/model/core/TwitterUser;Z)Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    .line 2476
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->aq()V

    .line 2477
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->ai()V

    .line 2478
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->aC()V

    .line 2479
    iget v0, p0, Lcom/twitter/android/ProfileActivity;->ar:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/twitter/android/ProfileActivity;->ar:I

    goto :goto_0

    .line 2484
    :pswitch_2
    if-ne p2, v0, :cond_0

    .line 2485
    const-string/jumbo v0, "account"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/account/UserAccount;

    .line 2487
    iget-object v0, v0, Lcom/twitter/model/account/UserAccount;->a:Landroid/accounts/Account;

    .line 2488
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 2489
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    .line 2488
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2490
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bk;->d(Ljava/lang/String;)V

    .line 2491
    invoke-static {}, Lcom/twitter/android/bo;->a()V

    .line 2494
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 2495
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/twitter/android/ProfileActivity;->a(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 2501
    :pswitch_3
    if-ne v4, p2, :cond_0

    if-eqz p3, :cond_0

    .line 2502
    const-string/jumbo v0, "user_id"

    invoke-virtual {p3, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2503
    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    const-string/jumbo v0, "friendship"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2504
    const-string/jumbo v0, "friendship"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2506
    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->ae:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v1, v2, v3, v0}, Lcom/twitter/library/util/FriendshipCache;->a(JI)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2507
    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->ae:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v1, v2, v3, v0}, Lcom/twitter/library/util/FriendshipCache;->b(JI)V

    .line 2508
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->aC()V

    .line 2510
    :cond_2
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->aC()V

    goto/16 :goto_0

    .line 2518
    :pswitch_4
    packed-switch p2, :pswitch_data_1

    goto/16 :goto_0

    .line 2520
    :pswitch_5
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->aw()V

    goto/16 :goto_0

    .line 2524
    :pswitch_6
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aJ:Lcom/twitter/android/profiles/s;

    invoke-interface {v0}, Lcom/twitter/android/profiles/s;->a()V

    goto/16 :goto_0

    .line 2528
    :pswitch_7
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->ay()V

    goto/16 :goto_0

    .line 2538
    :pswitch_8
    if-eqz p3, :cond_3

    const-string/jumbo v2, "place"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move v3, v2

    .line 2539
    :goto_1
    if-eq v3, v4, :cond_0

    .line 2541
    invoke-static {}, Lcom/twitter/android/avatars/b;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2542
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/twitter/android/EditProfileWithAvatarDrawerActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2543
    const-string/jumbo v4, "extra_show_avatar_picker"

    if-eq v0, v3, :cond_4

    :goto_2
    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v0, v2

    .line 2548
    :goto_3
    iget-wide v2, p0, Lcom/twitter/android/ProfileActivity;->A:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 2549
    sget-object v2, Lcom/twitter/library/provider/dl;->b:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 2550
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "ownerId"

    .line 2551
    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 2552
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2549
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2553
    invoke-virtual {p0, v0, v10}, Lcom/twitter/android/ProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_3
    move v3, v4

    .line 2538
    goto :goto_1

    :cond_4
    move v0, v1

    .line 2543
    goto :goto_2

    .line 2546
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/EditProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_3

    .line 2558
    :pswitch_9
    if-eqz p3, :cond_0

    .line 2559
    const-string/jumbo v0, "AccountNotificationActivity_friendship"

    iget v1, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2560
    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->aw:Lcom/twitter/android/profiles/y;

    invoke-virtual {v1, v0}, Lcom/twitter/android/profiles/y;->a(I)V

    goto/16 :goto_0

    .line 2459
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 2518
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    .line 2610
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "user_id"

    iget-wide v4, p0, Lcom/twitter/android/ProfileActivity;->A:J

    .line 2611
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "friendship"

    iget v3, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    .line 2612
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 2610
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ProfileActivity;->setResult(ILandroid/content/Intent;)V

    .line 2613
    invoke-super {p0}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->onBackPressed()V

    .line 2614
    return-void
.end method

.method public onButtonBarItemClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/16 v6, 0x100

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1279
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1379
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1281
    :pswitch_1
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1282
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->S:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/twitter/android/ip;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    goto :goto_0

    .line 1285
    :cond_1
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->au()V

    goto :goto_0

    .line 1290
    :pswitch_2
    iget v0, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    invoke-static {v0}, Lcom/twitter/model/core/p;->i(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    invoke-static {v0}, Lcom/twitter/model/core/p;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1291
    :cond_2
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->q(I)V

    goto :goto_0

    .line 1293
    :cond_3
    invoke-direct {p0, v4}, Lcom/twitter/android/ProfileActivity;->q(I)V

    goto :goto_0

    .line 1298
    :pswitch_3
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->q(I)V

    goto :goto_0

    .line 1302
    :pswitch_4
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, ":user:blocked_button:click"

    invoke-direct {p0, v1}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->a([Ljava/lang/String;)V

    .line 1303
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, ":user:unblock_dialog:impression"

    invoke-direct {p0, v1}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->a([Ljava/lang/String;)V

    .line 1304
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->B:Ljava/lang/String;

    .line 1305
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1304
    invoke-static {p0, v0, v3, v1}, Lcom/twitter/android/util/bc;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/support/v4/app/FragmentManager;)V

    goto :goto_0

    .line 1309
    :pswitch_5
    new-instance v0, Lbvb;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lbvb;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/core/TwitterUser;Lcss;)V

    const/4 v1, 0x2

    .line 1310
    invoke-virtual {v0, v1, v5}, Lbvb;->a(IZ)Lbvb;

    move-result-object v0

    const/16 v1, 0xd

    .line 1309
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ProfileActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 1312
    invoke-direct {p0, v6}, Lcom/twitter/android/ProfileActivity;->o(I)V

    .line 1313
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->ah:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "lifeline_unfollow_dialog_shown"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1314
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->q(I)V

    .line 1315
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->ah:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "lifeline_unfollow_dialog_shown"

    .line 1316
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1317
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1323
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aw:Lcom/twitter/android/profiles/y;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/y;->a()V

    goto/16 :goto_0

    .line 1319
    :cond_4
    const v0, 0x7f0a0964

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    .line 1321
    invoke-virtual {v2}, Lcom/twitter/model/core/TwitterUser;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 1320
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ProfileActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1319
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1321
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1327
    :pswitch_6
    iget-wide v0, p0, Lcom/twitter/android/ProfileActivity;->A:J

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->af:Lcss;

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/ProfileActivity;->a(JLcss;)V

    .line 1328
    invoke-direct {p0, v6}, Lcom/twitter/android/ProfileActivity;->n(I)V

    .line 1330
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->ah:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "lifeline_follow_dialog_shown"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1331
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->q(I)V

    .line 1332
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->ah:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "lifeline_follow_dialog_shown"

    .line 1333
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1334
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1336
    :cond_5
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aw:Lcom/twitter/android/profiles/y;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/y;->b()V

    goto/16 :goto_0

    .line 1340
    :pswitch_7
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->ap()V

    goto/16 :goto_0

    .line 1344
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/AccountsDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "AccountsDialogActivity_account_name"

    .line 1346
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    .line 1345
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1344
    invoke-virtual {p0, v0, v3}, Lcom/twitter/android/ProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1351
    :pswitch_9
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->aA()V

    goto/16 :goto_0

    .line 1355
    :pswitch_a
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->q(I)V

    goto/16 :goto_0

    .line 1360
    :pswitch_b
    invoke-static {}, Lcba;->a()Z

    move-result v0

    .line 1361
    if-eqz v0, :cond_0

    .line 1362
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->ao()V

    goto/16 :goto_0

    .line 1367
    :pswitch_c
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "::message:click"

    invoke-direct {p0, v1}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->a([Ljava/lang/String;)V

    .line 1368
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    invoke-static {p0, v0}, Lcom/twitter/android/profiles/as;->a(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;)V

    goto/16 :goto_0

    .line 1372
    :pswitch_d
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, ":user:open_ads_companion:click"

    invoke-direct {p0, v1}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->a([Ljava/lang/String;)V

    .line 1373
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    iget-wide v0, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-static {p0, v0, v1}, Lcom/twitter/android/ads/AdsCompanionWebViewActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1279
    nop

    :pswitch_data_0
    .packed-switch 0x7f130623
        :pswitch_d
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_b
        :pswitch_b
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 2638
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2677
    :goto_0
    return-void

    .line 2640
    :sswitch_0
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->I()Z

    goto :goto_0

    .line 2644
    :sswitch_1
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2646
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->S:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/twitter/android/ip;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    goto :goto_0

    .line 2649
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/ProfileActivity;->ar()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2654
    :sswitch_2
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2656
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->S:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/twitter/android/ip;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    goto :goto_0

    .line 2660
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    const/4 v3, 0x0

    .line 2659
    invoke-static {p0, v0, v1, v2, v3}, Lcom/twitter/android/util/u;->a(Landroid/content/Context;JLcom/twitter/model/core/TwitterUser;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2665
    :sswitch_3
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ProfileActivity;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 2670
    :sswitch_4
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->W:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ProfileActivity;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 2638
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1302fb -> :sswitch_3
        0x7f1304f3 -> :sswitch_1
        0x7f1304f4 -> :sswitch_2
        0x7f130602 -> :sswitch_0
        0x7f130642 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 914
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->al:Lcom/twitter/android/ns;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->al:Lcom/twitter/android/ns;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/ns;->cancel(Z)Z

    .line 916
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->al:Lcom/twitter/android/ns;

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->J:Lcom/twitter/library/client/bd;

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->au:Lcom/twitter/library/service/z;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->b(Lcom/twitter/library/service/z;)V

    .line 919
    iget-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->aE:Z

    if-eqz v0, :cond_1

    .line 920
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 922
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aH:Lcom/twitter/android/profiles/f;

    if-eqz v0, :cond_2

    .line 923
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aH:Lcom/twitter/android/profiles/f;

    invoke-interface {v0}, Lcom/twitter/android/profiles/f;->p()V

    .line 925
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aY:Lanf;

    if-eqz v0, :cond_3

    .line 926
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aY:Lanf;

    invoke-virtual {v0}, Lanf;->close()V

    .line 928
    :cond_3
    invoke-super {p0}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->onDestroy()V

    .line 929
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 889
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v0

    const v1, 0x7f13063e

    if-ne v0, v1, :cond_0

    .line 890
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 894
    :goto_0
    return-void

    .line 892
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 972
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aH:Lcom/twitter/android/profiles/f;

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aH:Lcom/twitter/android/profiles/f;

    invoke-interface {v0}, Lcom/twitter/android/profiles/f;->q()V

    .line 975
    :cond_0
    invoke-static {}, Lbix;->a()Lbiu;

    move-result-object v0

    const-string/jumbo v1, "profile_user"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbiu;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    invoke-super {p0}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->onPause()V

    .line 977
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 898
    invoke-super {p0}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->onRestart()V

    .line 899
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->N:Lcom/twitter/android/profiles/HeaderImageView;

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->N:Lcom/twitter/android/profiles/HeaderImageView;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/HeaderImageView;->aP_()V

    .line 902
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    .line 959
    invoke-super {p0}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->onResume()V

    .line 962
    iget-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->aG:Z

    if-eqz v0, :cond_0

    .line 963
    iget-wide v0, p0, Lcom/twitter/android/ProfileActivity;->A:J

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->B:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/ProfileActivity;->a(JLjava/lang/String;)V

    .line 966
    :cond_0
    invoke-static {}, Lbix;->a()Lbiu;

    move-result-object v0

    const-string/jumbo v1, "profile_user"

    const-string/jumbo v2, "id: %d, name: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/twitter/android/ProfileActivity;->A:J

    .line 967
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/twitter/android/ProfileActivity;->B:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 966
    invoke-virtual {v0, v1, v2}, Lbiu;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 933
    invoke-super {p0, p1}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 934
    const-string/jumbo v0, "state_fetch_flags"

    iget v1, p0, Lcom/twitter/android/ProfileActivity;->ar:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 935
    const-string/jumbo v0, "state_friendship"

    iget v1, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 936
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aH:Lcom/twitter/android/profiles/f;

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aH:Lcom/twitter/android/profiles/f;

    invoke-interface {v0, p1}, Lcom/twitter/android/profiles/f;->b(Landroid/os/Bundle;)V

    .line 938
    const-string/jumbo v0, "state_fr"

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->aH:Lcom/twitter/android/profiles/f;

    .line 939
    invoke-interface {v1}, Lcom/twitter/android/profiles/f;->k()Z

    move-result v1

    .line 938
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->ae:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0}, Lcom/twitter/library/util/FriendshipCache;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 943
    const-string/jumbo v0, "state_friendship_cache"

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->ae:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 946
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    if-eqz v0, :cond_3

    .line 947
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    iget v1, p0, Lcom/twitter/android/ProfileActivity;->aa:I

    iput v1, v0, Lcom/twitter/model/core/TwitterUser;->T:I

    .line 948
    const-string/jumbo v0, "state_user"

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 952
    :cond_2
    :goto_0
    const-string/jumbo v0, "should_hide_blocker_interstitial"

    iget-boolean v1, p0, Lcom/twitter/android/ProfileActivity;->ay:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 953
    const-string/jumbo v0, "show_dev_follow_rec_prompt"

    iget-boolean v1, p0, Lcom/twitter/android/ProfileActivity;->ad:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 954
    const-string/jumbo v0, "show_balloon_animation"

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->aQ:Lcom/twitter/android/profiles/animation/BalloonSetAnimationView;

    invoke-virtual {v1}, Lcom/twitter/android/profiles/animation/BalloonSetAnimationView;->c()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 955
    return-void

    .line 949
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->ai:Lcom/twitter/model/core/TwitterUser;

    if-eqz v0, :cond_2

    .line 950
    const-string/jumbo v0, "state_user"

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->ai:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->N:Lcom/twitter/android/profiles/HeaderImageView;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->N:Lcom/twitter/android/profiles/HeaderImageView;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/HeaderImageView;->f()V

    .line 909
    :cond_0
    invoke-super {p0}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->onStop()V

    .line 910
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 820
    invoke-super {p0, p1}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->onWindowFocusChanged(Z)V

    .line 822
    if-eqz p1, :cond_0

    .line 823
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->j(Z)V

    .line 825
    :cond_0
    return-void
.end method

.method p()V
    .locals 4

    .prologue
    .line 2233
    .line 2234
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    new-instance v3, Lcom/twitter/android/mh;

    invoke-direct {v3, p0, p0}, Lcom/twitter/android/mh;-><init>(Lcom/twitter/android/ProfileActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 2263
    return-void
.end method

.method public r()V
    .locals 2

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->M:Lcom/twitter/android/profiles/ProfileDetailsViewManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/profiles/ProfileDetailsViewManager;->a(Z)V

    .line 2632
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->aq:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2633
    return-void
.end method

.method protected r_()V
    .locals 2

    .prologue
    .line 690
    invoke-super {p0}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->r_()V

    .line 691
    const-string/jumbo v0, "bitmaps"

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->N:Lcom/twitter/android/profiles/HeaderImageView;

    invoke-virtual {v1}, Lcom/twitter/android/profiles/HeaderImageView;->getSavedBitmaps()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ProfileActivity;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    return-void
.end method

.method public s()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 2681
    iput-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->ay:Z

    .line 2682
    invoke-direct {p0, v2}, Lcom/twitter/android/ProfileActivity;->c(Z)V

    .line 2683
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "blocker_interstitial:::click"

    invoke-direct {p0, v1}, Lcom/twitter/android/ProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->a([Ljava/lang/String;)V

    .line 2684
    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 2874
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v0

    .line 2875
    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/ToolBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2876
    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 2877
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2878
    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->t:Lcom/twitter/android/widget/SwipeProgressBarView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 2879
    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->O:Lcom/twitter/library/media/widget/UserImageView;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 2881
    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/android/ScrollingHeaderUserQueryActivity;->setHeaderView(Landroid/view/View;)V

    .line 2882
    return-void
.end method
