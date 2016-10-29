.class Lcom/twitter/android/ss;
.super Lcom/twitter/util/ui/c;
.source "Twttr"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:I

.field final synthetic d:Lcom/twitter/android/sn;


# direct methods
.method constructor <init>(Lcom/twitter/android/sn;Landroid/view/View;Ljava/lang/Runnable;I)V
    .locals 0

    .prologue
    .line 824
    iput-object p1, p0, Lcom/twitter/android/ss;->d:Lcom/twitter/android/sn;

    iput-object p2, p0, Lcom/twitter/android/ss;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/twitter/android/ss;->b:Ljava/lang/Runnable;

    iput p4, p0, Lcom/twitter/android/ss;->c:I

    invoke-direct {p0}, Lcom/twitter/util/ui/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 827
    iget-object v0, p0, Lcom/twitter/android/ss;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 828
    iget-object v0, p0, Lcom/twitter/android/ss;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 831
    iget-object v0, p0, Lcom/twitter/android/ss;->a:Landroid/view/View;

    new-instance v1, Lcom/twitter/android/st;

    invoke-direct {v1, p0}, Lcom/twitter/android/st;-><init>(Lcom/twitter/android/ss;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 838
    return-void
.end method
