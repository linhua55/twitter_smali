.class Lcom/twitter/android/livevideo/player/aa;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Lcom/twitter/library/av/playback/AVPlayerAttachment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/livevideo/player/w;


# direct methods
.method constructor <init>(Lcom/twitter/android/livevideo/player/w;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/twitter/android/livevideo/player/aa;->a:Lcom/twitter/android/livevideo/player/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/av/playback/AVPlayerAttachment;)V
    .locals 3

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/aa;->a:Lcom/twitter/android/livevideo/player/w;

    invoke-static {v0}, Lcom/twitter/android/livevideo/player/w;->b(Lcom/twitter/android/livevideo/player/w;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0206b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 161
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/aa;->a:Lcom/twitter/android/livevideo/player/w;

    invoke-static {v0}, Lcom/twitter/android/livevideo/player/w;->b(Lcom/twitter/android/livevideo/player/w;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/livevideo/player/aa;->a:Lcom/twitter/android/livevideo/player/w;

    invoke-static {v1}, Lcom/twitter/android/livevideo/player/w;->c(Lcom/twitter/android/livevideo/player/w;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a088b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 167
    :goto_0
    invoke-virtual {p1}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->b()Lbxa;

    move-result-object v0

    invoke-interface {v0}, Lbxa;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/aa;->a:Lcom/twitter/android/livevideo/player/w;

    invoke-static {v0}, Lcom/twitter/android/livevideo/player/w;->d(Lcom/twitter/android/livevideo/player/w;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0206a5

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 169
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/aa;->a:Lcom/twitter/android/livevideo/player/w;

    invoke-static {v0}, Lcom/twitter/android/livevideo/player/w;->d(Lcom/twitter/android/livevideo/player/w;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/livevideo/player/aa;->a:Lcom/twitter/android/livevideo/player/w;

    invoke-static {v1}, Lcom/twitter/android/livevideo/player/w;->c(Lcom/twitter/android/livevideo/player/w;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 174
    :goto_1
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/aa;->a:Lcom/twitter/android/livevideo/player/w;

    invoke-static {v0}, Lcom/twitter/android/livevideo/player/w;->b(Lcom/twitter/android/livevideo/player/w;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0206ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 164
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/aa;->a:Lcom/twitter/android/livevideo/player/w;

    invoke-static {v0}, Lcom/twitter/android/livevideo/player/w;->b(Lcom/twitter/android/livevideo/player/w;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/livevideo/player/aa;->a:Lcom/twitter/android/livevideo/player/w;

    invoke-static {v1}, Lcom/twitter/android/livevideo/player/w;->c(Lcom/twitter/android/livevideo/player/w;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0663

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/aa;->a:Lcom/twitter/android/livevideo/player/w;

    invoke-static {v0}, Lcom/twitter/android/livevideo/player/w;->d(Lcom/twitter/android/livevideo/player/w;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0206a8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 172
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/aa;->a:Lcom/twitter/android/livevideo/player/w;

    invoke-static {v0}, Lcom/twitter/android/livevideo/player/w;->d(Lcom/twitter/android/livevideo/player/w;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/livevideo/player/aa;->a:Lcom/twitter/android/livevideo/player/w;

    invoke-static {v1}, Lcom/twitter/android/livevideo/player/w;->c(Lcom/twitter/android/livevideo/player/w;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 155
    check-cast p1, Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {p0, p1}, Lcom/twitter/android/livevideo/player/aa;->a(Lcom/twitter/library/av/playback/AVPlayerAttachment;)V

    return-void
.end method
