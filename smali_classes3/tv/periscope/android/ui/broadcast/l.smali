.class public Ltv/periscope/android/ui/broadcast/l;
.super Ltv/periscope/android/ui/broadcast/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltv/periscope/android/ui/broadcast/d",
        "<",
        "Ltv/periscope/android/ui/broadcast/z;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ltv/periscope/android/ui/broadcast/LiveStatsView;


# direct methods
.method public constructor <init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V
    .locals 1

    .prologue
    .line 760
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/ui/broadcast/d;-><init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V

    .line 762
    sget v0, Ltv/periscope/android/library/l;->presence_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/broadcast/LiveStatsView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/l;->b:Ltv/periscope/android/ui/broadcast/LiveStatsView;

    .line 763
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;Ltv/periscope/android/ui/broadcast/c;)Ltv/periscope/android/ui/broadcast/l;
    .locals 3

    .prologue
    .line 754
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__broadcast_real_time_presence_count:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 756
    new-instance v1, Ltv/periscope/android/ui/broadcast/l;

    invoke-direct {v1, v0, p2}, Ltv/periscope/android/ui/broadcast/l;-><init>(Landroid/view/View;Ltv/periscope/android/ui/broadcast/c;)V

    return-object v1
.end method


# virtual methods
.method public bridge synthetic a(Ltv/periscope/android/ui/broadcast/BroadcastInfoItem;)V
    .locals 0

    .prologue
    .line 749
    check-cast p1, Ltv/periscope/android/ui/broadcast/z;

    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/broadcast/l;->a(Ltv/periscope/android/ui/broadcast/z;)V

    return-void
.end method

.method public a(Ltv/periscope/android/ui/broadcast/z;)V
    .locals 3

    .prologue
    .line 767
    invoke-virtual {p1}, Ltv/periscope/android/ui/broadcast/z;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Ltv/periscope/android/ui/broadcast/z;->c()Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;

    move-result-object v0

    sget-object v1, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;->a:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;

    if-ne v0, v1, :cond_1

    .line 768
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/l;->b:Ltv/periscope/android/ui/broadcast/LiveStatsView;

    invoke-virtual {p1}, Ltv/periscope/android/ui/broadcast/z;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/LiveStatsView;->a(Ljava/lang/Integer;)V

    .line 771
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/l;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 773
    invoke-virtual {p1}, Ltv/periscope/android/ui/broadcast/z;->c()Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;

    move-result-object v1

    sget-object v2, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;->b:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;

    if-ne v1, v2, :cond_2

    .line 774
    sget v1, Ltv/periscope/android/library/i;->ps__app_background_secondary:I

    .line 775
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/l;->b:Ltv/periscope/android/ui/broadcast/LiveStatsView;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ltv/periscope/android/ui/broadcast/LiveStatsView;->setBackgroundColor(I)V

    .line 777
    :cond_2
    return-void
.end method
