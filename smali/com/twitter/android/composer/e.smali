.class Lcom/twitter/android/composer/e;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/twitter/android/composer/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/composer/ComposerActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 872
    iput-object p1, p0, Lcom/twitter/android/composer/e;->b:Lcom/twitter/android/composer/ComposerActivity;

    iput-object p2, p0, Lcom/twitter/android/composer/e;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 875
    iget-object v0, p0, Lcom/twitter/android/composer/e;->b:Lcom/twitter/android/composer/ComposerActivity;

    iget-object v1, p0, Lcom/twitter/android/composer/e;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/twitter/android/composer/ComposerActivity;->a(Lcom/twitter/android/composer/ComposerActivity;Landroid/view/View;)V

    .line 876
    return-void
.end method
