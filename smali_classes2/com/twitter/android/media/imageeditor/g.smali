.class Lcom/twitter/android/media/imageeditor/g;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/media/imageeditor/EditImageFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/media/imageeditor/EditImageFragment;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lcom/twitter/android/media/imageeditor/g;->a:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 642
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/g;->a:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    iget-object v0, v0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->n:Landroid/view/View;

    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/g;->a:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    iget-object v1, v1, Lcom/twitter/android/media/imageeditor/EditImageFragment;->n:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 643
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/g;->a:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    iget-object v0, v0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 644
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 645
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    .line 646
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/media/imageeditor/h;

    invoke-direct {v1, p0}, Lcom/twitter/android/media/imageeditor/h;-><init>(Lcom/twitter/android/media/imageeditor/g;)V

    .line 647
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 654
    return-void
.end method
