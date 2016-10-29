.class Ltv/periscope/android/ui/user/h;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Ltv/periscope/android/view/PsCheckButton;

.field final synthetic c:Ltv/periscope/android/ui/user/e;


# direct methods
.method public constructor <init>(Ltv/periscope/android/ui/user/e;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 260
    iput-object p1, p0, Ltv/periscope/android/ui/user/h;->c:Ltv/periscope/android/ui/user/e;

    .line 261
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 262
    sget v0, Ltv/periscope/android/library/l;->select_all:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/user/h;->a:Landroid/widget/TextView;

    .line 263
    sget v0, Ltv/periscope/android/library/l;->check:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/PsCheckButton;

    iput-object v0, p0, Ltv/periscope/android/ui/user/h;->b:Ltv/periscope/android/view/PsCheckButton;

    .line 264
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Ltv/periscope/android/ui/user/h;->b:Ltv/periscope/android/view/PsCheckButton;

    invoke-virtual {v0}, Ltv/periscope/android/view/PsCheckButton;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 271
    :goto_0
    iget-object v1, p0, Ltv/periscope/android/ui/user/h;->b:Ltv/periscope/android/view/PsCheckButton;

    invoke-virtual {v1, v0}, Ltv/periscope/android/view/PsCheckButton;->setChecked(Z)V

    .line 272
    iget-object v1, p0, Ltv/periscope/android/ui/user/h;->c:Ltv/periscope/android/ui/user/e;

    invoke-static {v1}, Ltv/periscope/android/ui/user/e;->b(Ltv/periscope/android/ui/user/e;)Ltv/periscope/android/ui/user/g;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Ltv/periscope/android/ui/user/h;->c:Ltv/periscope/android/ui/user/e;

    invoke-static {v1}, Ltv/periscope/android/ui/user/e;->b(Ltv/periscope/android/ui/user/e;)Ltv/periscope/android/ui/user/g;

    move-result-object v1

    invoke-interface {v1, v0}, Ltv/periscope/android/ui/user/g;->a(Z)V

    .line 275
    :cond_0
    return-void

    .line 270
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
