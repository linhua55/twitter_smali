.class public Lcom/twitter/android/commerce/card/e;
.super Lcom/twitter/android/revenue/card/bb;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/card/af;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

.field protected c:Lcom/twitter/media/ui/image/MediaImageView;

.field protected d:Landroid/widget/TextView;

.field protected e:Landroid/widget/TextView;

.field protected f:Landroid/view/View;

.field protected g:Landroid/widget/TextView;

.field protected h:Landroid/view/View;

.field private final m:Lcom/twitter/android/commerce/card/CommerceCardActionHandler;

.field private final n:Lcom/twitter/library/util/y;

.field private o:Lclm;


# direct methods
.method constructor <init>(Lcom/twitter/android/revenue/card/o;Lcom/twitter/android/commerce/card/CommerceCardActionHandler;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/twitter/android/revenue/card/bb;-><init>(Lcom/twitter/android/revenue/card/o;)V

    .line 54
    new-instance v0, Lcom/twitter/android/commerce/card/f;

    invoke-direct {v0, p0}, Lcom/twitter/android/commerce/card/f;-><init>(Lcom/twitter/android/commerce/card/e;)V

    iput-object v0, p0, Lcom/twitter/android/commerce/card/e;->n:Lcom/twitter/library/util/y;

    .line 60
    iput-object p2, p0, Lcom/twitter/android/commerce/card/e;->m:Lcom/twitter/android/commerce/card/CommerceCardActionHandler;

    .line 61
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 7

    .prologue
    .line 177
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->l:Lcom/twitter/android/revenue/card/o;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/o;->l()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->l:Lcom/twitter/android/revenue/card/o;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/o;->d()Lcom/twitter/library/card/CardContext;

    move-result-object v0

    if-nez v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/commerce/card/e;->f()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/twitter/library/scribe/NativeCardUserAction;->a(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;I)Lcom/twitter/library/scribe/NativeCardUserAction;

    move-result-object v1

    .line 183
    const/4 v4, 0x0

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 211
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->m:Lcom/twitter/android/commerce/card/CommerceCardActionHandler;

    iget-object v2, p0, Lcom/twitter/android/commerce/card/e;->o:Lclm;

    iget-object v3, p0, Lcom/twitter/android/commerce/card/e;->l:Lcom/twitter/android/revenue/card/o;

    invoke-virtual {v3}, Lcom/twitter/android/revenue/card/o;->l()Landroid/app/Activity;

    move-result-object v3

    sget-object v5, Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;->a:Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;

    iget-object v6, p0, Lcom/twitter/android/commerce/card/e;->l:Lcom/twitter/android/revenue/card/o;

    .line 212
    invoke-virtual {v6}, Lcom/twitter/android/revenue/card/o;->d()Lcom/twitter/library/card/CardContext;

    move-result-object v6

    .line 211
    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/commerce/card/CommerceCardActionHandler;->a(Lcom/twitter/library/scribe/NativeCardUserAction;Lclm;Landroid/app/Activity;Ljava/lang/String;Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;Lcom/twitter/library/card/CardContext;)V

    goto :goto_0

    .line 187
    :pswitch_1
    const-string/jumbo v4, "buynow_card_cta_click"

    goto :goto_1

    .line 191
    :pswitch_2
    const-string/jumbo v4, "buynow_card_primary_image_click"

    goto :goto_1

    .line 195
    :pswitch_3
    const-string/jumbo v4, "buynow_card_item_title_click"

    goto :goto_1

    .line 199
    :pswitch_4
    const-string/jumbo v4, "buynow_card_item_title_click"

    goto :goto_1

    .line 203
    :pswitch_5
    const-string/jumbo v4, "buynow_card_container_click"

    goto :goto_1

    .line 185
    :pswitch_data_0
    .packed-switch 0x7f130216
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(Lclm;)V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->d:Landroid/widget/TextView;

    sget-object v1, Lcom/twitter/android/revenue/card/h;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 117
    iget-object v1, p0, Lcom/twitter/android/commerce/card/e;->d:Landroid/widget/TextView;

    const-string/jumbo v0, "item_title"

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lclm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/commerce/card/e;->n:Lcom/twitter/library/util/y;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 120
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/commerce/card/e;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/commerce/card/e;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method private b(Lclm;)V
    .locals 5

    .prologue
    .line 123
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->e:Landroid/widget/TextView;

    sget-object v1, Lcom/twitter/android/revenue/card/h;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 126
    const-string/jumbo v0, "variant1_price"

    const-class v1, Ljava/lang/String;

    .line 127
    invoke-virtual {p1, v0, v1}, Lclm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lcom/twitter/android/commerce/util/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 129
    const-string/jumbo v0, "merchant_name"

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lclm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    .line 133
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/twitter/android/commerce/card/e;->a:Landroid/content/Context;

    const v4, 0x7f0a011a

    .line 134
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    .line 135
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 136
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/commerce/card/e;->n:Lcom/twitter/library/util/y;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 141
    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->f:Landroid/view/View;

    const-string/jumbo v1, "button"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/twitter/android/commerce/card/e;->n:Lcom/twitter/library/util/y;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 163
    return-void
.end method

.method private c(Lclm;)V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->c:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_0

    .line 145
    const-string/jumbo v0, "item_image"

    invoke-static {v0, p1}, Lcln;->a(Ljava/lang/String;Lclm;)Lcln;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/twitter/android/commerce/card/e;->c:Lcom/twitter/media/ui/image/MediaImageView;

    const v2, 0x3ff47ae1    # 1.91f

    invoke-virtual {v1, v2}, Lcom/twitter/media/ui/image/MediaImageView;->setAspectRatio(F)V

    .line 148
    if-eqz v0, :cond_0

    .line 149
    iget v1, v0, Lcln;->b:I

    iget v2, v0, Lcln;->c:I

    if-gt v1, v2, :cond_1

    .line 150
    iget-object v1, p0, Lcom/twitter/android/commerce/card/e;->c:Lcom/twitter/media/ui/image/MediaImageView;

    sget-object v2, Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;->a:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/twitter/media/ui/image/MediaImageView;->setScaleType(Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;)V

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/commerce/card/e;->c:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v0, v0, Lcln;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 155
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->c:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v1, p0, Lcom/twitter/android/commerce/card/e;->n:Lcom/twitter/library/util/y;

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 158
    :cond_0
    return-void

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/commerce/card/e;->c:Lcom/twitter/media/ui/image/MediaImageView;

    sget-object v2, Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;->b:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/twitter/media/ui/image/MediaImageView;->setScaleType(Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;)V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/twitter/android/commerce/card/e;->n:Lcom/twitter/library/util/y;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 167
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->g:Landroid/widget/TextView;

    const v1, 0x7f0a00f2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 172
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/commerce/card/e;->n:Lcom/twitter/library/util/y;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 93
    invoke-super {p0}, Lcom/twitter/android/revenue/card/bb;->a()V

    .line 94
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/commerce/card/e;->j:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->b(JLjava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->c:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->c:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->j()Z

    .line 98
    :cond_0
    return-void
.end method

.method public a(JLclm;)V
    .locals 3

    .prologue
    .line 102
    iput-object p3, p0, Lcom/twitter/android/commerce/card/e;->o:Lclm;

    .line 103
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->l:Lcom/twitter/android/revenue/card/o;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/o;->h()Lcom/twitter/android/card/i;

    move-result-object v1

    const-string/jumbo v0, "_card_data"

    const-class v2, Ljava/lang/String;

    invoke-virtual {p3, v0, v2}, Lclm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/twitter/android/card/i;->a(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0, p3}, Lcom/twitter/android/commerce/card/e;->a(Lclm;)V

    .line 107
    invoke-direct {p0, p3}, Lcom/twitter/android/commerce/card/e;->b(Lclm;)V

    .line 108
    invoke-direct {p0, p3}, Lcom/twitter/android/commerce/card/e;->c(Lclm;)V

    .line 109
    invoke-direct {p0}, Lcom/twitter/android/commerce/card/e;->c()V

    .line 110
    invoke-direct {p0}, Lcom/twitter/android/commerce/card/e;->d()V

    .line 111
    invoke-direct {p0}, Lcom/twitter/android/commerce/card/e;->e()V

    .line 112
    return-void
.end method

.method protected a(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V
    .locals 4

    .prologue
    .line 65
    iput-object p1, p0, Lcom/twitter/android/commerce/card/e;->a:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/twitter/android/commerce/card/e;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040210

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/commerce/card/e;->i:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->i:Landroid/view/View;

    const v1, 0x7f130510

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 72
    const v1, 0x7f040073

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 73
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->i:Landroid/view/View;

    const v1, 0x7f130511

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/commerce/card/e;->h:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->n:Lcom/twitter/library/util/y;

    iget-object v1, p0, Lcom/twitter/android/commerce/card/e;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/twitter/library/util/y;->a(Landroid/view/View;)V

    .line 78
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->i:Landroid/view/View;

    const v1, 0x7f13021b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/commerce/card/e;->d:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->i:Landroid/view/View;

    const v1, 0x7f13021c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/commerce/card/e;->e:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->i:Landroid/view/View;

    const v1, 0x7f130218

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/android/commerce/card/e;->c:Lcom/twitter/media/ui/image/MediaImageView;

    .line 81
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->i:Landroid/view/View;

    const v1, 0x7f130211

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/commerce/card/e;->g:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/twitter/android/commerce/card/e;->i:Landroid/view/View;

    const v1, 0x7f13021a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/commerce/card/e;->f:Landroid/view/View;

    .line 83
    return-void
.end method

.method public a(Lcom/twitter/library/card/av;)V
    .locals 4

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/twitter/android/revenue/card/bb;->a(Lcom/twitter/library/card/av;)V

    .line 88
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/commerce/card/e;->j:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->a(JLjava/lang/Object;)V

    .line 89
    return-void
.end method
