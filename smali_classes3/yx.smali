.class Lyx;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Twttr"


# instance fields
.field final synthetic a:Lyw;


# direct methods
.method constructor <init>(Lyw;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lyx;->a:Lyw;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lyx;->a:Lyw;

    invoke-static {v0}, Lyw;->a(Lyw;)V

    .line 86
    iget-object v0, p0, Lyx;->a:Lyw;

    iget-object v0, v0, Lyw;->p:Lcom/twitter/android/nr;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lyx;->a:Lyw;

    iget-object v0, v0, Lyw;->p:Lcom/twitter/android/nr;

    invoke-interface {v0}, Lcom/twitter/android/nr;->C()V

    .line 91
    :cond_0
    return-void
.end method
