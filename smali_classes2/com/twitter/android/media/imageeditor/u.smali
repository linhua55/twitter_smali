.class Lcom/twitter/android/media/imageeditor/u;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/concurrent/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/concurrent/e",
        "<",
        "Lcom/twitter/model/media/EditableMedia;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/twitter/android/media/stickers/StickerFilteredImageView;

.field final synthetic c:Lcom/twitter/media/ui/image/MediaImageView;

.field final synthetic d:Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;

.field final synthetic e:Lcom/twitter/android/media/imageeditor/n;


# direct methods
.method constructor <init>(Lcom/twitter/android/media/imageeditor/n;Landroid/view/View;Lcom/twitter/android/media/stickers/StickerFilteredImageView;Lcom/twitter/media/ui/image/MediaImageView;Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;)V
    .locals 0

    .prologue
    .line 1275
    iput-object p1, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iput-object p2, p0, Lcom/twitter/android/media/imageeditor/u;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/twitter/android/media/imageeditor/u;->b:Lcom/twitter/android/media/stickers/StickerFilteredImageView;

    iput-object p4, p0, Lcom/twitter/android/media/imageeditor/u;->c:Lcom/twitter/media/ui/image/MediaImageView;

    iput-object p5, p0, Lcom/twitter/android/media/imageeditor/u;->d:Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/media/EditableMedia;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1278
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/model/media/EditableMedia;->g()Lcom/twitter/media/model/MediaType;

    move-result-object v0

    sget-object v1, Lcom/twitter/media/model/MediaType;->b:Lcom/twitter/media/model/MediaType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->a:Landroid/view/View;

    .line 1279
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1367
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v4, p1

    .line 1282
    check-cast v4, Lcom/twitter/model/media/EditableImage;

    .line 1283
    iget-object v7, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    new-instance v0, Lcom/twitter/android/media/imageeditor/af;

    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/u;->b:Lcom/twitter/android/media/stickers/StickerFilteredImageView;

    iget-object v2, p0, Lcom/twitter/android/media/imageeditor/u;->c:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v3, p0, Lcom/twitter/android/media/imageeditor/u;->d:Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;

    iget-object v5, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    .line 1288
    invoke-static {v5}, Lcom/twitter/android/media/imageeditor/n;->a(Lcom/twitter/android/media/imageeditor/n;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v6, v6, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    .line 1289
    invoke-virtual {v6}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/media/imageeditor/af;-><init>(Lcom/twitter/android/media/stickers/StickerFilteredImageView;Lcom/twitter/media/ui/image/MediaImageView;Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;Lcom/twitter/model/media/EditableImage;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, v7, Lcom/twitter/android/media/imageeditor/n;->g:Lcom/twitter/android/media/imageeditor/af;

    .line 1291
    iget-object v0, v4, Lcom/twitter/model/media/EditableImage;->h:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpo;

    .line 1292
    new-instance v2, Lcom/twitter/android/media/stickers/m;

    invoke-direct {v2, v0}, Lcom/twitter/android/media/stickers/m;-><init>(Lcpo;)V

    .line 1293
    new-instance v3, Lcom/twitter/android/media/stickers/StickerView;

    iget-object v5, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v5, v5, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    invoke-virtual {v5}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Lcom/twitter/android/media/stickers/StickerView;-><init>(Landroid/content/Context;Lcom/twitter/android/media/stickers/m;)V

    .line 1294
    iget-object v0, v0, Lcpo;->b:Lcpf;

    iget-object v0, v0, Lcpf;->j:Lcpu;

    iget v0, v0, Lcpu;->b:F

    invoke-virtual {v3, v0}, Lcom/twitter/android/media/stickers/StickerView;->setAspectRatio(F)V

    .line 1295
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->b:Lcom/twitter/android/media/stickers/StickerFilteredImageView;

    invoke-virtual {v0, v3}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->a(Lcom/twitter/android/media/stickers/StickerView;)V

    goto :goto_1

    .line 1298
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v0, v0, Lcom/twitter/android/media/imageeditor/n;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1299
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v1, v0, Lcom/twitter/android/media/imageeditor/n;->g:Lcom/twitter/android/media/imageeditor/af;

    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v0, v0, Lcom/twitter/android/media/imageeditor/n;->a:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/filters/Filters;

    invoke-virtual {v1, v0}, Lcom/twitter/android/media/imageeditor/af;->a(Lcom/twitter/media/filters/Filters;)V

    .line 1304
    :goto_2
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->b:Lcom/twitter/android/media/stickers/StickerFilteredImageView;

    invoke-virtual {v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->h()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1305
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iput-boolean v9, v0, Lcom/twitter/android/media/imageeditor/n;->d:Z

    .line 1320
    :goto_3
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v0, v0, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    iget v0, v0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->c:I

    if-eq v0, v9, :cond_3

    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v0, v0, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    iget v0, v0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 1322
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->b:Lcom/twitter/android/media/stickers/StickerFilteredImageView;

    new-instance v1, Lcom/twitter/android/media/imageeditor/w;

    invoke-direct {v1, p0}, Lcom/twitter/android/media/imageeditor/w;-><init>(Lcom/twitter/android/media/imageeditor/u;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1332
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v0, v0, Lcom/twitter/android/media/imageeditor/n;->g:Lcom/twitter/android/media/imageeditor/af;

    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget v1, v1, Lcom/twitter/android/media/imageeditor/n;->b:I

    iget-object v2, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v2, v2, Lcom/twitter/android/media/imageeditor/n;->c:Lcom/twitter/util/math/c;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/media/imageeditor/af;->a(ILcom/twitter/util/math/c;)V

    .line 1333
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/twitter/android/media/imageeditor/n;->c:Lcom/twitter/util/math/c;

    .line 1334
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iput v8, v0, Lcom/twitter/android/media/imageeditor/n;->b:I

    .line 1336
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v0, v0, Lcom/twitter/android/media/imageeditor/n;->g:Lcom/twitter/android/media/imageeditor/af;

    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v1, v1, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    iget-object v1, v1, Lcom/twitter/android/media/imageeditor/EditImageFragment;->m:Lcom/twitter/android/media/stickers/data/a;

    iget-object v2, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v2, v2, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    iget-object v2, v2, Lcom/twitter/android/media/imageeditor/EditImageFragment;->p:Lcom/twitter/android/composer/ComposerType;

    iget-object v3, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v3, v3, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    invoke-static {v3}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->b(Lcom/twitter/android/media/imageeditor/EditImageFragment;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/media/imageeditor/af;->a(Lcom/twitter/android/media/stickers/data/a;Lcom/twitter/android/composer/ComposerType;I)V

    .line 1337
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-boolean v0, v0, Lcom/twitter/android/media/imageeditor/n;->e:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v0, v0, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    iget v0, v0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 1338
    :cond_5
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v0, v0, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    invoke-virtual {v0, v8}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->d(Z)V

    .line 1339
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iput-boolean v8, v0, Lcom/twitter/android/media/imageeditor/n;->e:Z

    .line 1342
    :cond_6
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v0, v0, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    invoke-static {v0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->e(Lcom/twitter/android/media/imageeditor/EditImageFragment;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-boolean v0, v4, Lcom/twitter/model/media/EditableImage;->b:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v0, v0, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    invoke-static {v0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->c(Lcom/twitter/android/media/imageeditor/EditImageFragment;)I

    move-result v0

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1343
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v0, v0, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    invoke-static {v0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->f(Lcom/twitter/android/media/imageeditor/EditImageFragment;)V

    .line 1344
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v0, v0, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    invoke-static {v0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->g(Lcom/twitter/android/media/imageeditor/EditImageFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1345
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v0, v0, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    invoke-static {v0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->g(Lcom/twitter/android/media/imageeditor/EditImageFragment;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/media/imageeditor/aa;

    iget-object v2, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v2, v2, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    invoke-direct {v1, v2, v4}, Lcom/twitter/android/media/imageeditor/aa;-><init>(Lcom/twitter/android/media/imageeditor/EditImageFragment;Lcom/twitter/model/media/EditableImage;)V

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    :cond_7
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v0, v0, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    iget v0, v0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->c:I

    packed-switch v0, :pswitch_data_0

    .line 1363
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v0, v0, Lcom/twitter/android/media/imageeditor/n;->g:Lcom/twitter/android/media/imageeditor/af;

    invoke-virtual {v0, v9}, Lcom/twitter/android/media/imageeditor/af;->c(Z)V

    goto/16 :goto_0

    .line 1301
    :cond_8
    new-instance v0, Lcom/twitter/android/media/imageeditor/ac;

    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v2, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v2, v2, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    invoke-virtual {v2}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/media/imageeditor/ac;-><init>(Lcom/twitter/android/media/imageeditor/n;Landroid/content/Context;)V

    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/imageeditor/ac;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 1307
    :cond_9
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->b:Lcom/twitter/android/media/stickers/StickerFilteredImageView;

    new-instance v1, Lcom/twitter/android/media/imageeditor/v;

    invoke-direct {v1, p0}, Lcom/twitter/android/media/imageeditor/v;-><init>(Lcom/twitter/android/media/imageeditor/u;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->setOnImageLoadedListener(Lcom/twitter/media/ui/image/f;)V

    goto/16 :goto_3

    .line 1342
    :cond_a
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v0, v0, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    invoke-static {v0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->d(Lcom/twitter/android/media/imageeditor/EditImageFragment;)I

    move-result v0

    goto :goto_4

    .line 1350
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v0, v0, Lcom/twitter/android/media/imageeditor/n;->h:Lcom/twitter/android/media/imageeditor/EditImageFragment;

    invoke-static {v0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h(Lcom/twitter/android/media/imageeditor/EditImageFragment;)V

    .line 1351
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v0, v0, Lcom/twitter/android/media/imageeditor/n;->g:Lcom/twitter/android/media/imageeditor/af;

    invoke-virtual {v0, v8}, Lcom/twitter/android/media/imageeditor/af;->c(Z)V

    goto/16 :goto_0

    .line 1355
    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v0, v0, Lcom/twitter/android/media/imageeditor/n;->g:Lcom/twitter/android/media/imageeditor/af;

    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/af;->l()V

    goto/16 :goto_0

    .line 1359
    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/u;->e:Lcom/twitter/android/media/imageeditor/n;

    iget-object v0, v0, Lcom/twitter/android/media/imageeditor/n;->g:Lcom/twitter/android/media/imageeditor/af;

    invoke-virtual {v0, v8}, Lcom/twitter/android/media/imageeditor/af;->c(Z)V

    goto/16 :goto_0

    .line 1348
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1275
    check-cast p1, Lcom/twitter/model/media/EditableMedia;

    invoke-virtual {p0, p1}, Lcom/twitter/android/media/imageeditor/u;->a(Lcom/twitter/model/media/EditableMedia;)V

    return-void
.end method
