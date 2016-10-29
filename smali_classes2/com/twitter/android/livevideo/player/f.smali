.class Lcom/twitter/android/livevideo/player/f;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/p",
        "<",
        "Lcom/twitter/android/livevideo/player/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/livevideo/player/e;


# direct methods
.method constructor <init>(Lcom/twitter/android/livevideo/player/e;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/twitter/android/livevideo/player/f;->a:Lcom/twitter/android/livevideo/player/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/ao;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-",
            "Lcom/twitter/android/livevideo/player/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/f;->a:Lcom/twitter/android/livevideo/player/e;

    invoke-static {v0}, Lcom/twitter/android/livevideo/player/e;->a(Lcom/twitter/android/livevideo/player/e;)Landroid/view/accessibility/CaptioningManager;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/livevideo/player/g;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/livevideo/player/g;-><init>(Lcom/twitter/android/livevideo/player/f;Lrx/ao;)V

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 53
    new-instance v0, Lcom/twitter/android/livevideo/player/b;

    iget-object v1, p0, Lcom/twitter/android/livevideo/player/f;->a:Lcom/twitter/android/livevideo/player/e;

    .line 54
    invoke-static {v1}, Lcom/twitter/android/livevideo/player/e;->a(Lcom/twitter/android/livevideo/player/e;)Landroid/view/accessibility/CaptioningManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    .line 53
    invoke-static {v1}, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->createFromCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/livevideo/player/f;->a:Lcom/twitter/android/livevideo/player/e;

    .line 54
    invoke-static {v2}, Lcom/twitter/android/livevideo/player/e;->a(Lcom/twitter/android/livevideo/player/e;)Landroid/view/accessibility/CaptioningManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/livevideo/player/b;-><init>(Lcom/google/android/exoplayer/text/CaptionStyleCompat;F)V

    .line 53
    invoke-virtual {p1, v0}, Lrx/ao;->b_(Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lcom/twitter/android/livevideo/player/f;->a(Lrx/ao;)V

    return-void
.end method
