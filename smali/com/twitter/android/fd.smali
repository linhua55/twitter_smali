.class Lcom/twitter/android/fd;
.super Lcom/twitter/android/AbsPagesAdapter;
.source "Twttr"


# instance fields
.field final synthetic g:Lcom/twitter/android/EmailExploreActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/EmailExploreActivity;Landroid/support/v4/app/FragmentActivity;Ljava/util/List;Landroid/support/v4/view/ViewPager;Lcom/twitter/internal/android/widget/HorizontalListView;Lcom/twitter/android/kj;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/client/ax;",
            ">;",
            "Landroid/support/v4/view/ViewPager;",
            "Lcom/twitter/internal/android/widget/HorizontalListView;",
            "Lcom/twitter/android/kj;",
            ")V"
        }
    .end annotation

    .prologue
    .line 448
    iput-object p1, p0, Lcom/twitter/android/fd;->g:Lcom/twitter/android/EmailExploreActivity;

    .line 449
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/AbsPagesAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;Landroid/support/v4/view/ViewPager;Lcom/twitter/internal/android/widget/HorizontalListView;Lcom/twitter/android/kj;)V

    .line 450
    invoke-virtual {p4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/fd;->f:I

    .line 451
    return-void
.end method


# virtual methods
.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 455
    .line 456
    invoke-super {p0, p1, p2}, Lcom/twitter/android/AbsPagesAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/TwitterListFragment;

    .line 457
    iget-object v1, p0, Lcom/twitter/android/fd;->g:Lcom/twitter/android/EmailExploreActivity;

    invoke-virtual {v1, v0}, Lcom/twitter/android/EmailExploreActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 458
    instance-of v1, v0, Lcom/twitter/android/SearchFragment;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 460
    check-cast v1, Lcom/twitter/android/SearchFragment;

    new-instance v3, Lcom/twitter/android/fe;

    iget-object v4, p0, Lcom/twitter/android/fd;->g:Lcom/twitter/android/EmailExploreActivity;

    iget-object v2, p0, Lcom/twitter/android/fd;->b:Ljava/util/List;

    .line 461
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/client/ax;

    iget-object v2, v2, Lcom/twitter/library/client/ax;->a:Landroid/net/Uri;

    iget-object v5, p0, Lcom/twitter/android/fd;->e:Lcom/twitter/android/kj;

    invoke-direct {v3, v4, v2, v5}, Lcom/twitter/android/fe;-><init>(Lcom/twitter/android/EmailExploreActivity;Landroid/net/Uri;Lcom/twitter/android/kj;)V

    .line 460
    invoke-virtual {v1, v3}, Lcom/twitter/android/SearchFragment;->a(Lcom/twitter/android/oq;)V

    .line 468
    :cond_0
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/twitter/android/fd;->a(Lcom/twitter/app/common/base/BaseFragment;I)V

    .line 469
    return-object v0

    .line 462
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    move-object v1, v0

    .line 463
    check-cast v1, Lcom/twitter/android/widget/ScrollingHeaderUsersListFragment;

    new-instance v2, Lcom/twitter/android/fg;

    iget-object v3, p0, Lcom/twitter/android/fd;->g:Lcom/twitter/android/EmailExploreActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/twitter/android/fg;-><init>(Lcom/twitter/android/EmailExploreActivity;Lcom/twitter/android/fc;)V

    .line 464
    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/ScrollingHeaderUsersListFragment;->a(Lcom/twitter/android/widget/eq;)V

    .line 465
    iget-object v2, p0, Lcom/twitter/android/fd;->g:Lcom/twitter/android/EmailExploreActivity;

    move-object v1, v0

    check-cast v1, Lcom/twitter/app/users/UsersFragment;

    invoke-static {v2, v1}, Lcom/twitter/android/EmailExploreActivity;->a(Lcom/twitter/android/EmailExploreActivity;Lcom/twitter/android/ff;)Lcom/twitter/android/ff;

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 3

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/twitter/android/fd;->b()Lcom/twitter/internal/android/widget/HorizontalListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/internal/android/widget/HorizontalListView;->a(I)V

    .line 493
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/twitter/android/fd;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ax;

    .line 495
    invoke-virtual {p0, v0}, Lcom/twitter/android/fd;->c(Lcom/twitter/library/client/ax;)Lcom/twitter/app/common/base/BaseFragment;

    move-result-object v0

    .line 496
    iget-object v2, p0, Lcom/twitter/android/fd;->g:Lcom/twitter/android/EmailExploreActivity;

    invoke-virtual {v2, v0}, Lcom/twitter/android/EmailExploreActivity;->a(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 499
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .prologue
    .line 475
    invoke-super {p0, p1}, Lcom/twitter/android/AbsPagesAdapter;->onPageSelected(I)V

    .line 476
    iget v0, p0, Lcom/twitter/android/fd;->f:I

    invoke-virtual {p0, v0}, Lcom/twitter/android/fd;->c(I)Lcom/twitter/library/client/ax;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/fd;->a(Lcom/twitter/library/client/ax;)V

    .line 478
    iget-object v0, p0, Lcom/twitter/android/fd;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ax;

    .line 479
    invoke-virtual {p0, v0}, Lcom/twitter/android/fd;->b(Lcom/twitter/library/client/ax;)V

    .line 481
    iput p1, p0, Lcom/twitter/android/fd;->f:I

    .line 482
    iget-object v1, p0, Lcom/twitter/android/fd;->g:Lcom/twitter/android/EmailExploreActivity;

    invoke-static {v1}, Lcom/twitter/android/EmailExploreActivity;->a(Lcom/twitter/android/EmailExploreActivity;)Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 483
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "explore_email"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "category"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v0, v0, Lcom/twitter/library/client/ax;->e:Ljava/lang/String;

    aput-object v0, v2, v3

    const/4 v0, 0x3

    const/4 v3, 0x0

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string/jumbo v3, "select"

    aput-object v3, v2, v0

    .line 484
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/fd;->g:Lcom/twitter/android/EmailExploreActivity;

    .line 485
    invoke-static {v1}, Lcom/twitter/android/EmailExploreActivity;->b(Lcom/twitter/android/EmailExploreActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->f(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 483
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 487
    iget-object v0, p0, Lcom/twitter/android/fd;->g:Lcom/twitter/android/EmailExploreActivity;

    invoke-virtual {v0}, Lcom/twitter/android/EmailExploreActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->h()V

    .line 488
    return-void
.end method
