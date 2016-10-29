.class public Lcom/twitter/android/timeline/d;
.super Lcom/twitter/android/timeline/bm;
.source "Twttr"


# direct methods
.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/twitter/android/timeline/bm;-><init>(Landroid/os/Bundle;)V

    .line 15
    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/twitter/android/timeline/d;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/twitter/android/timeline/d;

    invoke-direct {v0, p0}, Lcom/twitter/android/timeline/d;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x4

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method
