.class public Lcom/twitter/android/moments/ui/fullscreen/gc;
.super Lcom/twitter/android/moments/ui/fullscreen/gb;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/fullscreen/ge;


# instance fields
.field private final b:Lrx/subjects/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/e",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/model/moments/viewmodels/i;Lcom/twitter/android/moments/ui/fullscreen/gp;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/moments/ui/fullscreen/gb;-><init>(Landroid/content/Context;Lcom/twitter/model/moments/viewmodels/i;Lcom/twitter/android/moments/ui/fullscreen/gp;)V

    .line 27
    invoke-static {}, Lrx/subjects/e;->q()Lrx/subjects/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gc;->b:Lrx/subjects/e;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/av/playback/bl;)V
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/fullscreen/gc;->f()Lcom/twitter/moments/core/ui/widget/sectionpager/d;

    move-result-object v0

    .line 49
    instance-of v1, v0, Lcom/twitter/android/moments/ui/fullscreen/ge;

    if-eqz v1, :cond_0

    .line 50
    check-cast v0, Lcom/twitter/android/moments/ui/fullscreen/ge;

    invoke-interface {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ge;->a(Lcom/twitter/library/av/playback/bl;)V

    .line 52
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/model/av/AVMedia;)V
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/fullscreen/gc;->f()Lcom/twitter/moments/core/ui/widget/sectionpager/d;

    move-result-object v0

    .line 41
    instance-of v1, v0, Lcom/twitter/android/moments/ui/fullscreen/ge;

    if-eqz v1, :cond_0

    .line 42
    check-cast v0, Lcom/twitter/android/moments/ui/fullscreen/ge;

    invoke-interface {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ge;->a(Lcom/twitter/model/av/AVMedia;)V

    .line 44
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/model/moments/viewmodels/i;)V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/gb;->a(Lcom/twitter/model/moments/viewmodels/i;)V

    .line 65
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/fullscreen/gc;->f()Lcom/twitter/moments/core/ui/widget/sectionpager/d;

    move-result-object v0

    .line 66
    instance-of v1, v0, Lcom/twitter/android/moments/ui/fullscreen/ge;

    if-eqz v1, :cond_0

    .line 67
    check-cast v0, Lcom/twitter/android/moments/ui/fullscreen/ge;

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/fullscreen/ge;->b()Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/gc;->b:Lrx/subjects/e;

    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/r;)Lrx/ap;

    .line 69
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/twitter/model/moments/viewmodels/i;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/gc;->a(Lcom/twitter/model/moments/viewmodels/i;)V

    return-void
.end method

.method public b()Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/o",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gc;->b:Lrx/subjects/e;

    return-object v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/fullscreen/gc;->f()Lcom/twitter/moments/core/ui/widget/sectionpager/d;

    move-result-object v0

    .line 33
    instance-of v1, v0, Lcom/twitter/android/moments/ui/fullscreen/ge;

    if-eqz v1, :cond_0

    .line 34
    check-cast v0, Lcom/twitter/android/moments/ui/fullscreen/ge;

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/fullscreen/ge;->g()V

    .line 36
    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/fullscreen/gc;->f()Lcom/twitter/moments/core/ui/widget/sectionpager/d;

    move-result-object v0

    .line 57
    instance-of v1, v0, Lcom/twitter/android/moments/ui/fullscreen/ge;

    if-eqz v1, :cond_0

    .line 58
    check-cast v0, Lcom/twitter/android/moments/ui/fullscreen/ge;

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/fullscreen/ge;->h()V

    .line 60
    :cond_0
    return-void
.end method
