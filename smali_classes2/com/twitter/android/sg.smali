.class Lcom/twitter/android/sg;
.super Lcom/twitter/util/ui/c;
.source "Twttr"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/animation/TranslateAnimation;

.field final synthetic c:Lcom/twitter/android/sf;


# direct methods
.method constructor <init>(Lcom/twitter/android/sf;Landroid/view/View;Landroid/view/animation/TranslateAnimation;)V
    .locals 0

    .prologue
    .line 1942
    iput-object p1, p0, Lcom/twitter/android/sg;->c:Lcom/twitter/android/sf;

    iput-object p2, p0, Lcom/twitter/android/sg;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/twitter/android/sg;->b:Landroid/view/animation/TranslateAnimation;

    invoke-direct {p0}, Lcom/twitter/util/ui/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/twitter/android/sg;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/twitter/android/sg;->b:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1946
    return-void
.end method
