.class public Lcom/twitter/android/card/bl;
.super Lcom/twitter/android/card/ab;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
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

.field private final j:Landroid/widget/TextView;

.field private k:J

.field private l:Ljava/lang/Long;

.field private m:Ljava/lang/Long;

.field private n:Ljava/lang/String;

.field private final o:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/card/ab;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V

    .line 54
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/twitter/ui/widget/ax;->a(Landroid/content/Context;)Lcom/twitter/ui/widget/ax;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/card/bl;->a:Lcom/twitter/ui/widget/ax;

    .line 56
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/card/bl;->o:Landroid/content/res/Resources;

    .line 57
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040239

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/twitter/android/card/bl;->b:Landroid/widget/LinearLayout;

    .line 60
    iget-object v0, p0, Lcom/twitter/android/card/bl;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f13054a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/android/card/bl;->c:Lcom/twitter/media/ui/image/MediaImageView;

    .line 61
    iget-object v0, p0, Lcom/twitter/android/card/bl;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f13054b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/card/bl;->d:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/twitter/android/card/bl;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f13010c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/card/bl;->e:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/twitter/android/card/bl;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f1301e5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/card/bl;->f:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/twitter/android/card/bl;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f1303a9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/android/card/bl;->g:Lcom/twitter/media/ui/image/MediaImageView;

    .line 65
    iget-object v0, p0, Lcom/twitter/android/card/bl;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f13054d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/card/CallToAction;

    iput-object v0, p0, Lcom/twitter/android/card/bl;->h:Lcom/twitter/android/card/CallToAction;

    .line 66
    iget-object v0, p0, Lcom/twitter/android/card/bl;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f130380

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/bl;->i:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/twitter/android/card/bl;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/twitter/android/card/bl;->i:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/bl;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f1302ef

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/card/bl;->j:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/twitter/android/card/bl;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/twitter/android/card/bl;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 98
    invoke-super {p0}, Lcom/twitter/android/card/ab;->a()V

    .line 100
    invoke-static {}, Lcom/twitter/library/card/bn;->a()Lcom/twitter/library/card/bn;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/twitter/android/card/bl;->l:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/twitter/android/card/bl;->l:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/bn;->b(JLjava/lang/Object;)V

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/card/bl;->m:Ljava/lang/Long;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/twitter/android/card/bl;->m:Ljava/lang/Long;

    iget-object v2, p0, Lcom/twitter/android/card/bl;->l:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/twitter/android/card/bl;->m:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/bn;->b(JLjava/lang/Object;)V

    .line 108
    :cond_1
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v0

    .line 109
    iget-wide v2, p0, Lcom/twitter/android/card/bl;->k:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->b(JLjava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/twitter/android/card/bl;->g:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/twitter/android/card/bl;->g:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->j()Z

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/card/bl;->c:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_3

    .line 116
    iget-object v0, p0, Lcom/twitter/android/card/bl;->c:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->j()Z

    .line 118
    :cond_3
    return-void
.end method

.method public a(JLclm;)V
    .locals 3

    .prologue
    .line 146
    const-string/jumbo v0, "creator"

    invoke-static {v0, p3}, Lcom/twitter/library/card/at;->a(Ljava/lang/String;Lclm;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/bl;->m:Ljava/lang/Long;

    .line 147
    const-string/jumbo v0, "card_url"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/bl;->n:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/twitter/android/card/bl;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 150
    const-string/jumbo v0, "title"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/twitter/android/card/bl;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/twitter/android/card/bl;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/card/bl;->a:Lcom/twitter/ui/widget/ax;

    iget-object v1, v1, Lcom/twitter/ui/widget/ax;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 154
    iget-object v0, p0, Lcom/twitter/android/card/bl;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/twitter/android/card/bl;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/bl;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 160
    const-string/jumbo v0, "description"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_1

    .line 162
    iget-object v1, p0, Lcom/twitter/android/card/bl;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/twitter/android/card/bl;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/card/bl;->a:Lcom/twitter/ui/widget/ax;

    iget-object v1, v1, Lcom/twitter/ui/widget/ax;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 164
    iget-object v0, p0, Lcom/twitter/android/card/bl;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/twitter/android/card/bl;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/card/bl;->g:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_2

    .line 170
    const-string/jumbo v0, "summary_photo_image"

    invoke-static {v0, p3}, Lcln;->a(Ljava/lang/String;Lclm;)Lcln;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcln;->a:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 172
    iget-object v1, p0, Lcom/twitter/android/card/bl;->g:Lcom/twitter/media/ui/image/MediaImageView;

    const v2, 0x3faaaaab

    invoke-virtual {v0, v2}, Lcln;->a(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/twitter/media/ui/image/MediaImageView;->setAspectRatio(F)V

    .line 173
    iget-object v1, p0, Lcom/twitter/android/card/bl;->g:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v0, v0, Lcln;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 174
    iget-object v0, p0, Lcom/twitter/android/card/bl;->g:Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 175
    iget-object v0, p0, Lcom/twitter/android/card/bl;->g:Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/twitter/android/card/bl;->g:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0, p0}, Lcom/twitter/media/ui/image/MediaImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/twitter/android/card/bl;->g:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0, p0}, Lcom/twitter/media/ui/image/MediaImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 183
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/card/bl;->h:Lcom/twitter/android/card/CallToAction;

    if-eqz v0, :cond_3

    .line 184
    iget-object v0, p0, Lcom/twitter/android/card/bl;->h:Lcom/twitter/android/card/CallToAction;

    invoke-virtual {p0, v0, p3}, Lcom/twitter/android/card/bl;->a(Lcom/twitter/android/card/CallToAction;Lclm;)V

    .line 186
    :cond_3
    return-void

    .line 179
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/card/bl;->g:Lcom/twitter/media/ui/image/MediaImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(JLcom/twitter/library/card/CardContext;)V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/card/ab;->a(JLcom/twitter/library/card/CardContext;)V

    .line 139
    iget-object v0, p0, Lcom/twitter/android/card/bl;->h:Lcom/twitter/android/card/CallToAction;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/twitter/android/card/bl;->h:Lcom/twitter/android/card/CallToAction;

    invoke-virtual {v0, p3}, Lcom/twitter/android/card/CallToAction;->setCardContext(Lcom/twitter/library/card/CardContext;)V

    .line 142
    :cond_0
    return-void
.end method

.method public a(JLcom/twitter/model/core/TwitterUser;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 190
    iget-object v0, p0, Lcom/twitter/android/card/bl;->l:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/card/bl;->l:Ljava/lang/Long;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/twitter/android/card/bl;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/twitter/android/card/bl;->d:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/twitter/android/card/bl;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/card/bl;->a:Lcom/twitter/ui/widget/ax;

    iget-object v1, v1, Lcom/twitter/ui/widget/ax;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/bl;->c:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/twitter/android/card/bl;->c:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v1, p3, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 198
    iget-object v0, p0, Lcom/twitter/android/card/bl;->c:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0, v5}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/card/bl;->i:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/twitter/android/card/bl;->i:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/twitter/android/card/bl;->i:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/card/bl;->m:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/card/bl;->m:Ljava/lang/Long;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/twitter/android/card/bl;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 209
    iget-object v0, p0, Lcom/twitter/android/card/bl;->o:Landroid/content/res/Resources;

    const v1, 0x7f0a00f3

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p3, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p3, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/twitter/android/card/bl;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/twitter/android/card/bl;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/twitter/android/card/bl;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    :cond_3
    return-void
.end method

.method public a(Lcom/twitter/library/card/av;)V
    .locals 4

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/twitter/android/card/ab;->a(Lcom/twitter/library/card/av;)V

    .line 80
    iget-wide v0, p1, Lcom/twitter/library/card/av;->b:J

    iput-wide v0, p0, Lcom/twitter/android/card/bl;->k:J

    .line 81
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v0

    .line 82
    iget-wide v2, p0, Lcom/twitter/android/card/bl;->k:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->a(JLjava/lang/Object;)V

    .line 84
    const-string/jumbo v0, "site"

    iget-object v1, p1, Lcom/twitter/library/card/av;->c:Lclm;

    invoke-static {v0, v1}, Lcom/twitter/library/card/at;->a(Ljava/lang/String;Lclm;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/bl;->l:Ljava/lang/Long;

    .line 85
    const-string/jumbo v0, "creator"

    iget-object v1, p1, Lcom/twitter/library/card/av;->c:Lclm;

    invoke-static {v0, v1}, Lcom/twitter/library/card/at;->a(Ljava/lang/String;Lclm;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/bl;->m:Ljava/lang/Long;

    .line 87
    invoke-static {}, Lcom/twitter/library/card/bn;->a()Lcom/twitter/library/card/bn;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/twitter/android/card/bl;->l:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/twitter/android/card/bl;->l:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/bn;->a(JLjava/lang/Object;)V

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/card/bl;->m:Ljava/lang/Long;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/twitter/android/card/bl;->m:Ljava/lang/Long;

    iget-object v2, p0, Lcom/twitter/android/card/bl;->l:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/twitter/android/card/bl;->m:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/bn;->a(JLjava/lang/Object;)V

    .line 94
    :cond_1
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/twitter/library/card/av;

    invoke-virtual {p0, p1}, Lcom/twitter/android/card/bl;->a(Lcom/twitter/library/card/av;)V

    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/twitter/android/card/bl;->g:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/twitter/android/card/bl;->g:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/bl;->c:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/twitter/android/card/bl;->c:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 128
    :cond_1
    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/twitter/android/card/bl;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/twitter/android/card/bl;->j:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/twitter/android/card/bl;->m:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/card/bl;->a(J)V

    .line 227
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/bl;->i:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/twitter/android/card/bl;->l:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/card/bl;->a(J)V

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/card/bl;->v:Lcom/twitter/android/card/CardActionHelper;

    iget-object v1, p0, Lcom/twitter/android/card/bl;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/card/CardActionHelper;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/twitter/android/card/bl;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/card/bl;->n:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/card/bl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/4 v0, 0x0

    return v0
.end method
