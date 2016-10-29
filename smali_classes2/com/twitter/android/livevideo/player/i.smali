.class Lcom/twitter/android/livevideo/player/i;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/livevideo/player/e;


# direct methods
.method constructor <init>(Lcom/twitter/android/livevideo/player/e;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/twitter/android/livevideo/player/i;->a:Lcom/twitter/android/livevideo/player/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/ao;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/i;->a:Lcom/twitter/android/livevideo/player/e;

    invoke-static {v0}, Lcom/twitter/android/livevideo/player/e;->a(Lcom/twitter/android/livevideo/player/e;)Landroid/view/accessibility/CaptioningManager;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/livevideo/player/j;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/livevideo/player/j;-><init>(Lcom/twitter/android/livevideo/player/i;Lrx/ao;)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 80
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/i;->a:Lcom/twitter/android/livevideo/player/e;

    invoke-static {v0}, Lcom/twitter/android/livevideo/player/e;->a(Lcom/twitter/android/livevideo/player/e;)Landroid/view/accessibility/CaptioningManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/ao;->b_(Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 69
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lcom/twitter/android/livevideo/player/i;->a(Lrx/ao;)V

    return-void
.end method
