.class Lcom/twitter/android/qu;
.super Lcom/twitter/android/ek;
.source "Twttr"


# instance fields
.field final synthetic g:Lcom/twitter/android/TabbedVitFollowersActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/TabbedVitFollowersActivity;Landroid/support/v4/app/FragmentActivity;Ljava/util/List;Landroid/support/v4/view/ViewPager;Lcom/twitter/internal/android/widget/HorizontalListView;Lcom/twitter/android/kj;Lcom/twitter/internal/android/widget/DockLayout;)V
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
            "Lcom/twitter/internal/android/widget/DockLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .line 182
    iput-object p1, p0, Lcom/twitter/android/qu;->g:Lcom/twitter/android/TabbedVitFollowersActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 183
    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/ek;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/util/List;Landroid/support/v4/view/ViewPager;Lcom/twitter/internal/android/widget/HorizontalListView;Lcom/twitter/android/kj;Lcom/twitter/internal/android/widget/DockLayout;)V

    .line 184
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 4

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/twitter/android/ek;->onPageSelected(I)V

    .line 189
    iget-object v0, p0, Lcom/twitter/android/qu;->g:Lcom/twitter/android/TabbedVitFollowersActivity;

    iget-object v1, p0, Lcom/twitter/android/qu;->g:Lcom/twitter/android/TabbedVitFollowersActivity;

    invoke-static {v1}, Lcom/twitter/android/TabbedVitFollowersActivity;->a(Lcom/twitter/android/TabbedVitFollowersActivity;)Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/twitter/android/TabbedVitFollowersActivity;->a(IJ)V

    .line 190
    return-void
.end method
