.class public Lcom/twitter/android/EventGridFragment;
.super Lcom/twitter/android/SearchPhotosFragment;
.source "Twttr"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/twitter/android/SearchPhotosFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected I_()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method protected Q_()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method protected Y_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "search_id=?"

    return-object v0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/twitter/android/EventGridFragment;->aw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-super {p0, p1}, Lcom/twitter/android/SearchPhotosFragment;->a(Landroid/content/Context;)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/EventGridFragment;->u()V

    goto :goto_0
.end method

.method protected a(Lcom/twitter/app/common/list/aj;)V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/twitter/android/SearchPhotosFragment;->a(Lcom/twitter/app/common/list/aj;)V

    .line 32
    const v0, 0x7f04035b

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->d(I)Lcom/twitter/app/common/list/aj;

    move-result-object v1

    .line 33
    invoke-virtual {p1}, Lcom/twitter/app/common/list/aj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f040208

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/app/common/list/aj;->f(I)Lcom/twitter/app/common/list/aj;

    .line 35
    return-void

    .line 33
    :cond_0
    const v0, 0x7f04035c

    goto :goto_0
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/SearchPhotosFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 104
    invoke-virtual {p0}, Lcom/twitter/android/EventGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 105
    instance-of v1, v0, Lcom/twitter/android/ScrollingHeaderActivity;

    if-eqz v1, :cond_0

    .line 106
    check-cast v0, Lcom/twitter/android/ScrollingHeaderActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/ScrollingHeaderActivity;->a(Z)V

    .line 109
    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/EventGridFragment;->F:Lcom/twitter/android/oq;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/twitter/android/EventGridFragment;->F:Lcom/twitter/android/oq;

    invoke-interface {v0}, Lcom/twitter/android/oq;->a()V

    .line 112
    :cond_1
    return-void
.end method

.method protected a(Lcom/twitter/model/topic/TwitterTopic;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method protected a(Lcom/twitter/refresh/widget/a;Z)V
    .locals 3

    .prologue
    .line 64
    iget-wide v0, p1, Lcom/twitter/refresh/widget/a;->c:J

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/EventGridFragment;->b(J)I

    move-result v0

    .line 68
    invoke-virtual {p0}, Lcom/twitter/android/EventGridFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    iget-object v1, v1, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    if-nez p2, :cond_1

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/EventGridFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    const/4 v1, 0x1

    iget v2, p1, Lcom/twitter/refresh/widget/a;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/twitter/app/common/list/aa;->a(II)V

    .line 71
    :cond_1
    return-void
.end method

.method public m()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 87
    invoke-virtual {p0}, Lcom/twitter/android/EventGridFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/twitter/android/EventGridFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    .line 89
    iget-object v1, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget v1, p0, Lcom/twitter/android/EventGridFragment;->a:I

    invoke-virtual {v0, v3, v1}, Lcom/twitter/app/common/list/aa;->a(II)V

    .line 94
    :cond_0
    iget v0, p0, Lcom/twitter/android/EventGridFragment;->o:I

    if-lez v0, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/twitter/android/EventGridFragment;->l()V

    .line 96
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twitter/android/EventGridFragment;->B:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 97
    invoke-virtual {p0}, Lcom/twitter/android/EventGridFragment;->U()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "new_tweet_prompt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "click"

    aput-object v2, v0, v1

    .line 96
    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/EventGridFragment;->a(Ljava/lang/String;)V

    .line 99
    :cond_1
    return-void
.end method

.method public o()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x7

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/twitter/android/SearchPhotosFragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/twitter/android/EventGridFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0330

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/EventGridFragment;->a:I

    .line 27
    return-void
.end method
