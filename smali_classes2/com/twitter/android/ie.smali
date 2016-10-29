.class public Lcom/twitter/android/ie;
.super Lcom/twitter/android/timeline/bm;
.source "Twttr"


# direct methods
.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/twitter/android/timeline/bm;-><init>(Landroid/os/Bundle;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/twitter/android/ie;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/twitter/android/ie;

    invoke-direct {v0, p0}, Lcom/twitter/android/ie;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0xd

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method
