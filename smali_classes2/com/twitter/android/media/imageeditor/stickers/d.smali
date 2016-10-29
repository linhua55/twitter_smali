.class public Lcom/twitter/android/media/imageeditor/stickers/d;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/twitter/android/media/imageeditor/stickers/v;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcpy;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/SharedPreferences;

.field private final d:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Lcpf;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/twitter/android/media/imageeditor/stickers/i;

.field private f:Lcom/twitter/android/media/imageeditor/stickers/j;

.field private final g:I

.field private final h:I

.field private i:I

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcpy;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 60
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->j:Ljava/util/Set;

    .line 63
    iput-object p1, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->a:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->b:Ljava/util/List;

    .line 66
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpy;

    .line 67
    iget-object v0, v0, Lcpy;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    iput v1, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->g:I

    .line 70
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :cond_1
    iput v2, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->h:I

    .line 71
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->c:Landroid/content/SharedPreferences;

    .line 72
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->d:Landroid/support/v4/util/SimpleArrayMap;

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/media/imageeditor/stickers/d;)Lcom/twitter/android/media/imageeditor/stickers/i;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->e:Lcom/twitter/android/media/imageeditor/stickers/i;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/media/imageeditor/stickers/d;)Lcom/twitter/android/media/imageeditor/stickers/j;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->f:Lcom/twitter/android/media/imageeditor/stickers/j;

    return-object v0
.end method

.method private b(I)Lcom/twitter/util/collection/ac;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/twitter/util/collection/ac",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 211
    .line 212
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    move v2, v0

    .line 213
    :goto_0
    if-ge v1, v3, :cond_1

    .line 214
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpy;

    iget-object v0, v0, Lcpy;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 215
    add-int v4, v2, v0

    if-le p1, v4, :cond_0

    .line 217
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    .line 213
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 219
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sub-int v1, p1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v0

    .line 222
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic c(Lcom/twitter/android/media/imageeditor/stickers/d;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/twitter/android/media/imageeditor/stickers/v;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 79
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->a:Landroid/content/Context;

    .line 81
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040395

    invoke-virtual {v0, v1, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 82
    iget v0, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->i:I

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 85
    iget v2, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->i:I

    neg-int v2, v2

    iget v3, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->i:I

    neg-int v3, v3

    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->setMargins(IIII)V

    .line 87
    :cond_0
    new-instance v0, Lcom/twitter/android/media/imageeditor/stickers/h;

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/media/imageeditor/stickers/h;-><init>(Lcom/twitter/android/media/imageeditor/stickers/d;Landroid/view/View;)V

    .line 89
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/media/imageeditor/stickers/s;->a(Landroid/content/Context;)Lcom/twitter/android/media/imageeditor/stickers/w;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 102
    iput p1, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->i:I

    .line 103
    return-void
.end method

.method public a(Lcom/twitter/android/media/imageeditor/stickers/i;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->e:Lcom/twitter/android/media/imageeditor/stickers/i;

    .line 95
    return-void
.end method

.method public a(Lcom/twitter/android/media/imageeditor/stickers/j;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->f:Lcom/twitter/android/media/imageeditor/stickers/j;

    .line 99
    return-void
.end method

.method public a(Lcom/twitter/android/media/imageeditor/stickers/v;)V
    .locals 3

    .prologue
    .line 232
    instance-of v0, p1, Lcom/twitter/android/media/imageeditor/stickers/w;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 233
    check-cast v0, Lcom/twitter/android/media/imageeditor/stickers/w;

    .line 234
    iget-object v1, v0, Lcom/twitter/android/media/imageeditor/stickers/w;->a:Lcom/twitter/media/ui/image/MediaImageView;

    check-cast v1, Lcom/twitter/android/media/stickers/StickerCatalogMediaImageView;

    invoke-virtual {v1}, Lcom/twitter/android/media/stickers/StickerCatalogMediaImageView;->getSticker()Lcpf;

    move-result-object v2

    .line 235
    if-nez v2, :cond_0

    .line 245
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->d:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 240
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 241
    :cond_1
    invoke-static {v2, v0}, Lcom/twitter/android/media/imageeditor/stickers/s;->a(Lcpf;Lcom/twitter/android/media/imageeditor/stickers/w;)V

    .line 244
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/android/media/imageeditor/stickers/v;I)V
    .locals 9

    .prologue
    const/16 v3, 0x8

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 107
    instance-of v0, p1, Lcom/twitter/android/media/imageeditor/stickers/w;

    if-eqz v0, :cond_3

    .line 108
    check-cast p1, Lcom/twitter/android/media/imageeditor/stickers/w;

    .line 109
    iget-object v2, p1, Lcom/twitter/android/media/imageeditor/stickers/w;->a:Lcom/twitter/media/ui/image/MediaImageView;

    .line 110
    invoke-direct {p0, p2}, Lcom/twitter/android/media/imageeditor/stickers/d;->b(I)Lcom/twitter/util/collection/ac;

    move-result-object v1

    .line 111
    if-nez v1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {v1}, Lcom/twitter/util/collection/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 115
    iget-object v3, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpy;

    .line 117
    iget-object v3, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v7, :cond_2

    invoke-virtual {v1}, Lcom/twitter/util/collection/ac;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 p2, v1, -0x1

    .line 118
    :cond_2
    iget-object v1, v0, Lcpy;->f:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcqa;

    .line 119
    invoke-virtual {v1}, Lcqa;->a()Lcpf;

    move-result-object v3

    .line 120
    iget-object v4, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->d:Landroid/support/v4/util/SimpleArrayMap;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v4, Lcom/twitter/android/media/imageeditor/stickers/e;

    invoke-direct {v4, p0, v3, v0, v2}, Lcom/twitter/android/media/imageeditor/stickers/e;-><init>(Lcom/twitter/android/media/imageeditor/stickers/d;Lcpf;Lcpy;Lcom/twitter/media/ui/image/MediaImageView;)V

    invoke-virtual {v2, v4}, Lcom/twitter/media/ui/image/MediaImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-static {v3, p1}, Lcom/twitter/android/media/imageeditor/stickers/s;->a(Lcpf;Lcom/twitter/android/media/imageeditor/stickers/w;)V

    .line 128
    new-instance v0, Lcom/twitter/android/media/imageeditor/stickers/f;

    invoke-direct {v0, p0, v1, p1}, Lcom/twitter/android/media/imageeditor/stickers/f;-><init>(Lcom/twitter/android/media/imageeditor/stickers/d;Lcqa;Lcom/twitter/android/media/imageeditor/stickers/w;)V

    invoke-virtual {v2, v0}, Lcom/twitter/media/ui/image/MediaImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 160
    :cond_3
    check-cast p1, Lcom/twitter/android/media/imageeditor/stickers/h;

    .line 161
    invoke-direct {p0, p2}, Lcom/twitter/android/media/imageeditor/stickers/d;->b(I)Lcom/twitter/util/collection/ac;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    .line 165
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->b:Ljava/util/List;

    invoke-virtual {v0}, Lcom/twitter/util/collection/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpy;

    .line 166
    iget-object v1, p1, Lcom/twitter/android/media/imageeditor/stickers/h;->a:Landroid/view/View;

    const v4, 0x7f130748

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 167
    iget-object v4, p1, Lcom/twitter/android/media/imageeditor/stickers/h;->a:Landroid/view/View;

    const v5, 0x7f130747

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 168
    iget-object v5, p1, Lcom/twitter/android/media/imageeditor/stickers/h;->a:Landroid/view/View;

    const v6, 0x7f130749

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 169
    iget-object v6, v0, Lcpy;->e:Ljava/lang/String;

    invoke-static {v6}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 170
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v6, v0, Lcpy;->e:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :goto_1
    iget-boolean v1, v0, Lcpy;->g:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    const v1, 0x7f13074a

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 177
    iget-boolean v5, v0, Lcpy;->g:Z

    if-eqz v5, :cond_6

    iget-object v5, v0, Lcpy;->h:Ljava/lang/String;

    invoke-static {v5}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 178
    iget-object v5, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->a:Landroid/content/Context;

    const v6, 0x7f0a0885

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v0, Lcpy;->h:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :goto_3
    if-eqz p2, :cond_7

    .line 183
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :goto_4
    const/4 v1, 0x2

    iget v2, v0, Lcpy;->c:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->j:Ljava/util/Set;

    iget-wide v2, v0, Lcpy;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 189
    invoke-static {v2, v3, v0}, Lcom/twitter/android/media/imageeditor/stickers/c;->a(JLcpy;)V

    .line 190
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->j:Ljava/util/Set;

    iget-wide v2, v0, Lcpy;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 173
    :cond_4
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    move v1, v3

    .line 175
    goto :goto_2

    .line 180
    :cond_6
    iget-object v5, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->a:Landroid/content/Context;

    const v6, 0x7f0a06af

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 185
    :cond_7
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method public b(Lcom/twitter/android/media/imageeditor/stickers/v;)V
    .locals 2

    .prologue
    .line 249
    instance-of v0, p1, Lcom/twitter/android/media/imageeditor/stickers/w;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 250
    check-cast v0, Lcom/twitter/android/media/imageeditor/stickers/w;

    iget-object v0, v0, Lcom/twitter/android/media/imageeditor/stickers/w;->a:Lcom/twitter/media/ui/image/MediaImageView;

    check-cast v0, Lcom/twitter/android/media/stickers/StickerCatalogMediaImageView;

    .line 251
    invoke-virtual {v0}, Lcom/twitter/android/media/stickers/StickerCatalogMediaImageView;->getSticker()Lcpf;

    move-result-object v1

    .line 252
    if-nez v1, :cond_0

    .line 261
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->d:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 256
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->d:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 227
    iget v0, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->g:I

    iget v1, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->h:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 197
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 206
    :goto_0
    return v0

    .line 200
    :cond_0
    invoke-direct {p0, p1}, Lcom/twitter/android/media/imageeditor/stickers/d;->b(I)Lcom/twitter/util/collection/ac;

    move-result-object v0

    .line 201
    if-nez v0, :cond_1

    .line 202
    const/4 v0, 0x0

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {v0}, Lcom/twitter/util/collection/ac;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 204
    goto :goto_0

    :cond_2
    move v0, v1

    .line 206
    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, Lcom/twitter/android/media/imageeditor/stickers/v;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/media/imageeditor/stickers/d;->a(Lcom/twitter/android/media/imageeditor/stickers/v;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/media/imageeditor/stickers/d;->a(Landroid/view/ViewGroup;I)Lcom/twitter/android/media/imageeditor/stickers/v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, Lcom/twitter/android/media/imageeditor/stickers/v;

    invoke-virtual {p0, p1}, Lcom/twitter/android/media/imageeditor/stickers/d;->a(Lcom/twitter/android/media/imageeditor/stickers/v;)V

    return-void
.end method

.method public synthetic onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, Lcom/twitter/android/media/imageeditor/stickers/v;

    invoke-virtual {p0, p1}, Lcom/twitter/android/media/imageeditor/stickers/d;->b(Lcom/twitter/android/media/imageeditor/stickers/v;)V

    return-void
.end method
