.class final Ltv/periscope/android/ui/broadcaster/g;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Twttr"


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;


# direct methods
.method private constructor <init>(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Ltv/periscope/android/ui/broadcaster/g;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/periscope/android/ui/broadcaster/BroadcasterView;Ltv/periscope/android/ui/broadcaster/b;)V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/broadcaster/g;-><init>(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/g;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->d(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)Ltv/periscope/android/ui/broadcaster/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/g;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->d(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)Ltv/periscope/android/ui/broadcaster/a;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcaster/a;->c()V

    .line 308
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/g;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->c(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)V

    .line 300
    const/4 v0, 0x1

    return v0
.end method
