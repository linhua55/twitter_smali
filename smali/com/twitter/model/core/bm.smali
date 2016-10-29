.class public Lcom/twitter/model/core/bm;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/model/core/bm;

.field public static final b:Lcom/twitter/util/serialization/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/d",
            "<",
            "Lcom/twitter/model/core/bm;",
            "Lcom/twitter/model/core/bo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Lcom/twitter/model/core/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/model/core/j",
            "<",
            "Lcom/twitter/model/core/cx;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/twitter/model/core/ac;

.field public final e:Lcom/twitter/model/core/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/model/core/j",
            "<",
            "Lcom/twitter/model/core/av;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/twitter/model/core/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/model/core/j",
            "<",
            "Lcom/twitter/model/core/q;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/twitter/model/core/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/model/core/j",
            "<",
            "Lcom/twitter/model/core/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/twitter/model/core/bo;

    invoke-direct {v0}, Lcom/twitter/model/core/bo;-><init>()V

    invoke-virtual {v0}, Lcom/twitter/model/core/bo;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    sput-object v0, Lcom/twitter/model/core/bm;->a:Lcom/twitter/model/core/bm;

    .line 28
    new-instance v0, Lcom/twitter/model/core/bp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/core/bp;-><init>(Lcom/twitter/model/core/bn;)V

    sput-object v0, Lcom/twitter/model/core/bm;->b:Lcom/twitter/util/serialization/d;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/core/bo;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iget-object v0, p1, Lcom/twitter/model/core/bo;->a:Lcom/twitter/model/core/m;

    invoke-virtual {v0}, Lcom/twitter/model/core/m;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/j;

    iput-object v0, p0, Lcom/twitter/model/core/bm;->c:Lcom/twitter/model/core/j;

    .line 47
    iget-object v0, p1, Lcom/twitter/model/core/bo;->b:Lcom/twitter/model/core/ae;

    invoke-virtual {v0}, Lcom/twitter/model/core/ae;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/ac;

    iput-object v0, p0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    .line 48
    iget-object v0, p1, Lcom/twitter/model/core/bo;->c:Lcom/twitter/model/core/m;

    invoke-virtual {v0}, Lcom/twitter/model/core/m;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/j;

    iput-object v0, p0, Lcom/twitter/model/core/bm;->e:Lcom/twitter/model/core/j;

    .line 49
    iget-object v0, p1, Lcom/twitter/model/core/bo;->d:Lcom/twitter/model/core/m;

    invoke-virtual {v0}, Lcom/twitter/model/core/m;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/j;

    iput-object v0, p0, Lcom/twitter/model/core/bm;->f:Lcom/twitter/model/core/j;

    .line 50
    iget-object v0, p1, Lcom/twitter/model/core/bo;->e:Lcom/twitter/model/core/m;

    invoke-virtual {v0}, Lcom/twitter/model/core/m;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/j;

    iput-object v0, p0, Lcom/twitter/model/core/bm;->g:Lcom/twitter/model/core/j;

    .line 51
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Lcom/twitter/model/core/bm;)I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 207
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 209
    invoke-static {p1}, Lcom/twitter/model/core/bm;->b(Lcom/twitter/model/core/bm;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/ac;

    .line 210
    invoke-virtual {v0}, Lcom/twitter/util/collection/ac;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v4, :cond_1

    .line 211
    invoke-virtual {v0}, Lcom/twitter/util/collection/ac;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0}, Lcom/twitter/util/collection/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v2

    :goto_1
    move v2, v0

    .line 213
    goto :goto_0

    .line 214
    :cond_0
    sub-int v0, v4, v2

    return v0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public static a([B)Lcom/twitter/model/core/bm;
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/twitter/model/core/bm;->b:Lcom/twitter/util/serialization/d;

    invoke-static {p0, v0}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/core/bm;->a:Lcom/twitter/model/core/bm;

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    return-object v0
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/twitter/model/core/bm;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 163
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    .line 165
    :cond_0
    iget-object v0, p1, Lcom/twitter/model/core/bm;->f:Lcom/twitter/model/core/j;

    invoke-virtual {v0}, Lcom/twitter/model/core/j;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/q;

    .line 166
    iget v2, v0, Lcom/twitter/model/core/q;->g:I

    iput v2, v0, Lcom/twitter/model/core/q;->i:I

    .line 167
    iget v2, v0, Lcom/twitter/model/core/q;->h:I

    iput v2, v0, Lcom/twitter/model/core/q;->j:I

    goto :goto_1

    .line 169
    :cond_1
    invoke-virtual {p1}, Lcom/twitter/model/core/bm;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 170
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_2
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 173
    const/4 v0, 0x0

    .line 174
    invoke-virtual {p1}, Lcom/twitter/model/core/bm;->b()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cx;

    .line 175
    iget v5, v0, Lcom/twitter/model/core/cx;->g:I

    .line 176
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/cx;

    .line 177
    if-eqz v1, :cond_4

    .line 178
    iget v5, v1, Lcom/twitter/model/core/cx;->G:I

    iput v5, v0, Lcom/twitter/model/core/cx;->G:I

    .line 179
    iget v1, v1, Lcom/twitter/model/core/cx;->H:I

    iput v1, v0, Lcom/twitter/model/core/cx;->H:I

    goto :goto_2

    .line 182
    :cond_4
    invoke-virtual {v3, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
    sub-int v1, v5, v2

    .line 185
    iget v5, v0, Lcom/twitter/model/core/cx;->h:I

    sub-int/2addr v5, v2

    .line 186
    if-ltz v1, :cond_5

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-gt v5, v6, :cond_5

    .line 187
    iget-object v6, v0, Lcom/twitter/model/core/cx;->F:Ljava/lang/String;

    .line 188
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 189
    invoke-virtual {p0, v1, v5, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    .line 191
    sub-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 192
    iput v1, v0, Lcom/twitter/model/core/cx;->G:I

    .line 193
    iput v6, v0, Lcom/twitter/model/core/cx;->H:I

    .line 197
    :cond_5
    iget-object v1, p1, Lcom/twitter/model/core/bm;->f:Lcom/twitter/model/core/j;

    invoke-virtual {v1}, Lcom/twitter/model/core/j;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/q;

    .line 198
    iget v6, v0, Lcom/twitter/model/core/cx;->G:I

    if-ltz v6, :cond_6

    iget v6, v0, Lcom/twitter/model/core/cx;->G:I

    iget v7, v1, Lcom/twitter/model/core/q;->i:I

    if-ge v6, v7, :cond_6

    .line 199
    neg-int v6, v2

    invoke-virtual {v1, v6}, Lcom/twitter/model/core/q;->b(I)V

    goto :goto_3

    .line 203
    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static b(Lcom/twitter/model/core/bm;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/core/bm;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/util/collection/ac",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 219
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Iterable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twitter/model/core/bm;->c:Lcom/twitter/model/core/j;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/twitter/model/core/bm;->e:Lcom/twitter/model/core/j;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/twitter/model/core/bm;->f:Lcom/twitter/model/core/j;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/twitter/model/core/bm;->g:Lcom/twitter/model/core/j;

    aput-object v2, v0, v1

    invoke-static {v0}, Lczz;->a([Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    .line 221
    invoke-static {}, Lcom/twitter/util/collection/au;->e()Lcom/twitter/util/collection/au;

    move-result-object v1

    .line 222
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/e;

    .line 223
    iget v3, v0, Lcom/twitter/model/core/e;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, v0, Lcom/twitter/model/core/e;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/au;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/au;

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {v1}, Lcom/twitter/util/collection/au;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public static b(Ljava/lang/CharSequence;Lcom/twitter/model/core/bm;)Z
    .locals 9

    .prologue
    const v8, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    .line 229
    sget-boolean v0, Lcom/twitter/util/a;->a:Z

    if-nez v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v3

    .line 233
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 234
    if-eqz v5, :cond_0

    invoke-static {p0}, Lcom/twitter/util/v;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    sget-object v0, Lcom/twitter/model/core/bm;->a:Lcom/twitter/model/core/bm;

    invoke-static {p1, v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    invoke-static {p0, v0}, Lcom/twitter/model/core/bm;->a(Ljava/lang/CharSequence;Lcom/twitter/model/core/bm;)I

    move-result v2

    .line 242
    int-to-float v0, v2

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    move v4, v3

    move v1, v3

    .line 243
    :goto_1
    if-ge v4, v5, :cond_4

    if-ge v1, v0, :cond_4

    .line 244
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 245
    invoke-static {v6}, Lcom/twitter/util/v;->a(C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 246
    add-int/lit8 v1, v1, 0x1

    .line 243
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 247
    :cond_3
    invoke-static {v6}, Ljava/lang/Character;->getType(C)I

    move-result v6

    const/16 v7, 0x10

    if-ne v6, v7, :cond_2

    .line 249
    add-int/lit8 v2, v2, -0x1

    .line 250
    int-to-float v0, v2

    mul-float/2addr v0, v8

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    goto :goto_2

    .line 253
    :cond_4
    if-lt v1, v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    move v3, v0

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_3
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/twitter/model/core/bm;->c:Lcom/twitter/model/core/j;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/model/core/j;->a(II)V

    .line 101
    iget-object v0, p0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/model/core/ac;->a(II)V

    .line 102
    iget-object v0, p0, Lcom/twitter/model/core/bm;->e:Lcom/twitter/model/core/j;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/model/core/j;->a(II)V

    .line 103
    iget-object v0, p0, Lcom/twitter/model/core/bm;->f:Lcom/twitter/model/core/j;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/model/core/j;->a(II)V

    .line 104
    iget-object v0, p0, Lcom/twitter/model/core/bm;->g:Lcom/twitter/model/core/j;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/model/core/j;->a(II)V

    .line 105
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/twitter/model/core/bm;->c:Lcom/twitter/model/core/j;

    invoke-virtual {v0}, Lcom/twitter/model/core/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    invoke-virtual {v0}, Lcom/twitter/model/core/ac;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(J)Z
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/bm;->b(J)Lcom/twitter/model/core/av;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/core/bm;)Z
    .locals 2

    .prologue
    .line 140
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/bm;->c:Lcom/twitter/model/core/j;

    iget-object v1, p1, Lcom/twitter/model/core/bm;->c:Lcom/twitter/model/core/j;

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    iget-object v1, p1, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    .line 141
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/ac;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/bm;->e:Lcom/twitter/model/core/j;

    iget-object v1, p1, Lcom/twitter/model/core/bm;->e:Lcom/twitter/model/core/j;

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/bm;->f:Lcom/twitter/model/core/j;

    iget-object v1, p1, Lcom/twitter/model/core/bm;->f:Lcom/twitter/model/core/j;

    .line 142
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/bm;->g:Lcom/twitter/model/core/j;

    iget-object v1, p1, Lcom/twitter/model/core/bm;->g:Lcom/twitter/model/core/j;

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    .line 142
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(J)Lcom/twitter/model/core/av;
    .locals 5

    .prologue
    .line 76
    iget-object v0, p0, Lcom/twitter/model/core/bm;->e:Lcom/twitter/model/core/j;

    invoke-virtual {v0}, Lcom/twitter/model/core/j;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/av;

    .line 77
    iget-wide v2, v0, Lcom/twitter/model/core/av;->c:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 81
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/twitter/model/core/cx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/twitter/model/core/bm;->c:Lcom/twitter/model/core/j;

    iget-object v1, p0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    sget-object v2, Lcom/twitter/model/core/e;->e:Ljava/util/Comparator;

    invoke-static {v0, v1, v2}, Lczz;->a(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public b(II)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/twitter/model/core/bm;->f:Lcom/twitter/model/core/j;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/model/core/j;->a(II)V

    .line 121
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 136
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/twitter/model/core/bm;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/twitter/model/core/bm;

    invoke-virtual {p0, p1}, Lcom/twitter/model/core/bm;->a(Lcom/twitter/model/core/bm;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/twitter/model/core/bm;->c:Lcom/twitter/model/core/j;

    invoke-virtual {v0}, Lcom/twitter/model/core/j;->hashCode()I

    move-result v0

    .line 148
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    invoke-virtual {v1}, Lcom/twitter/model/core/ac;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/twitter/model/core/bm;->e:Lcom/twitter/model/core/j;

    invoke-virtual {v1}, Lcom/twitter/model/core/j;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/twitter/model/core/bm;->f:Lcom/twitter/model/core/j;

    invoke-virtual {v1}, Lcom/twitter/model/core/j;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 151
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/twitter/model/core/bm;->g:Lcom/twitter/model/core/j;

    invoke-virtual {v1}, Lcom/twitter/model/core/j;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/core/bm;->c:Lcom/twitter/model/core/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/core/bm;->e:Lcom/twitter/model/core/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/core/bm;->f:Lcom/twitter/model/core/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/core/bm;->g:Lcom/twitter/model/core/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
