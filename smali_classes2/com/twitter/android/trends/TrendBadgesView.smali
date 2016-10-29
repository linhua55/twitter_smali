.class public Lcom/twitter/android/trends/TrendBadgesView;
.super Landroid/widget/LinearLayout;
.source "Twttr"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/trends/TrendBadgesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/trends/TrendBadgesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-virtual {p0, v3}, Lcom/twitter/android/trends/TrendBadgesView;->setOrientation(I)V

    .line 33
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendBadgesView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f028a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 34
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendBadgesView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f028e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 35
    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/twitter/android/trends/TrendBadgesView;->setPadding(IIII)V

    .line 36
    return-void
.end method

.method private static a()Z
    .locals 2

    .prologue
    .line 39
    const-string/jumbo v0, "live_video_live_badge_in_trends_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public setBadges(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/topic/trends/TrendBadge;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendBadgesView;->removeAllViews()V

    .line 50
    invoke-static {p1}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    return-void

    .line 54
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/topic/trends/TrendBadge;

    .line 55
    sget-object v2, Lcom/twitter/android/trends/a;->a:[I

    invoke-virtual {v0}, Lcom/twitter/model/topic/trends/TrendBadge;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 57
    :pswitch_0
    invoke-static {}, Lcom/twitter/android/trends/TrendBadgesView;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {p0}, Lcom/twitter/android/trends/TrendBadgesView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0403b6

    invoke-static {v0, v2, p0}, Lcom/twitter/android/trends/TrendBadgesView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
