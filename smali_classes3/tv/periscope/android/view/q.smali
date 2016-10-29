.class Ltv/periscope/android/view/q;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "Twttr"


# instance fields
.field private final a:Ltv/periscope/android/view/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ltv/periscope/android/view/p;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 128
    iput-object p2, p0, Ltv/periscope/android/view/q;->a:Ltv/periscope/android/view/p;

    .line 129
    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2

    .prologue
    .line 138
    const/high16 v0, 0x42c80000    # 100.0f

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Ltv/periscope/android/view/q;->a:Ltv/periscope/android/view/p;

    invoke-virtual {v0, p1}, Ltv/periscope/android/view/p;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
