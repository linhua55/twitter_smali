.class Lcom/twitter/android/av/aq;
.super Lcom/twitter/library/util/z;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;


# direct methods
.method constructor <init>(Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;Lcom/twitter/ui/widget/TwitterButton;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/twitter/android/av/aq;->a:Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;

    invoke-direct {p0, p2}, Lcom/twitter/library/util/z;-><init>(Lcom/twitter/ui/widget/TwitterButton;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/twitter/android/av/aq;->a:Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;

    invoke-static {v0, p1, p2}, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->a(Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 147
    return-void
.end method
