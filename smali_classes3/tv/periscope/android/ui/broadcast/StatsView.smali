.class public Ltv/periscope/android/ui/broadcast/StatsView;
.super Landroid/widget/RelativeLayout;
.source "Twttr"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/broadcast/StatsView;->a(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/broadcast/StatsView;->a(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/broadcast/StatsView;->a(Landroid/content/Context;)V

    .line 32
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 51
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/StatsView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 52
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/StatsView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/StatsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__stat_value_pair:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 37
    sget v0, Ltv/periscope/android/library/l;->stat_name:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/StatsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/StatsView;->a:Landroid/widget/TextView;

    .line 38
    sget v0, Ltv/periscope/android/library/l;->stat_value:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/StatsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/StatsView;->b:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/StatsView;->b:Landroid/widget/TextView;

    sget v1, Ltv/periscope/android/library/p;->ps__placeholder_for_value:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 40
    return-void
.end method

.method public setTime(I)V
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/StatsView;->b:Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-static {v2, v3}, Ldnb;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/StatsView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method
