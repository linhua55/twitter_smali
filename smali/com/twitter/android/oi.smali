.class Lcom/twitter/android/oi;
.super Lcom/twitter/android/ek;
.source "Twttr"


# instance fields
.field final synthetic g:Lcom/twitter/android/SearchActivity;

.field private h:Z


# direct methods
.method constructor <init>(Lcom/twitter/android/SearchActivity;Landroid/support/v4/app/FragmentActivity;Ljava/util/List;Landroid/support/v4/view/ViewPager;Lcom/twitter/internal/android/widget/HorizontalListView;Lcom/twitter/android/kj;Lcom/twitter/internal/android/widget/DockLayout;Lcom/twitter/android/ej;)V
    .locals 8
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
            "Lcom/twitter/internal/android/widget/DockLayout;",
            "Lcom/twitter/android/ej;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1486
    iput-object p1, p0, Lcom/twitter/android/oi;->g:Lcom/twitter/android/SearchActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    .line 1487
    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/ek;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/util/List;Landroid/support/v4/view/ViewPager;Lcom/twitter/internal/android/widget/HorizontalListView;Lcom/twitter/android/kj;Lcom/twitter/internal/android/widget/DockLayout;Lcom/twitter/android/ej;)V

    .line 1481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/oi;->h:Z

    .line 1488
    return-void
.end method


# virtual methods
.method public b(I)Lcom/twitter/app/common/base/BaseFragment;
    .locals 2

    .prologue
    .line 1538
    invoke-super {p0, p1}, Lcom/twitter/android/ek;->b(I)Lcom/twitter/app/common/base/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/SearchFragment;

    .line 1539
    iget-boolean v1, p0, Lcom/twitter/android/oi;->h:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 1540
    new-instance v1, Lcom/twitter/android/oj;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/oj;-><init>(Lcom/twitter/android/oi;Lcom/twitter/android/SearchFragment;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/SearchFragment;->a(Lcom/twitter/android/op;)V

    .line 1547
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/twitter/android/oi;->h:Z

    .line 1549
    :cond_0
    return-object v0
.end method

.method public synthetic getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 1480
    invoke-virtual {p0, p1}, Lcom/twitter/android/oi;->b(I)Lcom/twitter/app/common/base/BaseFragment;

    move-result-object v0

    return-object v0
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .prologue
    .line 1503
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/ek;->onPageScrolled(IFI)V

    .line 1504
    iget-object v0, p0, Lcom/twitter/android/oi;->g:Lcom/twitter/android/SearchActivity;

    invoke-static {v0}, Lcom/twitter/android/SearchActivity;->b(Lcom/twitter/android/SearchActivity;)Lcom/twitter/internal/android/widget/DockLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1505
    iget-object v0, p0, Lcom/twitter/android/oi;->g:Lcom/twitter/android/SearchActivity;

    invoke-static {v0}, Lcom/twitter/android/SearchActivity;->b(Lcom/twitter/android/SearchActivity;)Lcom/twitter/internal/android/widget/DockLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/DockLayout;->b()V

    .line 1507
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .prologue
    .line 1492
    invoke-super {p0, p1}, Lcom/twitter/android/ek;->onPageSelected(I)V

    .line 1493
    iget-object v0, p0, Lcom/twitter/android/oi;->g:Lcom/twitter/android/SearchActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SearchActivity;->h()Lcom/twitter/android/SearchFragment;

    move-result-object v1

    .line 1494
    if-eqz v1, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/twitter/android/oi;->g:Lcom/twitter/android/SearchActivity;

    invoke-virtual {v1}, Lcom/twitter/android/SearchFragment;->o()I

    move-result v2

    iput v2, v0, Lcom/twitter/android/SearchActivity;->b:I

    .line 1497
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/oi;->g:Lcom/twitter/android/SearchActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "show_alternate"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1498
    iget-object v0, p0, Lcom/twitter/android/oi;->g:Lcom/twitter/android/SearchActivity;

    invoke-static {v0, v1}, Lcom/twitter/android/SearchActivity;->a(Lcom/twitter/android/SearchActivity;Lcom/twitter/android/SearchFragment;)V

    .line 1499
    return-void

    .line 1497
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 5

    .prologue
    .line 1516
    check-cast p1, Lcom/twitter/android/AbsPagesAdapter$PageSavedState;

    .line 1517
    iget-object v3, p1, Lcom/twitter/android/AbsPagesAdapter$PageSavedState;->a:[Ljava/lang/String;

    .line 1519
    array-length v0, v3

    iget-object v1, p0, Lcom/twitter/android/oi;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1520
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    .line 1521
    aget-object v0, v3, v2

    .line 1522
    iget-object v1, p0, Lcom/twitter/android/oi;->c:Landroid/support/v4/app/FragmentManager;

    .line 1523
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/TwitterListFragment;

    .line 1524
    if-eqz v0, :cond_0

    .line 1525
    iget-object v1, p0, Lcom/twitter/android/oi;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/client/ax;

    .line 1526
    invoke-virtual {v1, v0}, Lcom/twitter/library/client/ax;->a(Lcom/twitter/app/common/base/BaseFragment;)V

    .line 1520
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1529
    :cond_1
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1511
    new-instance v0, Lcom/twitter/android/AbsPagesAdapter$PageSavedState;

    iget-object v1, p0, Lcom/twitter/android/oi;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/twitter/android/AbsPagesAdapter$PageSavedState;-><init>(Ljava/util/List;)V

    return-object v0
.end method
