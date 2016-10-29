.class Ltv/periscope/android/ui/user/c;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "Twttr"


# instance fields
.field public final a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 14
    iget-object v0, p0, Ltv/periscope/android/ui/user/c;->itemView:Landroid/view/View;

    sget v1, Ltv/periscope/android/library/l;->divider_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/user/c;->a:Landroid/widget/TextView;

    .line 15
    return-void
.end method
