.class public Lcom/twitter/android/geo/places/PlaceTimelineFragment;
.super Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;
.source "Twttr"


# instance fields
.field private o:Lcom/twitter/android/geo/places/q;

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/geo/places/q;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/twitter/android/geo/places/PlaceTimelineFragment;->o:Lcom/twitter/android/geo/places/q;

    .line 23
    return-void
.end method

.method protected a_(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 37
    invoke-super {p0, p1}, Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;->a_(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method protected h(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 50
    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/geo/places/PlaceTimelineFragment;->o:Lcom/twitter/android/geo/places/q;

    if-eqz v1, :cond_0

    .line 51
    iput-boolean v0, p0, Lcom/twitter/android/geo/places/PlaceTimelineFragment;->p:Z

    .line 52
    iget-object v1, p0, Lcom/twitter/android/geo/places/PlaceTimelineFragment;->o:Lcom/twitter/android/geo/places/q;

    invoke-interface {v1}, Lcom/twitter/android/geo/places/q;->h()V

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected l(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 65
    if-ne p1, v0, :cond_0

    iget-boolean v1, p0, Lcom/twitter/android/geo/places/PlaceTimelineFragment;->p:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic o()Lcom/twitter/android/timeline/bm;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/twitter/android/geo/places/PlaceTimelineFragment;->v()Lcom/twitter/android/timeline/ak;

    move-result-object v0

    return-object v0
.end method

.method public synthetic p()Lcom/twitter/app/common/list/w;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/twitter/android/geo/places/PlaceTimelineFragment;->v()Lcom/twitter/android/timeline/ak;

    move-result-object v0

    return-object v0
.end method

.method public synthetic q()Lcom/twitter/app/common/base/f;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/twitter/android/geo/places/PlaceTimelineFragment;->v()Lcom/twitter/android/timeline/ak;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/geo/places/PlaceTimelineFragment;->p:Z

    .line 61
    return-void
.end method

.method public v()Lcom/twitter/android/timeline/ak;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/twitter/android/geo/places/PlaceTimelineFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/timeline/ak;->a(Landroid/os/Bundle;)Lcom/twitter/android/timeline/ak;

    move-result-object v0

    return-object v0
.end method
