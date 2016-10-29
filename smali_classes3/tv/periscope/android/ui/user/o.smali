.class public Ltv/periscope/android/ui/user/o;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/widget/TextView;

.field public final c:Ltv/periscope/android/view/PsImageView;

.field public final d:Ltv/periscope/android/view/PsCheckButton;

.field public e:Ltv/periscope/android/api/PsUser;

.field private final f:Ltv/periscope/android/ui/user/p;


# direct methods
.method public constructor <init>(Landroid/view/View;Ltv/periscope/android/ui/user/p;I)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 28
    sget v0, Ltv/periscope/android/library/l;->profile_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltv/periscope/android/ui/user/o;->a:Landroid/widget/ImageView;

    .line 29
    sget v0, Ltv/periscope/android/library/l;->name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/user/o;->b:Landroid/widget/TextView;

    .line 30
    sget v0, Ltv/periscope/android/library/l;->muted:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/PsImageView;

    iput-object v0, p0, Ltv/periscope/android/ui/user/o;->c:Ltv/periscope/android/view/PsImageView;

    .line 31
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/PsCheckButton;

    iput-object v0, p0, Ltv/periscope/android/ui/user/o;->d:Ltv/periscope/android/view/PsCheckButton;

    .line 32
    iget-object v0, p0, Ltv/periscope/android/ui/user/o;->d:Ltv/periscope/android/view/PsCheckButton;

    invoke-virtual {v0, p0}, Ltv/periscope/android/view/PsCheckButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iput-object p2, p0, Ltv/periscope/android/ui/user/o;->f:Ltv/periscope/android/ui/user/p;

    .line 36
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Ltv/periscope/android/ui/user/o;->e:Ltv/periscope/android/api/PsUser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/user/o;->f:Ltv/periscope/android/ui/user/p;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Ltv/periscope/android/ui/user/o;->d:Ltv/periscope/android/view/PsCheckButton;

    if-ne p1, v0, :cond_2

    .line 43
    iget-object v0, p0, Ltv/periscope/android/ui/user/o;->d:Ltv/periscope/android/view/PsCheckButton;

    invoke-virtual {v0}, Ltv/periscope/android/view/PsCheckButton;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 44
    :goto_0
    iget-object v1, p0, Ltv/periscope/android/ui/user/o;->f:Ltv/periscope/android/ui/user/p;

    iget-object v2, p0, Ltv/periscope/android/ui/user/o;->e:Ltv/periscope/android/api/PsUser;

    invoke-interface {v1, v0, v2}, Ltv/periscope/android/ui/user/p;->a(ZLtv/periscope/android/api/PsUser;)V

    .line 45
    iget-object v1, p0, Ltv/periscope/android/ui/user/o;->d:Ltv/periscope/android/view/PsCheckButton;

    invoke-virtual {v1, v0}, Ltv/periscope/android/view/PsCheckButton;->setChecked(Z)V

    .line 50
    :cond_0
    :goto_1
    return-void

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 46
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/ui/user/o;->itemView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 47
    iget-object v0, p0, Ltv/periscope/android/ui/user/o;->f:Ltv/periscope/android/ui/user/p;

    iget-object v1, p0, Ltv/periscope/android/ui/user/o;->e:Ltv/periscope/android/api/PsUser;

    invoke-interface {v0, p1, v1}, Ltv/periscope/android/ui/user/p;->a(Landroid/view/View;Ltv/periscope/android/api/PsUser;)V

    goto :goto_1
.end method
