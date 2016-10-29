.class public abstract Ltv/periscope/android/util/d;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/util/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ltv/periscope/android/util/y",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected abstract a()I
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Ltv/periscope/android/util/d;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Ltv/periscope/android/util/d;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 22
    :goto_0
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/util/d;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected abstract a(I)Z
.end method

.method protected abstract c(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public c()V
    .locals 4

    .prologue
    .line 26
    invoke-virtual {p0}, Ltv/periscope/android/util/d;->a()I

    move-result v1

    .line 27
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 28
    invoke-virtual {p0, v0}, Ltv/periscope/android/util/d;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    iget-object v2, p0, Ltv/periscope/android/util/d;->a:Ljava/util/Set;

    invoke-virtual {p0, v0}, Ltv/periscope/android/util/d;->c(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ltv/periscope/android/util/d;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 43
    return-void
.end method

.method public e()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    .line 48
    invoke-virtual {p0}, Ltv/periscope/android/util/d;->a()I

    move-result v4

    move v3, v2

    move v0, v2

    .line 50
    :goto_0
    if-ge v3, v4, :cond_2

    .line 51
    invoke-virtual {p0, v3}, Ltv/periscope/android/util/d;->a(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 53
    iget-object v5, p0, Ltv/periscope/android/util/d;->a:Ljava/util/Set;

    invoke-virtual {p0, v3}, Ltv/periscope/android/util/d;->c(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v1

    .line 59
    :goto_1
    if-lez v0, :cond_1

    if-nez v3, :cond_1

    move v0, v1

    :goto_2
    return v0

    .line 50
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 59
    goto :goto_2

    :cond_2
    move v3, v2

    goto :goto_1
.end method

.method public f()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Ltv/periscope/android/util/d;->a:Ljava/util/Set;

    return-object v0
.end method
