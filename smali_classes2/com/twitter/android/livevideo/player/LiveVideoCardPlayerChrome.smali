.class public Lcom/twitter/android/livevideo/player/LiveVideoCardPlayerChrome;
.super Lcom/twitter/library/av/control/VideoPlayerChromeAdapter;
.source "Twttr"


# instance fields
.field private a:Lcom/twitter/android/livevideo/player/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/livevideo/player/LiveVideoCardPlayerChrome;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/livevideo/player/LiveVideoCardPlayerChrome;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/library/av/control/VideoPlayerChromeAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/twitter/library/av/ar;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoCardPlayerChrome;->a:Lcom/twitter/android/livevideo/player/l;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/twitter/library/av/ar;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/LiveVideoCardPlayerChrome;->a:Lcom/twitter/android/livevideo/player/l;

    invoke-interface {v0, p2}, Lcom/twitter/android/livevideo/player/l;->a(Lcom/twitter/library/av/ar;)V

    .line 35
    :cond_0
    return-void
.end method

.method public setOnErrorListener(Lcom/twitter/android/livevideo/player/l;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/twitter/android/livevideo/player/LiveVideoCardPlayerChrome;->a:Lcom/twitter/android/livevideo/player/l;

    .line 39
    return-void
.end method
