.class public Lcom/twitter/android/commerce/card/a;
.super Lcom/twitter/android/revenue/card/bb;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/card/af;


# instance fields
.field protected final a:I

.field protected b:Lcom/twitter/media/ui/image/MediaImageView;

.field protected c:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

.field private final d:Lcom/twitter/android/commerce/card/CommerceCardActionHandler;

.field private final e:Lcom/twitter/library/util/y;

.field private f:Lclm;

.field private g:Lcom/twitter/ui/widget/TwitterButton;

.field private h:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Ljava/lang/String;

.field private q:Landroid/view/View;


# direct methods
.method protected constructor <init>(Lcom/twitter/android/revenue/card/o;)V
    .locals 5

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/twitter/android/revenue/card/bb;-><init>(Lcom/twitter/android/revenue/card/o;)V

    .line 57
    new-instance v0, Lcom/twitter/android/commerce/card/b;

    invoke-direct {v0, p0}, Lcom/twitter/android/commerce/card/b;-><init>(Lcom/twitter/android/commerce/card/a;)V

    iput-object v0, p0, Lcom/twitter/android/commerce/card/a;->e:Lcom/twitter/library/util/y;

    .line 63
    const v0, 0x7f040072

    iput v0, p0, Lcom/twitter/android/commerce/card/a;->a:I

    .line 64
    new-instance v0, Lcom/twitter/android/commerce/card/CommerceCardActionHandler;

    iget-object v1, p0, Lcom/twitter/android/commerce/card/a;->l:Lcom/twitter/android/revenue/card/o;

    .line 65
    invoke-virtual {v1}, Lcom/twitter/android/revenue/card/o;->g()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/commerce/card/a;->l:Lcom/twitter/android/revenue/card/o;

    invoke-virtual {v2}, Lcom/twitter/android/revenue/card/o;->i()Lcom/twitter/android/card/d;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/commerce/card/a;->l:Lcom/twitter/android/revenue/card/o;

    .line 66
    invoke-virtual {v3}, Lcom/twitter/android/revenue/card/o;->h()Lcom/twitter/android/card/i;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/commerce/card/a;->l:Lcom/twitter/android/revenue/card/o;

    invoke-virtual {v4}, Lcom/twitter/android/revenue/card/o;->m()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/commerce/card/CommerceCardActionHandler;-><init>(Landroid/content/Context;Lcom/twitter/android/card/d;Lcom/twitter/android/card/i;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/android/commerce/card/a;->d:Lcom/twitter/android/commerce/card/CommerceCardActionHandler;

    .line 67
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 77
    invoke-super {p0}, Lcom/twitter/android/revenue/card/bb;->a()V

    .line 79
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->b:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->b:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->j()Z

    .line 83
    :cond_0
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/commerce/card/a;->j:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->b(JLjava/lang/Object;)V

    .line 84
    return-void
.end method

.method public a(JLclm;)V
    .locals 3

    .prologue
    .line 103
    iput-object p3, p0, Lcom/twitter/android/commerce/card/a;->f:Lclm;

    .line 104
    invoke-virtual {p0}, Lcom/twitter/android/commerce/card/a;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/commerce/card/a;->f:Lclm;

    invoke-static {v0, v1}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/commerce/card/a;->p:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->l:Lcom/twitter/android/revenue/card/o;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/o;->h()Lcom/twitter/android/card/i;

    move-result-object v1

    const-string/jumbo v0, "_card_data"

    const-class v2, Ljava/lang/String;

    invoke-virtual {p3, v0, v2}, Lclm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/twitter/android/card/i;->a(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->f:Lclm;

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/card/a;->a(Lclm;)V

    .line 109
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->f:Lclm;

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/card/a;->b(Lclm;)V

    .line 110
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->f:Lclm;

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/card/a;->c(Lclm;)V

    .line 111
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->f:Lclm;

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/card/a;->d(Lclm;)V

    .line 112
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->f:Lclm;

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/card/a;->e(Lclm;)V

    .line 113
    invoke-virtual {p0}, Lcom/twitter/android/commerce/card/a;->e()V

    .line 114
    return-void
.end method

.method protected a(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V
    .locals 4

    .prologue
    .line 184
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040210

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/commerce/card/a;->i:Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->i:Landroid/view/View;

    const v1, 0x7f130510

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 188
    iget v1, p0, Lcom/twitter/android/commerce/card/a;->a:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 189
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 191
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->i:Landroid/view/View;

    const v1, 0x7f130511

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/commerce/card/a;->q:Landroid/view/View;

    .line 192
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->e:Lcom/twitter/library/util/y;

    iget-object v1, p0, Lcom/twitter/android/commerce/card/a;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/twitter/library/util/y;->a(Landroid/view/View;)V

    .line 194
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->i:Landroid/view/View;

    const v1, 0x7f130210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/android/commerce/card/a;->b:Lcom/twitter/media/ui/image/MediaImageView;

    .line 195
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->b:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->b:Lcom/twitter/media/ui/image/MediaImageView;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setAspectRatio(F)V

    .line 197
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->b:Lcom/twitter/media/ui/image/MediaImageView;

    const-string/jumbo v1, "card"

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setImageType(Ljava/lang/String;)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->i:Landroid/view/View;

    const v1, 0x7f130213

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    iput-object v0, p0, Lcom/twitter/android/commerce/card/a;->g:Lcom/twitter/ui/widget/TwitterButton;

    .line 201
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->i:Landroid/view/View;

    const v1, 0x7f130214

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/commerce/card/a;->h:Landroid/widget/TextView;

    .line 202
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->i:Landroid/view/View;

    const v1, 0x7f130215

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/commerce/card/a;->m:Landroid/widget/TextView;

    .line 203
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->i:Landroid/view/View;

    const v1, 0x7f130211

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/commerce/card/a;->n:Landroid/widget/TextView;

    .line 204
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->i:Landroid/view/View;

    const v1, 0x7f130212

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/commerce/card/a;->o:Landroid/view/View;

    .line 206
    iput-object p2, p0, Lcom/twitter/android/commerce/card/a;->c:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    .line 207
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 9

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/twitter/android/commerce/card/a;->f()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/twitter/library/scribe/NativeCardUserAction;->a(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;I)Lcom/twitter/library/scribe/NativeCardUserAction;

    move-result-object v2

    .line 212
    const-string/jumbo v0, "webview_url"

    iget-object v1, p0, Lcom/twitter/android/commerce/card/a;->f:Lclm;

    invoke-static {v0, v1}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v3

    .line 213
    const-string/jumbo v0, "webview_title"

    iget-object v1, p0, Lcom/twitter/android/commerce/card/a;->f:Lclm;

    invoke-static {v0, v1}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v4

    .line 214
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->l:Lcom/twitter/android/revenue/card/o;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/o;->d()Lcom/twitter/library/card/CardContext;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/twitter/android/commerce/card/a;->l:Lcom/twitter/android/revenue/card/o;

    invoke-virtual {v1}, Lcom/twitter/android/revenue/card/o;->l()Landroid/app/Activity;

    move-result-object v5

    .line 216
    invoke-static {v3}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/twitter/library/card/CardContext;->i()Lcss;

    move-result-object v1

    .line 218
    if-eqz v1, :cond_1

    iget-object v8, v1, Lcss;->c:Ljava/lang/String;

    .line 219
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/commerce/card/a;->d:Lcom/twitter/android/commerce/card/CommerceCardActionHandler;

    .line 220
    invoke-virtual {v0}, Lcom/twitter/library/card/CardContext;->c()J

    move-result-wide v6

    .line 219
    invoke-virtual/range {v1 .. v8}, Lcom/twitter/android/commerce/card/CommerceCardActionHandler;->a(Lcom/twitter/library/scribe/NativeCardUserAction;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;JLjava/lang/String;)V

    .line 222
    :cond_0
    return-void

    .line 218
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method a(Lclm;)V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->b:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/twitter/android/commerce/card/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcln;->a(Ljava/lang/String;Lclm;)Lcln;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/twitter/android/commerce/card/a;->b:Lcom/twitter/media/ui/image/MediaImageView;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Lcom/twitter/media/ui/image/MediaImageView;->setAspectRatio(F)V

    .line 121
    iget-object v1, p0, Lcom/twitter/android/commerce/card/a;->b:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v0, v0, Lcln;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 122
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->b:Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 123
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->b:Lcom/twitter/media/ui/image/MediaImageView;

    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setTag(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->b:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v1, p0, Lcom/twitter/android/commerce/card/a;->e:Lcom/twitter/library/util/y;

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 127
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/library/card/av;)V
    .locals 4

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/twitter/android/revenue/card/bb;->a(Lcom/twitter/library/card/av;)V

    .line 72
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/commerce/card/a;->j:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->a(JLjava/lang/Object;)V

    .line 73
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->b:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->b:Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 91
    :cond_0
    return-void
.end method

.method b(Lclm;)V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 131
    const-string/jumbo v0, "title"

    invoke-static {v0, p1}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    .line 133
    iget-object v1, p0, Lcom/twitter/android/commerce/card/a;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->h:Landroid/widget/TextView;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/commerce/card/a;->e:Lcom/twitter/library/util/y;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 138
    :cond_0
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-string/jumbo v0, "image"

    return-object v0
.end method

.method c(Lclm;)V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 142
    const-string/jumbo v0, "description"

    invoke-static {v0, p1}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/twitter/android/commerce/card/a;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->m:Landroid/widget/TextView;

    const-string/jumbo v1, "description"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/commerce/card/a;->e:Lcom/twitter/library/util/y;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    :cond_0
    return-void
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string/jumbo v0, "webview_url"

    return-object v0
.end method

.method d(Lclm;)V
    .locals 3

    .prologue
    .line 152
    const-string/jumbo v0, "cta"

    invoke-static {v0, p1}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/twitter/android/commerce/card/a;->g:Lcom/twitter/ui/widget/TwitterButton;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/twitter/android/commerce/card/a;->g:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/TwitterButton;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->g:Lcom/twitter/ui/widget/TwitterButton;

    const-string/jumbo v1, "button"

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setTag(Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->g:Lcom/twitter/ui/widget/TwitterButton;

    new-instance v1, Lcom/twitter/android/commerce/card/c;

    iget-object v2, p0, Lcom/twitter/android/commerce/card/a;->g:Lcom/twitter/ui/widget/TwitterButton;

    invoke-direct {v1, p0, v2}, Lcom/twitter/android/commerce/card/c;-><init>(Lcom/twitter/android/commerce/card/a;Lcom/twitter/ui/widget/TwitterButton;)V

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 163
    :cond_0
    return-void
.end method

.method e()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->o:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/twitter/android/commerce/card/a;->e:Lcom/twitter/library/util/y;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 180
    :cond_0
    return-void
.end method

.method e(Lclm;)V
    .locals 2

    .prologue
    .line 166
    const-string/jumbo v0, "badge"

    invoke-static {v0, p1}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/twitter/android/commerce/card/a;->n:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/twitter/android/commerce/card/a;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->n:Landroid/widget/TextView;

    const-string/jumbo v1, "badge"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/commerce/card/a;->e:Lcom/twitter/library/util/y;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/twitter/android/commerce/card/a;->n:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
