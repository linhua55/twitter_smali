.class public Ltv/periscope/android/ui/broadcast/StatsMainView;
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
    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/broadcast/StatsMainView;->a(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/broadcast/StatsMainView;->a(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/broadcast/StatsMainView;->a(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/StatsMainView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/StatsMainView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ltv/periscope/android/library/p;->ps__placeholder_for_value:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 58
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/StatsMainView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/StatsMainView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/StatsMainView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/StatsMainView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__stat:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 36
    sget v0, Ltv/periscope/android/library/l;->stat_label:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/StatsMainView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/StatsMainView;->a:Landroid/widget/TextView;

    .line 37
    sget v0, Ltv/periscope/android/library/l;->stat_value:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/StatsMainView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/StatsMainView;->b:Landroid/widget/TextView;

    .line 38
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/StatsMainView;->a()V

    .line 39
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-virtual {p0, p1, p1}, Ltv/periscope/android/ui/broadcast/StatsMainView;->a(II)V

    .line 55
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/StatsMainView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/StatsMainView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method
