.class Lait;
.super Lcom/twitter/util/ui/g;
.source "Twttr"


# instance fields
.field final synthetic a:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lais;


# direct methods
.method constructor <init>(Lais;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lait;->c:Lais;

    iput-object p2, p0, Lait;->a:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object p3, p0, Lait;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/twitter/util/ui/g;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 432
    iget-object v0, p0, Lait;->a:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 433
    iget-object v0, p0, Lait;->c:Lais;

    invoke-static {v0}, Lais;->a(Lais;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lait;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v0, p0, Lait;->c:Lais;

    invoke-static {v0}, Lais;->a(Lais;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 435
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 436
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 437
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v2, 0xaf

    .line 438
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 439
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->withLayer()Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 440
    invoke-static {}, Lais;->a()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 441
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 442
    return-void
.end method
