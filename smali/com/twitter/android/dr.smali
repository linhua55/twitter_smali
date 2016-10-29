.class public Lcom/twitter/android/dr;
.super Lcom/twitter/android/xo;
.source "Twttr"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/client/Session;Lcom/twitter/library/widget/SlidingPanel;)V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/twitter/android/xo;-><init>(Landroid/app/Activity;Lcom/twitter/library/client/Session;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/widget/SlidingPanel;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/android/yb;
    .locals 6

    .prologue
    .line 18
    new-instance v0, Lcom/twitter/android/ds;

    iget-object v1, p0, Lcom/twitter/android/dr;->d:Landroid/app/Activity;

    iget v2, p0, Lcom/twitter/android/dr;->e:I

    iget-object v4, p0, Lcom/twitter/android/dr;->c:Lcom/twitter/library/util/FriendshipCache;

    const/4 v5, 0x0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/ds;-><init>(Landroid/content/Context;ILcom/twitter/library/widget/e;Lcom/twitter/library/util/FriendshipCache;Z)V

    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/twitter/android/xo;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/v4/app/LoaderManager;[J)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/twitter/android/xo;->a(Landroid/support/v4/app/LoaderManager;[J)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/v4/content/Loader;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/twitter/android/xo;->a(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/twitter/android/xo;->a(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/twitter/android/xs;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/twitter/android/xo;->a(Lcom/twitter/android/xs;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/twitter/library/widget/UserView;JII)V
    .locals 0

    .prologue
    .line 10
    invoke-super/range {p0 .. p5}, Lcom/twitter/android/xo;->a(Lcom/twitter/library/widget/UserView;JII)V

    return-void
.end method

.method public bridge synthetic a(Z)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/twitter/android/xo;->a(Z)V

    return-void
.end method

.method public bridge synthetic b()V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0}, Lcom/twitter/android/xo;->b()V

    return-void
.end method

.method public bridge synthetic b(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/twitter/android/xo;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic c()Z
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/twitter/android/xo;->c()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/twitter/android/xo;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/twitter/android/xo;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 10
    invoke-super/range {p0 .. p5}, Lcom/twitter/android/xo;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public bridge synthetic onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/twitter/android/xo;->onLoaderReset(Landroid/support/v4/content/Loader;)V

    return-void
.end method

.method public bridge synthetic onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/twitter/android/xo;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
