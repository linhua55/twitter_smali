.class Lcom/twitter/android/wq;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/wi;


# direct methods
.method constructor <init>(Lcom/twitter/android/wi;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/twitter/android/wq;->a:Lcom/twitter/android/wi;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/twitter/android/wq;->a:Lcom/twitter/android/wi;

    invoke-static {v0}, Lcom/twitter/android/wi;->e(Lcom/twitter/android/wi;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 385
    iget-object v0, p0, Lcom/twitter/android/wq;->a:Lcom/twitter/android/wi;

    invoke-static {v0}, Lcom/twitter/android/wi;->c(Lcom/twitter/android/wi;)V

    .line 386
    iget-object v0, p0, Lcom/twitter/android/wq;->a:Lcom/twitter/android/wi;

    invoke-static {v0}, Lcom/twitter/android/wi;->d(Lcom/twitter/android/wi;)V

    .line 387
    return-void
.end method
