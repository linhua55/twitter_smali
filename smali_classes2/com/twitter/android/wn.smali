.class Lcom/twitter/android/wn;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Twttr"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/twitter/android/wi;


# direct methods
.method constructor <init>(Lcom/twitter/android/wi;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/twitter/android/wn;->b:Lcom/twitter/android/wi;

    iput-object p2, p0, Lcom/twitter/android/wn;->a:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/twitter/android/wn;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 314
    return-void
.end method
