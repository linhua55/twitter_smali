.class Ltv/periscope/android/view/at;
.super Landroid/view/animation/Animation;
.source "Twttr"


# instance fields
.field final synthetic a:Ltv/periscope/android/view/PulseAnimationView;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Ltv/periscope/android/view/PulseAnimationView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Ltv/periscope/android/view/at;->a:Ltv/periscope/android/view/PulseAnimationView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 84
    iput-object p2, p0, Ltv/periscope/android/view/at;->b:Landroid/view/View;

    .line 85
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 10

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x0

    .line 89
    iget-object v0, p0, Ltv/periscope/android/view/at;->b:Landroid/view/View;

    mul-float v1, p1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 90
    iget-object v0, p0, Ltv/periscope/android/view/at;->b:Landroid/view/View;

    mul-float v1, p1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 91
    float-to-double v0, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    move-wide v8, v2

    invoke-static/range {v0 .. v9}, Lga;->a(DDDDD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 92
    return-void
.end method
