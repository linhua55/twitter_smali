.class public abstract Lcom/twitter/model/moments/viewmodels/MomentPage;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/model/moments/ad;

.field private final b:Lcom/twitter/model/moments/ak;

.field private final c:Lcom/twitter/model/moments/MomentPageDisplayMode;

.field private final d:Lcom/twitter/model/moments/z;

.field private final e:Lcom/twitter/model/moments/ah;


# direct methods
.method protected constructor <init>(Lcom/twitter/model/moments/viewmodels/l;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iget-object v0, p1, Lcom/twitter/model/moments/viewmodels/l;->c:Lcom/twitter/model/moments/ak;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p1, Lcom/twitter/model/moments/viewmodels/l;->d:Lcom/twitter/model/moments/MomentPageDisplayMode;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p1, Lcom/twitter/model/moments/viewmodels/l;->b:Lcom/twitter/model/moments/ad;

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/MomentPage;->a:Lcom/twitter/model/moments/ad;

    .line 41
    iget-object v0, p1, Lcom/twitter/model/moments/viewmodels/l;->c:Lcom/twitter/model/moments/ak;

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/MomentPage;->b:Lcom/twitter/model/moments/ak;

    .line 42
    iget-object v0, p1, Lcom/twitter/model/moments/viewmodels/l;->d:Lcom/twitter/model/moments/MomentPageDisplayMode;

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/MomentPage;->c:Lcom/twitter/model/moments/MomentPageDisplayMode;

    .line 43
    iget-object v0, p1, Lcom/twitter/model/moments/viewmodels/l;->e:Lcom/twitter/model/moments/z;

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/MomentPage;->d:Lcom/twitter/model/moments/z;

    .line 44
    iget-object v0, p1, Lcom/twitter/model/moments/viewmodels/l;->f:Lcom/twitter/model/moments/ah;

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/MomentPage;->e:Lcom/twitter/model/moments/ah;

    .line 45
    return-void
.end method

.method public static a(Lcom/twitter/model/moments/ak;)Ldau;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/ak;",
            ")",
            "Ldau",
            "<",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Lcom/twitter/model/moments/viewmodels/k;

    invoke-direct {v0, p0}, Lcom/twitter/model/moments/viewmodels/k;-><init>(Lcom/twitter/model/moments/ak;)V

    return-object v0
.end method


# virtual methods
.method public abstract e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;
.end method

.method public f()Lcom/twitter/model/moments/ad;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/MomentPage;->a:Lcom/twitter/model/moments/ad;

    return-object v0
.end method

.method public g()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->f()Lcom/twitter/model/moments/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->f()Lcom/twitter/model/moments/ad;

    move-result-object v0

    iget-wide v0, v0, Lcom/twitter/model/moments/ad;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lcom/twitter/model/moments/MomentPageDisplayMode;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/MomentPage;->c:Lcom/twitter/model/moments/MomentPageDisplayMode;

    return-object v0
.end method

.method public i()Lcom/twitter/model/moments/ak;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/MomentPage;->b:Lcom/twitter/model/moments/ak;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/MomentPage;->b:Lcom/twitter/model/moments/ak;

    invoke-virtual {v0}, Lcom/twitter/model/moments/ak;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/MomentPage;->c:Lcom/twitter/model/moments/MomentPageDisplayMode;

    sget-object v1, Lcom/twitter/model/moments/MomentPageDisplayMode;->a:Lcom/twitter/model/moments/MomentPageDisplayMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/MomentPage;->c:Lcom/twitter/model/moments/MomentPageDisplayMode;

    sget-object v1, Lcom/twitter/model/moments/MomentPageDisplayMode;->c:Lcom/twitter/model/moments/MomentPageDisplayMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {}, Lcom/twitter/util/collection/au;->g()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/moments/viewmodels/MomentPage$Type;->b:Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    if-eq v0, v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/moments/viewmodels/MomentPage$Type;->f:Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/moments/viewmodels/MomentPage$Type;->c:Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    if-eq v0, v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/moments/viewmodels/MomentPage$Type;->g:Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    .line 103
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract o()Lcom/twitter/model/moments/viewmodels/l;
.end method

.method public p()Lcom/twitter/model/moments/z;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/MomentPage;->d:Lcom/twitter/model/moments/z;

    return-object v0
.end method

.method public q()Lcom/twitter/model/moments/ah;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/MomentPage;->e:Lcom/twitter/model/moments/ah;

    return-object v0
.end method
