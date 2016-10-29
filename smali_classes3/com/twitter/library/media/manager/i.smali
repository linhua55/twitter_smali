.class public Lcom/twitter/library/media/manager/i;
.super Lcom/twitter/library/media/manager/t;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/media/manager/t",
        "<",
        "Lcom/twitter/media/request/a;",
        "Landroid/graphics/Bitmap;",
        "Lcom/twitter/media/request/ImageResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/media/model/MediaFile;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/media/request/ImageResponse$Error;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/twitter/util/math/Size;

.field private final j:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/HandlerThread;Lcom/twitter/util/math/Size;ILcom/twitter/util/collection/j;Ldbd;Ldbd;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/os/HandlerThread;",
            "Lcom/twitter/util/math/Size;",
            "I",
            "Lcom/twitter/util/collection/j",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ldbd;",
            "Ldbd;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/twitter/library/media/manager/t;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/HandlerThread;Lcom/twitter/util/collection/q;Ldbd;Ldbd;)V

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/media/manager/i;->h:Ljava/util/Map;

    .line 51
    iput-object p4, p0, Lcom/twitter/library/media/manager/i;->i:Lcom/twitter/util/math/Size;

    .line 52
    iput p5, p0, Lcom/twitter/library/media/manager/i;->j:I

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/twitter/library/media/manager/i;->g:Ljava/util/Map;

    .line 56
    if-eqz p6, :cond_0

    .line 57
    new-instance v1, Lcom/twitter/library/media/manager/j;

    invoke-direct {v1, p0, v0}, Lcom/twitter/library/media/manager/j;-><init>(Lcom/twitter/library/media/manager/i;Ljava/util/Map;)V

    invoke-virtual {p6, v1}, Lcom/twitter/util/collection/j;->a(Lcom/twitter/util/collection/m;)V

    .line 65
    :cond_0
    return-void
.end method

.method private c(Lcom/twitter/media/request/a;Ljava/io/File;)Lcom/twitter/media/model/MediaFile;
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/twitter/library/media/manager/i;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/twitter/media/request/a;->r()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/model/MediaFile;

    .line 160
    if-nez v0, :cond_1

    .line 161
    invoke-virtual {p1}, Lcom/twitter/media/request/a;->d()Lcom/twitter/media/model/MediaFile;

    move-result-object v0

    .line 162
    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 163
    invoke-virtual {p1}, Lcom/twitter/media/request/a;->m()Lcom/twitter/media/model/MediaType;

    move-result-object v0

    sget-object v1, Lcom/twitter/media/model/MediaType;->e:Lcom/twitter/media/model/MediaType;

    if-ne v0, v1, :cond_2

    .line 164
    invoke-virtual {p1}, Lcom/twitter/media/request/a;->e()Lcom/twitter/util/math/Size;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/twitter/media/model/SvgFile;->a(Ljava/io/File;Lcom/twitter/util/math/Size;)Lcom/twitter/media/model/SvgFile;

    move-result-object v0

    .line 171
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 172
    iget-object v1, p0, Lcom/twitter/library/media/manager/i;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/twitter/media/request/a;->r()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_1
    return-object v0

    .line 166
    :cond_2
    invoke-virtual {p1}, Lcom/twitter/media/request/a;->m()Lcom/twitter/media/model/MediaType;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/twitter/media/model/MediaFile;->a(Ljava/io/File;Lcom/twitter/media/model/MediaType;)Lcom/twitter/media/model/MediaFile;

    move-result-object v0

    goto :goto_0

    .line 168
    :cond_3
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/twitter/media/request/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/ap;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/twitter/library/media/manager/i;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/twitter/media/request/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twitter/media/request/a;->m()Lcom/twitter/media/model/MediaType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/twitter/media/model/MediaFile;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/twitter/media/model/MediaType;)Lcom/twitter/media/model/MediaFile;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/twitter/media/request/a;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 86
    invoke-static {p2}, Lcom/twitter/media/decoder/ImageDecoder;->a(Ljava/io/File;)Lcom/twitter/media/decoder/ImageDecoder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twitter/media/request/a;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/media/decoder/ImageDecoder;->a(Ljava/lang/String;)Lcom/twitter/media/decoder/ImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/media/decoder/ImageDecoder;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 89
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/twitter/library/media/manager/i;->c(Lcom/twitter/media/request/a;Ljava/io/File;)Lcom/twitter/media/model/MediaFile;

    .line 91
    :cond_0
    return-object v0
.end method

.method protected a(Lcom/twitter/media/request/a;Landroid/graphics/Bitmap;Lcom/twitter/media/request/ResourceResponse$ResourceSource;)Lcom/twitter/media/request/ImageResponse;
    .locals 3

    .prologue
    .line 183
    new-instance v1, Lcom/twitter/media/request/f;

    invoke-direct {v1, p1}, Lcom/twitter/media/request/f;-><init>(Lcom/twitter/media/request/a;)V

    iget-object v0, p0, Lcom/twitter/library/media/manager/i;->g:Ljava/util/Map;

    .line 184
    invoke-virtual {p1}, Lcom/twitter/media/request/a;->r()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/model/MediaFile;

    invoke-virtual {v1, v0}, Lcom/twitter/media/request/f;->a(Lcom/twitter/media/model/MediaFile;)Lcom/twitter/media/request/f;

    move-result-object v0

    .line 185
    invoke-virtual {v0, p2}, Lcom/twitter/media/request/f;->a(Landroid/graphics/Bitmap;)Lcom/twitter/media/request/f;

    move-result-object v0

    .line 186
    invoke-virtual {v0, p3}, Lcom/twitter/media/request/f;->a(Lcom/twitter/media/request/ResourceResponse$ResourceSource;)Lcom/twitter/media/request/f;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/library/media/manager/i;->h:Ljava/util/Map;

    .line 187
    invoke-virtual {p1}, Lcom/twitter/media/request/a;->r()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/twitter/media/request/ImageResponse$Error;->b:Lcom/twitter/media/request/ImageResponse$Error;

    invoke-static {v0, v2}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/request/ImageResponse$Error;

    invoke-virtual {v1, v0}, Lcom/twitter/media/request/f;->a(Lcom/twitter/media/request/ImageResponse$Error;)Lcom/twitter/media/request/f;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 188
    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/media/request/f;->a(Z)Lcom/twitter/media/request/f;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/twitter/media/request/f;->a()Lcom/twitter/media/request/ImageResponse;

    move-result-object v0

    .line 183
    return-object v0

    .line 187
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic a(Lcom/twitter/media/request/g;Ljava/lang/Object;Lcom/twitter/media/request/ResourceResponse$ResourceSource;)Lcom/twitter/media/request/ResourceResponse;
    .locals 1

    .prologue
    .line 41
    check-cast p1, Lcom/twitter/media/request/a;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/library/media/manager/i;->a(Lcom/twitter/media/request/a;Landroid/graphics/Bitmap;Lcom/twitter/media/request/ResourceResponse$ResourceSource;)Lcom/twitter/media/request/ImageResponse;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/media/request/a;)Lcom/twitter/util/concurrent/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/media/request/a;",
            ")",
            "Lcom/twitter/util/concurrent/j",
            "<",
            "Lcom/twitter/media/request/ImageResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/media/request/a;->e()Lcom/twitter/util/math/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/util/math/Size;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Request with an empty size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 78
    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/library/media/manager/t;->d(Lcom/twitter/media/request/g;)Lcom/twitter/util/concurrent/j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/twitter/media/request/g;)Ljava/io/File;
    .locals 1

    .prologue
    .line 41
    check-cast p1, Lcom/twitter/media/request/a;

    invoke-virtual {p0, p1}, Lcom/twitter/library/media/manager/i;->d(Lcom/twitter/media/request/a;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/twitter/media/request/g;Ljava/io/File;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    check-cast p1, Lcom/twitter/media/request/a;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/media/manager/i;->a(Lcom/twitter/media/request/a;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/graphics/Bitmap;)Z
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/twitter/media/request/a;Landroid/graphics/Bitmap;Ljava/io/OutputStream;)Z
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p1}, Lcom/twitter/media/request/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/media/model/ImageFormat;->a(Ljava/lang/String;)Lcom/twitter/media/model/ImageFormat;

    move-result-object v0

    .line 196
    sget-object v1, Lcom/twitter/media/model/ImageFormat;->b:Lcom/twitter/media/model/ImageFormat;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/twitter/media/model/ImageFormat;->c:Lcom/twitter/media/model/ImageFormat;

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 199
    :goto_0
    const/16 v1, 0x5a

    invoke-virtual {p2, v0, v1, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    return v0

    .line 196
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method protected bridge synthetic a(Lcom/twitter/media/request/g;Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 1

    .prologue
    .line 41
    check-cast p1, Lcom/twitter/media/request/a;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/library/media/manager/i;->a(Lcom/twitter/media/request/a;Landroid/graphics/Bitmap;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 41
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/twitter/library/media/manager/i;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method protected b(Lcom/twitter/media/request/a;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 108
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/twitter/library/media/manager/i;->c(Lcom/twitter/media/request/a;Ljava/io/File;)Lcom/twitter/media/model/MediaFile;

    move-result-object v2

    .line 112
    const/4 v0, 0x0

    .line 113
    if-eqz v2, :cond_1

    .line 114
    invoke-virtual {p1}, Lcom/twitter/media/request/a;->i()Lcom/twitter/util/math/c;

    move-result-object v3

    .line 115
    invoke-static {v2}, Lcom/twitter/media/decoder/ImageDecoder;->a(Lcom/twitter/media/model/MediaFile;)Lcom/twitter/media/decoder/ImageDecoder;

    move-result-object v1

    .line 116
    invoke-virtual {p1}, Lcom/twitter/media/request/a;->e()Lcom/twitter/util/math/Size;

    move-result-object v4

    .line 117
    invoke-virtual {p1}, Lcom/twitter/media/request/a;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/twitter/media/decoder/e;->a:Lcom/twitter/media/decoder/e;

    .line 116
    :goto_0
    invoke-virtual {v1, v4, v0}, Lcom/twitter/media/decoder/ImageDecoder;->a(Lcom/twitter/util/math/Size;Lcom/twitter/media/decoder/e;)Lcom/twitter/media/decoder/ImageDecoder;

    move-result-object v0

    .line 118
    invoke-virtual {p1}, Lcom/twitter/media/request/a;->g()Lcom/twitter/media/decoder/ImageDecoder$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/media/decoder/ImageDecoder;->a(Lcom/twitter/media/decoder/ImageDecoder$ScaleType;)Lcom/twitter/media/decoder/ImageDecoder;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v3}, Lcom/twitter/media/decoder/ImageDecoder;->a(Lcom/twitter/util/math/c;)Lcom/twitter/media/decoder/ImageDecoder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/library/media/manager/i;->i:Lcom/twitter/util/math/Size;

    .line 120
    invoke-virtual {v0, v1}, Lcom/twitter/media/decoder/ImageDecoder;->d(Lcom/twitter/util/math/Size;)Lcom/twitter/media/decoder/ImageDecoder;

    move-result-object v0

    iget v1, p0, Lcom/twitter/library/media/manager/i;->j:I

    .line 121
    invoke-virtual {v0, v1}, Lcom/twitter/media/decoder/ImageDecoder;->d(I)Lcom/twitter/media/decoder/ImageDecoder;

    move-result-object v0

    .line 122
    invoke-virtual {p1}, Lcom/twitter/media/request/a;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/media/decoder/ImageDecoder;->e(I)Lcom/twitter/media/decoder/ImageDecoder;

    move-result-object v0

    .line 123
    invoke-virtual {p1}, Lcom/twitter/media/request/a;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/media/decoder/ImageDecoder;->a(Z)Lcom/twitter/media/decoder/ImageDecoder;

    move-result-object v0

    .line 124
    invoke-virtual {p1}, Lcom/twitter/media/request/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/media/decoder/ImageDecoder;->a(Ljava/lang/String;)Lcom/twitter/media/decoder/ImageDecoder;

    move-result-object v0

    .line 125
    invoke-virtual {p1}, Lcom/twitter/media/request/a;->l()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/media/decoder/ImageDecoder;->a(Landroid/graphics/Bitmap$Config;)Lcom/twitter/media/decoder/ImageDecoder;

    move-result-object v1

    .line 127
    instance-of v0, v1, Lcom/twitter/media/decoder/i;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 128
    check-cast v0, Lcom/twitter/media/decoder/i;

    invoke-virtual {p1}, Lcom/twitter/media/request/a;->o()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/twitter/media/decoder/i;->f(I)Lcom/twitter/media/decoder/ImageDecoder;

    .line 131
    :cond_0
    invoke-virtual {v1}, Lcom/twitter/media/decoder/ImageDecoder;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_3

    .line 134
    invoke-virtual {p1}, Lcom/twitter/media/request/a;->j()Lckb;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_4

    .line 136
    iget-object v4, v2, Lcom/twitter/media/model/MediaFile;->e:Lcom/twitter/util/math/Size;

    invoke-virtual {p1}, Lcom/twitter/media/request/a;->e()Lcom/twitter/util/math/Size;

    move-result-object v5

    invoke-virtual {p1}, Lcom/twitter/media/request/a;->h()I

    move-result v6

    invoke-interface {v0, v4, v5, v3, v6}, Lckb;->a(Lcom/twitter/util/math/Size;Lcom/twitter/util/math/Size;Lcom/twitter/util/math/c;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 137
    invoke-interface {v0, v1}, Lckb;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_4

    .line 139
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 148
    :goto_1
    invoke-virtual {p1}, Lcom/twitter/media/request/a;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/twitter/platform/PlatformContext;->e()Lcom/twitter/platform/PlatformContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/platform/PlatformContext;->d()Lcom/twitter/platform/p;

    move-result-object v1

    iget-object v3, v2, Lcom/twitter/media/model/MediaFile;->d:Ljava/io/File;

    .line 149
    invoke-interface {v1, v3}, Lcom/twitter/platform/p;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {v2}, Lcom/twitter/media/model/MediaFile;->b()Z

    .line 154
    :cond_1
    return-object v0

    .line 117
    :cond_2
    const v0, 0x3f4ccccd    # 0.8f

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-static {v0, v5}, Lcom/twitter/media/decoder/e;->a(FF)Lcom/twitter/media/decoder/e;

    move-result-object v0

    goto/16 :goto_0

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/twitter/library/media/manager/i;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/twitter/media/request/a;->r()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method b(Lcom/twitter/media/request/a;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/media/request/a;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/twitter/media/request/ResourceResponse$ResourceSource;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/twitter/library/media/manager/t;->c(Lcom/twitter/media/request/g;)Landroid/util/Pair;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/twitter/library/media/manager/i;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/twitter/media/request/a;->r()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/twitter/media/request/ImageResponse$Error;->a:Lcom/twitter/media/request/ImageResponse$Error;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_1
    return-object v0
.end method

.method public synthetic b(Lcom/twitter/media/request/g;)Ljava/io/File;
    .locals 1

    .prologue
    .line 41
    check-cast p1, Lcom/twitter/media/request/a;

    invoke-virtual {p0, p1}, Lcom/twitter/library/media/manager/i;->c(Lcom/twitter/media/request/a;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic b(Lcom/twitter/media/request/g;Ljava/io/File;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    check-cast p1, Lcom/twitter/media/request/a;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/media/manager/i;->b(Lcom/twitter/media/request/a;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method synthetic c(Lcom/twitter/media/request/g;)Landroid/util/Pair;
    .locals 1

    .prologue
    .line 41
    check-cast p1, Lcom/twitter/media/request/a;

    invoke-virtual {p0, p1}, Lcom/twitter/library/media/manager/i;->b(Lcom/twitter/media/request/a;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/twitter/media/request/a;)Ljava/io/File;
    .locals 3

    .prologue
    .line 206
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 207
    invoke-virtual {p1}, Lcom/twitter/media/request/a;->b()Ljava/util/List;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 209
    iget-object v2, p0, Lcom/twitter/library/media/manager/i;->c:Ldbd;

    invoke-virtual {v2, v0}, Ldbd;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_0

    .line 214
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic d(Lcom/twitter/media/request/g;)Lcom/twitter/util/concurrent/j;
    .locals 1

    .prologue
    .line 41
    check-cast p1, Lcom/twitter/media/request/a;

    invoke-virtual {p0, p1}, Lcom/twitter/library/media/manager/i;->a(Lcom/twitter/media/request/a;)Lcom/twitter/util/concurrent/j;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/twitter/media/request/a;)Ljava/io/File;
    .locals 2

    .prologue
    .line 221
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 222
    const/4 v0, 0x0

    .line 223
    iget-object v1, p0, Lcom/twitter/library/media/manager/i;->d:Ldbd;

    if-eqz v1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/twitter/library/media/manager/i;->d:Ldbd;

    invoke-virtual {p1}, Lcom/twitter/media/request/a;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldbd;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 226
    :cond_0
    return-object v0
.end method
