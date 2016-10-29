.class public Lcom/twitter/model/moments/viewmodels/o;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 16
    instance-of v0, p0, Lcom/twitter/model/moments/viewmodels/y;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/twitter/model/moments/viewmodels/y;

    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/y;->t()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/twitter/model/moments/k;Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcom/twitter/model/moments/k;
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/twitter/model/moments/MomentPageDisplayMode;->a:Lcom/twitter/model/moments/MomentPageDisplayMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/twitter/model/moments/MomentPageDisplayMode;->c:Lcom/twitter/model/moments/MomentPageDisplayMode;

    if-ne p1, v0, :cond_1

    .line 52
    :cond_0
    invoke-static {p0}, Lcom/twitter/model/moments/m;->a(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/m;->a(Z)Lcom/twitter/model/moments/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/m;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/k;

    move-object p0, v0

    .line 54
    :cond_1
    return-object p0
.end method

.method public static a(Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/MomentPage;
    .locals 1

    .prologue
    .line 32
    instance-of v0, p0, Lcom/twitter/model/moments/viewmodels/e;

    if-eqz v0, :cond_0

    .line 33
    check-cast p0, Lcom/twitter/model/moments/viewmodels/e;

    invoke-interface {p0, p1}, Lcom/twitter/model/moments/viewmodels/e;->a(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object p0

    .line 35
    :cond_0
    return-object p0
.end method

.method public static a(Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/model/moments/viewmodels/l;Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcom/twitter/model/moments/viewmodels/MomentPage;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ":",
            "Lcom/twitter/model/moments/viewmodels/g;",
            "B:",
            "Lcom/twitter/model/moments/viewmodels/l",
            "<TP;TB;>;:",
            "Lcom/twitter/model/moments/viewmodels/f",
            "<TP;TB;>;>(TP;TB;",
            "Lcom/twitter/model/moments/MomentPageDisplayMode;",
            ")TP;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->i()Lcom/twitter/model/moments/ak;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/model/moments/am;->a(Lcom/twitter/model/moments/ak;)Lcom/twitter/model/moments/am;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/twitter/model/moments/am;->a(Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcom/twitter/model/moments/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/am;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ak;

    .line 44
    check-cast p0, Lcom/twitter/model/moments/viewmodels/g;

    invoke-interface {p0}, Lcom/twitter/model/moments/viewmodels/g;->c()Lcom/twitter/model/moments/k;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/twitter/model/moments/viewmodels/o;->a(Lcom/twitter/model/moments/k;Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcom/twitter/model/moments/k;

    move-result-object v1

    .line 45
    invoke-virtual {p1, p2}, Lcom/twitter/model/moments/viewmodels/l;->a(Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/twitter/model/moments/viewmodels/l;->a(Lcom/twitter/model/moments/ak;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/f;

    invoke-interface {v0, v1}, Lcom/twitter/model/moments/viewmodels/f;->a(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/l;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/MomentPage;

    return-object v0
.end method

.method public static b(Lcom/twitter/model/moments/viewmodels/MomentPage;)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 21
    instance-of v0, p0, Lcom/twitter/model/moments/viewmodels/aa;

    if-eqz v0, :cond_0

    .line 22
    check-cast p0, Lcom/twitter/model/moments/viewmodels/aa;

    .line 23
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/aa;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/aa;->r()Lcom/twitter/model/core/MediaEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/MediaEntity;

    iget-wide v0, v0, Lcom/twitter/model/core/MediaEntity;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 27
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
