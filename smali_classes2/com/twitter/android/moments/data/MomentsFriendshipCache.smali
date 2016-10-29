.class public Lcom/twitter/android/moments/data/MomentsFriendshipCache;
.super Lcom/twitter/library/util/FriendshipCache;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/util/FriendshipCache;",
        "Lcom/twitter/util/y",
        "<",
        "Lcom/twitter/model/moments/viewmodels/i;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/twitter/model/moments/viewmodels/a;)V
    .locals 3

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/twitter/library/util/FriendshipCache;-><init>()V

    .line 15
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/a;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 16
    instance-of v2, v0, Lcom/twitter/model/moments/viewmodels/y;

    if-eqz v2, :cond_0

    .line 17
    check-cast v0, Lcom/twitter/model/moments/viewmodels/y;

    .line 18
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/y;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/y;->t()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/moments/data/MomentsFriendshipCache;->a(Lcom/twitter/model/core/Tweet;)V

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v0, p0}, Lcom/twitter/model/moments/viewmodels/y;->a(Lcom/twitter/util/y;)V

    goto :goto_0

    .line 25
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/i;)V
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/i;->b()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    .line 30
    check-cast v0, Lcom/twitter/model/moments/viewmodels/y;

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/y;->t()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/moments/data/MomentsFriendshipCache;->a(Lcom/twitter/model/core/Tweet;)V

    .line 32
    :cond_0
    invoke-virtual {p1, p0}, Lcom/twitter/model/moments/viewmodels/i;->b(Lcom/twitter/util/y;)V

    .line 33
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/twitter/model/moments/viewmodels/i;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/data/MomentsFriendshipCache;->a(Lcom/twitter/model/moments/viewmodels/i;)V

    return-void
.end method
