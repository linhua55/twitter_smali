.class Lcom/twitter/android/livevideo/player/g;
.super Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.source "Twttr"


# instance fields
.field final synthetic a:Lrx/ao;

.field final synthetic b:Lcom/twitter/android/livevideo/player/f;


# direct methods
.method constructor <init>(Lcom/twitter/android/livevideo/player/f;Lrx/ao;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/twitter/android/livevideo/player/g;->b:Lcom/twitter/android/livevideo/player/f;

    iput-object p2, p0, Lcom/twitter/android/livevideo/player/g;->a:Lrx/ao;

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontScaleChanged(F)V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/g;->a:Lrx/ao;

    new-instance v1, Lcom/twitter/android/livevideo/player/b;

    iget-object v2, p0, Lcom/twitter/android/livevideo/player/g;->b:Lcom/twitter/android/livevideo/player/f;

    iget-object v2, v2, Lcom/twitter/android/livevideo/player/f;->a:Lcom/twitter/android/livevideo/player/e;

    .line 49
    invoke-static {v2}, Lcom/twitter/android/livevideo/player/e;->a(Lcom/twitter/android/livevideo/player/e;)Landroid/view/accessibility/CaptioningManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v2

    .line 48
    invoke-static {v2}, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->createFromCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/twitter/android/livevideo/player/b;-><init>(Lcom/google/android/exoplayer/text/CaptionStyleCompat;F)V

    invoke-virtual {v0, v1}, Lrx/ao;->b_(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/g;->a:Lrx/ao;

    new-instance v1, Lcom/twitter/android/livevideo/player/b;

    .line 42
    invoke-static {p1}, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->createFromCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/livevideo/player/g;->b:Lcom/twitter/android/livevideo/player/f;

    iget-object v3, v3, Lcom/twitter/android/livevideo/player/f;->a:Lcom/twitter/android/livevideo/player/e;

    .line 43
    invoke-static {v3}, Lcom/twitter/android/livevideo/player/e;->a(Lcom/twitter/android/livevideo/player/e;)Landroid/view/accessibility/CaptioningManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/twitter/android/livevideo/player/b;-><init>(Lcom/google/android/exoplayer/text/CaptionStyleCompat;F)V

    .line 41
    invoke-virtual {v0, v1}, Lrx/ao;->b_(Ljava/lang/Object;)V

    .line 44
    return-void
.end method
