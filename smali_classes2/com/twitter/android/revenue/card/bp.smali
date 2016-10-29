.class public Lcom/twitter/android/revenue/card/bp;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method private static a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Lcom/twitter/android/card/i;Landroid/view/View;Lcom/twitter/library/card/CardContext;Lcom/twitter/android/av/g;)V
    .locals 9

    .prologue
    .line 83
    new-instance v0, Lcom/twitter/android/revenue/card/bq;

    move-object v1, p2

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p0

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/twitter/android/revenue/card/bq;-><init>(Landroid/view/View;Lcom/twitter/android/card/i;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;Lcom/twitter/library/card/CardContext;Lcom/twitter/android/av/g;)V

    invoke-virtual {p5, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Lcom/twitter/android/card/i;Landroid/view/View;Lcom/twitter/library/card/CardContext;Lcom/twitter/android/av/revenue/VideoAppCardData;)V
    .locals 8

    .prologue
    .line 56
    new-instance v7, Lcom/twitter/android/av/revenue/e;

    invoke-direct {v7, p7}, Lcom/twitter/android/av/revenue/e;-><init>(Lcom/twitter/android/av/revenue/VideoAppCardData;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 57
    invoke-static/range {v0 .. v7}, Lcom/twitter/android/revenue/card/bp;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Lcom/twitter/android/card/i;Landroid/view/View;Lcom/twitter/library/card/CardContext;Lcom/twitter/android/av/g;)V

    .line 58
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Lcom/twitter/android/card/i;Landroid/view/View;Lcom/twitter/library/card/CardContext;Lcom/twitter/android/av/revenue/VideoConversationCardData;)V
    .locals 8

    .prologue
    .line 69
    new-instance v7, Lcom/twitter/android/av/revenue/g;

    invoke-direct {v7, p7}, Lcom/twitter/android/av/revenue/g;-><init>(Lcom/twitter/android/av/revenue/VideoConversationCardData;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 71
    invoke-static/range {v0 .. v7}, Lcom/twitter/android/revenue/card/bp;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Lcom/twitter/android/card/i;Landroid/view/View;Lcom/twitter/library/card/CardContext;Lcom/twitter/android/av/g;)V

    .line 72
    return-void
.end method

.method public static a(Lcom/twitter/media/ui/image/MediaImageView;)V
    .locals 2

    .prologue
    .line 40
    const v0, 0x7f13003e

    .line 41
    invoke-virtual {p0, v0}, Lcom/twitter/media/ui/image/MediaImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/RichImageView;

    .line 42
    if-eqz v0, :cond_0

    .line 43
    const v1, 0x7f02071b

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/RichImageView;->setOverlayDrawable(I)V

    .line 45
    :cond_0
    return-void
.end method
