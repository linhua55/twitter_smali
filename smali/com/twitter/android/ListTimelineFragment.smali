.class public Lcom/twitter/android/ListTimelineFragment;
.super Lcom/twitter/android/TimelineFragment;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/twitter/android/TimelineFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic o()Lcom/twitter/android/timeline/bm;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/twitter/android/ListTimelineFragment;->t()Lcom/twitter/android/timeline/ab;

    move-result-object v0

    return-object v0
.end method

.method public synthetic p()Lcom/twitter/app/common/list/w;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/twitter/android/ListTimelineFragment;->t()Lcom/twitter/android/timeline/ab;

    move-result-object v0

    return-object v0
.end method

.method public synthetic q()Lcom/twitter/app/common/base/f;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/twitter/android/ListTimelineFragment;->t()Lcom/twitter/android/timeline/ab;

    move-result-object v0

    return-object v0
.end method

.method public t()Lcom/twitter/android/timeline/ab;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/twitter/android/ListTimelineFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/timeline/ab;->a(Landroid/os/Bundle;)Lcom/twitter/android/timeline/ab;

    move-result-object v0

    return-object v0
.end method
