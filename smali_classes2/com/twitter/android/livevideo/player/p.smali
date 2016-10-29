.class Lcom/twitter/android/livevideo/player/p;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;


# direct methods
.method constructor <init>(Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/twitter/android/livevideo/player/p;->a:Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/p;->a:Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;

    invoke-static {v0}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->a(Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;)Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerRetryView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/p;->a:Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;

    invoke-static {v0}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->b(Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;)Lrx/subjects/ReplaySubject;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/livevideo/player/q;

    invoke-direct {v1, p0}, Lcom/twitter/android/livevideo/player/q;-><init>(Lcom/twitter/android/livevideo/player/p;)V

    invoke-virtual {v0, v1}, Lrx/subjects/ReplaySubject;->b(Ldjf;)V

    .line 80
    return-void
.end method
