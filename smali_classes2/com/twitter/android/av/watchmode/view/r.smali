.class Lcom/twitter/android/av/watchmode/view/r;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Twttr"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;


# direct methods
.method constructor <init>(Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;Z)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/twitter/android/av/watchmode/view/r;->b:Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;

    iput-boolean p2, p0, Lcom/twitter/android/av/watchmode/view/r;->a:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/r;->b:Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->z:Z

    .line 582
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/r;->b:Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;

    iget-boolean v1, p0, Lcom/twitter/android/av/watchmode/view/r;->a:Z

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->a(Z)V

    .line 583
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/r;->b:Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->z:Z

    .line 577
    return-void
.end method
