.class Lcom/twitter/android/livevideo/landing/l;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;

.field public final b:Lcom/twitter/internal/android/widget/ToolBar;

.field public final c:Landroid/view/ViewGroup;

.field public final d:Lcom/twitter/android/av/video/VideoContainerHost;

.field public final e:Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    const v0, 0x7f130070

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/ToolBar;

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/l;->b:Lcom/twitter/internal/android/widget/ToolBar;

    .line 493
    const v0, 0x7f13042e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/video/VideoContainerHost;

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/l;->d:Lcom/twitter/android/av/video/VideoContainerHost;

    .line 494
    const v0, 0x7f13042d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/l;->c:Landroid/view/ViewGroup;

    .line 495
    const v0, 0x7f13042f

    .line 496
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/l;->a:Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;

    .line 497
    const v0, 0x7f130430

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/l;->e:Lcom/twitter/android/livevideo/landing/LiveVideoPlaceholderView;

    .line 498
    return-void
.end method
