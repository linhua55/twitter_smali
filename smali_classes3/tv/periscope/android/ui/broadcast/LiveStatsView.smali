.class public Ltv/periscope/android/ui/broadcast/LiveStatsView;
.super Landroid/widget/RelativeLayout;
.source "Twttr"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/broadcast/LiveStatsView;->a(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/broadcast/LiveStatsView;->a(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/broadcast/LiveStatsView;->a(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/LiveStatsView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/LiveStatsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ltv/periscope/android/library/p;->ps__placeholder_for_value:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__stat:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 36
    sget v0, Ltv/periscope/android/library/l;->stat_value:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/LiveStatsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/LiveStatsView;->a:Landroid/widget/TextView;

    .line 37
    sget v0, Ltv/periscope/android/library/l;->stat_label:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/LiveStatsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/LiveStatsView;->b:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/LiveStatsView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/LiveStatsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ltv/periscope/android/library/p;->ps__stat_total_viewers:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/LiveStatsView;->a()V

    .line 40
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 5

    .prologue
    .line 47
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 48
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/LiveStatsView;->a()V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/LiveStatsView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/LiveStatsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ltv/periscope/android/util/r;->a(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
