.class Lcom/twitter/app/main/m;
.super Lcom/twitter/android/AbsPagesAdapter;
.source "Twttr"


# instance fields
.field final synthetic g:Lcom/twitter/app/main/MainActivity;

.field private final h:Lcom/twitter/internal/android/widget/DockLayout;

.field private i:I


# direct methods
.method constructor <init>(Lcom/twitter/app/main/MainActivity;Lcom/twitter/app/main/MainActivity;Ljava/util/List;Landroid/support/v4/view/ViewPager;Lcom/twitter/internal/android/widget/HorizontalListView;Lcom/twitter/android/kj;Lcom/twitter/internal/android/widget/DockLayout;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/app/main/MainActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/client/ax;",
            ">;",
            "Landroid/support/v4/view/ViewPager;",
            "Lcom/twitter/internal/android/widget/HorizontalListView;",
            "Lcom/twitter/android/kj;",
            "Lcom/twitter/internal/android/widget/DockLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1927
    iput-object p1, p0, Lcom/twitter/app/main/m;->g:Lcom/twitter/app/main/MainActivity;

    .line 1928
    invoke-virtual {p2}, Lcom/twitter/app/main/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/AbsPagesAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;Landroid/support/v4/view/ViewPager;Lcom/twitter/internal/android/widget/HorizontalListView;Lcom/twitter/android/kj;)V

    .line 1929
    iput-object p7, p0, Lcom/twitter/app/main/m;->h:Lcom/twitter/internal/android/widget/DockLayout;

    .line 1930
    new-instance v0, Lcom/twitter/app/main/n;

    invoke-direct {v0, p0, p1}, Lcom/twitter/app/main/n;-><init>(Lcom/twitter/app/main/m;Lcom/twitter/app/main/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/twitter/app/main/m;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1942
    return-void
.end method

.method static synthetic a(Lcom/twitter/app/main/m;I)I
    .locals 0

    .prologue
    .line 1921
    iput p1, p0, Lcom/twitter/app/main/m;->f:I

    return p1
.end method

.method static synthetic b(Lcom/twitter/app/main/m;I)I
    .locals 0

    .prologue
    .line 1921
    iput p1, p0, Lcom/twitter/app/main/m;->f:I

    return p1
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/twitter/app/main/m;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/twitter/app/main/m;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ax;

    iget-object v0, v0, Lcom/twitter/library/client/ax;->e:Ljava/lang/String;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 1981
    invoke-super {p0, p1, p2}, Lcom/twitter/android/AbsPagesAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/twitter/app/common/list/TwitterListFragment;

    .line 1982
    iget-object v0, p0, Lcom/twitter/app/main/m;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/twitter/library/client/ax;

    .line 1983
    invoke-virtual {v2, v6}, Lcom/twitter/library/client/ax;->a(Lcom/twitter/app/common/base/BaseFragment;)V

    .line 1984
    new-instance v0, Lcom/twitter/app/main/l;

    iget-object v1, p0, Lcom/twitter/app/main/m;->g:Lcom/twitter/app/main/MainActivity;

    iget-object v2, v2, Lcom/twitter/library/client/ax;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/twitter/app/main/m;->g:Lcom/twitter/app/main/MainActivity;

    iget-object v3, v3, Lcom/twitter/app/main/MainActivity;->m:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/twitter/app/main/m;->h:Lcom/twitter/internal/android/widget/DockLayout;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/app/main/l;-><init>(Lcom/twitter/app/main/MainActivity;Landroid/net/Uri;Landroid/support/v4/view/ViewPager;Lcom/twitter/internal/android/widget/DockLayout;Lcom/twitter/android/AbsPagesAdapter;)V

    invoke-virtual {v6, v0}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/app/common/list/ah;)Lcom/twitter/app/common/list/TwitterListFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/app/main/m;->g:Lcom/twitter/app/main/MainActivity;

    iget-object v1, v1, Lcom/twitter/app/main/MainActivity;->h:Lcom/twitter/android/ej;

    .line 1985
    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/refresh/widget/j;)Lcom/twitter/app/common/list/TwitterListFragment;

    .line 1986
    iget-object v0, p0, Lcom/twitter/app/main/m;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 1987
    invoke-virtual {v6}, Lcom/twitter/app/common/list/TwitterListFragment;->au()V

    .line 1989
    :cond_0
    return-object v6
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 2025
    invoke-super {p0, p1}, Lcom/twitter/android/AbsPagesAdapter;->onPageScrollStateChanged(I)V

    .line 2026
    iput p1, p0, Lcom/twitter/app/main/m;->i:I

    .line 2027
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2013
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/AbsPagesAdapter;->onPageScrolled(IFI)V

    .line 2014
    iget v2, p0, Lcom/twitter/app/main/m;->i:I

    if-ne v2, v0, :cond_0

    .line 2015
    if-nez p1, :cond_1

    move v2, v0

    .line 2016
    :goto_0
    if-nez p3, :cond_2

    .line 2017
    :goto_1
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 2018
    iget-object v0, p0, Lcom/twitter/app/main/m;->g:Lcom/twitter/app/main/MainActivity;

    invoke-virtual {v0}, Lcom/twitter/app/main/MainActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->f()Z

    .line 2021
    :cond_0
    return-void

    :cond_1
    move v2, v1

    .line 2015
    goto :goto_0

    :cond_2
    move v0, v1

    .line 2016
    goto :goto_1
.end method

.method public onPageSelected(I)V
    .locals 3

    .prologue
    .line 1994
    invoke-super {p0, p1}, Lcom/twitter/android/AbsPagesAdapter;->onPageSelected(I)V

    .line 1996
    iget-object v0, p0, Lcom/twitter/app/main/m;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ax;

    .line 1997
    iget-object v1, p0, Lcom/twitter/app/main/m;->g:Lcom/twitter/app/main/MainActivity;

    iget-object v2, v0, Lcom/twitter/library/client/ax;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/twitter/app/main/MainActivity;->c(Landroid/net/Uri;)V

    .line 1998
    iget v1, p0, Lcom/twitter/app/main/m;->f:I

    invoke-virtual {p0, v1}, Lcom/twitter/app/main/m;->c(I)Lcom/twitter/library/client/ax;

    move-result-object v1

    .line 1999
    invoke-virtual {p0, v1}, Lcom/twitter/app/main/m;->a(Lcom/twitter/library/client/ax;)V

    .line 2000
    invoke-virtual {p0, v0}, Lcom/twitter/app/main/m;->c(Lcom/twitter/library/client/ax;)Lcom/twitter/app/common/base/BaseFragment;

    move-result-object v1

    check-cast v1, Lcom/twitter/app/common/list/TwitterListFragment;

    .line 2001
    if-eqz v1, :cond_0

    .line 2002
    invoke-virtual {v1}, Lcom/twitter/app/common/list/TwitterListFragment;->au()V

    .line 2005
    :cond_0
    iget-object v1, p0, Lcom/twitter/app/main/m;->g:Lcom/twitter/app/main/MainActivity;

    invoke-virtual {v1, v0}, Lcom/twitter/app/main/MainActivity;->c(Lcom/twitter/library/client/ax;)V

    .line 2007
    iput p1, p0, Lcom/twitter/app/main/m;->f:I

    .line 2008
    iget-object v0, p0, Lcom/twitter/app/main/m;->g:Lcom/twitter/app/main/MainActivity;

    invoke-virtual {v0}, Lcom/twitter/app/main/MainActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->h()V

    .line 2009
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 9

    .prologue
    .line 1961
    check-cast p1, Lcom/twitter/android/AbsPagesAdapter$PageSavedState;

    .line 1962
    iget-object v8, p1, Lcom/twitter/android/AbsPagesAdapter$PageSavedState;->a:[Ljava/lang/String;

    .line 1964
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    array-length v0, v8

    if-ge v7, v0, :cond_1

    iget-object v0, p0, Lcom/twitter/app/main/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 1965
    aget-object v0, v8, v7

    .line 1966
    iget-object v1, p0, Lcom/twitter/app/main/m;->c:Landroid/support/v4/app/FragmentManager;

    .line 1967
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/twitter/app/common/list/TwitterListFragment;

    .line 1968
    if-eqz v6, :cond_0

    .line 1969
    iget-object v0, p0, Lcom/twitter/app/main/m;->b:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/twitter/library/client/ax;

    .line 1970
    invoke-virtual {v2, v6}, Lcom/twitter/library/client/ax;->a(Lcom/twitter/app/common/base/BaseFragment;)V

    .line 1971
    new-instance v0, Lcom/twitter/app/main/l;

    iget-object v1, p0, Lcom/twitter/app/main/m;->g:Lcom/twitter/app/main/MainActivity;

    iget-object v2, v2, Lcom/twitter/library/client/ax;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/twitter/app/main/m;->g:Lcom/twitter/app/main/MainActivity;

    iget-object v3, v3, Lcom/twitter/app/main/MainActivity;->m:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/twitter/app/main/m;->h:Lcom/twitter/internal/android/widget/DockLayout;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/app/main/l;-><init>(Lcom/twitter/app/main/MainActivity;Landroid/net/Uri;Landroid/support/v4/view/ViewPager;Lcom/twitter/internal/android/widget/DockLayout;Lcom/twitter/android/AbsPagesAdapter;)V

    invoke-virtual {v6, v0}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/app/common/list/ah;)Lcom/twitter/app/common/list/TwitterListFragment;

    .line 1972
    iget-object v0, p0, Lcom/twitter/app/main/m;->h:Lcom/twitter/internal/android/widget/DockLayout;

    if-eqz v0, :cond_0

    .line 1973
    iget-object v0, p0, Lcom/twitter/app/main/m;->g:Lcom/twitter/app/main/MainActivity;

    iget-object v0, v0, Lcom/twitter/app/main/MainActivity;->h:Lcom/twitter/android/ej;

    invoke-virtual {v6, v0}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/refresh/widget/j;)Lcom/twitter/app/common/list/TwitterListFragment;

    .line 1964
    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 1977
    :cond_1
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1956
    new-instance v0, Lcom/twitter/android/AbsPagesAdapter$PageSavedState;

    iget-object v1, p0, Lcom/twitter/app/main/m;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/twitter/android/AbsPagesAdapter$PageSavedState;-><init>(Ljava/util/List;)V

    return-object v0
.end method
