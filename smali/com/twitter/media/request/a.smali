.class public final Lcom/twitter/media/request/a;
.super Lcom/twitter/media/request/g;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/media/request/g",
        "<",
        "Lcom/twitter/media/request/ImageResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/twitter/media/model/MediaFile;

.field private final d:Z

.field private final e:Lcom/twitter/util/math/Size;

.field private final f:Lcom/twitter/media/decoder/ImageDecoder$ScaleType;

.field private final g:Lcom/twitter/util/math/c;

.field private final h:Z

.field private final i:Ljava/lang/String;

.field private final j:Lckb;

.field private final k:I

.field private final l:Ljava/lang/String;

.field private final m:Landroid/graphics/Bitmap$Config;

.field private final n:I

.field private final o:Z

.field private final p:Lcom/twitter/media/model/MediaType;

.field private final q:Lcom/twitter/media/request/process/a;


# direct methods
.method protected constructor <init>(Lcom/twitter/media/request/b;)V
    .locals 3

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/twitter/media/request/g;-><init>(Lcom/twitter/media/request/h;)V

    .line 75
    iget-object v0, p1, Lcom/twitter/media/request/b;->c:Lcom/twitter/util/math/Size;

    iput-object v0, p0, Lcom/twitter/media/request/a;->e:Lcom/twitter/util/math/Size;

    .line 76
    iget-boolean v0, p1, Lcom/twitter/media/request/b;->d:Z

    iput-boolean v0, p0, Lcom/twitter/media/request/a;->d:Z

    .line 78
    iget-object v0, p1, Lcom/twitter/media/request/b;->b:Lcom/twitter/media/request/d;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p1, Lcom/twitter/media/request/b;->b:Lcom/twitter/media/request/d;

    iget-object v1, p1, Lcom/twitter/media/request/b;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/media/request/a;->e:Lcom/twitter/util/math/Size;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/media/request/d;->a(Ljava/lang/String;Lcom/twitter/util/math/Size;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/media/request/a;->b:Ljava/util/List;

    .line 80
    iget-object v0, p0, Lcom/twitter/media/request/a;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/media/request/a;->a:Ljava/lang/String;

    .line 85
    :goto_0
    iget-object v0, p1, Lcom/twitter/media/request/b;->a:Lcom/twitter/media/model/MediaFile;

    iput-object v0, p0, Lcom/twitter/media/request/a;->c:Lcom/twitter/media/model/MediaFile;

    .line 86
    iget-object v0, p1, Lcom/twitter/media/request/b;->e:Lcom/twitter/media/decoder/ImageDecoder$ScaleType;

    iput-object v0, p0, Lcom/twitter/media/request/a;->f:Lcom/twitter/media/decoder/ImageDecoder$ScaleType;

    .line 87
    iget-object v0, p1, Lcom/twitter/media/request/b;->f:Lcom/twitter/util/math/c;

    iput-object v0, p0, Lcom/twitter/media/request/a;->g:Lcom/twitter/util/math/c;

    .line 88
    iget-boolean v0, p1, Lcom/twitter/media/request/b;->h:Z

    iput-boolean v0, p0, Lcom/twitter/media/request/a;->h:Z

    .line 89
    iget-object v0, p1, Lcom/twitter/media/request/b;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/media/request/a;->i:Ljava/lang/String;

    .line 90
    iget-object v0, p1, Lcom/twitter/media/request/b;->i:Lckb;

    iput-object v0, p0, Lcom/twitter/media/request/a;->j:Lckb;

    .line 91
    iget v0, p1, Lcom/twitter/media/request/b;->g:I

    iput v0, p0, Lcom/twitter/media/request/a;->k:I

    .line 92
    iget-object v0, p1, Lcom/twitter/media/request/b;->j:Landroid/graphics/Bitmap$Config;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/twitter/media/request/b;->j:Landroid/graphics/Bitmap$Config;

    :goto_1
    iput-object v0, p0, Lcom/twitter/media/request/a;->m:Landroid/graphics/Bitmap$Config;

    .line 93
    iget v0, p1, Lcom/twitter/media/request/b;->m:I

    iput v0, p0, Lcom/twitter/media/request/a;->n:I

    .line 94
    invoke-direct {p0}, Lcom/twitter/media/request/a;->D()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/media/request/a;->l:Ljava/lang/String;

    .line 95
    iget-object v0, p1, Lcom/twitter/media/request/b;->l:Lcom/twitter/media/model/MediaType;

    iput-object v0, p0, Lcom/twitter/media/request/a;->p:Lcom/twitter/media/model/MediaType;

    .line 96
    iget-boolean v0, p1, Lcom/twitter/media/request/b;->n:Z

    iput-boolean v0, p0, Lcom/twitter/media/request/a;->o:Z

    .line 97
    iget-object v0, p1, Lcom/twitter/media/request/b;->o:Lcom/twitter/media/request/process/a;

    iput-object v0, p0, Lcom/twitter/media/request/a;->q:Lcom/twitter/media/request/process/a;

    .line 98
    return-void

    .line 82
    :cond_0
    iget-object v0, p1, Lcom/twitter/media/request/b;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/media/request/a;->b:Ljava/util/List;

    .line 83
    iget-object v0, p1, Lcom/twitter/media/request/b;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/media/request/a;->a:Ljava/lang/String;

    goto :goto_0

    .line 92
    :cond_1
    invoke-direct {p0}, Lcom/twitter/media/request/a;->C()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    goto :goto_1
.end method

.method private C()Landroid/graphics/Bitmap$Config;
    .locals 2

    .prologue
    .line 107
    const-string/jumbo v0, "android_photo_consumption_bitmap_config_degradation_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    invoke-static {}, Latv;->a()Latv;

    move-result-object v0

    invoke-virtual {v0}, Latv;->b()I

    move-result v0

    const/16 v1, 0x7dd

    if-ge v0, v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/twitter/media/request/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/media/model/ImageFormat;->a(Ljava/lang/String;)Lcom/twitter/media/model/ImageFormat;

    move-result-object v0

    sget-object v1, Lcom/twitter/media/model/ImageFormat;->a:Lcom/twitter/media/model/ImageFormat;

    if-eq v0, v1, :cond_1

    .line 110
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 115
    :goto_0
    return-object v0

    .line 112
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 115
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private D()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x24

    const/16 v6, 0x5f

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    invoke-super {p0}, Lcom/twitter/media/request/g;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    iget-object v1, p0, Lcom/twitter/media/request/a;->e:Lcom/twitter/util/math/Size;

    invoke-virtual {v1}, Lcom/twitter/util/math/Size;->a()I

    move-result v1

    invoke-static {v1, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    iget-object v1, p0, Lcom/twitter/media/request/a;->e:Lcom/twitter/util/math/Size;

    invoke-virtual {v1}, Lcom/twitter/util/math/Size;->b()I

    move-result v1

    invoke-static {v1, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget-object v1, p0, Lcom/twitter/media/request/a;->f:Lcom/twitter/media/decoder/ImageDecoder$ScaleType;

    sget-object v2, Lcom/twitter/media/decoder/ImageDecoder$ScaleType;->a:Lcom/twitter/media/decoder/ImageDecoder$ScaleType;

    if-eq v1, v2, :cond_0

    .line 231
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    iget-object v1, p0, Lcom/twitter/media/request/a;->f:Lcom/twitter/media/decoder/ImageDecoder$ScaleType;

    invoke-virtual {v1}, Lcom/twitter/media/decoder/ImageDecoder$ScaleType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/twitter/media/request/a;->g:Lcom/twitter/util/math/c;

    .line 235
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/twitter/util/math/c;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 236
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    const-string/jumbo v2, "[%s,%s,%s,%s]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v1, Lcom/twitter/util/math/c;->d:F

    .line 238
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    invoke-static {v5, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, v1, Lcom/twitter/util/math/c;->e:F

    .line 239
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    invoke-static {v5, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, v1, Lcom/twitter/util/math/c;->f:F

    .line 240
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    invoke-static {v5, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v1, v1, Lcom/twitter/util/math/c;->g:F

    .line 241
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-static {v1, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    .line 237
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/twitter/media/request/a;->j:Lckb;

    if-eqz v1, :cond_2

    .line 245
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    iget-object v1, p0, Lcom/twitter/media/request/a;->j:Lckb;

    invoke-interface {v1}, Lckb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_2
    iget v1, p0, Lcom/twitter/media/request/a;->k:I

    if-eqz v1, :cond_3

    .line 249
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    iget v1, p0, Lcom/twitter/media/request/a;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    :cond_3
    iget-object v1, p0, Lcom/twitter/media/request/a;->m:Landroid/graphics/Bitmap$Config;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_4

    .line 253
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    iget-object v1, p0, Lcom/twitter/media/request/a;->m:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    :cond_4
    iget v1, p0, Lcom/twitter/media/request/a;->n:I

    if-lez v1, :cond_5

    .line 257
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    iget v1, p0, Lcom/twitter/media/request/a;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/twitter/media/model/MediaFile;)Lcom/twitter/media/request/b;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/twitter/media/request/b;

    invoke-direct {v0, p0}, Lcom/twitter/media/request/b;-><init>(Lcom/twitter/media/model/MediaFile;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/twitter/media/request/b;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    invoke-static {p0, v0}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;Lcom/twitter/util/math/Size;)Lcom/twitter/media/request/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;II)Lcom/twitter/media/request/b;
    .locals 1

    .prologue
    .line 60
    invoke-static {p1, p2}, Lcom/twitter/util/math/Size;->a(II)Lcom/twitter/util/math/Size;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;Lcom/twitter/util/math/Size;)Lcom/twitter/media/request/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/twitter/util/math/Size;)Lcom/twitter/media/request/b;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/twitter/media/request/b;

    invoke-direct {v0, p0}, Lcom/twitter/media/request/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/twitter/media/request/b;->a(Lcom/twitter/util/math/Size;)Lcom/twitter/media/request/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/twitter/media/request/a;->c:Lcom/twitter/media/model/MediaFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/media/request/a;->c:Lcom/twitter/media/model/MediaFile;

    iget-object v0, v0, Lcom/twitter/media/model/MediaFile;->d:Ljava/io/File;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/media/request/g;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/twitter/media/request/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/twitter/media/request/g;)Z
    .locals 2

    .prologue
    .line 218
    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lcom/twitter/media/request/g;->a(Lcom/twitter/media/request/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/media/request/a;->q:Lcom/twitter/media/request/process/a;

    check-cast p1, Lcom/twitter/media/request/a;

    iget-object v1, p1, Lcom/twitter/media/request/a;->q:Lcom/twitter/media/request/process/a;

    .line 219
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 218
    :goto_0
    return v0

    .line 219
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/twitter/media/request/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Lcom/twitter/media/request/g;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/twitter/media/model/MediaFile;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/twitter/media/request/a;->c:Lcom/twitter/media/model/MediaFile;

    return-object v0
.end method

.method public e()Lcom/twitter/util/math/Size;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/twitter/media/request/a;->e:Lcom/twitter/util/math/Size;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/twitter/media/request/a;->d:Z

    return v0
.end method

.method public g()Lcom/twitter/media/decoder/ImageDecoder$ScaleType;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/twitter/media/request/a;->f:Lcom/twitter/media/decoder/ImageDecoder$ScaleType;

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/twitter/media/request/a;->k:I

    return v0
.end method

.method public i()Lcom/twitter/util/math/c;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/twitter/media/request/a;->g:Lcom/twitter/util/math/c;

    return-object v0
.end method

.method public j()Lckb;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/twitter/media/request/a;->j:Lckb;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/twitter/media/request/a;->h:Z

    return v0
.end method

.method public l()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/twitter/media/request/a;->m:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public m()Lcom/twitter/media/model/MediaType;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/twitter/media/request/a;->p:Lcom/twitter/media/model/MediaType;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/twitter/media/request/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/twitter/media/request/a;->n:I

    return v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/twitter/media/request/a;->o:Z

    return v0
.end method

.method public q()Lcom/twitter/media/request/process/a;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/twitter/media/request/a;->q:Lcom/twitter/media/request/process/a;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/twitter/media/request/a;->l:Ljava/lang/String;

    return-object v0
.end method
