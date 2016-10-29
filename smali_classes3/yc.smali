.class Lyc;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lxz;


# direct methods
.method constructor <init>(Lxz;)V
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Lyc;->a:Lxz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lyc;->a:Lxz;

    iget-object v0, v0, Lxz;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lyc;->a:Lxz;

    iget-object v0, v0, Lxz;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 731
    iget-object v0, p0, Lyc;->a:Lxz;

    iget-object v0, v0, Lxz;->l:Landroid/view/View;

    invoke-static {v0}, Lcom/twitter/android/dm/i;->a(Landroid/view/View;)V

    .line 733
    :cond_0
    return-void
.end method
