.class public Ltv/periscope/android/ui/user/n;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/view/bf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltv/periscope/android/view/bf",
        "<",
        "Ltv/periscope/android/ui/user/o;",
        "Ltv/periscope/android/api/PsUser;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ltv/periscope/android/data/f;

.field private final b:Ldmy;


# virtual methods
.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Ltv/periscope/android/ui/user/o;

    check-cast p2, Ltv/periscope/android/api/PsUser;

    invoke-virtual {p0, p1, p2, p3}, Ltv/periscope/android/ui/user/n;->a(Ltv/periscope/android/ui/user/o;Ltv/periscope/android/api/PsUser;I)V

    return-void
.end method

.method public a(Ltv/periscope/android/ui/user/o;Ltv/periscope/android/api/PsUser;I)V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 25
    iput-object p2, p1, Ltv/periscope/android/ui/user/o;->e:Ltv/periscope/android/api/PsUser;

    .line 26
    iget-object v0, p1, Ltv/periscope/android/ui/user/o;->b:Landroid/widget/TextView;

    iget-object v3, p2, Ltv/periscope/android/api/PsUser;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p1, Ltv/periscope/android/ui/user/o;->c:Ltv/periscope/android/view/PsImageView;

    if-eqz v0, :cond_0

    .line 30
    iget-object v3, p1, Ltv/periscope/android/ui/user/o;->c:Ltv/periscope/android/view/PsImageView;

    iget-boolean v0, p2, Ltv/periscope/android/api/PsUser;->isMuted:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ltv/periscope/android/view/PsImageView;->setVisibility(I)V

    .line 33
    :cond_0
    iget-object v0, p1, Ltv/periscope/android/ui/user/o;->d:Ltv/periscope/android/view/PsCheckButton;

    invoke-virtual {p0, p2}, Ltv/periscope/android/ui/user/n;->a(Ltv/periscope/android/api/PsUser;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ltv/periscope/android/view/PsCheckButton;->setChecked(Z)V

    .line 34
    iget-object v0, p2, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    iget-object v3, p0, Ltv/periscope/android/ui/user/n;->a:Ltv/periscope/android/data/f;

    invoke-interface {v3}, Ltv/periscope/android/data/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p2, Ltv/periscope/android/api/PsUser;->isBlocked:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/periscope/android/ui/user/n;->a:Ltv/periscope/android/data/f;

    iget-object v3, p2, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-interface {v0, v3}, Ltv/periscope/android/data/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    :cond_1
    iget-object v0, p1, Ltv/periscope/android/ui/user/o;->d:Ltv/periscope/android/view/PsCheckButton;

    invoke-virtual {v0, v2}, Ltv/periscope/android/view/PsCheckButton;->setVisibility(I)V

    .line 40
    :goto_1
    iget-object v0, p1, Ltv/periscope/android/ui/user/o;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    iget-object v1, p0, Ltv/periscope/android/ui/user/n;->b:Ldmy;

    iget-object v2, p1, Ltv/periscope/android/ui/user/o;->a:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ltv/periscope/android/api/PsUser;->getProfileUrlSmall()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Ltv/periscope/android/api/PsUser;->displayName:Ljava/lang/String;

    move v5, p3

    invoke-static/range {v0 .. v5}, Ltv/periscope/android/util/b;->a(Landroid/content/Context;Ldmy;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    return-void

    :cond_2
    move v0, v2

    .line 30
    goto :goto_0

    .line 37
    :cond_3
    iget-object v0, p1, Ltv/periscope/android/ui/user/o;->d:Ltv/periscope/android/view/PsCheckButton;

    invoke-virtual {v0, v1}, Ltv/periscope/android/view/PsCheckButton;->setVisibility(I)V

    goto :goto_1
.end method

.method protected a(Ltv/periscope/android/api/PsUser;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p1, Ltv/periscope/android/api/PsUser;->isFollowing:Z

    return v0
.end method
