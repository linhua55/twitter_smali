.class Lcom/twitter/android/wk;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/wi;


# direct methods
.method constructor <init>(Lcom/twitter/android/wi;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/twitter/android/wk;->a:Lcom/twitter/android/wi;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/twitter/android/wk;->a:Lcom/twitter/android/wi;

    invoke-static {v0}, Lcom/twitter/android/wi;->a(Lcom/twitter/android/wi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 230
    :cond_0
    return-void
.end method
