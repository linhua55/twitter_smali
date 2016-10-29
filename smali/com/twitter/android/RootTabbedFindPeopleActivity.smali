.class public Lcom/twitter/android/RootTabbedFindPeopleActivity;
.super Lcom/twitter/android/TabbedFindPeopleActivity;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/twitter/android/TabbedFindPeopleActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 2

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/twitter/android/TabbedFindPeopleActivity;->a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;

    move-result-object v0

    .line 17
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/y;->d(Z)V

    .line 18
    return-object v0
.end method

.method protected a(I)Lcom/twitter/app/users/aa;
    .locals 2

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/twitter/android/TabbedFindPeopleActivity;->a(I)Lcom/twitter/app/users/aa;

    move-result-object v0

    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Lcom/twitter/app/users/aa;->e(Z)Lcom/twitter/app/users/z;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/aa;

    .line 24
    return-object v0
.end method
