.class public Lcom/twitter/android/ProfileMediaListFragment;
.super Lcom/twitter/android/widget/ScrollingHeaderMediaListFragment;
.source "Twttr"


# instance fields
.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/twitter/android/widget/ScrollingHeaderMediaListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lcom/twitter/android/widget/ScrollingHeaderMediaListFragment;->a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 34
    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/ProfileMediaListFragment;->c:Z

    if-eqz v0, :cond_0

    .line 35
    const v0, 0x7f13002b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TypefacesTextView;

    .line 36
    const v2, 0x7f0a0382

    invoke-virtual {v0, v2}, Lcom/twitter/ui/widget/TypefacesTextView;->setText(I)V

    .line 38
    :cond_0
    return-object v1
.end method

.method protected a(Lcom/twitter/app/common/list/aj;)V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/twitter/android/widget/ScrollingHeaderMediaListFragment;->a(Lcom/twitter/app/common/list/aj;)V

    .line 44
    iget-boolean v0, p0, Lcom/twitter/android/ProfileMediaListFragment;->c:Z

    if-eqz v0, :cond_0

    .line 45
    const v0, 0x7f04035b

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->d(I)Lcom/twitter/app/common/list/aj;

    move-result-object v0

    const v1, 0x7f0402aa

    .line 46
    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/aj;->f(I)Lcom/twitter/app/common/list/aj;

    .line 48
    :cond_0
    return-void
.end method

.method protected l()V
    .locals 5

    .prologue
    .line 52
    new-instance v0, Lcom/twitter/android/metrics/b;

    const-string/jumbo v1, "timeline:bellbird_profile_photogrid"

    const-string/jumbo v2, "timeline:bellbird_profile_photogrid"

    sget-object v3, Laxz;->n:Laye;

    .line 53
    invoke-virtual {p0}, Lcom/twitter/android/ProfileMediaListFragment;->aX()Layj;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/metrics/b;-><init>(Ljava/lang/String;Ljava/lang/String;Laye;Layf;)V

    iput-object v0, p0, Lcom/twitter/android/ProfileMediaListFragment;->b:Lcom/twitter/android/metrics/b;

    .line 54
    iget-object v0, p0, Lcom/twitter/android/ProfileMediaListFragment;->b:Lcom/twitter/android/metrics/b;

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/metrics/b;->b(J)V

    .line 55
    iget-object v0, p0, Lcom/twitter/android/ProfileMediaListFragment;->b:Lcom/twitter/android/metrics/b;

    invoke-virtual {v0}, Lcom/twitter/android/metrics/b;->i()V

    .line 56
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/twitter/android/widget/ScrollingHeaderMediaListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/twitter/android/ProfileMediaListFragment;->p()Lcom/twitter/app/common/list/w;

    move-result-object v0

    const-string/jumbo v1, "is_me"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/ProfileMediaListFragment;->c:Z

    .line 29
    return-void
.end method
