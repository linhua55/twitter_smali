.class Lcom/twitter/library/media/fresco/j;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/media/request/ImageRequester;


# instance fields
.field private final b:Lcdz;

.field private final c:Lcdz;

.field private final d:Lcdz;

.field private e:Lcom/facebook/drawee/view/GenericDraweeView;

.field private f:Lcom/twitter/media/request/a;

.field private g:Lcom/facebook/imagepipeline/request/ImageRequest;

.field private h:Lcom/twitter/media/request/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/media/request/i",
            "<",
            "Lcom/twitter/media/request/ImageResponse;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    const-string/jumbo v0, "photo_wait_time_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Lcdz;

    invoke-direct {v0}, Lcdz;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/media/fresco/j;->b:Lcdz;

    .line 261
    new-instance v0, Lcdz;

    invoke-direct {v0}, Lcdz;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/media/fresco/j;->c:Lcdz;

    .line 262
    new-instance v0, Lcdz;

    invoke-direct {v0}, Lcdz;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/media/fresco/j;->d:Lcdz;

    .line 268
    :goto_0
    return-void

    .line 264
    :cond_0
    iput-object v1, p0, Lcom/twitter/library/media/fresco/j;->b:Lcdz;

    .line 265
    iput-object v1, p0, Lcom/twitter/library/media/fresco/j;->c:Lcdz;

    .line 266
    iput-object v1, p0, Lcom/twitter/library/media/fresco/j;->d:Lcdz;

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/library/media/fresco/j;)Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/twitter/library/media/fresco/j;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/library/media/fresco/j;Z)Z
    .locals 0

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/twitter/library/media/fresco/j;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/twitter/library/media/fresco/j;)Lcom/twitter/media/request/i;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/twitter/library/media/fresco/j;->h:Lcom/twitter/media/request/i;

    return-object v0
.end method

.method private d()Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/twitter/library/media/fresco/j;->g:Lcom/facebook/imagepipeline/request/ImageRequest;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/media/request/a;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/twitter/library/media/fresco/j;->f:Lcom/twitter/media/request/a;

    return-object v0
.end method

.method public a(Lcom/facebook/drawee/view/GenericDraweeView;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/twitter/library/media/fresco/j;->e:Lcom/facebook/drawee/view/GenericDraweeView;

    .line 272
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/twitter/library/media/fresco/j;->b:Lcdz;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/twitter/library/media/fresco/j;->b:Lcdz;

    invoke-virtual {v0, p1}, Lcdz;->a(Ljava/lang/String;)V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/media/fresco/j;->c:Lcdz;

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/twitter/library/media/fresco/j;->c:Lcdz;

    invoke-virtual {v0, p1}, Lcdz;->a(Ljava/lang/String;)V

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/media/fresco/j;->d:Lcdz;

    if-eqz v0, :cond_2

    .line 379
    iget-object v0, p0, Lcom/twitter/library/media/fresco/j;->d:Lcdz;

    invoke-virtual {v0, p1}, Lcdz;->a(Ljava/lang/String;)V

    .line 381
    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 5

    .prologue
    .line 304
    iget-object v0, p0, Lcom/twitter/library/media/fresco/j;->f:Lcom/twitter/media/request/a;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/twitter/library/media/fresco/j;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 305
    new-instance v1, Lcom/twitter/library/media/fresco/g;

    iget-object v0, p0, Lcom/twitter/library/media/fresco/j;->f:Lcom/twitter/media/request/a;

    invoke-direct {v1, v0}, Lcom/twitter/library/media/fresco/g;-><init>(Lcom/twitter/media/request/a;)V

    .line 307
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/twitter/library/media/fresco/j;->d:Lcdz;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/twitter/library/media/fresco/j;->d:Lcdz;

    invoke-virtual {v0}, Lcdz;->a()V

    .line 309
    iget-object v0, p0, Lcom/twitter/library/media/fresco/j;->b:Lcdz;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/twitter/library/media/fresco/j;->b:Lcdz;

    invoke-virtual {v0}, Lcdz;->a()V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/media/fresco/j;->c:Lcdz;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/twitter/library/media/fresco/j;->c:Lcdz;

    invoke-virtual {v0}, Lcdz;->a()V

    .line 317
    :cond_1
    new-instance v0, Lcom/twitter/library/media/fresco/p;

    iget-object v2, p0, Lcom/twitter/library/media/fresco/j;->f:Lcom/twitter/media/request/a;

    invoke-direct {v0, v2, v1}, Lcom/twitter/library/media/fresco/p;-><init>(Lcom/twitter/media/request/a;Lcom/twitter/library/media/fresco/g;)V

    new-instance v2, Lcom/twitter/library/media/fresco/k;

    invoke-direct {v2, p0}, Lcom/twitter/library/media/fresco/k;-><init>(Lcom/twitter/library/media/fresco/j;)V

    .line 319
    invoke-virtual {v0, v2}, Lcom/twitter/library/media/fresco/p;->a(Lcom/twitter/media/request/i;)Lcom/twitter/library/media/fresco/p;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/library/media/fresco/j;->b:Lcdz;

    .line 328
    invoke-virtual {v0, v2}, Lcom/twitter/library/media/fresco/p;->a(Lcdz;)Lcom/twitter/library/media/fresco/p;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/library/media/fresco/j;->c:Lcdz;

    .line 329
    invoke-virtual {v0, v2}, Lcom/twitter/library/media/fresco/p;->b(Lcdz;)Lcom/twitter/library/media/fresco/p;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/library/media/fresco/j;->d:Lcdz;

    .line 330
    invoke-virtual {v0, v2}, Lcom/twitter/library/media/fresco/p;->c(Lcdz;)Lcom/twitter/library/media/fresco/p;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Lcom/twitter/library/media/fresco/p;->a()Lcom/twitter/library/media/fresco/n;

    move-result-object v2

    .line 333
    invoke-static {}, Lch;->a()Lcj;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/library/media/fresco/j;->g:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 334
    invoke-virtual {v0, v3}, Lcj;->b(Ljava/lang/Object;)Lcp;

    move-result-object v0

    check-cast v0, Lcj;

    .line 335
    invoke-virtual {v0, v1}, Lcj;->a(Ljava/lang/Object;)Lcp;

    move-result-object v0

    check-cast v0, Lcj;

    .line 336
    invoke-virtual {v0, v2}, Lcj;->a(Lct;)Lcp;

    move-result-object v0

    check-cast v0, Lcj;

    .line 337
    invoke-virtual {v0}, Lcj;->h()Lcm;

    move-result-object v1

    .line 339
    iget-object v0, p0, Lcom/twitter/library/media/fresco/j;->f:Lcom/twitter/media/request/a;

    invoke-virtual {v0}, Lcom/twitter/media/request/a;->i()Lcom/twitter/util/math/c;

    move-result-object v2

    .line 340
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/twitter/util/math/c;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/twitter/library/media/fresco/j;->e:Lcom/facebook/drawee/view/GenericDraweeView;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/GenericDraweeView;->getHierarchy()Lcy;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/a;

    .line 342
    sget-object v3, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->h:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {v0, v3}, Lcom/facebook/drawee/generic/a;->a(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    .line 343
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {v2}, Lcom/twitter/util/math/c;->e()F

    move-result v4

    invoke-virtual {v2}, Lcom/twitter/util/math/c;->f()F

    move-result v2

    invoke-direct {v3, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v3}, Lcom/facebook/drawee/generic/a;->a(Landroid/graphics/PointF;)V

    .line 346
    :cond_2
    iget-object v0, p0, Lcom/twitter/library/media/fresco/j;->e:Lcom/facebook/drawee/view/GenericDraweeView;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/GenericDraweeView;->setController(Lcx;)V

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/library/media/fresco/j;->i:Z

    .line 349
    :cond_3
    return-void
.end method

.method public a(Lcom/twitter/media/request/a;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 276
    iget-object v0, p0, Lcom/twitter/library/media/fresco/j;->f:Lcom/twitter/media/request/a;

    .line 277
    invoke-static {v0, p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 278
    iput-object p1, p0, Lcom/twitter/library/media/fresco/j;->f:Lcom/twitter/media/request/a;

    .line 279
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/media/request/a;->B()Lcom/twitter/media/request/i;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/twitter/library/media/fresco/j;->h:Lcom/twitter/media/request/i;

    .line 280
    if-nez p1, :cond_1

    .line 284
    :goto_1
    iput-object v1, p0, Lcom/twitter/library/media/fresco/j;->g:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 285
    invoke-virtual {p0}, Lcom/twitter/library/media/fresco/j;->c()Z

    move v0, v2

    .line 288
    :goto_2
    return v0

    :cond_0
    move-object v0, v1

    .line 279
    goto :goto_0

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/media/fresco/j;->f:Lcom/twitter/media/request/a;

    .line 282
    invoke-virtual {v0}, Lcom/twitter/media/request/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 283
    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->l()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    goto :goto_1

    .line 288
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/twitter/library/media/fresco/j;->i:Z

    return v0
.end method

.method public c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 358
    iput-boolean v0, p0, Lcom/twitter/library/media/fresco/j;->i:Z

    .line 359
    iget-object v1, p0, Lcom/twitter/library/media/fresco/j;->e:Lcom/facebook/drawee/view/GenericDraweeView;

    invoke-virtual {v1}, Lcom/facebook/drawee/view/GenericDraweeView;->getController()Lcx;

    move-result-object v1

    .line 360
    if-eqz v1, :cond_1

    .line 361
    iget-object v0, p0, Lcom/twitter/library/media/fresco/j;->d:Lcdz;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/twitter/library/media/fresco/j;->d:Lcdz;

    invoke-virtual {v0}, Lcdz;->b()V

    .line 364
    :cond_0
    invoke-interface {v1}, Lcx;->h()V

    .line 365
    const/4 v0, 0x1

    .line 367
    :cond_1
    return v0
.end method
