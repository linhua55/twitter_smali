.class public Lcom/twitter/library/widget/an;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/View;

.field private final c:Landroid/graphics/Paint$FontMetrics;

.field private d:Lcom/twitter/library/view/m;

.field private e:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private l:Ljava/lang/CharSequence;

.field private m:Ljava/lang/String;

.field private n:Lcom/twitter/library/widget/aq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Paint$FontMetrics;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/twitter/library/widget/an;->a:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/twitter/library/widget/an;->b:Landroid/view/View;

    .line 55
    iput-object p3, p0, Lcom/twitter/library/widget/an;->c:Landroid/graphics/Paint$FontMetrics;

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/library/widget/an;->i:Z

    .line 57
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 8

    .prologue
    .line 192
    iget-object v0, p0, Lcom/twitter/library/widget/an;->l:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 194
    iget-object v0, p0, Lcom/twitter/library/widget/an;->m:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 195
    iget-object v0, p0, Lcom/twitter/library/widget/an;->l:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 196
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 197
    new-instance v0, Lcom/twitter/library/widget/ao;

    iget v2, p0, Lcom/twitter/library/widget/an;->e:I

    iget v1, p0, Lcom/twitter/library/widget/an;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/widget/ao;-><init>(Lcom/twitter/library/widget/an;ILjava/lang/Integer;ZZ)V

    .line 203
    const/16 v1, 0x21

    invoke-virtual {p2, v0, v6, v7, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 205
    :cond_0
    return-object p2
.end method

.method private a(Lcom/twitter/model/core/bm;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 2

    .prologue
    .line 179
    invoke-static {p2}, Lcom/twitter/library/view/o;->a(Ljava/lang/CharSequence;)Lcom/twitter/library/view/o;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p1}, Lcom/twitter/library/view/o;->a(Lcom/twitter/model/core/bm;)Lcom/twitter/library/view/o;

    move-result-object v0

    iget v1, p0, Lcom/twitter/library/widget/an;->e:I

    .line 181
    invoke-virtual {v0, v1}, Lcom/twitter/library/view/o;->b(I)Lcom/twitter/library/view/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/library/widget/an;->d:Lcom/twitter/library/view/m;

    .line 182
    invoke-virtual {v0, v1}, Lcom/twitter/library/view/o;->a(Lcom/twitter/library/view/m;)Lcom/twitter/library/view/o;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/library/widget/an;->f:Z

    .line 183
    invoke-virtual {v0, v1}, Lcom/twitter/library/view/o;->e(Z)Lcom/twitter/library/view/o;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/library/widget/an;->g:Z

    .line 184
    invoke-virtual {v0, v1}, Lcom/twitter/library/view/o;->f(Z)Lcom/twitter/library/view/o;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/library/widget/an;->h:Z

    .line 185
    invoke-virtual {v0, v1}, Lcom/twitter/library/view/o;->d(Z)Lcom/twitter/library/view/o;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/twitter/library/view/o;->a()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 187
    return-object v0
.end method

.method static synthetic a(Lcom/twitter/library/widget/an;)Lcom/twitter/library/widget/aq;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/twitter/library/widget/an;->n:Lcom/twitter/library/widget/aq;

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;Landroid/text/SpannableStringBuilder;Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/twitter/model/core/e;",
            ">;",
            "Landroid/text/SpannableStringBuilder;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 165
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/e;

    .line 166
    iget v3, v0, Lcom/twitter/model/core/e;->g:I

    if-ltz v3, :cond_0

    iget v3, v0, Lcom/twitter/model/core/e;->h:I

    if-gt v3, v1, :cond_0

    .line 167
    new-instance v3, Lcom/twitter/internal/android/widget/TypefacesSpan;

    const/4 v4, 0x1

    invoke-direct {v3, p2, v4}, Lcom/twitter/internal/android/widget/TypefacesSpan;-><init>(Landroid/content/Context;I)V

    iget v4, v0, Lcom/twitter/model/core/e;->g:I

    iget v0, v0, Lcom/twitter/model/core/e;->h:I

    const/16 v5, 0x21

    invoke-virtual {p1, v3, v4, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 171
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Lcom/twitter/model/core/bm;Ljava/lang/Iterable;)Landroid/text/SpannableStringBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/twitter/model/core/bm;",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/twitter/model/core/e;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 117
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/twitter/library/widget/an;->a:Landroid/content/Context;

    invoke-static {p3, v1, v0}, Lcom/twitter/library/widget/an;->a(Ljava/lang/Iterable;Landroid/text/SpannableStringBuilder;Landroid/content/Context;)V

    .line 121
    invoke-static {}, Lcom/twitter/library/view/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/twitter/model/core/bm;->f:Lcom/twitter/model/core/j;

    invoke-virtual {v0}, Lcom/twitter/model/core/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v2, v0

    .line 123
    :goto_0
    iget-boolean v0, p0, Lcom/twitter/library/widget/an;->i:Z

    if-eqz v0, :cond_6

    .line 124
    invoke-direct {p0, p2, v1}, Lcom/twitter/library/widget/an;->a(Lcom/twitter/model/core/bm;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 126
    if-eqz v2, :cond_5

    .line 128
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 129
    invoke-virtual {p2}, Lcom/twitter/model/core/bm;->b()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cx;

    .line 130
    new-instance v6, Lcom/twitter/library/widget/ap;

    invoke-direct {v6, v0}, Lcom/twitter/library/widget/ap;-><init>(Lcom/twitter/model/core/cx;)V

    invoke-virtual {v1, v6}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_1

    :cond_0
    move v2, v3

    .line 121
    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 135
    new-instance v1, Lcom/twitter/model/core/bo;

    invoke-direct {v1, p2}, Lcom/twitter/model/core/bo;-><init>(Lcom/twitter/model/core/bm;)V

    .line 136
    invoke-virtual {v1}, Lcom/twitter/model/core/bo;->f()Lcom/twitter/model/core/bo;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcom/twitter/model/core/bo;->q()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/bm;

    .line 139
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/ap;

    .line 140
    iget v6, v0, Lcom/twitter/library/widget/ap;->a:I

    iget v0, v0, Lcom/twitter/library/widget/ap;->b:I

    invoke-virtual {v1, v6, v0}, Lcom/twitter/model/core/bm;->b(II)V

    goto :goto_2

    :cond_2
    move-object v0, v4

    move-object p2, v1

    .line 147
    :goto_3
    if-eqz v2, :cond_3

    .line 148
    iget-object v1, p0, Lcom/twitter/library/widget/an;->a:Landroid/content/Context;

    iget-object v2, p2, Lcom/twitter/model/core/bm;->f:Lcom/twitter/model/core/j;

    iget-object v4, p0, Lcom/twitter/library/widget/an;->b:Landroid/view/View;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/twitter/library/view/d;->a(Landroid/content/Context;Ljava/lang/Iterable;Landroid/text/SpannableStringBuilder;ZLandroid/view/View;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 152
    :cond_3
    iget-boolean v1, p0, Lcom/twitter/library/widget/an;->j:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v1

    invoke-virtual {v1}, Lcbh;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 153
    iget-object v1, p0, Lcom/twitter/library/widget/an;->a:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/twitter/library/widget/an;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 156
    :cond_4
    return-object v0

    :cond_5
    move-object v0, v4

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_3
.end method

.method public a(I)Lcom/twitter/library/widget/an;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 65
    iput p1, p0, Lcom/twitter/library/widget/an;->e:I

    .line 66
    return-object p0
.end method

.method public a(Lcom/twitter/library/view/m;)Lcom/twitter/library/widget/an;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/twitter/library/widget/an;->d:Lcom/twitter/library/view/m;

    .line 61
    return-object p0
.end method

.method public a(Lcom/twitter/library/widget/aq;)Lcom/twitter/library/widget/an;
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/twitter/library/widget/an;->n:Lcom/twitter/library/widget/aq;

    .line 106
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/twitter/library/widget/an;
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/twitter/library/widget/an;->l:Ljava/lang/CharSequence;

    .line 101
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/library/widget/an;
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/twitter/library/widget/an;->m:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public a(Z)Lcom/twitter/library/widget/an;
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/twitter/library/widget/an;->f:Z

    .line 76
    return-object p0
.end method

.method public b(I)Lcom/twitter/library/widget/an;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 70
    iput p1, p0, Lcom/twitter/library/widget/an;->k:I

    .line 71
    return-object p0
.end method

.method public b(Z)Lcom/twitter/library/widget/an;
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/twitter/library/widget/an;->g:Z

    .line 81
    return-object p0
.end method

.method public c(Z)Lcom/twitter/library/widget/an;
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/twitter/library/widget/an;->h:Z

    .line 86
    return-object p0
.end method

.method public d(Z)Lcom/twitter/library/widget/an;
    .locals 0

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/twitter/library/widget/an;->i:Z

    .line 91
    return-object p0
.end method

.method public e(Z)Lcom/twitter/library/widget/an;
    .locals 0

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/twitter/library/widget/an;->j:Z

    .line 96
    return-object p0
.end method
