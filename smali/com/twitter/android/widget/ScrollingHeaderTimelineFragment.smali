.class public abstract Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;
.super Lcom/twitter/android/TimelineFragment;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/twitter/android/TimelineFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected I_()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method protected Q_()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method protected a(Lcom/twitter/app/common/list/aj;)V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/twitter/android/TimelineFragment;->a(Lcom/twitter/app/common/list/aj;)V

    .line 41
    new-instance v0, Lcom/twitter/app/common/list/an;

    const/4 v1, 0x0

    .line 42
    invoke-static {}, Lcom/twitter/util/collection/au;->g()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/twitter/app/common/list/an;-><init>(ZLjava/util/Set;)V

    .line 41
    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->a(Lcom/twitter/app/common/list/an;)Lcom/twitter/app/common/list/aj;

    .line 43
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/TimelineFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 32
    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 33
    instance-of v1, v0, Lcom/twitter/android/ScrollingHeaderActivity;

    if-eqz v1, :cond_0

    .line 34
    check-cast v0, Lcom/twitter/android/ScrollingHeaderActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/ScrollingHeaderActivity;->a(Z)V

    .line 36
    :cond_0
    return-void
.end method

.method protected ao()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method
