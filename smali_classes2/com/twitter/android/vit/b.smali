.class public Lcom/twitter/android/vit/b;
.super Lcom/twitter/android/dialog/r;
.source "Twttr"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/twitter/android/dialog/r;-><init>(I)V

    .line 18
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/android/vit/VitNotificationsEducationOverlay;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/twitter/android/vit/VitNotificationsEducationOverlay;

    invoke-direct {v0}, Lcom/twitter/android/vit/VitNotificationsEducationOverlay;-><init>()V

    return-object v0
.end method

.method protected synthetic b()Lcom/twitter/android/dialog/TakeoverDialogFragment;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/twitter/android/vit/b;->a()Lcom/twitter/android/vit/VitNotificationsEducationOverlay;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c()Lcom/twitter/app/common/base/BaseDialogFragment;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/twitter/android/vit/b;->a()Lcom/twitter/android/vit/VitNotificationsEducationOverlay;

    move-result-object v0

    return-object v0
.end method
