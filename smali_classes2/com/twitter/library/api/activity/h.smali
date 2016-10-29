.class final Lcom/twitter/library/api/activity/h;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldau;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldau",
        "<",
        "Lcks;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcks;)Z
    .locals 2

    .prologue
    .line 59
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcle;

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/twitter/library/api/activity/FetchActivityTimeline;->t()Ljava/util/List;

    move-result-object v0

    check-cast p1, Lcle;

    iget v1, p1, Lcle;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 56
    check-cast p1, Lcks;

    invoke-virtual {p0, p1}, Lcom/twitter/library/api/activity/h;->a(Lcks;)Z

    move-result v0

    return v0
.end method
