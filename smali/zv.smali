.class public Lzv;
.super Landroid/support/v4/view/PagerAdapter;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/library/client/Session;

.field private final c:Lzw;

.field private final d:Laaa;

.field private final e:Laah;

.field private final f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lzz;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/media/ui/image/MediaImageView;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lzz;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laab;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcwb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Laah;Lcom/twitter/library/scribe/TwitterScribeAssociation;Laaa;Lzw;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 49
    iput-object p1, p0, Lzv;->a:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lzv;->b:Lcom/twitter/library/client/Session;

    .line 51
    iput-object p3, p0, Lzv;->e:Laah;

    .line 52
    iput-object p4, p0, Lzv;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 53
    iput-object p5, p0, Lzv;->d:Laaa;

    .line 54
    iput-object p6, p0, Lzv;->c:Lzw;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lzv;->g:Landroid/util/SparseArray;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzv;->h:Ljava/util/List;

    .line 57
    return-void
.end method

.method private a(Laab;Lzz;)V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lzv;->k:Lcwb;

    iget-object v1, p0, Lzv;->c:Lzw;

    invoke-virtual {p2, p1, v0, v1}, Lzz;->a(Laab;Lcwb;Lzw;)V

    .line 181
    return-void
.end method


# virtual methods
.method public a(I)Laab;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lzv;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lzv;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 123
    :cond_0
    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0

    .line 125
    :cond_1
    iget-object v0, p0, Lzv;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laab;

    goto :goto_0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Laab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lzv;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzv;->j:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/core/MediaEntity;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 93
    if-eqz p2, :cond_0

    new-instance v0, Lcom/twitter/library/network/aa;

    iget-object v2, p0, Lzv;->b:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->h()Lcom/twitter/model/account/OAuthToken;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twitter/library/network/aa;-><init>(Lcom/twitter/model/account/OAuthToken;)V

    .line 94
    :goto_0
    new-instance v2, Laam;

    .line 95
    invoke-static {p1}, Lcom/twitter/library/media/util/p;->a(Lcom/twitter/model/core/MediaEntity;)Lcom/twitter/media/request/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/twitter/media/request/b;->a(Ljava/lang/Object;)Lcom/twitter/media/request/h;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/request/b;

    iget-object v3, p1, Lcom/twitter/model/core/MediaEntity;->x:Ljava/lang/String;

    invoke-direct {v2, v1, p1, v0, v3}, Laam;-><init>(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/MediaEntity;Lcom/twitter/media/request/b;Ljava/lang/String;)V

    .line 96
    invoke-static {v2}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 97
    invoke-virtual {p0, v0}, Lzv;->a(Ljava/util/List;)V

    .line 98
    return-void

    :cond_0
    move-object v0, v1

    .line 93
    goto :goto_0
.end method

.method public a(Lcwb;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lzv;->k:Lcwb;

    .line 66
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    iput-object p1, p0, Lzv;->j:Ljava/util/List;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lzv;->i:Lzz;

    .line 75
    invoke-virtual {p0}, Lzv;->notifyDataSetChanged()V

    .line 76
    return-void
.end method

.method public b(I)Lzz;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lzv;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzz;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 215
    iget-object v2, p0, Lzv;->g:Landroid/util/SparseArray;

    .line 216
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 217
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzz;

    invoke-virtual {v0}, Lzz;->c()V

    .line 216
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 219
    :cond_0
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/card/property/ImageSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/card/property/ImageSpec;

    .line 107
    iget-object v3, v0, Lcom/twitter/model/card/property/ImageSpec;->d:Lcom/twitter/model/card/property/Vector2F;

    .line 108
    new-instance v4, Laam;

    iget-object v5, v0, Lcom/twitter/model/card/property/ImageSpec;->c:Ljava/lang/String;

    iget v6, v3, Lcom/twitter/model/card/property/Vector2F;->x:F

    iget v3, v3, Lcom/twitter/model/card/property/Vector2F;->y:F

    .line 109
    invoke-static {v6, v3}, Lcom/twitter/util/math/Size;->a(FF)Lcom/twitter/util/math/Size;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;Lcom/twitter/util/math/Size;)Lcom/twitter/media/request/b;

    move-result-object v3

    iget-object v0, v0, Lcom/twitter/model/card/property/ImageSpec;->e:Ljava/lang/String;

    invoke-direct {v4, v7, v7, v3, v0}, Laam;-><init>(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/MediaEntity;Lcom/twitter/media/request/b;Ljava/lang/String;)V

    .line 108
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p0, v1}, Lzv;->a(Ljava/util/List;)V

    .line 112
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 222
    iget-object v2, p0, Lzv;->g:Landroid/util/SparseArray;

    .line 223
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 224
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzz;

    .line 225
    iget v3, v0, Lzz;->a:I

    invoke-virtual {p0, v3}, Lzv;->a(I)Laab;

    move-result-object v3

    .line 226
    if-eqz v3, :cond_0

    .line 227
    invoke-direct {p0, v3, v0}, Lzv;->a(Laab;Lzz;)V

    .line 223
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 230
    :cond_1
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 237
    iget-object v2, p0, Lzv;->g:Landroid/util/SparseArray;

    .line 238
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 239
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzz;

    invoke-virtual {v0}, Lzz;->d()V

    .line 238
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 241
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lzv;->i:Lzz;

    .line 242
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 185
    check-cast p3, Landroid/view/View;

    .line 186
    iget-object v0, p0, Lzv;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzz;

    .line 187
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Lzz;->d()V

    .line 189
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 190
    iget-object v0, p0, Lzv;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 192
    :cond_0
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lzv;->i:Lzz;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lzv;->i:Lzz;

    iget v0, v0, Lzz;->a:I

    invoke-virtual {p0, v0}, Lzv;->a(I)Laab;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Laab;->e:Z

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lzv;->i:Lzz;

    invoke-direct {p0, v0, v1}, Lzv;->a(Laab;Lzz;)V

    .line 149
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lzv;->j:Ljava/util/List;

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x0

    .line 199
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lzv;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 209
    check-cast p1, Landroid/view/View;

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzz;

    .line 211
    iget v0, v0, Lzz;->a:I

    invoke-virtual {p0}, Lzv;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 164
    iget-object v0, p0, Lzv;->j:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laab;

    .line 165
    if-nez v2, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 175
    :goto_0
    return-object v0

    .line 169
    :cond_0
    iget-object v0, p0, Lzv;->d:Laaa;

    iget-object v1, p0, Lzv;->a:Landroid/content/Context;

    iget-object v5, p0, Lzv;->e:Laah;

    iget-object v6, p0, Lzv;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v7, p0, Lzv;->h:Ljava/util/List;

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v7}, Laaa;->a(Landroid/content/Context;Laab;Landroid/view/ViewGroup;ILaah;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/util/List;)Lzz;

    move-result-object v1

    .line 171
    invoke-direct {p0, v2, v1}, Lzv;->a(Laab;Lzz;)V

    .line 172
    invoke-virtual {v1}, Lzz;->a()Landroid/view/ViewGroup;

    move-result-object v0

    .line 173
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 174
    iget-object v2, p0, Lzv;->g:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 204
    if-ne p2, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 153
    if-nez p3, :cond_0

    .line 154
    iput-object v1, p0, Lzv;->i:Lzz;

    .line 160
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lzv;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzz;

    .line 157
    if-eqz v0, :cond_1

    iget v2, v0, Lzz;->a:I

    .line 158
    invoke-virtual {p0}, Lzv;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    :goto_1
    iput-object v0, p0, Lzv;->i:Lzz;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
