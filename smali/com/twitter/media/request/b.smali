.class public Lcom/twitter/media/request/b;
.super Lcom/twitter/media/request/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/media/request/h",
        "<",
        "Lcom/twitter/media/request/b;",
        "Lcom/twitter/media/request/ImageResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/twitter/media/model/MediaFile;

.field public b:Lcom/twitter/media/request/d;

.field public c:Lcom/twitter/util/math/Size;

.field public d:Z

.field public e:Lcom/twitter/media/decoder/ImageDecoder$ScaleType;

.field public f:Lcom/twitter/util/math/c;

.field public g:I

.field public h:Z

.field public i:Lckb;

.field public j:Landroid/graphics/Bitmap$Config;

.field public k:Ljava/lang/String;

.field public l:Lcom/twitter/media/model/MediaType;

.field public m:I

.field public n:Z

.field public o:Lcom/twitter/media/request/process/a;


# direct methods
.method public constructor <init>(Lcom/twitter/media/model/MediaFile;)V
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p1}, Lcom/twitter/media/model/MediaFile;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/media/request/h;-><init>(Ljava/lang/String;)V

    .line 274
    sget-object v0, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    iput-object v0, p0, Lcom/twitter/media/request/b;->c:Lcom/twitter/util/math/Size;

    .line 276
    sget-object v0, Lcom/twitter/media/decoder/ImageDecoder$ScaleType;->a:Lcom/twitter/media/decoder/ImageDecoder$ScaleType;

    iput-object v0, p0, Lcom/twitter/media/request/b;->e:Lcom/twitter/media/decoder/ImageDecoder$ScaleType;

    .line 284
    sget-object v0, Lcom/twitter/media/model/MediaType;->a:Lcom/twitter/media/model/MediaType;

    iput-object v0, p0, Lcom/twitter/media/request/b;->l:Lcom/twitter/media/model/MediaType;

    .line 296
    iput-object p1, p0, Lcom/twitter/media/request/b;->a:Lcom/twitter/media/model/MediaFile;

    .line 297
    iget-object v0, p1, Lcom/twitter/media/model/MediaFile;->e:Lcom/twitter/util/math/Size;

    iput-object v0, p0, Lcom/twitter/media/request/b;->c:Lcom/twitter/util/math/Size;

    .line 298
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/twitter/media/request/h;-><init>(Ljava/lang/String;)V

    .line 274
    sget-object v0, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    iput-object v0, p0, Lcom/twitter/media/request/b;->c:Lcom/twitter/util/math/Size;

    .line 276
    sget-object v0, Lcom/twitter/media/decoder/ImageDecoder$ScaleType;->a:Lcom/twitter/media/decoder/ImageDecoder$ScaleType;

    iput-object v0, p0, Lcom/twitter/media/request/b;->e:Lcom/twitter/media/decoder/ImageDecoder$ScaleType;

    .line 284
    sget-object v0, Lcom/twitter/media/model/MediaType;->a:Lcom/twitter/media/model/MediaType;

    iput-object v0, p0, Lcom/twitter/media/request/b;->l:Lcom/twitter/media/model/MediaType;

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/media/request/b;->a:Lcom/twitter/media/model/MediaFile;

    .line 292
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/media/request/a;
    .locals 1

    .prologue
    .line 387
    new-instance v0, Lcom/twitter/media/request/a;

    invoke-direct {v0, p0}, Lcom/twitter/media/request/a;-><init>(Lcom/twitter/media/request/b;)V

    return-object v0
.end method

.method public a(I)Lcom/twitter/media/request/b;
    .locals 0

    .prologue
    .line 332
    iput p1, p0, Lcom/twitter/media/request/b;->g:I

    .line 333
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap$Config;)Lcom/twitter/media/request/b;
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/twitter/media/request/b;->j:Landroid/graphics/Bitmap$Config;

    .line 351
    return-object p0
.end method

.method public a(Lckb;)Lcom/twitter/media/request/b;
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/twitter/media/request/b;->i:Lckb;

    .line 345
    return-object p0
.end method

.method public a(Lcom/twitter/media/decoder/ImageDecoder$ScaleType;)Lcom/twitter/media/request/b;
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/twitter/media/request/b;->e:Lcom/twitter/media/decoder/ImageDecoder$ScaleType;

    .line 321
    return-object p0
.end method

.method public a(Lcom/twitter/media/model/MediaType;)Lcom/twitter/media/request/b;
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/twitter/media/request/b;->l:Lcom/twitter/media/model/MediaType;

    .line 369
    return-object p0
.end method

.method public a(Lcom/twitter/media/request/d;)Lcom/twitter/media/request/b;
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/twitter/media/request/b;->b:Lcom/twitter/media/request/d;

    .line 303
    return-object p0
.end method

.method public a(Lcom/twitter/media/request/process/a;)Lcom/twitter/media/request/b;
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/twitter/media/request/b;->o:Lcom/twitter/media/request/process/a;

    .line 381
    return-object p0
.end method

.method public a(Lcom/twitter/util/math/Size;)Lcom/twitter/media/request/b;
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/twitter/media/request/b;->c:Lcom/twitter/util/math/Size;

    .line 309
    return-object p0
.end method

.method public a(Lcom/twitter/util/math/c;)Lcom/twitter/media/request/b;
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/twitter/media/request/b;->f:Lcom/twitter/util/math/c;

    .line 327
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/media/request/b;
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/twitter/media/request/b;->k:Ljava/lang/String;

    .line 357
    return-object p0
.end method

.method public a(Z)Lcom/twitter/media/request/b;
    .locals 0

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/twitter/media/request/b;->d:Z

    .line 315
    return-object p0
.end method

.method public b(I)Lcom/twitter/media/request/b;
    .locals 0

    .prologue
    .line 362
    iput p1, p0, Lcom/twitter/media/request/b;->m:I

    .line 363
    return-object p0
.end method

.method public b(Z)Lcom/twitter/media/request/b;
    .locals 0

    .prologue
    .line 338
    iput-boolean p1, p0, Lcom/twitter/media/request/b;->h:Z

    .line 339
    return-object p0
.end method

.method public c(Z)Lcom/twitter/media/request/b;
    .locals 0

    .prologue
    .line 374
    iput-boolean p1, p0, Lcom/twitter/media/request/b;->n:Z

    .line 375
    return-object p0
.end method
