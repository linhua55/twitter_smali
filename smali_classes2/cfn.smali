.class public Lcfn;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Lcom/twitter/database/model/k;Lcks;II)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/database/model/k",
            "<",
            "Lbci;",
            ">;",
            "Lcks;",
            "II)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 54
    iget-object v0, p0, Lcom/twitter/database/model/k;->d:Ljava/lang/Object;

    check-cast v0, Lbci;

    .line 55
    invoke-interface {v0, p3}, Lbci;->a(I)Lbci;

    move-result-object v0

    .line 56
    invoke-interface {v0, p2}, Lbci;->b(I)Lbci;

    move-result-object v0

    .line 57
    invoke-virtual {p1}, Lcks;->a()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lbci;->a(J)Lbci;

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Lcks;->c()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lbci;->b(J)Lbci;

    move-result-object v0

    iget-wide v2, p1, Lcks;->b:J

    .line 59
    invoke-interface {v0, v2, v3}, Lbci;->c(J)Lbci;

    move-result-object v0

    iget-wide v2, p1, Lcks;->c:J

    .line 60
    invoke-interface {v0, v2, v3}, Lbci;->d(J)Lbci;

    move-result-object v0

    .line 61
    invoke-interface {v0, v1}, Lbci;->a(Z)Lbci;

    .line 62
    invoke-virtual {p0}, Lcom/twitter/database/model/k;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
