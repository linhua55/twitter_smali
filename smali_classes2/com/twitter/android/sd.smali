.class public Lcom/twitter/android/sd;
.super Lcom/twitter/app/common/list/v;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/list/TwitterListFragment",
        "<",
        "Lcom/twitter/android/timeline/bp;",
        "Lcom/twitter/android/vz;",
        ">.com/twitter/app/common/list/v;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/TimelineFragment;


# direct methods
.method protected constructor <init>(Lcom/twitter/android/TimelineFragment;)V
    .locals 0

    .prologue
    .line 2131
    iput-object p1, p0, Lcom/twitter/android/sd;->a:Lcom/twitter/android/TimelineFragment;

    invoke-direct {p0, p1}, Lcom/twitter/app/common/list/v;-><init>(Lcom/twitter/app/common/list/TwitterListFragment;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/twitter/android/sd;->a:Lcom/twitter/android/TimelineFragment;

    invoke-virtual {v0}, Lcom/twitter/android/TimelineFragment;->ai()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2136
    iget-object v0, p0, Lcom/twitter/android/sd;->a:Lcom/twitter/android/TimelineFragment;

    invoke-virtual {v0}, Lcom/twitter/android/TimelineFragment;->ah()Z

    move-result v0

    .line 2139
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/sd;->a:Lcom/twitter/android/TimelineFragment;

    iget v0, v0, Lcom/twitter/android/TimelineFragment;->m:I

    invoke-static {v0}, Lcom/twitter/model/timeline/cq;->c(I)Z

    move-result v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 2144
    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 2149
    const/4 v0, 0x1

    return v0
.end method
