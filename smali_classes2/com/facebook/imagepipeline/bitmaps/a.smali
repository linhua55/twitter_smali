.class public Lcom/facebook/imagepipeline/bitmaps/a;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final c:[B


# instance fields
.field final a:Landroid/support/v4/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$SynchronizedPool",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/memory/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/imagepipeline/bitmaps/a;->c:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x27t
    .end array-data
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/memory/d;I)V
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/facebook/imagepipeline/bitmaps/a;->b:Lcom/facebook/imagepipeline/memory/d;

    .line 61
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-direct {v0, p2}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/bitmaps/a;->a:Landroid/support/v4/util/Pools$SynchronizedPool;

    .line 62
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 63
    iget-object v1, p0, Lcom/facebook/imagepipeline/bitmaps/a;->a:Landroid/support/v4/util/Pools$SynchronizedPool;

    const/16 v2, 0x4000

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method private a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Lcom/facebook/common/references/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/graphics/BitmapFactory$Options;",
            ")",
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {p1}, Lbk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/facebook/imagepipeline/bitmaps/a;->b:Lcom/facebook/imagepipeline/memory/d;

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/memory/d;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 125
    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "BitmapPool.get returned null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 131
    iget-object v1, p0, Lcom/facebook/imagepipeline/bitmaps/a;->a:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/support/v4/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 132
    if-nez v1, :cond_2

    .line 133
    const/16 v1, 0x4000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object v2, v1

    .line 136
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 137
    const/4 v1, 0x0

    invoke-static {p1, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 142
    iget-object v3, p0, Lcom/facebook/imagepipeline/bitmaps/a;->a:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 145
    if-eq v0, v1, :cond_1

    .line 146
    iget-object v2, p0, Lcom/facebook/imagepipeline/bitmaps/a;->b:Lcom/facebook/imagepipeline/memory/d;

    invoke-virtual {v2, v0}, Lcom/facebook/imagepipeline/memory/d;->a(Ljava/lang/Object;)V

    .line 147
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 138
    :catch_0
    move-exception v1

    .line 139
    :try_start_1
    iget-object v3, p0, Lcom/facebook/imagepipeline/bitmaps/a;->b:Lcom/facebook/imagepipeline/memory/d;

    invoke-virtual {v3, v0}, Lcom/facebook/imagepipeline/memory/d;->a(Ljava/lang/Object;)V

    .line 140
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/bitmaps/a;->a:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v1, v2}, Landroid/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    throw v0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/bitmaps/a;->b:Lcom/facebook/imagepipeline/memory/d;

    invoke-static {v1, v0}, Lcom/facebook/common/references/a;->a(Ljava/lang/Object;Lcom/facebook/common/references/d;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0

    :cond_2
    move-object v2, v1

    goto :goto_0
.end method

.method private b(Lfo;)Landroid/graphics/BitmapFactory$Options;
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 158
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 160
    invoke-virtual {p1}, Lfo;->i()I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 161
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 163
    invoke-virtual {p1}, Lfo;->d()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 164
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v1, v4, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v1, v4, :cond_1

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 168
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 169
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 170
    sget-object v1, Lcom/facebook/imagepipeline/nativecode/Bitmaps;->a:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 171
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 173
    return-object v0
.end method


# virtual methods
.method a(II)Lcom/facebook/common/references/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/imagepipeline/bitmaps/a;->b:Lcom/facebook/imagepipeline/memory/d;

    mul-int v1, p1, p2

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/memory/d;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 77
    invoke-static {v0, p1, p2}, Lcom/facebook/imagepipeline/nativecode/Bitmaps;->a(Landroid/graphics/Bitmap;II)V

    .line 78
    iget-object v1, p0, Lcom/facebook/imagepipeline/bitmaps/a;->b:Lcom/facebook/imagepipeline/memory/d;

    invoke-static {v0, v1}, Lcom/facebook/common/references/a;->a(Ljava/lang/Object;Lcom/facebook/common/references/d;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method a(Lfo;)Lcom/facebook/common/references/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfo;",
            ")",
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/bitmaps/a;->b(Lfo;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 90
    invoke-virtual {p1}, Lfo;->d()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/facebook/imagepipeline/bitmaps/a;->a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method a(Lfo;I)Lcom/facebook/common/references/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfo;",
            "I)",
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p1, p2}, Lfo;->e(I)Z

    move-result v2

    .line 103
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/bitmaps/a;->b(Lfo;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    .line 105
    invoke-virtual {p1}, Lfo;->d()Ljava/io/InputStream;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lbk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-virtual {p1}, Lfo;->j()I

    move-result v1

    if-le v1, p2, :cond_1

    .line 111
    new-instance v1, Lbv;

    invoke-direct {v1, v0, p2}, Lbv;-><init>(Ljava/io/InputStream;I)V

    .line 113
    :goto_0
    if-nez v2, :cond_0

    .line 114
    new-instance v0, Lbw;

    sget-object v2, Lcom/facebook/imagepipeline/bitmaps/a;->c:[B

    invoke-direct {v0, v1, v2}, Lbw;-><init>(Ljava/io/InputStream;[B)V

    .line 116
    :goto_1
    invoke-direct {p0, v0, v3}, Lcom/facebook/imagepipeline/bitmaps/a;->a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
