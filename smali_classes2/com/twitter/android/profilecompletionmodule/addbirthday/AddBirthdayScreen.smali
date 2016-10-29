.class public Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayScreen;
.super Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;
.source "Twttr"

# interfaces
.implements Lvh;
.implements Lvi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen",
        "<",
        "Lcom/twitter/android/profilecompletionmodule/addbirthday/b;",
        ">;",
        "Lvh;",
        "Lvi;"
    }
.end annotation


# instance fields
.field private a:Lvf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method public S_()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayScreen;->getPresenter()Lcom/twitter/android/profilecompletionmodule/a;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;

    invoke-virtual {v0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->y()V

    .line 43
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayScreen;->getPresenter()Lcom/twitter/android/profilecompletionmodule/a;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;

    invoke-virtual {v0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->z()V

    .line 48
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayScreen;->getPresenter()Lcom/twitter/android/profilecompletionmodule/a;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;

    invoke-virtual {v0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->A()V

    .line 53
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayScreen;->getPresenter()Lcom/twitter/android/profilecompletionmodule/a;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;

    invoke-virtual {v0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->B()V

    .line 58
    return-void
.end method

.method protected getBirthdateForm()Lvf;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayScreen;->a:Lvf;

    return-object v0
.end method

.method protected getSubtitle()I
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f0a0693

    return v0
.end method

.method protected getTitle()I
    .locals 1

    .prologue
    .line 28
    const v0, 0x7f0a0694

    return v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayScreen;->getPresenter()Lcom/twitter/android/profilecompletionmodule/a;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;

    invoke-virtual {v0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->C()V

    .line 63
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0}, Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;->onFinishInflate()V

    .line 22
    new-instance v0, Lvf;

    new-instance v1, Lvg;

    invoke-direct {v1, p0}, Lvg;-><init>(Landroid/view/View;)V

    invoke-direct {v0, v1, p0, p0}, Lvf;-><init>(Lvg;Lvh;Lvi;)V

    iput-object v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayScreen;->a:Lvf;

    .line 24
    return-void
.end method
