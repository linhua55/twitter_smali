.class public abstract Lcom/twitter/model/dms/l;
.super Lcom/twitter/model/dms/b;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/model/dms/n;",
        ">",
        "Lcom/twitter/model/dms/b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public g:J


# direct methods
.method protected constructor <init>(Lcom/twitter/model/dms/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/dms/m",
            "<**TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/b;-><init>(Lcom/twitter/model/dms/d;)V

    .line 32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/twitter/model/dms/l;->g:J

    .line 33
    return-void
.end method


# virtual methods
.method public abstract A()Z
.end method

.method public a(Lcom/twitter/model/dms/g;)J
    .locals 4

    .prologue
    .line 132
    iget-wide v0, p1, Lcom/twitter/model/dms/g;->f:J

    iget-wide v2, p0, Lcom/twitter/model/dms/l;->f:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(ZZ)Lcom/twitter/model/dms/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/twitter/model/dms/l",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 87
    return-object p0
.end method

.method protected a(I)Z
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->p()Lcom/twitter/model/dms/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->p()Lcom/twitter/model/dms/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/dms/i;->a()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/dms/l;)Z
    .locals 4

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/twitter/model/dms/l;->f()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->f()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0, p1}, Lcom/twitter/model/dms/l;->a(Lcom/twitter/model/dms/g;)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->s()Z

    move-result v0

    invoke-virtual {p1}, Lcom/twitter/model/dms/l;->s()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p1}, Lcom/twitter/model/dms/l;->r()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract i()I
.end method

.method public abstract j()Z
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public final l()J
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/n;

    iget-wide v0, v0, Lcom/twitter/model/dms/n;->a:J

    return-wide v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/n;

    iget-object v0, v0, Lcom/twitter/model/dms/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()Lcom/twitter/model/core/bm;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/n;

    iget-object v0, v0, Lcom/twitter/model/dms/n;->c:Lcom/twitter/model/core/bm;

    return-object v0
.end method

.method public final p()Lcom/twitter/model/dms/i;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/n;

    iget-object v0, v0, Lcom/twitter/model/dms/n;->d:Lcom/twitter/model/dms/i;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/n;

    iget-object v0, v0, Lcom/twitter/model/dms/n;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/n;

    iget-boolean v0, v0, Lcom/twitter/model/dms/n;->f:Z

    return v0
.end method

.method public final s()Z
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/n;

    iget-boolean v0, v0, Lcom/twitter/model/dms/n;->g:Z

    return v0
.end method

.method public final t()I
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/n;

    iget v0, v0, Lcom/twitter/model/dms/n;->h:I

    return v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/model/dms/l;->a(I)Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/twitter/model/dms/l;->a(I)Z

    move-result v0

    return v0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/model/dms/l;->a(I)Z

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/model/dms/l;->a(I)Z

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->u()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public z()Z
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->w()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
