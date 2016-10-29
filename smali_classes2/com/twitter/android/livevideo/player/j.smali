.class Lcom/twitter/android/livevideo/player/j;
.super Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.source "Twttr"


# instance fields
.field final synthetic a:Lrx/ao;

.field final synthetic b:Lcom/twitter/android/livevideo/player/i;


# direct methods
.method constructor <init>(Lcom/twitter/android/livevideo/player/i;Lrx/ao;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/twitter/android/livevideo/player/j;->b:Lcom/twitter/android/livevideo/player/i;

    iput-object p2, p0, Lcom/twitter/android/livevideo/player/j;->a:Lrx/ao;

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnabledChanged(Z)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/j;->a:Lrx/ao;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/ao;->b_(Ljava/lang/Object;)V

    .line 77
    return-void
.end method
