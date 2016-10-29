.class public Lcom/twitter/android/TabbedVitFollowersActivity;
.super Lcom/twitter/android/AbsTabbedPageFragmentActivity;
.source "Twttr"


# static fields
.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;


# instance fields
.field private e:Lcom/twitter/library/client/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "twitter://followers/all"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/TabbedVitFollowersActivity;->c:Landroid/net/Uri;

    .line 35
    const-string/jumbo v0, "twitter://followers/verified"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/TabbedVitFollowersActivity;->d:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/twitter/android/AbsTabbedPageFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/TabbedVitFollowersActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/twitter/android/TabbedVitFollowersActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/net/Uri;I)Lcom/twitter/library/client/ax;
    .locals 6

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x1

    .line 148
    sget-object v0, Lcom/twitter/android/TabbedVitFollowersActivity;->c:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    const v0, 0x7f0a03c6

    move v1, v2

    move v3, v4

    move v5, v0

    .line 161
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/TabbedVitFollowersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/app/users/aa;->a(Landroid/content/Intent;)Lcom/twitter/app/users/aa;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TabbedVitFollowersActivity;->a(Lcom/twitter/app/common/list/x;)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/aa;

    .line 162
    invoke-virtual {v0, v4}, Lcom/twitter/app/users/aa;->h(Z)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/aa;

    .line 163
    invoke-virtual {v0, v3}, Lcom/twitter/app/users/aa;->g(I)Lcom/twitter/app/users/z;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/aa;

    .line 164
    invoke-virtual {v0, v4}, Lcom/twitter/app/users/aa;->d(Z)Lcom/twitter/app/users/z;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/aa;

    .line 165
    invoke-virtual {v0, v4}, Lcom/twitter/app/users/aa;->k(Z)Lcom/twitter/app/users/z;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/aa;

    const-string/jumbo v3, "fragment_page_number"

    .line 166
    invoke-virtual {v0, v3, p2}, Lcom/twitter/app/users/aa;->a(Ljava/lang/String;I)Lcom/twitter/app/common/base/g;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/aa;

    .line 168
    if-le v1, v2, :cond_0

    .line 169
    invoke-virtual {v0, v1}, Lcom/twitter/app/users/aa;->b(I)Lcom/twitter/app/common/list/x;

    .line 172
    :cond_0
    new-instance v1, Lcom/twitter/library/client/ay;

    const-class v2, Lcom/twitter/app/users/VerifiedFollowersUsersFragment;

    invoke-direct {v1, p1, v2}, Lcom/twitter/library/client/ay;-><init>(Landroid/net/Uri;Ljava/lang/Class;)V

    .line 173
    invoke-virtual {p0, v5}, Lcom/twitter/android/TabbedVitFollowersActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/library/client/ay;->a(Ljava/lang/CharSequence;)Lcom/twitter/library/client/ay;

    move-result-object v1

    .line 174
    invoke-virtual {v0}, Lcom/twitter/app/users/aa;->d()Lcom/twitter/app/users/y;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/ay;->a(Lcom/twitter/app/common/base/f;)Lcom/twitter/library/client/ay;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/twitter/library/client/ay;->a()Lcom/twitter/library/client/ax;

    move-result-object v0

    .line 172
    return-object v0

    .line 152
    :cond_1
    sget-object v0, Lcom/twitter/android/TabbedVitFollowersActivity;->d:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    const v3, 0x7f0a03c4

    .line 154
    const/16 v1, 0x1d

    .line 155
    const v0, 0x7f0a03c5

    move v5, v3

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 157
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid page"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a(Ljava/util/List;Lcom/twitter/internal/android/widget/HorizontalListView;Lcom/twitter/internal/android/widget/DockLayout;)Lcom/twitter/android/ek;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/client/ax;",
            ">;",
            "Lcom/twitter/internal/android/widget/HorizontalListView;",
            "Lcom/twitter/internal/android/widget/DockLayout;",
            ")",
            "Lcom/twitter/android/ek;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lcom/twitter/android/qu;

    iget-object v4, p0, Lcom/twitter/android/TabbedVitFollowersActivity;->a:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lcom/twitter/android/TabbedVitFollowersActivity;->b:Lcom/twitter/android/kj;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/qu;-><init>(Lcom/twitter/android/TabbedVitFollowersActivity;Landroid/support/v4/app/FragmentActivity;Ljava/util/List;Landroid/support/v4/view/ViewPager;Lcom/twitter/internal/android/widget/HorizontalListView;Lcom/twitter/android/kj;Lcom/twitter/internal/android/widget/DockLayout;)V

    return-object v0
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 2

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/twitter/android/AbsTabbedPageFragmentActivity;->a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;

    move-result-object v0

    .line 49
    const v1, 0x7f0403a3

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 50
    return-object v0
.end method

.method a(ZLandroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 90
    :goto_0
    if-eqz v0, :cond_1

    .line 96
    :goto_1
    return-object v0

    .line 86
    :cond_0
    const-string/jumbo v0, "extra_start_tab"

    .line 87
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/TabbedVitFollowersActivity;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method a(IJ)V
    .locals 6

    .prologue
    .line 110
    packed-switch p1, :pswitch_data_0

    .line 120
    const/4 v0, 0x0

    .line 124
    :goto_0
    if-eqz v0, :cond_0

    .line 125
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v1, p2, p3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "followers:vit_verified_followers"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string/jumbo v3, ":impression"

    aput-object v3, v2, v0

    .line 126
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 125
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 128
    :cond_0
    return-void

    .line 112
    :pswitch_0
    const-string/jumbo v0, "all"

    goto :goto_0

    .line 116
    :pswitch_1
    const-string/jumbo v0, "verified"

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcyg;)Z
    .locals 1

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/twitter/android/AbsTabbedPageFragmentActivity;->a(Lcyg;)Z

    .line 102
    const v0, 0x7f140031

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    invoke-super {p0, p1, p2}, Lcom/twitter/android/AbsTabbedPageFragmentActivity;->b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V

    .line 58
    const v0, 0x7f0a068b

    invoke-virtual {p0, v0}, Lcom/twitter/android/TabbedVitFollowersActivity;->setTitle(I)V

    .line 60
    invoke-virtual {p0}, Lcom/twitter/android/TabbedVitFollowersActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    .line 62
    new-instance v0, Lcom/twitter/library/client/l;

    const-string/jumbo v3, "vit_followers"

    invoke-direct {v0, p0, v4, v5, v3}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/android/TabbedVitFollowersActivity;->e:Lcom/twitter/library/client/l;

    .line 64
    invoke-static {p0, v4, v5}, Lcom/twitter/android/util/u;->a(Lcom/twitter/app/common/base/TwitterFragmentActivity;J)V

    .line 66
    invoke-virtual {p0}, Lcom/twitter/android/TabbedVitFollowersActivity;->h()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TabbedVitFollowersActivity;->a(Ljava/util/List;)V

    .line 68
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/TabbedVitFollowersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/twitter/android/TabbedVitFollowersActivity;->a(ZLandroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TabbedVitFollowersActivity;->a_(Landroid/net/Uri;)V

    .line 71
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v3, "followers:vit_verified_followers:::impression"

    aput-object v3, v1, v2

    .line 72
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 71
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 73
    iget-object v0, p0, Lcom/twitter/android/TabbedVitFollowersActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0, v4, v5}, Lcom/twitter/android/TabbedVitFollowersActivity;->a(IJ)V

    .line 74
    return-void

    :cond_0
    move v0, v2

    .line 68
    goto :goto_0
.end method

.method protected d()Lcom/twitter/library/client/l;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/twitter/android/TabbedVitFollowersActivity;->e:Lcom/twitter/library/client/l;

    return-object v0
.end method

.method h()Ljava/util/List;
    .locals 4
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
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 137
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/twitter/library/client/ax;

    sget-object v1, Lcom/twitter/android/TabbedVitFollowersActivity;->c:Landroid/net/Uri;

    .line 138
    invoke-direct {p0, v1, v2}, Lcom/twitter/android/TabbedVitFollowersActivity;->a(Landroid/net/Uri;I)Lcom/twitter/library/client/ax;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Lcom/twitter/android/TabbedVitFollowersActivity;->d:Landroid/net/Uri;

    .line 139
    invoke-direct {p0, v1, v3}, Lcom/twitter/android/TabbedVitFollowersActivity;->a(Landroid/net/Uri;I)Lcom/twitter/library/client/ax;

    move-result-object v1

    aput-object v1, v0, v3

    .line 137
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
