.class public Ltv/periscope/android/ui/broadcaster/CameraPreviewLayout;
.super Landroid/widget/FrameLayout;
.source "Twttr"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private a:Landroid/support/v4/view/GestureDetectorCompat;

.field private b:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 44
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/CameraPreviewLayout;->a:Landroid/support/v4/view/GestureDetectorCompat;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/CameraPreviewLayout;->a:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 45
    :goto_0
    if-nez v0, :cond_0

    iget-object v3, p0, Ltv/periscope/android/ui/broadcaster/CameraPreviewLayout;->b:Landroid/view/ScaleGestureDetector;

    if-eqz v3, :cond_0

    .line 46
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/CameraPreviewLayout;->b:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 49
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    .line 44
    goto :goto_0

    :cond_3
    move v0, v1

    .line 49
    goto :goto_1
.end method

.method public setGestureListener(Landroid/view/GestureDetector$SimpleOnGestureListener;)V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcaster/CameraPreviewLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcaster/CameraPreviewLayout;->a:Landroid/support/v4/view/GestureDetectorCompat;

    .line 33
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/CameraPreviewLayout;->a:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/GestureDetectorCompat;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 34
    return-void
.end method

.method public setScaleGestureListener(Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcaster/CameraPreviewLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcaster/CameraPreviewLayout;->b:Landroid/view/ScaleGestureDetector;

    .line 38
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/CameraPreviewLayout;->b:Landroid/view/ScaleGestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 39
    return-void
.end method
