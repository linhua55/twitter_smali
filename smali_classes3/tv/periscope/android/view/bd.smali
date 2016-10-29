.class public Ltv/periscope/android/view/bd;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/widget/PopupWindow;

.field private final c:Landroid/view/View;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/animation/AnimatorSet;

.field private final f:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 45
    sget v0, Ltv/periscope/android/library/n;->ps__tooltip:I

    invoke-direct {p0, p1, v0}, Ltv/periscope/android/view/bd;-><init>(Landroid/content/Context;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p2    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltv/periscope/android/view/bd;->b:Landroid/widget/PopupWindow;

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/view/bd;->c:Landroid/view/View;

    .line 51
    iget-object v0, p0, Ltv/periscope/android/view/bd;->c:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v0, p0, Ltv/periscope/android/view/bd;->c:Landroid/view/View;

    sget v1, Ltv/periscope/android/library/l;->tooltip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/view/bd;->d:Landroid/widget/TextView;

    .line 54
    new-instance v0, Ltv/periscope/android/view/be;

    iget-object v1, p0, Ltv/periscope/android/view/bd;->b:Landroid/widget/PopupWindow;

    iget-object v2, p0, Ltv/periscope/android/view/bd;->c:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Ltv/periscope/android/view/be;-><init>(Landroid/widget/PopupWindow;Landroid/view/View;)V

    iput-object v0, p0, Ltv/periscope/android/view/bd;->a:Landroid/os/Handler;

    .line 55
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/view/bd;->e:Landroid/animation/AnimatorSet;

    .line 57
    iget-object v0, p0, Ltv/periscope/android/view/bd;->c:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/view/bd;->f:Landroid/animation/ObjectAnimator;

    .line 58
    iget-object v0, p0, Ltv/periscope/android/view/bd;->f:Landroid/animation/ObjectAnimator;

    new-instance v1, Ltv/periscope/android/view/ab;

    iget-object v2, p0, Ltv/periscope/android/view/bd;->c:Landroid/view/View;

    invoke-direct {v1, v2}, Ltv/periscope/android/view/ab;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 60
    iget-object v0, p0, Ltv/periscope/android/view/bd;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 61
    iget-object v0, p0, Ltv/periscope/android/view/bd;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 62
    iget-object v0, p0, Ltv/periscope/android/view/bd;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object v0, p0, Ltv/periscope/android/view/bd;->b:Landroid/widget/PopupWindow;

    iget-object v1, p0, Ltv/periscope/android/view/bd;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 64
    return-void

    .line 57
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ltv/periscope/android/view/bd;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 68
    return-void
.end method
