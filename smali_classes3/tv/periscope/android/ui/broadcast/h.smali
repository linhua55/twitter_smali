.class public Ltv/periscope/android/ui/broadcast/h;
.super Ltv/periscope/android/ui/broadcast/d;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltv/periscope/android/ui/broadcast/d",
        "<",
        "Ltv/periscope/android/ui/broadcast/v;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V
    .locals 3

    .prologue
    .line 726
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/ui/broadcast/d;-><init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V

    .line 728
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/h;->c:Landroid/view/View;

    .line 729
    sget v0, Ltv/periscope/android/library/l;->show_more_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/h;->b:Landroid/widget/TextView;

    .line 730
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/h;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ltv/periscope/android/library/i;->ps__main_primary:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 731
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/h;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 732
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;Ltv/periscope/android/ui/broadcast/c;)Ltv/periscope/android/ui/broadcast/h;
    .locals 3

    .prologue
    .line 717
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__broadcast_stats_show_more:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 719
    new-instance v1, Ltv/periscope/android/ui/broadcast/h;

    invoke-direct {v1, v0, p2}, Ltv/periscope/android/ui/broadcast/h;-><init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V

    return-object v1
.end method


# virtual methods
.method public bridge synthetic a(Ltv/periscope/android/ui/broadcast/BroadcastInfoItem;)V
    .locals 0

    .prologue
    .line 714
    check-cast p1, Ltv/periscope/android/ui/broadcast/v;

    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/broadcast/h;->a(Ltv/periscope/android/ui/broadcast/v;)V

    return-void
.end method

.method public a(Ltv/periscope/android/ui/broadcast/v;)V
    .locals 3

    .prologue
    .line 736
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/h;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Ltv/periscope/android/ui/broadcast/v;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/h;->c:Landroid/view/View;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/h;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Ltv/periscope/android/ui/broadcast/v;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 738
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 742
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 743
    sget v1, Ltv/periscope/android/library/l;->show_more_text:I

    if-ne v0, v1, :cond_0

    .line 744
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/h;->a:Ltv/periscope/android/ui/broadcast/c;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/c;->c()V

    .line 746
    :cond_0
    return-void
.end method
