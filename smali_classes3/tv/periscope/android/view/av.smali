.class Ltv/periscope/android/view/av;
.super Ltv/periscope/android/view/z;
.source "Twttr"


# instance fields
.field final synthetic d:Ltv/periscope/android/view/RootDragLayout;


# direct methods
.method constructor <init>(Ltv/periscope/android/view/RootDragLayout;)V
    .locals 0

    .prologue
    .line 829
    iput-object p1, p0, Ltv/periscope/android/view/av;->d:Ltv/periscope/android/view/RootDragLayout;

    invoke-direct {p0}, Ltv/periscope/android/view/z;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 2

    .prologue
    .line 832
    iget-boolean v0, p0, Ltv/periscope/android/view/av;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/view/av;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Ltv/periscope/android/view/av;->d:Ltv/periscope/android/view/RootDragLayout;

    invoke-virtual {v1}, Ltv/periscope/android/view/RootDragLayout;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Z
    .locals 2

    .prologue
    .line 837
    iget-object v0, p0, Ltv/periscope/android/view/av;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Ltv/periscope/android/view/av;->d:Ltv/periscope/android/view/RootDragLayout;

    invoke-virtual {v1}, Ltv/periscope/android/view/RootDragLayout;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
