.class public Ltv/periscope/android/ui/view/LocalTimeView;
.super Ltv/periscope/android/view/PsPillTextView;
.source "Twttr"


# instance fields
.field private final a:Ljava/util/Calendar;

.field private b:Ltv/periscope/android/ui/view/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ltv/periscope/android/view/PsPillTextView;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/view/LocalTimeView;->a:Ljava/util/Calendar;

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltv/periscope/android/ui/view/LocalTimeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/view/PsPillTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/view/LocalTimeView;->a:Ljava/util/Calendar;

    .line 33
    invoke-virtual {p0, p1, p2}, Ltv/periscope/android/ui/view/LocalTimeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Ltv/periscope/android/view/PsPillTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/view/LocalTimeView;->a:Ljava/util/Calendar;

    .line 38
    invoke-virtual {p0, p1, p2}, Ltv/periscope/android/ui/view/LocalTimeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method static synthetic a(Ltv/periscope/android/ui/view/LocalTimeView;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Ltv/periscope/android/ui/view/LocalTimeView;->a:Ljava/util/Calendar;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Ltv/periscope/android/ui/view/LocalTimeView;->b:Ltv/periscope/android/ui/view/a;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Ltv/periscope/android/ui/view/LocalTimeView;->b:Ltv/periscope/android/ui/view/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/view/a;->sendEmptyMessage(I)Z

    .line 62
    :cond_0
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Ltv/periscope/android/view/PsPillTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-virtual {p0}, Ltv/periscope/android/ui/view/LocalTimeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/i;->ps__light_grey:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/view/LocalTimeView;->setTextColor(I)V

    .line 45
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/view/LocalTimeView;->setPillColor(I)V

    .line 46
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Ltv/periscope/android/ui/view/LocalTimeView;->b:Ltv/periscope/android/ui/view/a;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Ltv/periscope/android/ui/view/LocalTimeView;->b:Ltv/periscope/android/ui/view/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/view/a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 68
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Ltv/periscope/android/view/PsPillTextView;->onAttachedToWindow()V

    .line 79
    invoke-virtual {p0}, Ltv/periscope/android/ui/view/LocalTimeView;->a()V

    .line 80
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Ltv/periscope/android/view/PsPillTextView;->onDetachedFromWindow()V

    .line 73
    invoke-virtual {p0}, Ltv/periscope/android/ui/view/LocalTimeView;->b()V

    .line 74
    return-void
.end method
