.class Lcom/twitter/android/moments/ui/guide/bb;
.super Lcom/twitter/app/common/util/i;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/guide/ba;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/guide/ba;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/twitter/android/moments/ui/guide/bb;->a:Lcom/twitter/android/moments/ui/guide/ba;

    invoke-direct {p0}, Lcom/twitter/app/common/util/i;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/bb;->a:Lcom/twitter/android/moments/ui/guide/ba;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/guide/ba;->a(Lcom/twitter/android/moments/ui/guide/ba;)Lcom/twitter/android/moments/ui/video/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/bb;->a:Lcom/twitter/android/moments/ui/guide/ba;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/guide/ba;->a(Lcom/twitter/android/moments/ui/guide/ba;)Lcom/twitter/android/moments/ui/video/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/video/b;->g()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->j()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 50
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/bb;->a:Lcom/twitter/android/moments/ui/guide/ba;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/guide/ba;->a(Lcom/twitter/android/moments/ui/guide/ba;)Lcom/twitter/android/moments/ui/video/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/bb;->a:Lcom/twitter/android/moments/ui/guide/ba;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/guide/ba;->a(Lcom/twitter/android/moments/ui/guide/ba;)Lcom/twitter/android/moments/ui/video/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/video/b;->g()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->i()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 56
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/bb;->a:Lcom/twitter/android/moments/ui/guide/ba;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/guide/ba;->a(Lcom/twitter/android/moments/ui/guide/ba;)Lcom/twitter/android/moments/ui/video/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/video/b;->d()V

    .line 58
    :cond_0
    return-void
.end method
