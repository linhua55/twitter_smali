.class public Lcom/twitter/android/moments/viewmodels/ah;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Lcom/twitter/model/moments/viewmodels/m;Ljava/lang/Long;)J
    .locals 2

    .prologue
    .line 22
    if-eqz p0, :cond_0

    .line 23
    invoke-static {p0}, Lcom/twitter/android/moments/viewmodels/ah;->a(Lcom/twitter/model/moments/viewmodels/m;)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 25
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static a(Lcom/twitter/model/moments/viewmodels/m;)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/m;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    .line 15
    instance-of v1, v0, Lcom/twitter/model/moments/viewmodels/y;

    if-eqz v1, :cond_0

    .line 16
    check-cast v0, Lcom/twitter/model/moments/viewmodels/y;

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/y;->s()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 18
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
