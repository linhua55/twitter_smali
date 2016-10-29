.class Lcom/twitter/android/moments/ui/fullscreen/gd;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/fullscreen/ge;


# instance fields
.field private final b:Lcom/twitter/android/moments/ui/fullscreen/ge;


# direct methods
.method constructor <init>(Lcom/twitter/moments/core/ui/widget/sectionpager/d;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    instance-of v0, p1, Lcom/twitter/android/moments/ui/fullscreen/ge;

    if-eqz v0, :cond_0

    .line 18
    check-cast p1, Lcom/twitter/android/moments/ui/fullscreen/ge;

    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/gd;->b:Lcom/twitter/android/moments/ui/fullscreen/ge;

    .line 22
    :goto_0
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gd;->b:Lcom/twitter/android/moments/ui/fullscreen/ge;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/twitter/library/av/playback/bl;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gd;->b:Lcom/twitter/android/moments/ui/fullscreen/ge;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gd;->b:Lcom/twitter/android/moments/ui/fullscreen/ge;

    invoke-interface {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ge;->a(Lcom/twitter/library/av/playback/bl;)V

    .line 43
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/model/av/AVMedia;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gd;->b:Lcom/twitter/android/moments/ui/fullscreen/ge;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gd;->b:Lcom/twitter/android/moments/ui/fullscreen/ge;

    invoke-interface {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ge;->a(Lcom/twitter/model/av/AVMedia;)V

    .line 36
    :cond_0
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
    .line 55
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gd;->b:Lcom/twitter/android/moments/ui/fullscreen/ge;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gd;->b:Lcom/twitter/android/moments/ui/fullscreen/ge;

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/fullscreen/ge;->b()Lrx/o;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lrx/o;->c()Lrx/o;

    move-result-object v0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gd;->b:Lcom/twitter/android/moments/ui/fullscreen/ge;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gd;->b:Lcom/twitter/android/moments/ui/fullscreen/ge;

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/fullscreen/ge;->g()V

    .line 29
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gd;->b:Lcom/twitter/android/moments/ui/fullscreen/ge;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gd;->b:Lcom/twitter/android/moments/ui/fullscreen/ge;

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/fullscreen/ge;->h()V

    .line 50
    :cond_0
    return-void
.end method
