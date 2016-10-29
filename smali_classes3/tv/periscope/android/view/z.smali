.class abstract Ltv/periscope/android/view/z;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field a:Landroid/view/View;

.field b:Z

.field public c:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Z
.end method

.method a(I)Z
    .locals 1

    .prologue
    .line 17
    if-gez p1, :cond_1

    .line 18
    iget-boolean v0, p0, Ltv/periscope/android/view/z;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltv/periscope/android/view/z;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 20
    :goto_0
    return v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0}, Ltv/periscope/android/view/z;->b()Z

    move-result v0

    goto :goto_0
.end method

.method abstract b()Z
.end method
