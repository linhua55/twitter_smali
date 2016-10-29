.class public Lcom/twitter/android/card/bg;
.super Lcom/twitter/android/card/ab;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/card/af;
.implements Lcom/twitter/library/card/bo;


# instance fields
.field private final a:Lcom/twitter/ui/widget/ax;

.field private final b:Landroid/widget/LinearLayout;

.field private final c:Lcom/twitter/media/ui/image/MediaImageView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/TextView;

.field private final g:Lcom/twitter/media/ui/image/MediaImageView;

.field private final h:Lcom/twitter/android/card/CallToAction;

.field private final i:Landroid/view/View;

.field private final j:Landroid/view/View;

.field private k:J

.field private l:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V
    .locals 4

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/card/ab;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V

    .line 56
    sget-object v0, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne p2, v0, :cond_1

    .line 57
    const v0, 0x7f040237

    .line 62
    :goto_0
    invoke-static {p1}, Lcom/twitter/ui/widget/ax;->a(Landroid/content/Context;)Lcom/twitter/ui/widget/ax;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/card/bg;->a:Lcom/twitter/ui/widget/ax;

    .line 63
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/twitter/android/card/bg;->q:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 64
    iget-object v2, p0, Lcom/twitter/android/card/bg;->q:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/twitter/android/card/bg;->b:Landroid/widget/LinearLayout;

    .line 66
    iget-object v0, p0, Lcom/twitter/android/card/bg;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f13054a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/android/card/bg;->c:Lcom/twitter/media/ui/image/MediaImageView;

    .line 67
    iget-object v0, p0, Lcom/twitter/android/card/bg;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f13054b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/card/bg;->d:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/twitter/android/card/bg;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f13010c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/card/bg;->e:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/twitter/android/card/bg;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f1301e5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/card/bg;->f:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/twitter/android/card/bg;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f1303a9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/android/card/bg;->g:Lcom/twitter/media/ui/image/MediaImageView;

    .line 71
    iget-object v0, p0, Lcom/twitter/android/card/bg;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f13054d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/card/CallToAction;

    iput-object v0, p0, Lcom/twitter/android/card/bg;->h:Lcom/twitter/android/card/CallToAction;

    .line 72
    iget-object v0, p0, Lcom/twitter/android/card/bg;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f130380

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/bg;->i:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/twitter/android/card/bg;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/twitter/android/card/bg;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/bg;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f130507

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/bg;->j:Landroid/view/View;

    .line 77
    return-void

    .line 59
    :cond_1
    const v0, 0x7f040238

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 96
    invoke-super {p0}, Lcom/twitter/android/card/ab;->a()V

    .line 98
    invoke-static {}, Lcom/twitter/library/card/bn;->a()Lcom/twitter/library/card/bn;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/twitter/android/card/bg;->l:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/twitter/android/card/bg;->l:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/bn;->b(JLjava/lang/Object;)V

    .line 103
    :cond_0
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v0

    .line 104
    iget-wide v2, p0, Lcom/twitter/android/card/bg;->k:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->b(JLjava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/twitter/android/card/bg;->g:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/twitter/android/card/bg;->g:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->j()Z

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/card/bg;->c:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/twitter/android/card/bg;->c:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->j()Z

    .line 113
    :cond_2
    return-void
.end method

.method public a(JLclm;)V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/twitter/android/card/bg;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 142
    const-string/jumbo v0, "title"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/twitter/android/card/bg;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/twitter/android/card/bg;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/card/bg;->a:Lcom/twitter/ui/widget/ax;

    iget-object v1, v1, Lcom/twitter/ui/widget/ax;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/bg;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 150
    const-string/jumbo v0, "description"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_1

    .line 152
    iget-object v1, p0, Lcom/twitter/android/card/bg;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/twitter/android/card/bg;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/card/bg;->a:Lcom/twitter/ui/widget/ax;

    iget-object v1, v1, Lcom/twitter/ui/widget/ax;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/card/bg;->g:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_2

    .line 158
    const-string/jumbo v0, "thumbnail_image"

    invoke-static {v0, p3}, Lcln;->a(Ljava/lang/String;Lclm;)Lcln;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_5

    iget-object v1, v0, Lcln;->a:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 160
    iget-object v1, p0, Lcom/twitter/android/card/bg;->g:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v0, v0, Lcln;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 161
    iget-object v0, p0, Lcom/twitter/android/card/bg;->g:Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 162
    iget-object v0, p0, Lcom/twitter/android/card/bg;->g:Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    .line 168
    :cond_2
    :goto_0
    const-string/jumbo v0, "card_url"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/twitter/android/card/bg;->j:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 170
    iget-object v1, p0, Lcom/twitter/android/card/bg;->j:Landroid/view/View;

    new-instance v2, Lcom/twitter/android/card/bh;

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/card/bh;-><init>(Lcom/twitter/android/card/bg;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v1, p0, Lcom/twitter/android/card/bg;->j:Landroid/view/View;

    new-instance v2, Lcom/twitter/android/card/bi;

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/card/bi;-><init>(Lcom/twitter/android/card/bg;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/card/bg;->h:Lcom/twitter/android/card/CallToAction;

    if-eqz v0, :cond_4

    .line 186
    iget-object v0, p0, Lcom/twitter/android/card/bg;->h:Lcom/twitter/android/card/CallToAction;

    invoke-virtual {p0, v0, p3}, Lcom/twitter/android/card/bg;->a(Lcom/twitter/android/card/CallToAction;Lclm;)V

    .line 188
    :cond_4
    return-void

    .line 164
    :cond_5
    iget-object v0, p0, Lcom/twitter/android/card/bg;->g:Lcom/twitter/media/ui/image/MediaImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(JLcom/twitter/library/card/CardContext;)V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/card/ab;->a(JLcom/twitter/library/card/CardContext;)V

    .line 134
    iget-object v0, p0, Lcom/twitter/android/card/bg;->h:Lcom/twitter/android/card/CallToAction;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/twitter/android/card/bg;->h:Lcom/twitter/android/card/CallToAction;

    invoke-virtual {v0, p3}, Lcom/twitter/android/card/CallToAction;->setCardContext(Lcom/twitter/library/card/CardContext;)V

    .line 137
    :cond_0
    return-void
.end method

.method public a(JLcom/twitter/model/core/TwitterUser;)V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/twitter/android/card/bg;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/twitter/android/card/bg;->d:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/twitter/android/card/bg;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/card/bg;->a:Lcom/twitter/ui/widget/ax;

    iget-object v1, v1, Lcom/twitter/ui/widget/ax;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/bg;->c:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/twitter/android/card/bg;->c:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v1, p3, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 199
    iget-object v0, p0, Lcom/twitter/android/card/bg;->c:Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/card/bg;->i:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/twitter/android/card/bg;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/twitter/android/card/bg;->i:Landroid/view/View;

    new-instance v1, Lcom/twitter/android/card/bj;

    invoke-direct {v1, p0, p1, p2}, Lcom/twitter/android/card/bj;-><init>(Lcom/twitter/android/card/bg;J)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    :cond_2
    return-void
.end method

.method public a(Lcom/twitter/library/card/av;)V
    .locals 4

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/twitter/android/card/ab;->a(Lcom/twitter/library/card/av;)V

    .line 83
    iget-wide v0, p1, Lcom/twitter/library/card/av;->b:J

    iput-wide v0, p0, Lcom/twitter/android/card/bg;->k:J

    .line 84
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v0

    .line 85
    iget-wide v2, p0, Lcom/twitter/android/card/bg;->k:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->a(JLjava/lang/Object;)V

    .line 87
    const-string/jumbo v0, "site"

    iget-object v1, p1, Lcom/twitter/library/card/av;->c:Lclm;

    invoke-static {v0, v1}, Lcom/twitter/library/card/at;->a(Ljava/lang/String;Lclm;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/bg;->l:Ljava/lang/Long;

    .line 88
    iget-object v0, p0, Lcom/twitter/android/card/bg;->l:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 89
    invoke-static {}, Lcom/twitter/library/card/bn;->a()Lcom/twitter/library/card/bn;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/twitter/android/card/bg;->l:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/bn;->a(JLjava/lang/Object;)V

    .line 92
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lcom/twitter/library/card/av;

    invoke-virtual {p0, p1}, Lcom/twitter/android/card/bg;->a(Lcom/twitter/library/card/av;)V

    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/twitter/android/card/bg;->g:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/twitter/android/card/bg;->g:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/bg;->c:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/twitter/android/card/bg;->c:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 123
    :cond_1
    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/twitter/android/card/bg;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method
