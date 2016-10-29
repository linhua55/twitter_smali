.class Lcom/twitter/android/wo;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Twttr"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/twitter/android/wi;


# direct methods
.method constructor <init>(Lcom/twitter/android/wi;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/twitter/android/wo;->b:Lcom/twitter/android/wi;

    iput-object p2, p0, Lcom/twitter/android/wo;->a:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/twitter/android/wo;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 339
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/wo;->b:Lcom/twitter/android/wi;

    invoke-static {v1}, Lcom/twitter/android/wi;->b(Lcom/twitter/android/wi;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 340
    return-void
.end method
