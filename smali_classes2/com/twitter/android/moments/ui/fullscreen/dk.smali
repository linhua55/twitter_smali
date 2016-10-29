.class Lcom/twitter/android/moments/ui/fullscreen/dk;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/twitter/android/moments/ui/fullscreen/dj;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/dj;I)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/dk;->b:Lcom/twitter/android/moments/ui/fullscreen/dj;

    iput p2, p0, Lcom/twitter/android/moments/ui/fullscreen/dk;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dk;->b:Lcom/twitter/android/moments/ui/fullscreen/dj;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/dj;->a(Lcom/twitter/android/moments/ui/fullscreen/dj;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    .line 92
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/moments/ui/fullscreen/dk;->a:I

    int-to-long v2, v1

    .line 93
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    .line 94
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->withEndAction(Ljava/lang/Runnable;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 96
    return-void
.end method
