.class public Lcom/twitter/android/smartfollow/importcontacts/ImportContactsScreen;
.super Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/smartfollow/BaseSmartFollowScreen",
        "<",
        "Lcom/twitter/android/smartfollow/importcontacts/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected getSubtitle()I
    .locals 1

    .prologue
    .line 27
    const v0, 0x7f0a0843

    return v0
.end method

.method protected getTitle()I
    .locals 1

    .prologue
    .line 22
    const v0, 0x7f0a0844

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;->onFinishInflate()V

    .line 18
    const v0, 0x7f0a0842

    invoke-virtual {p0, v0}, Lcom/twitter/android/smartfollow/importcontacts/ImportContactsScreen;->setCtaCopy(I)V

    .line 19
    return-void
.end method
