.class public Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;
.super Lcom/twitter/android/av/FullscreenRevenueCardCanvasChromeView;
.source "Twttr"


# instance fields
.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/ui/widget/TwitterButton;",
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

.field private s:Landroid/view/View;

.field private t:Lcom/twitter/android/card/i;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/twitter/android/av/FullscreenRevenueCardCanvasChromeView;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method private G()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 119
    iget-object v0, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-object v0, v0, Lcom/twitter/android/av/revenue/VideoConversationCardData;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const v0, 0x7f13010c

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    iget-object v1, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-object v1, v1, Lcom/twitter/android/av/revenue/VideoConversationCardData;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    sget-object v1, Lcom/twitter/android/revenue/card/h;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 123
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    :cond_0
    new-instance v4, Lcom/twitter/android/av/ap;

    invoke-direct {v4, p0}, Lcom/twitter/android/av/ap;-><init>(Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;)V

    .line 133
    invoke-virtual {p0}, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->p:Ljava/util/Map;

    .line 135
    iget-object v0, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->m:Landroid/view/View;

    const v1, 0x7f13079a

    .line 136
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    const/4 v1, 0x3

    new-array v2, v1, [Lcom/twitter/ui/widget/TwitterButton;

    iget-object v1, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->m:Landroid/view/View;

    const v6, 0x7f13079b

    .line 137
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/twitter/ui/widget/TwitterButton;

    aput-object v1, v2, v3

    iget-object v1, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->m:Landroid/view/View;

    const v6, 0x7f13079c

    .line 138
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/twitter/ui/widget/TwitterButton;

    aput-object v1, v2, v10

    const/4 v6, 0x2

    iget-object v1, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->m:Landroid/view/View;

    const v7, 0x7f13079d

    .line 139
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/twitter/ui/widget/TwitterButton;

    aput-object v1, v2, v6

    .line 135
    invoke-static {v0, v2}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 140
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v7

    move v2, v3

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-object v0, v0, Lcom/twitter/android/av/revenue/VideoConversationCardData;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 142
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    .line 143
    new-instance v1, Lcom/twitter/android/av/aq;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/av/aq;-><init>(Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;Lcom/twitter/ui/widget/TwitterButton;)V

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    invoke-virtual {v0, v3}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 151
    iget-object v1, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-object v1, v1, Lcom/twitter/android/av/revenue/VideoConversationCardData;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 152
    const v8, 0x7f0a021d

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v1, v9, v3

    invoke-virtual {v5, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 153
    invoke-virtual {p0}, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v1, v8, v9}, Lcom/twitter/android/revenue/x;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/text/Spannable;

    move-result-object v1

    .line 154
    sget-object v8, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v8}, Lcom/twitter/ui/widget/TwitterButton;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 155
    invoke-virtual {v7, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 157
    iget-object v1, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->p:Ljava/util/Map;

    iget-object v8, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-object v8, v8, Lcom/twitter/android/av/revenue/VideoConversationCardData;->b:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v8

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {v7}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->v:Ljava/util/List;

    .line 160
    iget-object v0, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->l:Lcom/twitter/ui/widget/TwitterButton;

    const v1, 0x7f0a0682

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setText(I)V

    .line 161
    iget-object v0, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->l:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v0, v4}, Lcom/twitter/ui/widget/TwitterButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 162
    return-void
.end method

.method private H()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-object v0, v0, Lcom/twitter/android/av/revenue/VideoConversationCardData;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-object v0, v0, Lcom/twitter/android/av/revenue/VideoConversationCardData;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->a(Ljava/lang/String;I)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->I()V

    goto :goto_0
.end method

.method private I()V
    .locals 3

    .prologue
    .line 185
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a021e

    .line 186
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->v:Ljava/util/List;

    iget-object v2, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->v:Ljava/util/List;

    .line 187
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v2, Lcom/twitter/android/av/ar;

    invoke-direct {v2, p0}, Lcom/twitter/android/av/ar;-><init>(Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 195
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;)Lcom/twitter/android/card/i;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->t:Lcom/twitter/android/card/i;

    return-object v0
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->s:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/twitter/library/scribe/NativeCardUserAction;->a(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;I)Lcom/twitter/library/scribe/NativeCardUserAction;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->t:Lcom/twitter/android/card/i;

    sget-object v2, Lcom/twitter/library/api/PromotedEvent;->o:Lcom/twitter/library/api/PromotedEvent;

    invoke-interface {v1, v2, v0}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/api/PromotedEvent;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 168
    iget-object v0, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/ac;

    .line 170
    invoke-virtual {v0}, Lcom/twitter/util/collection/ac;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/twitter/util/collection/ac;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->a(Ljava/lang/String;I)V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->H()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic b(Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;)Lcom/twitter/android/av/revenue/VideoConversationCardData;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    return-object v0
.end method


# virtual methods
.method protected E()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method protected F()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public a(Lcom/twitter/android/av/revenue/VideoConversationPlayerCanvasView;Lcom/twitter/android/av/revenue/VideoConversationCardData;Lcom/twitter/android/card/d;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 82
    iput-object p1, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->s:Landroid/view/View;

    .line 83
    iput-object p2, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    .line 84
    iput-object p3, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->r:Lcom/twitter/android/card/d;

    .line 85
    new-instance v0, Lcom/twitter/android/card/k;

    invoke-virtual {p0}, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twitter/android/card/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->t:Lcom/twitter/android/card/i;

    .line 86
    iget-object v0, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->t:Lcom/twitter/android/card/i;

    iget-object v2, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-object v2, v2, Lcom/twitter/android/av/revenue/VideoConversationCardData;->h:Lcom/twitter/model/core/Tweet;

    invoke-static {v2}, Lcom/twitter/library/card/CardContextFactory;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/card/CardContext;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/card/CardContext;)V

    .line 87
    iget-object v0, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-boolean v0, v0, Lcom/twitter/android/av/revenue/VideoConversationCardData;->i:Z

    iput-boolean v0, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->n:Z

    .line 88
    iget-object v0, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-boolean v0, v0, Lcom/twitter/android/av/revenue/VideoConversationCardData;->i:Z

    iput-boolean v0, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->o:Z

    .line 89
    iget-object v2, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->l:Lcom/twitter/ui/widget/TwitterButton;

    iget-object v0, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-boolean v0, v0, Lcom/twitter/android/av/revenue/VideoConversationCardData;->i:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->m:Landroid/view/View;

    if-nez v0, :cond_1

    .line 116
    :goto_1
    return-void

    .line 89
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-object v0, v0, Lcom/twitter/android/av/revenue/VideoConversationCardData;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-object v2, v0, Lcom/twitter/android/av/revenue/VideoConversationCardData;->h:Lcom/twitter/model/core/Tweet;

    .line 96
    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->ac()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    const v0, 0x7f130532

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/UserImageView;

    .line 98
    iget-object v3, v2, Lcom/twitter/model/core/Tweet;->n:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/twitter/library/media/widget/UserImageView;->a(Ljava/lang/String;)Z

    .line 100
    const v0, 0x7f13078f

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 101
    iget-object v3, v2, Lcom/twitter/model/core/Tweet;->w:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const v0, 0x7f130790

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const v0, 0x7f13078e

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :cond_2
    const v0, 0x7f130791

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 111
    iget-object v2, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-object v2, v2, Lcom/twitter/android/av/revenue/VideoConversationCardData;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    const v0, 0x7f130792

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    :cond_3
    invoke-direct {p0}, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->G()V

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 198
    iget-object v0, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-object v1, v0, Lcom/twitter/android/av/revenue/VideoConversationCardData;->h:Lcom/twitter/model/core/Tweet;

    .line 199
    iget-object v0, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->r:Lcom/twitter/android/card/d;

    iget-object v2, p0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->q:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    iget-wide v2, v2, Lcom/twitter/android/av/revenue/VideoConversationCardData;->g:J

    .line 200
    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v4

    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v5

    move-object v1, p1

    move v6, p2

    .line 199
    invoke-interface/range {v0 .. v6}, Lcom/twitter/android/card/d;->a(Ljava/lang/String;JLclw;Lcss;I)V

    .line 201
    return-void
.end method

.method protected c(Landroid/content/Context;)Lcom/twitter/ui/widget/TwitterButton;
    .locals 3

    .prologue
    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0403f7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    return-object v0
.end method

.method protected d(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .prologue
    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0403fd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
