.class public Lxo;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:J

.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/res/Resources;

.field private final d:Lcom/twitter/library/database/dm/d;

.field private final e:Lxr;

.field private final f:Lcom/twitter/internal/android/widget/HighlightedRelativeLayout;

.field private final g:Lcom/twitter/android/widget/DMAvatar;

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/TextView;

.field private final j:Landroid/widget/TextView;

.field private final k:Landroid/widget/TextView;

.field private final l:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lxq;)V
    .locals 6

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lxo;->a:J

    .line 70
    invoke-static {p1}, Lxq;->a(Lxq;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lxo;->b:Landroid/content/Context;

    .line 71
    iget-object v0, p0, Lxo;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lxo;->c:Landroid/content/res/Resources;

    .line 72
    invoke-static {p1}, Lxq;->b(Lxq;)Lcom/twitter/library/database/dm/d;

    move-result-object v0

    iput-object v0, p0, Lxo;->d:Lcom/twitter/library/database/dm/d;

    .line 74
    invoke-static {p1}, Lxq;->c(Lxq;)Lxs;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lxs;->a(Lxs;)Lcom/twitter/internal/android/widget/HighlightedRelativeLayout;

    move-result-object v1

    iput-object v1, p0, Lxo;->f:Lcom/twitter/internal/android/widget/HighlightedRelativeLayout;

    .line 76
    invoke-static {v0}, Lxs;->b(Lxs;)Lcom/twitter/android/widget/DMAvatar;

    move-result-object v1

    iput-object v1, p0, Lxo;->g:Lcom/twitter/android/widget/DMAvatar;

    .line 77
    invoke-static {v0}, Lxs;->c(Lxs;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lxo;->h:Landroid/widget/TextView;

    .line 78
    invoke-static {v0}, Lxs;->d(Lxs;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lxo;->i:Landroid/widget/TextView;

    .line 79
    invoke-static {v0}, Lxs;->e(Lxs;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lxo;->j:Landroid/widget/TextView;

    .line 80
    invoke-static {v0}, Lxs;->f(Lxs;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lxo;->k:Landroid/widget/TextView;

    .line 81
    invoke-static {v0}, Lxs;->g(Lxs;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lxo;->l:Landroid/widget/ImageView;

    .line 83
    new-instance v0, Lxr;

    iget-object v1, p0, Lxo;->d:Lcom/twitter/library/database/dm/d;

    iget-object v1, v1, Lcom/twitter/library/database/dm/d;->m:Lbnt;

    iget-wide v2, p0, Lxo;->a:J

    iget-object v4, p0, Lxo;->c:Landroid/content/res/Resources;

    const v5, 0x7f0a02fe

    .line 84
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lxr;-><init>(Lbnt;JLjava/lang/String;)V

    iput-object v0, p0, Lxo;->e:Lxr;

    .line 85
    return-void
.end method

.method static synthetic a(Lxo;)Lcom/twitter/library/database/dm/d;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lxo;->d:Lcom/twitter/library/database/dm/d;

    return-object v0
.end method

.method static synthetic b(Lxo;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lxo;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 99
    iget-object v0, p0, Lxo;->d:Lcom/twitter/library/database/dm/d;

    iget-boolean v0, v0, Lcom/twitter/library/database/dm/d;->k:Z

    if-eqz v0, :cond_0

    .line 100
    const v1, 0x7f02036f

    .line 101
    iget-object v0, p0, Lxo;->c:Landroid/content/res/Resources;

    const v3, 0x7f0a02b4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_0
    if-eq v1, v2, :cond_2

    .line 112
    iget-object v2, p0, Lxo;->l:Landroid/widget/ImageView;

    iget-object v3, p0, Lxo;->b:Landroid/content/Context;

    invoke-static {v3, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v1, p0, Lxo;->l:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v1, p0, Lxo;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lxo;->l:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/util/ui/a;->a(Landroid/view/View;I)V

    .line 120
    :goto_1
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lxo;->e:Lxr;

    iget-boolean v0, v0, Lxr;->a:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcnb;->a:Ljava/util/Set;

    iget-object v1, p0, Lxo;->e:Lxr;

    iget v1, v1, Lxr;->b:I

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const v1, 0x7f020370

    .line 105
    iget-object v0, p0, Lxo;->c:Landroid/content/res/Resources;

    const v3, 0x7f0a02b5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x0

    move v1, v2

    goto :goto_0

    .line 117
    :cond_2
    iget-object v0, p0, Lxo;->l:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lxo;->l:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/twitter/util/ui/a;->a(Landroid/view/View;I)V

    goto :goto_1
.end method

.method private c()V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lxo;->g:Lcom/twitter/android/widget/DMAvatar;

    iget-object v1, p0, Lxo;->d:Lcom/twitter/library/database/dm/d;

    new-instance v2, Lxp;

    invoke-direct {v2, p0}, Lxp;-><init>(Lxo;)V

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/widget/DMAvatar;->a(Lcom/twitter/library/database/dm/d;Landroid/view/View$OnClickListener;)V

    .line 131
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    const v3, 0x7f120107

    const v2, 0x7f12006d

    .line 134
    iget-object v0, p0, Lxo;->d:Lcom/twitter/library/database/dm/d;

    iget-boolean v0, v0, Lcom/twitter/library/database/dm/d;->g:Z

    .line 135
    iget-object v1, p0, Lxo;->f:Lcom/twitter/internal/android/widget/HighlightedRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/twitter/internal/android/widget/HighlightedRelativeLayout;->setHighlighted(Z)V

    .line 136
    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lxo;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lxo;->b:Landroid/content/Context;

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-object v0, p0, Lxo;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lxo;->b:Landroid/content/Context;

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lxo;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lxo;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    iget-object v0, p0, Lxo;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lxo;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 146
    new-instance v0, Lbob;

    invoke-direct {v0}, Lbob;-><init>()V

    .line 147
    invoke-direct {p0}, Lxo;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lbob;->c(I)Lbob;

    move-result-object v0

    iget-object v1, p0, Lxo;->e:Lxr;

    iget-object v1, v1, Lxr;->g:Lcom/twitter/model/dms/cf;

    .line 148
    invoke-virtual {v0, v1}, Lbob;->a(Lcom/twitter/model/dms/cf;)Lbob;

    move-result-object v0

    iget-object v1, p0, Lxo;->e:Lxr;

    iget-boolean v1, v1, Lxr;->a:Z

    .line 149
    invoke-virtual {v0, v1}, Lbob;->b(Z)Lbob;

    move-result-object v0

    iget-object v1, p0, Lxo;->e:Lxr;

    iget-boolean v1, v1, Lxr;->f:Z

    .line 150
    invoke-virtual {v0, v1}, Lbob;->c(Z)Lbob;

    move-result-object v0

    iget-object v1, p0, Lxo;->c:Landroid/content/res/Resources;

    .line 151
    invoke-virtual {v0, v1}, Lbob;->a(Landroid/content/res/Resources;)Lbnp;

    move-result-object v0

    check-cast v0, Lbob;

    iget-object v1, p0, Lxo;->e:Lxr;

    iget-wide v2, v1, Lxr;->d:J

    .line 152
    invoke-virtual {v0, v2, v3}, Lbob;->a(J)Lbnp;

    move-result-object v0

    check-cast v0, Lbob;

    iget-wide v2, p0, Lxo;->a:J

    .line 153
    invoke-virtual {v0, v2, v3}, Lbob;->b(J)Lbnp;

    move-result-object v0

    check-cast v0, Lbob;

    iget-object v1, p0, Lxo;->e:Lxr;

    iget-object v1, v1, Lxr;->c:Ljava/lang/String;

    .line 154
    invoke-virtual {v0, v1}, Lbob;->a(Ljava/lang/String;)Lbnp;

    move-result-object v0

    check-cast v0, Lbob;

    iget-object v1, p0, Lxo;->e:Lxr;

    iget-object v1, v1, Lxr;->e:Ljava/lang/String;

    .line 155
    invoke-virtual {v0, v1}, Lbob;->b(Ljava/lang/String;)Lbnp;

    move-result-object v0

    check-cast v0, Lbob;

    iget-object v1, p0, Lxo;->d:Lcom/twitter/library/database/dm/d;

    iget-boolean v1, v1, Lcom/twitter/library/database/dm/d;->i:Z

    .line 156
    invoke-virtual {v0, v1}, Lbob;->a(Z)Lbnp;

    move-result-object v0

    check-cast v0, Lbob;

    iget-object v1, p0, Lxo;->e:Lxr;

    iget v1, v1, Lxr;->h:I

    .line 157
    invoke-virtual {v0, v1}, Lbob;->b(I)Lbnp;

    move-result-object v0

    check-cast v0, Lbob;

    iget-object v1, p0, Lxo;->e:Lxr;

    iget v1, v1, Lxr;->b:I

    .line 158
    invoke-virtual {v0, v1}, Lbob;->a(I)Lbnp;

    move-result-object v0

    check-cast v0, Lbob;

    .line 159
    invoke-virtual {v0}, Lbob;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbno;

    .line 160
    invoke-virtual {v0}, Lbno;->a()Ljava/lang/CharSequence;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lxo;->h:Landroid/widget/TextView;

    const/4 v2, 0x0

    sget v3, Lcom/twitter/library/util/al;->a:F

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 162
    iget-object v1, p0, Lxo;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lxo;->d:Lcom/twitter/library/database/dm/d;

    iget-wide v0, v0, Lcom/twitter/library/database/dm/d;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 168
    :goto_0
    iget-object v1, p0, Lxo;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lxo;->c:Landroid/content/res/Resources;

    iget-object v1, p0, Lxo;->d:Lcom/twitter/library/database/dm/d;

    iget-wide v2, v1, Lcom/twitter/library/database/dm/d;->h:J

    .line 167
    invoke-static {v0, v2, v3}, Lcom/twitter/util/al;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private g()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 172
    iget-object v1, p0, Lxo;->d:Lcom/twitter/library/database/dm/d;

    iget-object v1, v1, Lcom/twitter/library/database/dm/d;->d:Ljava/lang/String;

    .line 173
    iget-object v2, p0, Lxo;->d:Lcom/twitter/library/database/dm/d;

    iget-object v2, v2, Lcom/twitter/library/database/dm/d;->e:Ljava/lang/String;

    .line 175
    iget-object v3, p0, Lxo;->j:Landroid/widget/TextView;

    sget v4, Lcom/twitter/library/util/al;->a:F

    invoke-virtual {v3, v0, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 176
    iget-object v3, p0, Lxo;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    if-nez v2, :cond_0

    const/16 v0, 0x8

    .line 179
    :cond_0
    iget-object v1, p0, Lxo;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lxo;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    return-void
.end method

.method private h()I
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lxo;->d:Lcom/twitter/library/database/dm/d;

    iget-object v0, v0, Lcom/twitter/library/database/dm/d;->m:Lbnt;

    .line 186
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbnt;->a()Lcom/twitter/model/dms/b;

    move-result-object v0

    .line 187
    :goto_0
    instance-of v1, v0, Lcom/twitter/model/dms/l;

    if-eqz v1, :cond_1

    .line 188
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/l;

    .line 189
    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->A()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->p()Lcom/twitter/model/dms/i;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/ap;

    invoke-virtual {v0}, Lcom/twitter/model/dms/ap;->j()Lclw;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lclw;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    const/4 v0, 0x1

    .line 197
    :goto_1
    return v0

    .line 186
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 197
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lxo;->c()V

    .line 89
    invoke-direct {p0}, Lxo;->f()V

    .line 90
    invoke-direct {p0}, Lxo;->g()V

    .line 91
    invoke-direct {p0}, Lxo;->d()V

    .line 92
    invoke-direct {p0}, Lxo;->e()V

    .line 93
    invoke-direct {p0}, Lxo;->b()V

    .line 94
    return-void
.end method
