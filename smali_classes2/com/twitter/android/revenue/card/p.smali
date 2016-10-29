.class public abstract Lcom/twitter/android/revenue/card/p;
.super Lcom/twitter/android/card/ab;
.source "Twttr"


# instance fields
.field private A:Lcom/twitter/android/revenue/card/v;

.field protected final a:Lclm;

.field protected b:Landroid/view/ViewGroup;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/ui/widget/TwitterButton;",
            "Lcom/twitter/android/revenue/card/u;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Lcom/twitter/library/util/y;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/android/revenue/card/u;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/ui/widget/TwitterButton;",
            ">;"
        }
    .end annotation
.end field

.field private p:Landroid/view/View;

.field private z:Lcom/twitter/model/core/Tweet;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Lclm;)V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/card/ab;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V

    .line 83
    new-instance v0, Lcom/twitter/android/revenue/card/v;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 84
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/revenue/card/v;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    iput-object v0, p0, Lcom/twitter/android/revenue/card/p;->A:Lcom/twitter/android/revenue/card/v;

    .line 86
    iput-object p5, p0, Lcom/twitter/android/revenue/card/p;->a:Lclm;

    .line 88
    const-string/jumbo v0, "thank_you_text"

    invoke-static {v0, p5}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/p;->e:Ljava/lang/String;

    .line 89
    const-string/jumbo v0, "thank_you_url"

    invoke-static {v0, p5}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/p;->f:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "title"

    invoke-static {v0, p5}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/p;->g:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, "card_url"

    invoke-static {v0, p5}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/p;->h:Ljava/lang/String;

    .line 92
    const-string/jumbo v0, "card_id"

    invoke-static {v0, p5}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/p;->i:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v1, "Card id should be specified."

    invoke-static {v0, v1}, Lcom/twitter/util/h;->a(ZLjava/lang/String;)Z

    .line 94
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lbiv;

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "card_id_not_present"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lbiv;-><init>(Ljava/lang/Throwable;)V

    const-string/jumbo v1, "card_id_not_present_card_url"

    iget-object v2, p0, Lcom/twitter/android/revenue/card/p;->h:Ljava/lang/String;

    .line 96
    invoke-virtual {v0, v1, v2}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v0

    .line 95
    invoke-static {v0}, Lbix;->a(Lbiv;)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->r:Lcom/twitter/android/card/i;

    const-string/jumbo v1, "_card_data"

    invoke-static {v1, p5}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/android/card/i;->a(Ljava/lang/String;)V

    .line 101
    new-instance v0, Lcom/twitter/android/revenue/card/q;

    invoke-direct {v0, p0}, Lcom/twitter/android/revenue/card/q;-><init>(Lcom/twitter/android/revenue/card/p;)V

    iput-object v0, p0, Lcom/twitter/android/revenue/card/p;->j:Lcom/twitter/library/util/y;

    .line 108
    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/p;->p()V

    .line 109
    invoke-direct {p0, p2}, Lcom/twitter/android/revenue/card/p;->a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/revenue/card/p;->d:Ljava/util/Map;

    .line 112
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v7

    .line 113
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v8

    .line 114
    sget-object v9, Lcom/twitter/android/revenue/card/y;->d:Ljava/util/List;

    move v4, v6

    .line 115
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 116
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/twitter/util/collection/ac;

    .line 117
    new-instance v0, Lcom/twitter/android/revenue/card/u;

    .line 118
    invoke-virtual {v3}, Lcom/twitter/util/collection/ac;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p5}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {v3}, Lcom/twitter/util/collection/ac;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p5}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/twitter/util/collection/ac;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/revenue/card/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/twitter/android/revenue/card/q;)V

    .line 122
    invoke-static {v0}, Lcom/twitter/android/revenue/card/u;->a(Lcom/twitter/android/revenue/card/u;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {v8, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 124
    iget-object v0, v0, Lcom/twitter/android/revenue/card/u;->a:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/twitter/android/revenue/card/p;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a021d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 126
    iget-object v2, p0, Lcom/twitter/android/revenue/card/p;->q:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/twitter/android/revenue/x;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 115
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {v8}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/twitter/android/revenue/card/p;->n:Ljava/util/List;

    .line 130
    invoke-virtual {v7}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/twitter/android/revenue/card/p;->c:Ljava/util/List;

    .line 132
    invoke-direct {p0}, Lcom/twitter/android/revenue/card/p;->i()V

    .line 133
    invoke-direct {p0}, Lcom/twitter/android/revenue/card/p;->h()V

    .line 134
    invoke-direct {p0}, Lcom/twitter/android/revenue/card/p;->d()V

    .line 135
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/revenue/card/p;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->f:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/twitter/library/scribe/NativeCardUserAction;->a(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;I)Lcom/twitter/library/scribe/NativeCardUserAction;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/twitter/android/revenue/card/p;->r:Lcom/twitter/android/card/i;

    sget-object v2, Lcom/twitter/library/api/PromotedEvent;->o:Lcom/twitter/library/api/PromotedEvent;

    invoke-interface {v1, v2, v0}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/api/PromotedEvent;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 318
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/revenue/card/u;

    .line 320
    iget-object v1, v0, Lcom/twitter/android/revenue/card/u;->b:Ljava/lang/String;

    iget v0, v0, Lcom/twitter/android/revenue/card/u;->d:I

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/revenue/card/p;->a(Ljava/lang/String;I)V

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/revenue/card/p;->s()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/revenue/card/p;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/revenue/card/p;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method private a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V
    .locals 4

    .prologue
    .line 211
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->q:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/twitter/android/revenue/card/p;->a(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/p;->b:Landroid/view/ViewGroup;

    .line 212
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/p;->j:Lcom/twitter/library/util/y;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->b:Landroid/view/ViewGroup;

    const v1, 0x7f130510

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 215
    const v1, 0x7f04021c

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 216
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 220
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->q:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/twitter/android/revenue/y;->a(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const/4 v1, 0x0

    .line 222
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0068

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v2, v1

    move v1, v0

    .line 227
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->b:Landroid/view/ViewGroup;

    const v3, 0x7f13020f

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 228
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 229
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->b:Landroid/view/ViewGroup;

    const v2, 0x7f13051a

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 230
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 232
    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/p;->q()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->b:Landroid/view/ViewGroup;

    const v1, 0x7f130519

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/p;->p:Landroid/view/View;

    .line 235
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->j:Lcom/twitter/library/util/y;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/p;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/twitter/library/util/y;->a(Landroid/view/View;)V

    .line 236
    return-void

    .line 224
    :cond_0
    const/4 v1, 0x1

    .line 225
    const/4 v0, -0x1

    move v2, v1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/revenue/card/p;)Lcom/twitter/android/card/CardActionHelper;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->v:Lcom/twitter/android/card/CardActionHelper;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/revenue/card/p;)Lcom/twitter/android/card/i;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->r:Lcom/twitter/android/card/i;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/revenue/card/p;)Ljava/util/List;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->n:Ljava/util/List;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->b:Landroid/view/ViewGroup;

    const v1, 0x7f13051b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/revenue/card/p;->l:Landroid/widget/TextView;

    .line 144
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/p;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->b:Landroid/view/ViewGroup;

    const v1, 0x7f13051c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/revenue/card/p;->m:Landroid/widget/TextView;

    .line 147
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/p;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->m:Landroid/widget/TextView;

    new-instance v1, Lcom/twitter/android/revenue/card/r;

    invoke-direct {v1, p0}, Lcom/twitter/android/revenue/card/r;-><init>(Lcom/twitter/android/revenue/card/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    :cond_0
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 197
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    .line 201
    invoke-virtual {v0, v3}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 208
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->b:Landroid/view/ViewGroup;

    const v1, 0x7f13010c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/revenue/card/p;->k:Landroid/widget/TextView;

    .line 252
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->k:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/p;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private i()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 263
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 265
    const/4 v0, 0x4

    new-array v2, v0, [Lcom/twitter/ui/widget/TwitterButton;

    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->b:Landroid/view/ViewGroup;

    const v4, 0x7f13051d

    .line 266
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    aput-object v0, v2, v3

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->b:Landroid/view/ViewGroup;

    const v5, 0x7f13051e

    .line 267
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    aput-object v0, v2, v4

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->b:Landroid/view/ViewGroup;

    const v5, 0x7f13051f

    .line 268
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    aput-object v0, v2, v4

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->b:Landroid/view/ViewGroup;

    const v5, 0x7f130520

    .line 269
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    aput-object v0, v2, v4

    .line 266
    invoke-virtual {v1, v2}, Lcom/twitter/util/collection/r;->b([Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/twitter/android/revenue/card/p;->o:Ljava/util/List;

    move v2, v3

    .line 271
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->o:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    .line 273
    iget-object v1, p0, Lcom/twitter/android/revenue/card/p;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v4}, Lcom/twitter/ui/widget/TwitterButton;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 274
    iget-object v1, p0, Lcom/twitter/android/revenue/card/p;->n:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/revenue/card/u;

    iget-object v1, v1, Lcom/twitter/android/revenue/card/u;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setTag(Ljava/lang/Object;)V

    .line 275
    new-instance v1, Lcom/twitter/android/revenue/card/s;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/revenue/card/s;-><init>(Lcom/twitter/android/revenue/card/p;Lcom/twitter/ui/widget/TwitterButton;)V

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 281
    iget-object v1, p0, Lcom/twitter/android/revenue/card/p;->d:Ljava/util/Map;

    iget-object v4, p0, Lcom/twitter/android/revenue/card/p;->n:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-virtual {v0, v3}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 271
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 284
    :cond_0
    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->n:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/revenue/card/u;

    .line 289
    iget-object v1, v0, Lcom/twitter/android/revenue/card/u;->b:Ljava/lang/String;

    iget v0, v0, Lcom/twitter/android/revenue/card/u;->d:I

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/revenue/card/p;->a(Ljava/lang/String;I)V

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/revenue/card/p;->t()V

    goto :goto_0
.end method

.method private t()V
    .locals 3

    .prologue
    .line 296
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/p;->l()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a021e

    .line 297
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/twitter/android/revenue/card/p;->c:Ljava/util/List;

    .line 298
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v2, Lcom/twitter/android/revenue/card/t;

    invoke-direct {v2, p0}, Lcom/twitter/android/revenue/card/t;-><init>(Lcom/twitter/android/revenue/card/p;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 307
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 4

    .prologue
    .line 239
    .line 240
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04021a

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 241
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 240
    return-object v0
.end method

.method public a(JLclj;)V
    .locals 3

    .prologue
    .line 182
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/card/ab;->a(JLclj;)V

    .line 183
    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/p;->j()Ljava/lang/String;

    move-result-object v0

    .line 185
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v2, "tweet_send"

    invoke-virtual {p3, v2}, Lclj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/revenue/card/p;->A:Lcom/twitter/android/revenue/card/v;

    invoke-virtual {v1, v0}, Lcom/twitter/android/revenue/card/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->A:Lcom/twitter/android/revenue/card/v;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/p;->i:Ljava/lang/String;

    .line 187
    invoke-virtual {v0, v1}, Lcom/twitter/android/revenue/card/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/p;->k()V

    .line 190
    :cond_2
    return-void
.end method

.method public a(JLcom/twitter/library/card/CardContext;)V
    .locals 3

    .prologue
    .line 171
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/card/ab;->a(JLcom/twitter/library/card/CardContext;)V

    .line 172
    invoke-static {p3}, Lcom/twitter/library/card/CardContext;->a(Lcom/twitter/library/card/CardContext;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/p;->z:Lcom/twitter/model/core/Tweet;

    .line 173
    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/p;->j()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/revenue/card/p;->A:Lcom/twitter/android/revenue/card/v;

    invoke-virtual {v1, v0}, Lcom/twitter/android/revenue/card/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->A:Lcom/twitter/android/revenue/card/v;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/p;->i:Ljava/lang/String;

    .line 175
    invoke-virtual {v0, v1}, Lcom/twitter/android/revenue/card/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/p;->k()V

    .line 178
    :cond_2
    return-void
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 327
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->w:Lcom/twitter/library/card/CardContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->w:Lcom/twitter/library/card/CardContext;

    invoke-virtual {v0}, Lcom/twitter/library/card/CardContext;->a()Lclw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->s:Lcom/twitter/android/card/d;

    iget-wide v2, p0, Lcom/twitter/android/revenue/card/p;->y:J

    iget-object v1, p0, Lcom/twitter/android/revenue/card/p;->w:Lcom/twitter/library/card/CardContext;

    .line 329
    invoke-virtual {v1}, Lcom/twitter/library/card/CardContext;->a()Lclw;

    move-result-object v4

    iget-object v1, p0, Lcom/twitter/android/revenue/card/p;->w:Lcom/twitter/library/card/CardContext;

    invoke-virtual {v1}, Lcom/twitter/library/card/CardContext;->i()Lcss;

    move-result-object v5

    move-object v1, p1

    move v6, p2

    .line 328
    invoke-interface/range {v0 .. v6}, Lcom/twitter/android/card/d;->a(Ljava/lang/String;JLclw;Lcss;I)V

    .line 331
    :cond_0
    return-void
.end method

.method a([F)V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->p:Landroid/view/View;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/p;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/twitter/android/revenue/y;->a(Landroid/view/View;Landroid/content/res/Resources;[F)V

    .line 248
    :cond_0
    return-void
.end method

.method public ao_()V
    .locals 4

    .prologue
    .line 159
    invoke-super {p0}, Lcom/twitter/android/card/ab;->ao_()V

    .line 160
    invoke-static {}, Lcom/twitter/android/card/m;->b()Lcom/twitter/android/card/m;

    move-result-object v0

    .line 161
    iget-wide v2, p0, Lcom/twitter/android/revenue/card/p;->y:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/card/m;->b(J)Ljava/lang/Integer;

    move-result-object v0

    .line 163
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/p;->k()V

    .line 165
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->A:Lcom/twitter/android/revenue/card/v;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/p;->i:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/revenue/card/v;->b(Ljava/lang/String;)V

    .line 167
    :cond_0
    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->z:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->z:Lcom/twitter/model/core/Tweet;

    invoke-static {v0}, Lcom/twitter/android/revenue/card/j;->a(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/p;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method k()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/twitter/android/revenue/card/p;->g()V

    .line 194
    return-void
.end method

.method public abstract p()V
.end method

.method public abstract q()Landroid/view/View;
.end method
