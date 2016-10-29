.class Lcom/twitter/android/wp;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/wi;


# direct methods
.method constructor <init>(Lcom/twitter/android/wi;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/twitter/android/wp;->a:Lcom/twitter/android/wi;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/twitter/android/wp;->a:Lcom/twitter/android/wi;

    invoke-static {v0}, Lcom/twitter/android/wi;->c(Lcom/twitter/android/wi;)V

    .line 365
    iget-object v0, p0, Lcom/twitter/android/wp;->a:Lcom/twitter/android/wi;

    invoke-static {v0}, Lcom/twitter/android/wi;->d(Lcom/twitter/android/wi;)V

    .line 366
    return-void
.end method
