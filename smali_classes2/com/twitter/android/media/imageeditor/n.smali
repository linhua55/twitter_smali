.class Lcom/twitter/android/media/imageeditor/n;
.super Landroid/support/v4/view/PagerAdapter;
.source "Twttr"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/media/filters/Filters;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:Lcom/twitter/util/math/c;

.field d:Z

.field e:Z

.field f:Lcom/twitter/model/media/EditableImage;

.field g:Lcom/twitter/android/media/imageeditor/af;

.field final synthetic h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

.field private final i:Landroid/content/Context;

.field private j:Lcom/twitter/android/media/imageeditor/x;

.field private k:I


# direct methods
.method constructor <init>(Lcom/twitter/android/media/imageeditor/EditImageFragment;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 1116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/media/imageeditor/n;->a:Ljava/util/List;

    .line 1129
    iput-object p2, p0, Lcom/twitter/android/media/imageeditor/n;->i:Landroid/content/Context;

    .line 1130
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/media/imageeditor/n;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/n;->i:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1397
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/n;->i:Landroid/content/Context;

    const v1, 0x7f0a0420

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1398
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1399
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    iget-object v0, v0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1400
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a(ZZ)V

    .line 1401
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 1416
    iput p1, p0, Lcom/twitter/android/media/imageeditor/n;->b:I

    .line 1417
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 1438
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/n;->c()Lcom/twitter/android/media/imageeditor/af;

    move-result-object v0

    .line 1439
    if-eqz v0, :cond_0

    .line 1440
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    invoke-static {v1, v0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a(Lcom/twitter/android/media/imageeditor/EditImageFragment;Lcom/twitter/android/media/imageeditor/af;)V

    .line 1441
    const-string/jumbo v1, "image"

    .line 1444
    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/af;->a()Lcom/twitter/model/media/EditableImage;

    move-result-object v2

    sget-object v3, Lcom/twitter/model/media/EditableImage;->a:Lcom/twitter/util/serialization/ah;

    .line 1441
    invoke-static {p1, v1, v2, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/os/Bundle;

    .line 1446
    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/af;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1447
    const-string/jumbo v1, "is_cropping"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1448
    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/af;->o()I

    move-result v1

    .line 1449
    const-string/jumbo v2, "rotation"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1450
    invoke-static {v1}, Lcom/twitter/media/util/ImageOrientation;->a(I)Lcom/twitter/media/util/ImageOrientation;

    move-result-object v1

    .line 1451
    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/af;->p()Lcom/twitter/util/math/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/media/util/ImageOrientation;->a(Lcom/twitter/util/math/c;)Lcom/twitter/util/math/c;

    move-result-object v0

    .line 1452
    const-string/jumbo v1, "crop_rect"

    sget-object v2, Lcom/twitter/util/math/c;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v1, v0, v2}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/os/Bundle;

    .line 1455
    :cond_0
    return-void
.end method

.method a(Lcom/twitter/android/media/imageeditor/x;)V
    .locals 0

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/twitter/android/media/imageeditor/n;->j:Lcom/twitter/android/media/imageeditor/x;

    .line 1134
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/n;->notifyDataSetChanged()V

    .line 1135
    return-void
.end method

.method a(Lcom/twitter/media/filters/Filters;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1375
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    iget-boolean v1, v1, Lcom/twitter/android/media/imageeditor/EditImageFragment;->f:Z

    if-eqz v1, :cond_1

    .line 1376
    if-eqz p1, :cond_0

    .line 1377
    invoke-virtual {p1}, Lcom/twitter/media/filters/Filters;->b()V

    .line 1394
    :cond_0
    :goto_0
    return-void

    .line 1381
    :cond_1
    if-nez p1, :cond_2

    .line 1382
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h()V

    goto :goto_0

    .line 1385
    :cond_2
    const/4 v1, 0x0

    .line 1386
    iget-object v2, p0, Lcom/twitter/android/media/imageeditor/n;->g:Lcom/twitter/android/media/imageeditor/af;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/twitter/android/media/imageeditor/n;->g:Lcom/twitter/android/media/imageeditor/af;

    invoke-virtual {v2}, Lcom/twitter/android/media/imageeditor/af;->v()Lcom/twitter/media/filters/Filters;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1387
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/n;->g:Lcom/twitter/android/media/imageeditor/af;

    invoke-virtual {v1, p1}, Lcom/twitter/android/media/imageeditor/af;->a(Lcom/twitter/media/filters/Filters;)V

    .line 1388
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/n;->g:Lcom/twitter/android/media/imageeditor/af;

    invoke-virtual {v1, v0}, Lcom/twitter/android/media/imageeditor/af;->c(Z)V

    .line 1391
    :goto_1
    if-nez v0, :cond_0

    .line 1392
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/n;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public a(Lcom/twitter/util/math/c;)V
    .locals 0

    .prologue
    .line 1420
    iput-object p1, p0, Lcom/twitter/android/media/imageeditor/n;->c:Lcom/twitter/util/math/c;

    .line 1421
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 1424
    iput-boolean p1, p0, Lcom/twitter/android/media/imageeditor/n;->e:Z

    .line 1425
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/n;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/filters/Filters;

    .line 1429
    invoke-virtual {v0}, Lcom/twitter/media/filters/Filters;->b()V

    goto :goto_0

    .line 1431
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/n;->g:Lcom/twitter/android/media/imageeditor/af;

    if-eqz v0, :cond_1

    .line 1432
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/n;->g:Lcom/twitter/android/media/imageeditor/af;

    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/af;->s()V

    .line 1433
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/n;->g:Lcom/twitter/android/media/imageeditor/af;

    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/af;->t()V

    .line 1435
    :cond_1
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1458
    const-string/jumbo v0, "image"

    sget-object v1, Lcom/twitter/model/media/EditableImage;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/media/EditableImage;

    iput-object v0, p0, Lcom/twitter/android/media/imageeditor/n;->f:Lcom/twitter/model/media/EditableImage;

    .line 1459
    const-string/jumbo v0, "is_cropping"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1460
    if-eqz v0, :cond_1

    const-string/jumbo v0, "crop_rect"

    sget-object v1, Lcom/twitter/util/math/c;->a:Lcom/twitter/util/serialization/ah;

    .line 1461
    invoke-static {p1, v0, v1}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/math/c;

    .line 1463
    :goto_0
    if-eqz v0, :cond_0

    .line 1464
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    iget-object v1, v1, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h:Lcom/twitter/android/media/imageeditor/n;

    invoke-virtual {v1, v0}, Lcom/twitter/android/media/imageeditor/n;->a(Lcom/twitter/util/math/c;)V

    .line 1465
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    iget-object v0, v0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h:Lcom/twitter/android/media/imageeditor/n;

    const-string/jumbo v1, "rotation"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/imageeditor/n;->a(I)V

    .line 1466
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    iget-object v0, v0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h:Lcom/twitter/android/media/imageeditor/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/imageeditor/n;->a(Z)V

    .line 1468
    :cond_0
    return-void

    .line 1461
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Lcom/twitter/android/media/imageeditor/af;
    .locals 1

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/n;->g:Lcom/twitter/android/media/imageeditor/af;

    return-object v0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 1405
    check-cast p3, Landroid/view/View;

    .line 1406
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/media/imageeditor/af;

    .line 1407
    if-eqz v0, :cond_0

    .line 1408
    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/af;->v()Lcom/twitter/media/filters/Filters;

    move-result-object v1

    .line 1409
    iget-object v2, p0, Lcom/twitter/android/media/imageeditor/n;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1410
    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/af;->b()V

    .line 1412
    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1413
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/n;->j:Lcom/twitter/android/media/imageeditor/x;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/n;->j:Lcom/twitter/android/media/imageeditor/x;

    invoke-interface {v0}, Lcom/twitter/android/media/imageeditor/x;->getCount()I

    move-result v0

    .line 1142
    :goto_0
    iget v1, p0, Lcom/twitter/android/media/imageeditor/n;->k:I

    if-eq v0, v1, :cond_0

    .line 1143
    iput v0, p0, Lcom/twitter/android/media/imageeditor/n;->k:I

    .line 1144
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/n;->notifyDataSetChanged()V

    .line 1146
    :cond_0
    return v0

    .line 1139
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1156
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/n;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1157
    const v1, 0x7f0400da

    invoke-virtual {v0, v1, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1158
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1160
    const v0, 0x7f130337

    .line 1161
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/media/stickers/StickerFilteredImageView;

    .line 1162
    new-instance v0, Lcom/twitter/android/media/imageeditor/o;

    invoke-direct {v0, p0}, Lcom/twitter/android/media/imageeditor/o;-><init>(Lcom/twitter/android/media/imageeditor/n;)V

    invoke-virtual {v3, v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->setStickerEditListener(Lcom/twitter/android/media/stickers/a;)V

    .line 1175
    new-instance v0, Lcom/twitter/android/media/imageeditor/p;

    invoke-direct {v0, p0, v3}, Lcom/twitter/android/media/imageeditor/p;-><init>(Lcom/twitter/android/media/imageeditor/n;Lcom/twitter/android/media/stickers/StickerFilteredImageView;)V

    invoke-virtual {v3, v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->setFilterRenderListener(Lcom/twitter/media/filters/d;)V

    .line 1198
    const v0, 0x7f130338

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/twitter/media/ui/image/MediaImageView;

    .line 1199
    new-instance v0, Lcom/twitter/android/media/imageeditor/q;

    invoke-direct {v0, p0, v4}, Lcom/twitter/android/media/imageeditor/q;-><init>(Lcom/twitter/android/media/imageeditor/n;Lcom/twitter/media/ui/image/MediaImageView;)V

    invoke-virtual {v4, v0}, Lcom/twitter/media/ui/image/MediaImageView;->setOnImageLoadedListener(Lcom/twitter/media/ui/image/f;)V

    .line 1227
    invoke-virtual {v4}, Lcom/twitter/media/ui/image/MediaImageView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/CroppableImageView;

    .line 1228
    new-instance v1, Lcom/twitter/android/media/imageeditor/s;

    invoke-direct {v1, p0}, Lcom/twitter/android/media/imageeditor/s;-><init>(Lcom/twitter/android/media/imageeditor/n;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/CroppableImageView;->setCropListener(Lcom/twitter/library/media/widget/m;)V

    .line 1234
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    iget v1, v1, Lcom/twitter/android/media/imageeditor/EditImageFragment;->e:F

    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-lez v1, :cond_0

    .line 1235
    invoke-virtual {v0, v6}, Lcom/twitter/library/media/widget/CroppableImageView;->setDraggableCorners(Z)V

    .line 1236
    invoke-virtual {v0, v6}, Lcom/twitter/library/media/widget/CroppableImageView;->setShowGrid(Z)V

    .line 1239
    :cond_0
    const v0, 0x7f130339

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;

    .line 1240
    new-instance v0, Lcom/twitter/android/media/imageeditor/t;

    invoke-direct {v0, p0, v3}, Lcom/twitter/android/media/imageeditor/t;-><init>(Lcom/twitter/android/media/imageeditor/n;Lcom/twitter/android/media/stickers/StickerFilteredImageView;)V

    invoke-virtual {v5, v0}, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->setStickerSelectedListener(Lcom/twitter/android/media/imageeditor/stickers/i;)V

    .line 1270
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/n;->f:Lcom/twitter/model/media/EditableImage;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/n;->j:Lcom/twitter/android/media/imageeditor/x;

    .line 1271
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/media/imageeditor/x;

    invoke-interface {v0, p2}, Lcom/twitter/android/media/imageeditor/x;->a(I)Lcom/twitter/util/concurrent/j;

    move-result-object v0

    move-object v6, v0

    .line 1273
    :goto_0
    new-instance v0, Lcom/twitter/util/concurrent/f;

    invoke-direct {v0}, Lcom/twitter/util/concurrent/f;-><init>()V

    sget-object v1, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a:Lcom/twitter/android/media/imageeditor/ab;

    .line 1274
    invoke-virtual {v0, v1}, Lcom/twitter/util/concurrent/f;->a(Ljava/util/concurrent/Executor;)Lcom/twitter/util/concurrent/f;

    move-result-object v7

    new-instance v0, Lcom/twitter/android/media/imageeditor/u;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/media/imageeditor/u;-><init>(Lcom/twitter/android/media/imageeditor/n;Landroid/view/View;Lcom/twitter/android/media/stickers/StickerFilteredImageView;Lcom/twitter/media/ui/image/MediaImageView;Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;)V

    .line 1275
    invoke-virtual {v7, v0}, Lcom/twitter/util/concurrent/f;->a(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/f;

    move-result-object v0

    .line 1273
    invoke-interface {v6, v0}, Lcom/twitter/util/concurrent/j;->b(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/j;

    .line 1369
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    invoke-virtual {v0, v6}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a(Lcom/twitter/util/concurrent/j;)V

    .line 1371
    return-object v2

    .line 1271
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/n;->f:Lcom/twitter/model/media/EditableImage;

    .line 1272
    invoke-static {v0}, Lcom/twitter/util/concurrent/ObservablePromise;->a(Ljava/lang/Object;)Lcom/twitter/util/concurrent/ObservablePromise;

    move-result-object v0

    move-object v6, v0

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1151
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 1477
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 1471
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .prologue
    .line 1474
    return-void
.end method
