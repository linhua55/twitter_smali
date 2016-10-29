.class Lcom/twitter/android/card/u;
.super Lcom/twitter/util/ui/c;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/card/CardPreviewView;


# direct methods
.method constructor <init>(Lcom/twitter/android/card/CardPreviewView;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/twitter/android/card/u;->a:Lcom/twitter/android/card/CardPreviewView;

    invoke-direct {p0}, Lcom/twitter/util/ui/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/twitter/util/ui/c;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 64
    iget-object v0, p0, Lcom/twitter/android/card/u;->a:Lcom/twitter/android/card/CardPreviewView;

    invoke-static {v0}, Lcom/twitter/android/card/CardPreviewView;->a(Lcom/twitter/android/card/CardPreviewView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/twitter/android/card/u;->a:Lcom/twitter/android/card/CardPreviewView;

    invoke-static {v0}, Lcom/twitter/android/card/CardPreviewView;->b(Lcom/twitter/android/card/CardPreviewView;)Lcom/twitter/android/card/CardPreviewContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/card/u;->a:Lcom/twitter/android/card/CardPreviewView;

    invoke-static {v1}, Lcom/twitter/android/card/CardPreviewView;->a(Lcom/twitter/android/card/CardPreviewView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/card/CardPreviewContainer;->b(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lcom/twitter/android/card/u;->a:Lcom/twitter/android/card/CardPreviewView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/android/card/CardPreviewView;->a(Lcom/twitter/android/card/CardPreviewView;Landroid/view/View;)Landroid/view/View;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/u;->a:Lcom/twitter/android/card/CardPreviewView;

    invoke-static {v0}, Lcom/twitter/android/card/CardPreviewView;->b(Lcom/twitter/android/card/CardPreviewView;)Lcom/twitter/android/card/CardPreviewContainer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/android/card/CardPreviewContainer;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/twitter/android/card/u;->a:Lcom/twitter/android/card/CardPreviewView;

    invoke-static {v0}, Lcom/twitter/android/card/CardPreviewView;->b(Lcom/twitter/android/card/CardPreviewView;)Lcom/twitter/android/card/CardPreviewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/card/CardPreviewContainer;->clearAnimation()V

    .line 70
    iget-object v0, p0, Lcom/twitter/android/card/u;->a:Lcom/twitter/android/card/CardPreviewView;

    iget-object v1, p0, Lcom/twitter/android/card/u;->a:Lcom/twitter/android/card/CardPreviewView;

    invoke-static {v1}, Lcom/twitter/android/card/CardPreviewView;->c(Lcom/twitter/android/card/CardPreviewView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/card/CardPreviewView;->setVisibility(I)V

    .line 71
    return-void
.end method
