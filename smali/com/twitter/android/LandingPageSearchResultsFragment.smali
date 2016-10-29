.class public Lcom/twitter/android/LandingPageSearchResultsFragment;
.super Lcom/twitter/android/SearchResultsFragment;
.source "Twttr"


# instance fields
.field protected a:Ljava/lang/String;

.field private ac:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/twitter/android/SearchResultsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected I_()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method protected Q_()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/twitter/android/LandingPageSearchResultsFragment;->aw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-super {p0, p1}, Lcom/twitter/android/SearchResultsFragment;->a(Landroid/content/Context;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/LandingPageSearchResultsFragment;->u()V

    goto :goto_0
.end method

.method protected a(Lcom/twitter/app/common/list/aj;)V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/twitter/android/SearchResultsFragment;->a(Lcom/twitter/app/common/list/aj;)V

    .line 30
    const v0, 0x7f04035b

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->d(I)Lcom/twitter/app/common/list/aj;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lcom/twitter/app/common/list/aj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f040208

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/app/common/list/aj;->f(I)Lcom/twitter/app/common/list/aj;

    .line 33
    return-void

    .line 31
    :cond_0
    const v0, 0x7f04035c

    goto :goto_0
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/SearchResultsFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 85
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/LandingPageSearchResultsFragment;->F:Lcom/twitter/android/oq;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/twitter/android/LandingPageSearchResultsFragment;->F:Lcom/twitter/android/oq;

    invoke-interface {v0}, Lcom/twitter/android/oq;->a()V

    .line 88
    :cond_0
    return-void
.end method

.method protected a(Lcom/twitter/refresh/widget/a;Z)V
    .locals 3

    .prologue
    .line 42
    iget-wide v0, p1, Lcom/twitter/refresh/widget/a;->c:J

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/LandingPageSearchResultsFragment;->b(J)I

    move-result v0

    .line 46
    invoke-virtual {p0}, Lcom/twitter/android/LandingPageSearchResultsFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    .line 47
    iget-object v2, v1, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-nez p2, :cond_1

    .line 48
    :cond_0
    const/4 v0, 0x1

    iget v2, p1, Lcom/twitter/refresh/widget/a;->d:I

    invoke-virtual {v1, v0, v2}, Lcom/twitter/app/common/list/aa;->a(II)V

    .line 50
    :cond_1
    return-void
.end method

.method public m()V
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/twitter/android/LandingPageSearchResultsFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/twitter/android/LandingPageSearchResultsFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    .line 72
    iget-object v1, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const/4 v1, 0x1

    iget v2, p0, Lcom/twitter/android/LandingPageSearchResultsFragment;->ac:I

    invoke-virtual {v0, v1, v2}, Lcom/twitter/app/common/list/aa;->a(II)V

    .line 77
    :cond_0
    iget v0, p0, Lcom/twitter/android/LandingPageSearchResultsFragment;->o:I

    if-lez v0, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/twitter/android/LandingPageSearchResultsFragment;->l()V

    .line 80
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/twitter/android/SearchResultsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/twitter/android/LandingPageSearchResultsFragment;->t()Lcom/twitter/android/or;

    move-result-object v0

    const-string/jumbo v1, "scribe_component"

    invoke-virtual {v0, v1}, Lcom/twitter/android/or;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/LandingPageSearchResultsFragment;->a:Ljava/lang/String;

    .line 24
    invoke-virtual {p0}, Lcom/twitter/android/LandingPageSearchResultsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0330

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/LandingPageSearchResultsFragment;->ac:I

    .line 25
    return-void
.end method
