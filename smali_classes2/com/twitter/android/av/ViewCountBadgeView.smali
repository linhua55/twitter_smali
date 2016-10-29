.class public Lcom/twitter/android/av/ViewCountBadgeView;
.super Landroid/widget/LinearLayout;
.source "Twttr"


# instance fields
.field a:Lcom/twitter/library/widget/TightTextView;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private b:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 26
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/android/av/ViewCountBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/av/ViewCountBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 4

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/twitter/android/av/ViewCountBadgeView;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 40
    const v0, 0x7f130195

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/ViewCountBadgeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/TightTextView;

    iput-object v0, p0, Lcom/twitter/android/av/ViewCountBadgeView;->a:Lcom/twitter/library/widget/TightTextView;

    .line 41
    return-void
.end method

.method public setAVDataSource(Lcom/twitter/library/av/playback/AVDataSource;)V
    .locals 6

    .prologue
    .line 51
    invoke-interface {p1}, Lcom/twitter/library/av/playback/AVDataSource;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 56
    :pswitch_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/ViewCountBadgeView;->setVisibility(I)V

    goto :goto_0

    .line 60
    :pswitch_1
    invoke-interface {p1}, Lcom/twitter/library/av/playback/AVDataSource;->o()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/av/ViewCountBadgeView;->b:J

    .line 61
    invoke-virtual {p0}, Lcom/twitter/android/av/ViewCountBadgeView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/twitter/android/av/ViewCountBadgeView;->a:Lcom/twitter/library/widget/TightTextView;

    .line 63
    invoke-virtual {p0}, Lcom/twitter/android/av/ViewCountBadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/av/ViewCountBadgeView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v4, p0, Lcom/twitter/android/av/ViewCountBadgeView;->b:J

    invoke-static {v1, v2, v4, v5}, Lcom/twitter/android/av/bs;->a(Landroid/content/res/Resources;Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/TightTextView;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
