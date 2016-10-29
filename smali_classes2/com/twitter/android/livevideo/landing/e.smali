.class Lcom/twitter/android/livevideo/landing/e;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/livevideo/landing/c;


# direct methods
.method constructor <init>(Lcom/twitter/android/livevideo/landing/c;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/twitter/android/livevideo/landing/e;->a:Lcom/twitter/android/livevideo/landing/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/e;->a:Lcom/twitter/android/livevideo/landing/c;

    invoke-static {v0}, Lcom/twitter/android/livevideo/landing/c;->a(Lcom/twitter/android/livevideo/landing/c;)Lcom/twitter/android/livevideo/landing/l;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/l;->b:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-static {v0}, Lcom/twitter/util/d;->b(Landroid/view/View;)V

    .line 107
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/e;->a:Lcom/twitter/android/livevideo/landing/c;

    invoke-static {v0}, Lcom/twitter/android/livevideo/landing/c;->a(Lcom/twitter/android/livevideo/landing/c;)Lcom/twitter/android/livevideo/landing/l;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/l;->a:Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;

    invoke-virtual {v0}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->m()V

    .line 108
    return-void
.end method
