.class public abstract Lanz;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/people/adapters/viewbinders/av;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lckn",
        "<*>;>",
        "Ljava/lang/Object;",
        "Lcom/twitter/android/people/adapters/viewbinders/av",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/android/r;

.field private final b:Lcom/twitter/android/util/ah;


# direct methods
.method protected constructor <init>(Lcom/twitter/android/r;Lcom/twitter/android/util/ah;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lanz;->a:Lcom/twitter/android/r;

    .line 29
    iput-object p2, p0, Lanz;->b:Lcom/twitter/android/util/ah;

    .line 30
    return-void
.end method


# virtual methods
.method protected abstract a(Lckn;I)Lanp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Lanp;"
        }
    .end annotation
.end method

.method public a(Landroid/view/View;Lckn;I)V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;I)V"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lanz;->b:Lcom/twitter/android/util/ah;

    iget-object v1, p2, Lckn;->b:Lcks;

    invoke-virtual {v1}, Lcks;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/util/ah;->a(J)V

    .line 36
    iget-object v0, p0, Lanz;->a:Lcom/twitter/android/r;

    invoke-virtual {p0, p2, p3}, Lanz;->a(Lckn;I)Lanp;

    move-result-object v1

    invoke-virtual {v1}, Lanp;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/r;->a(Landroid/os/Bundle;)V

    .line 37
    instance-of v0, p1, Lcom/twitter/internal/android/widget/p;

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/p;

    invoke-virtual {p0, p2}, Lanz;->a(Lckn;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Lcom/twitter/internal/android/widget/p;->setHighlighted(Z)V

    .line 40
    :cond_0
    return-void

    .line 38
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 20
    check-cast p2, Lckn;

    invoke-virtual {p0, p1, p2, p3}, Lanz;->a(Landroid/view/View;Lckn;I)V

    return-void
.end method

.method protected a(Lckn;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p1, Lckn;->a:Lckm;

    iget-boolean v0, v0, Lckm;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lckn;->b:Lcks;

    invoke-virtual {v0}, Lcks;->c()J

    move-result-wide v0

    iget-object v2, p0, Lanz;->b:Lcom/twitter/android/util/ah;

    invoke-virtual {v2}, Lcom/twitter/android/util/ah;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 20
    check-cast p1, Lckn;

    invoke-virtual {p0, p1}, Lanz;->b(Lckn;)Z

    move-result v0

    return v0
.end method

.method public b(Lckn;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method
