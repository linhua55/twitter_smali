.class Lcom/twitter/android/livevideo/player/h;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldje;


# instance fields
.field final synthetic a:Lrx/o;

.field final synthetic b:Lcom/twitter/android/livevideo/player/e;


# direct methods
.method constructor <init>(Lcom/twitter/android/livevideo/player/e;Lrx/o;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/twitter/android/livevideo/player/h;->b:Lcom/twitter/android/livevideo/player/e;

    iput-object p2, p0, Lcom/twitter/android/livevideo/player/h;->a:Lrx/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/h;->b:Lcom/twitter/android/livevideo/player/e;

    invoke-static {v0}, Lcom/twitter/android/livevideo/player/e;->a(Lcom/twitter/android/livevideo/player/e;)Landroid/view/accessibility/CaptioningManager;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/livevideo/player/h;->b:Lcom/twitter/android/livevideo/player/e;

    invoke-static {v0}, Lcom/twitter/android/livevideo/player/e;->b(Lcom/twitter/android/livevideo/player/e;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/livevideo/player/h;->a:Lrx/o;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 62
    return-void
.end method
