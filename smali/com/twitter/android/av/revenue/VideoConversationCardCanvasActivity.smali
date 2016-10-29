.class public Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;
.super Lcom/twitter/android/av/RevenueCardCanvasActivity;
.source "Twttr"


# instance fields
.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/Button;",
            "Lcom/twitter/util/collection/ac",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

.field private r:Lcom/twitter/android/card/d;

.field private s:Lcom/twitter/android/card/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/twitter/android/av/RevenueCardCanvasActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->a:Lcom/twitter/android/av/i;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/twitter/library/scribe/NativeCardUserAction;->a(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;I)Lcom/twitter/library/scribe/NativeCardUserAction;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->s:Lcom/twitter/android/card/i;

    sget-object v2, Lcom/twitter/library/api/PromotedEvent;->o:Lcom/twitter/library/api/PromotedEvent;

    invoke-interface {v1, v2, v0}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/api/PromotedEvent;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 156
    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/ac;

    .line 158
    invoke-virtual {v0}, Lcom/twitter/util/collection/ac;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/twitter/util/collection/ac;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->a(Ljava/lang/String;I)V

    .line 160
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)Lcom/twitter/library/av/playback/ba;
    .locals 2

    .prologue
    .line 184
    const-string/jumbo v0, "avdatasource"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/playback/AVDataSource;

    .line 185
    if-eqz v0, :cond_0

    new-instance v1, Lcom/twitter/library/av/playback/ba;

    invoke-direct {v1, v0}, Lcom/twitter/library/av/playback/ba;-><init>(Lcom/twitter/library/av/playback/AVDataSource;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/android/av/RevenueCardCanvasActivity;->a(Landroid/os/Bundle;)Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 163
    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->r:Lcom/twitter/android/card/d;

    iget-object v1, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-wide v2, v1, Lcom/twitter/android/av/revenue/VideoConversationCardData;->g:J

    iget-object v1, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->e:Lcom/twitter/model/core/Tweet;

    .line 164
    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v4

    iget-object v1, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->e:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v5

    move-object v1, p1

    move v6, p2

    .line 163
    invoke-interface/range {v0 .. v6}, Lcom/twitter/android/card/d;->a(Ljava/lang/String;JLclw;Lcss;I)V

    .line 165
    return-void
.end method

.method protected b(Landroid/os/Bundle;Lcom/twitter/library/client/d;)V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 55
    new-instance v5, Lcom/twitter/android/av/revenue/f;

    invoke-direct {v5, p0}, Lcom/twitter/android/av/revenue/f;-><init>(Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;)V

    .line 62
    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-object v0, v0, Lcom/twitter/android/av/revenue/VideoConversationCardData;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->e:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const v0, 0x7f130532

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/UserImageView;

    .line 65
    iget-object v1, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->e:Lcom/twitter/model/core/Tweet;

    iget-object v1, v1, Lcom/twitter/model/core/Tweet;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->a(Ljava/lang/String;)Z

    .line 67
    const v0, 0x7f13078f

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    iget-object v1, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->e:Lcom/twitter/model/core/Tweet;

    iget-object v1, v1, Lcom/twitter/model/core/Tweet;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const v0, 0x7f130790

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->e:Lcom/twitter/model/core/Tweet;

    iget-object v3, v3, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const v0, 0x7f13078e

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 74
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 77
    :cond_0
    const v0, 0x7f130791

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    iget-object v1, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-object v1, v1, Lcom/twitter/android/av/revenue/VideoConversationCardData;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    const v0, 0x7f130792

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-boolean v0, v0, Lcom/twitter/android/av/revenue/VideoConversationCardData;->i:Z

    if-eqz v0, :cond_6

    .line 85
    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-object v0, v0, Lcom/twitter/android/av/revenue/VideoConversationCardData;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    const v0, 0x7f13010c

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    iget-object v1, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-object v1, v1, Lcom/twitter/android/av/revenue/VideoConversationCardData;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    sget-object v1, Lcom/twitter/android/revenue/card/h;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 89
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    const v0, 0x7f130793

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 91
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :cond_2
    const v0, 0x7f130176

    .line 95
    invoke-virtual {p0, v0}, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    move-object v1, v2

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/twitter/util/collection/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/aa;

    move-result-object v1

    const/4 v0, 0x3

    new-array v3, v0, [Lcom/twitter/util/collection/aa;

    const v0, 0x7f130795

    .line 97
    invoke-virtual {p0, v0}, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v6, 0x7f130794

    .line 98
    invoke-virtual {p0, v6}, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 96
    invoke-static {v0, v6}, Lcom/twitter/util/collection/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/aa;

    move-result-object v0

    aput-object v0, v3, v4

    const v0, 0x7f130797

    .line 100
    invoke-virtual {p0, v0}, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v6, 0x7f130796

    .line 101
    invoke-virtual {p0, v6}, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 99
    invoke-static {v0, v6}, Lcom/twitter/util/collection/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/aa;

    move-result-object v0

    aput-object v0, v3, v10

    const/4 v6, 0x2

    const v0, 0x7f130799

    .line 103
    invoke-virtual {p0, v0}, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v7, 0x7f130798

    .line 104
    invoke-virtual {p0, v7}, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 102
    invoke-static {v0, v7}, Lcom/twitter/util/collection/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/aa;

    move-result-object v0

    aput-object v0, v3, v6

    .line 94
    invoke-static {v1, v3}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->p:Ljava/util/Map;

    move v3, v4

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-object v0, v0, Lcom/twitter/android/av/revenue/VideoConversationCardData;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 107
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/aa;

    invoke-virtual {v0}, Lcom/twitter/util/collection/aa;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 109
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    iget-object v1, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-object v1, v1, Lcom/twitter/android/av/revenue/VideoConversationCardData;->a:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 113
    const v8, 0x7f0a021d

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v1, v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 115
    invoke-virtual {p0}, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-static {v1, v7, v8}, Lcom/twitter/android/revenue/x;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/text/Spannable;

    move-result-object v1

    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 114
    invoke-virtual {v0, v1, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 118
    iget-object v1, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->p:Ljava/util/Map;

    iget-object v7, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-object v7, v7, Lcom/twitter/android/av/revenue/VideoConversationCardData;->b:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v7

    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v1, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-object v1, v1, Lcom/twitter/android/av/revenue/VideoConversationCardData;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v3, v1, :cond_3

    .line 122
    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 125
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 126
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/util/collection/aa;

    invoke-virtual {v1}, Lcom/twitter/util/collection/aa;->b()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 127
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/util/collection/aa;

    invoke-virtual {v1}, Lcom/twitter/util/collection/aa;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 130
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v1, v7, :cond_5

    .line 131
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 106
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 135
    :cond_6
    return-void
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0}, Lcom/twitter/android/av/RevenueCardCanvasActivity;->c()V

    .line 171
    invoke-virtual {p0}, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 172
    const-string/jumbo v1, "video_conversation_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iput-object v0, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    .line 173
    new-instance v0, Lcom/twitter/android/card/e;

    invoke-direct {v0, p0}, Lcom/twitter/android/card/e;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->r:Lcom/twitter/android/card/d;

    .line 174
    new-instance v0, Lcom/twitter/android/card/k;

    invoke-direct {v0, p0}, Lcom/twitter/android/card/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->s:Lcom/twitter/android/card/i;

    .line 176
    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->a:Lcom/twitter/android/av/i;

    check-cast v0, Lcom/twitter/android/av/revenue/VideoConversationCardView;

    .line 177
    iget-object v1, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/revenue/VideoConversationCardView;->setVideoConversationCardData(Lcom/twitter/android/av/revenue/VideoConversationCardData;)V

    .line 178
    iget-object v1, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->r:Lcom/twitter/android/card/d;

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/revenue/VideoConversationCardView;->setActionHandler(Lcom/twitter/android/card/d;)V

    .line 179
    iget-object v1, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-boolean v1, v1, Lcom/twitter/android/av/revenue/VideoConversationCardData;->i:Z

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/revenue/VideoConversationCardView;->setBottomDivider(Z)V

    .line 180
    return-void
.end method

.method protected p()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

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
    .line 144
    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-object v0, v0, Lcom/twitter/android/av/revenue/VideoConversationCardData;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected s()I
    .locals 1

    .prologue
    .line 149
    const v0, 0x7f0403fe

    return v0
.end method
