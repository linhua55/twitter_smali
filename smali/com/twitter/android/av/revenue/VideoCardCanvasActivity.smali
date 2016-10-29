.class public Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;
.super Lcom/twitter/android/av/RevenueCardCanvasActivity;
.source "Twttr"


# instance fields
.field private p:Lcom/twitter/android/av/revenue/VideoAppCardData;

.field private q:Lcom/twitter/library/util/y;

.field private r:Lcom/twitter/android/card/CardActionHelper;

.field private s:Landroid/widget/Button;

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/twitter/android/av/RevenueCardCanvasActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    .line 120
    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->a:Lcom/twitter/android/av/i;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/twitter/library/scribe/NativeCardUserAction;->a(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;I)Lcom/twitter/library/scribe/NativeCardUserAction;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->r:Lcom/twitter/android/card/CardActionHelper;

    iget-object v2, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->p:Lcom/twitter/android/av/revenue/VideoAppCardData;

    iget-object v2, v2, Lcom/twitter/android/av/revenue/VideoAppCardData;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->t:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->p:Lcom/twitter/android/av/revenue/VideoAppCardData;

    iget-object v4, v4, Lcom/twitter/android/av/revenue/VideoAppCardData;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/twitter/android/card/CardActionHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method


# virtual methods
.method protected b(Landroid/os/Bundle;Lcom/twitter/library/client/d;)V
    .locals 10

    .prologue
    .line 43
    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->p:Lcom/twitter/android/av/revenue/VideoAppCardData;

    iget-object v0, v0, Lcom/twitter/android/av/revenue/VideoAppCardData;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->t:Ljava/lang/String;

    .line 44
    const v0, 0x7f13078b

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    .line 45
    iget-object v1, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->p:Lcom/twitter/android/av/revenue/VideoAppCardData;

    iget-object v1, v1, Lcom/twitter/android/av/revenue/VideoAppCardData;->h:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 46
    iget-object v1, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->p:Lcom/twitter/android/av/revenue/VideoAppCardData;

    iget-object v1, v1, Lcom/twitter/android/av/revenue/VideoAppCardData;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 51
    :goto_0
    const v0, 0x7f130176

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->s:Landroid/widget/Button;

    .line 52
    const v0, 0x7f13010c

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 53
    const v1, 0x7f130744

    invoke-virtual {p0, v1}, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    .line 54
    const v1, 0x7f13078a

    invoke-virtual {p0, v1}, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 55
    const v1, 0x7f130743

    invoke-virtual {p0, v1}, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 57
    iget-object v2, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->p:Lcom/twitter/android/av/revenue/VideoAppCardData;

    iget-object v2, v2, Lcom/twitter/android/av/revenue/VideoAppCardData;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->p:Lcom/twitter/android/av/revenue/VideoAppCardData;

    iget-object v0, v0, Lcom/twitter/android/av/revenue/VideoAppCardData;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 60
    const/4 v6, 0x0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->p:Lcom/twitter/android/av/revenue/VideoAppCardData;

    iget-object v0, v0, Lcom/twitter/android/av/revenue/VideoAppCardData;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 64
    :goto_1
    const v2, 0x7f020648

    const v3, 0x7f02064c

    const v4, 0x7f02064a

    .line 67
    invoke-virtual {p0}, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0f0489

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    const/high16 v7, 0x40a00000    # 5.0f

    move-object v0, p0

    .line 64
    invoke-static/range {v0 .. v7}, Lcom/twitter/android/revenue/y;->a(Landroid/content/Context;Landroid/widget/LinearLayout;IIIIFF)V

    .line 71
    :cond_0
    const v0, 0x7f13056f

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    invoke-virtual {p0}, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a097d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->p:Lcom/twitter/android/av/revenue/VideoAppCardData;

    iget-object v5, v5, Lcom/twitter/android/av/revenue/VideoAppCardData;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->p:Lcom/twitter/android/av/revenue/VideoAppCardData;

    iget-object v0, v0, Lcom/twitter/android/av/revenue/VideoAppCardData;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->p:Lcom/twitter/android/av/revenue/VideoAppCardData;

    iget-object v0, v0, Lcom/twitter/android/av/revenue/VideoAppCardData;->c:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_1
    new-instance v0, Lcom/twitter/android/av/revenue/c;

    invoke-direct {v0, p0}, Lcom/twitter/android/av/revenue/c;-><init>(Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;)V

    iput-object v0, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->q:Lcom/twitter/library/util/y;

    .line 85
    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->q:Lcom/twitter/library/util/y;

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 88
    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->s:Landroid/widget/Button;

    instance-of v0, v0, Lcom/twitter/ui/widget/TwitterButton;

    if-eqz v0, :cond_3

    .line 89
    new-instance v1, Lcom/twitter/android/av/revenue/d;

    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->s:Landroid/widget/Button;

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/av/revenue/d;-><init>(Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;Lcom/twitter/ui/widget/TwitterButton;)V

    move-object v0, v1

    .line 99
    :goto_2
    iget-object v1, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->s:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->p:Lcom/twitter/android/av/revenue/VideoAppCardData;

    iget-object v0, v0, Lcom/twitter/android/av/revenue/VideoAppCardData;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/android/revenue/x;->b(Ljava/lang/String;)I

    move-result v0

    .line 101
    iget-object v1, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->s:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 102
    return-void

    .line 48
    :cond_2
    const v1, 0x7f0203fc

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->q:Lcom/twitter/library/util/y;

    goto :goto_2

    .line 63
    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method protected c()V
    .locals 4

    .prologue
    .line 127
    invoke-super {p0}, Lcom/twitter/android/av/RevenueCardCanvasActivity;->c()V

    .line 129
    invoke-virtual {p0}, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 130
    const-string/jumbo v1, "video_canvas_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/revenue/VideoAppCardData;

    iput-object v0, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->p:Lcom/twitter/android/av/revenue/VideoAppCardData;

    .line 131
    new-instance v0, Lcom/twitter/android/card/e;

    invoke-direct {v0, p0}, Lcom/twitter/android/card/e;-><init>(Landroid/app/Activity;)V

    .line 132
    new-instance v1, Lcom/twitter/android/card/k;

    invoke-direct {v1, p0}, Lcom/twitter/android/card/k;-><init>(Landroid/content/Context;)V

    .line 133
    iget-object v2, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-interface {v1, v2}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 134
    iget-object v2, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->e:Lcom/twitter/model/core/Tweet;

    invoke-static {v2}, Lcom/twitter/library/card/CardContextFactory;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/card/CardContext;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/card/CardContext;)V

    .line 135
    new-instance v2, Lcom/twitter/android/card/CardActionHelper;

    const-string/jumbo v3, "video_app_card_canvas"

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/twitter/android/card/CardActionHelper;-><init>(Landroid/content/Context;Lcom/twitter/android/card/d;Lcom/twitter/android/card/i;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->r:Lcom/twitter/android/card/CardActionHelper;

    .line 138
    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->a:Lcom/twitter/android/av/i;

    check-cast v0, Lcom/twitter/android/av/revenue/VideoAppCardView;

    .line 139
    iget-object v1, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->p:Lcom/twitter/android/av/revenue/VideoAppCardData;

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/revenue/VideoAppCardView;->setVideoAppCardData(Lcom/twitter/android/av/revenue/VideoAppCardData;)V

    .line 140
    iget-object v1, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->r:Lcom/twitter/android/card/CardActionHelper;

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/revenue/VideoAppCardView;->setActionHelper(Lcom/twitter/android/card/CardActionHelper;)V

    .line 141
    return-void
.end method

.method protected p()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->p:Lcom/twitter/android/av/revenue/VideoAppCardData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoCardCanvasActivity;->p:Lcom/twitter/android/av/revenue/VideoAppCardData;

    iget-object v0, v0, Lcom/twitter/android/av/revenue/VideoAppCardData;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected s()I
    .locals 1

    .prologue
    .line 116
    const v0, 0x7f0403f6

    return v0
.end method
