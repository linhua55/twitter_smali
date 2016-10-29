.class public abstract Lcom/twitter/android/card/a;
.super Lcom/twitter/android/card/ab;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/twitter/library/card/af;
.implements Lcom/twitter/library/card/bo;


# instance fields
.field protected a:Lcom/twitter/ui/widget/ax;

.field protected b:Landroid/widget/LinearLayout;

.field protected b_:Ljava/lang/Long;

.field protected c:Lcom/twitter/media/ui/image/MediaImageView;

.field protected d:Landroid/widget/TextView;

.field protected e:Landroid/widget/TextView;

.field protected f:Landroid/widget/TextView;

.field protected g:Lcom/twitter/android/card/CallToAction;

.field protected h:Landroid/view/View;

.field protected i:J

.field protected k:Ljava/lang/String;

.field protected l:Landroid/content/res/Resources;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Ljava/lang/String;

.field protected p:Lcln;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Landroid/widget/LinearLayout;Lcom/twitter/android/card/b;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/card/ab;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V

    .line 62
    invoke-static {p1}, Lcom/twitter/ui/widget/ax;->a(Landroid/content/Context;)Lcom/twitter/ui/widget/ax;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/a;->a:Lcom/twitter/ui/widget/ax;

    .line 63
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/a;->l:Landroid/content/res/Resources;

    .line 64
    iput-object p5, p0, Lcom/twitter/android/card/a;->b:Landroid/widget/LinearLayout;

    .line 65
    iget-object v0, p0, Lcom/twitter/android/card/a;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f13054a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/android/card/a;->c:Lcom/twitter/media/ui/image/MediaImageView;

    .line 66
    iget-object v0, p0, Lcom/twitter/android/card/a;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f13054b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/card/a;->d:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/twitter/android/card/a;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f1301e5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/card/a;->e:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/twitter/android/card/a;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f13010c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/card/a;->f:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/twitter/android/card/a;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/twitter/android/card/a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/a;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f13054d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/card/CallToAction;

    iput-object v0, p0, Lcom/twitter/android/card/a;->g:Lcom/twitter/android/card/CallToAction;

    .line 73
    iget-object v0, p0, Lcom/twitter/android/card/a;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f130380

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/a;->h:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/twitter/android/card/a;->h:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/twitter/android/card/a;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/card/a;->b:Landroid/widget/LinearLayout;

    invoke-interface {p6, p1, v0}, Lcom/twitter/android/card/b;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 82
    iget-object v0, p0, Lcom/twitter/android/card/a;->b:Landroid/widget/LinearLayout;

    const v2, 0x7f13054c

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 83
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 108
    invoke-super {p0}, Lcom/twitter/android/card/ab;->a()V

    .line 110
    invoke-static {}, Lcom/twitter/library/card/bn;->a()Lcom/twitter/library/card/bn;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/twitter/android/card/a;->b_:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/twitter/android/card/a;->b_:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/bn;->b(JLjava/lang/Object;)V

    .line 115
    :cond_0
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v0

    .line 116
    iget-wide v2, p0, Lcom/twitter/android/card/a;->i:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->b(JLjava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/twitter/android/card/a;->c:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/twitter/android/card/a;->c:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->j()Z

    .line 121
    :cond_1
    return-void
.end method

.method public a(JLclm;)V
    .locals 3

    .prologue
    .line 146
    const-string/jumbo v0, "card_url"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/a;->k:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/twitter/android/card/a;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 149
    const-string/jumbo v0, "description"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/twitter/android/card/a;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/twitter/android/card/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/card/a;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 158
    const-string/jumbo v0, "title"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_2

    .line 160
    iget-object v1, p0, Lcom/twitter/android/card/a;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v1, p0, Lcom/twitter/android/card/a;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/twitter/android/card/a;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/card/a;->a:Lcom/twitter/ui/widget/ax;

    iget-object v1, v1, Lcom/twitter/ui/widget/ax;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 163
    iget-object v0, p0, Lcom/twitter/android/card/a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/twitter/android/card/a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/card/a;->g:Lcom/twitter/android/card/CallToAction;

    if-eqz v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/twitter/android/card/a;->g:Lcom/twitter/android/card/CallToAction;

    invoke-virtual {p0, v0, p3}, Lcom/twitter/android/card/a;->a(Lcom/twitter/android/card/CallToAction;Lclm;)V

    .line 171
    :cond_3
    return-void
.end method

.method public a(JLcom/twitter/library/card/CardContext;)V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/card/ab;->a(JLcom/twitter/library/card/CardContext;)V

    .line 139
    iget-object v0, p0, Lcom/twitter/android/card/a;->g:Lcom/twitter/android/card/CallToAction;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/twitter/android/card/a;->g:Lcom/twitter/android/card/CallToAction;

    invoke-virtual {v0, p3}, Lcom/twitter/android/card/CallToAction;->setCardContext(Lcom/twitter/library/card/CardContext;)V

    .line 142
    :cond_0
    return-void
.end method

.method public a(JLcom/twitter/model/core/TwitterUser;)V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/twitter/android/card/a;->b_:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/card/a;->b_:Ljava/lang/Long;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/twitter/android/card/a;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/twitter/android/card/a;->d:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/twitter/android/card/a;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/card/a;->a:Lcom/twitter/ui/widget/ax;

    iget-object v1, v1, Lcom/twitter/ui/widget/ax;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/a;->c:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/twitter/android/card/a;->c:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v1, p3, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 183
    iget-object v0, p0, Lcom/twitter/android/card/a;->c:Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/card/a;->h:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/twitter/android/card/a;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/twitter/android/card/a;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    :cond_2
    return-void
.end method

.method public a(Lcom/twitter/library/card/av;)V
    .locals 4

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/twitter/android/card/ab;->a(Lcom/twitter/library/card/av;)V

    .line 89
    const-string/jumbo v0, "player_url"

    iget-object v1, p1, Lcom/twitter/library/card/av;->c:Lclm;

    invoke-static {v0, v1}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/a;->m:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "player_stream_url"

    iget-object v1, p1, Lcom/twitter/library/card/av;->c:Lclm;

    invoke-static {v0, v1}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/a;->n:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, "player_stream_content_type"

    iget-object v1, p1, Lcom/twitter/library/card/av;->c:Lclm;

    invoke-static {v0, v1}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/a;->o:Ljava/lang/String;

    .line 92
    const-string/jumbo v0, "player_image"

    iget-object v1, p1, Lcom/twitter/library/card/av;->c:Lclm;

    invoke-static {v0, v1}, Lcln;->a(Ljava/lang/String;Lclm;)Lcln;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/a;->p:Lcln;

    .line 94
    iget-wide v0, p1, Lcom/twitter/library/card/av;->b:J

    iput-wide v0, p0, Lcom/twitter/android/card/a;->i:J

    .line 95
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v0

    .line 96
    iget-wide v2, p0, Lcom/twitter/android/card/a;->i:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->a(JLjava/lang/Object;)V

    .line 98
    const-string/jumbo v0, "site"

    iget-object v1, p1, Lcom/twitter/library/card/av;->c:Lclm;

    invoke-static {v0, v1}, Lcom/twitter/library/card/at;->a(Ljava/lang/String;Lclm;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/a;->b_:Ljava/lang/Long;

    .line 100
    invoke-static {}, Lcom/twitter/library/card/bn;->a()Lcom/twitter/library/card/bn;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/twitter/android/card/a;->b_:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/twitter/android/card/a;->b_:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/bn;->a(JLjava/lang/Object;)V

    .line 104
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lcom/twitter/library/card/av;

    invoke-virtual {p0, p1}, Lcom/twitter/android/card/a;->a(Lcom/twitter/library/card/av;)V

    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/twitter/android/card/a;->c:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/twitter/android/card/a;->c:Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 128
    :cond_0
    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/twitter/android/card/a;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/twitter/android/card/a;->h:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/twitter/android/card/a;->b_:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/card/a;->a(J)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/a;->v:Lcom/twitter/android/card/CardActionHelper;

    iget-object v1, p0, Lcom/twitter/android/card/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/card/CardActionHelper;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/card/a;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/card/a;->k:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/card/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x0

    return v0
.end method
