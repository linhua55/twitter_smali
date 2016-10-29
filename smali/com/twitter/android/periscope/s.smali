.class Lcom/twitter/android/periscope/s;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

.field private final b:Lcom/twitter/internal/android/widget/ToolBar;

.field private final c:Landroid/view/ViewGroup;

.field private final d:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/twitter/android/av/PeriscopeFullscreenChromeView;Lcom/twitter/internal/android/widget/ToolBar;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/twitter/android/periscope/s;->a:Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    .line 24
    iput-object p2, p0, Lcom/twitter/android/periscope/s;->b:Lcom/twitter/internal/android/widget/ToolBar;

    .line 25
    iput-object p3, p0, Lcom/twitter/android/periscope/s;->c:Landroid/view/ViewGroup;

    .line 26
    iput-object p4, p0, Lcom/twitter/android/periscope/s;->d:Landroid/view/View;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Point;Landroid/graphics/Point;Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 30
    if-eqz p3, :cond_1

    .line 31
    iget-object v0, p0, Lcom/twitter/android/periscope/s;->b:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/ToolBar;->getHeight()I

    move-result v1

    .line 32
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    sub-int v2, v0, v2

    .line 33
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/twitter/android/periscope/s;->c:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    .line 36
    iget-object v3, p0, Lcom/twitter/android/periscope/s;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 37
    iget-object v3, p0, Lcom/twitter/android/periscope/s;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    .line 40
    :cond_0
    iget-object v3, p0, Lcom/twitter/android/periscope/s;->a:Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    invoke-virtual {v3, v2, v0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->a(II)V

    .line 41
    iget-object v0, p0, Lcom/twitter/android/periscope/s;->a:Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->a(I)V

    .line 42
    iget-object v0, p0, Lcom/twitter/android/periscope/s;->a:Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->a(IF)V

    .line 48
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/periscope/s;->a:Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    invoke-virtual {v0, v2, v2}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->a(II)V

    .line 45
    iget-object v0, p0, Lcom/twitter/android/periscope/s;->a:Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    invoke-virtual {v0, v2}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->a(I)V

    .line 46
    iget-object v0, p0, Lcom/twitter/android/periscope/s;->a:Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->a(IF)V

    goto :goto_0
.end method
