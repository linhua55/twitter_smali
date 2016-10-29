.class public Lcom/twitter/android/GladYouAreHereFragment;
.super Lcom/twitter/library/client/AbsFragment;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/twitter/android/kk;

.field private b:Lcom/twitter/android/qf;

.field private c:Landroid/widget/CheckBox;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/twitter/library/client/AbsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-static {}, Lcgb;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "smart_nux_ab_sync_android_4919"

    .line 38
    invoke-static {v2, v0}, Lzl;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "enabled"

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/GladYouAreHereFragment;->e:Z

    .line 42
    const v0, 0x7f040117

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 43
    const v0, 0x7f1303aa

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v0, 0x7f1303ab

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/twitter/android/GladYouAreHereFragment;->c:Landroid/widget/CheckBox;

    .line 45
    invoke-virtual {p0}, Lcom/twitter/android/GladYouAreHereFragment;->q()Lcom/twitter/app/common/base/f;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/qd;->a(Lcom/twitter/app/common/base/f;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/GladYouAreHereFragment;->d:Z

    .line 47
    iget-boolean v0, p0, Lcom/twitter/android/GladYouAreHereFragment;->e:Z

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/twitter/android/GladYouAreHereFragment;->c:Landroid/widget/CheckBox;

    const v3, 0x7f0a0838

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setText(I)V

    .line 49
    const v0, 0x7f1303ac

    .line 50
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    invoke-virtual {p0}, Lcom/twitter/android/GladYouAreHereFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x7f120000

    const-string/jumbo v5, "phone100_glad_you_are_here"

    invoke-static {v3, v0, v4, v5}, Lcom/twitter/android/dialog/c;->a(Landroid/content/Context;Landroid/widget/TextView;ILjava/lang/String;)V

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    :cond_0
    return-object v2

    :cond_1
    move v0, v1

    .line 40
    goto :goto_0
.end method

.method public b()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 76
    iget-object v0, p0, Lcom/twitter/android/GladYouAreHereFragment;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 77
    invoke-virtual {p0}, Lcom/twitter/android/GladYouAreHereFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 79
    new-instance v4, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v4, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v0, 0x5

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v6, "phone100_glad_you_are_here"

    aput-object v6, v5, v0

    const-string/jumbo v0, "form"

    aput-object v0, v5, v7

    iget-boolean v0, p0, Lcom/twitter/android/GladYouAreHereFragment;->d:Z

    .line 80
    invoke-static {v0}, Lcom/twitter/android/qd;->a(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    const/4 v0, 0x3

    const/4 v6, 0x0

    aput-object v6, v5, v0

    const/4 v6, 0x4

    if-eqz v1, :cond_1

    const-string/jumbo v0, "opt_in"

    :goto_0
    aput-object v0, v5, v6

    invoke-virtual {v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 84
    iget-object v0, p0, Lcom/twitter/android/GladYouAreHereFragment;->b:Lcom/twitter/android/qf;

    invoke-interface {v0, v1}, Lcom/twitter/android/qf;->e(Z)V

    .line 85
    iget-boolean v0, p0, Lcom/twitter/android/GladYouAreHereFragment;->e:Z

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/twitter/android/GladYouAreHereFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v3, v8}, Lcak;->a(Landroid/content/Context;JI)V

    .line 88
    iget-object v0, p0, Lcom/twitter/android/GladYouAreHereFragment;->b:Lcom/twitter/android/qf;

    invoke-interface {v0, v7}, Lcom/twitter/android/qf;->f(Z)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/GladYouAreHereFragment;->a:Lcom/twitter/android/kk;

    invoke-interface {v0}, Lcom/twitter/android/kk;->d()V

    .line 91
    return-void

    .line 80
    :cond_1
    const-string/jumbo v0, "opt_out"

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/twitter/library/client/AbsFragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    .line 62
    check-cast v0, Lcom/twitter/android/kk;

    iput-object v0, p0, Lcom/twitter/android/GladYouAreHereFragment;->a:Lcom/twitter/android/kk;

    .line 63
    check-cast p1, Lcom/twitter/android/qf;

    iput-object p1, p0, Lcom/twitter/android/GladYouAreHereFragment;->b:Lcom/twitter/android/qf;

    .line 64
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1303aa

    if-ne v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/twitter/android/GladYouAreHereFragment;->a:Lcom/twitter/android/kk;

    invoke-interface {v0}, Lcom/twitter/android/kk;->b()V

    .line 71
    :cond_0
    return-void
.end method
