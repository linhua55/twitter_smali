.class Lajm;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Twttr"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lajl;


# direct methods
.method constructor <init>(Lajl;Z)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lajm;->b:Lajl;

    iput-boolean p2, p0, Lajm;->a:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 130
    iget-boolean v0, p0, Lajm;->a:Z

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lajm;->b:Lajl;

    invoke-static {v0}, Lajl;->a(Lajl;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lajm;->b:Lajl;

    invoke-static {v0}, Lajl;->a(Lajl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 134
    :cond_0
    return-void
.end method
