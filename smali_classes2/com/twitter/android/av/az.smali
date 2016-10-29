.class public Lcom/twitter/android/av/az;
.super Lcom/twitter/library/av/model/j;
.source "Twttr"


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Lcom/twitter/library/av/model/g;Z)V
    .locals 2

    .prologue
    .line 13
    const v0, 0x7f0a0602

    const v1, 0x7f0a0600

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/library/av/model/j;-><init>(Lcom/twitter/model/av/a;II)V

    .line 14
    iput-boolean p2, p0, Lcom/twitter/android/av/az;->a:Z

    .line 15
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/twitter/library/av/model/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/av/az;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method
