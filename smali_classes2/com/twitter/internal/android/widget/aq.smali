.class Lcom/twitter/internal/android/widget/aq;
.super Landroid/widget/BaseAdapter;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/internal/android/widget/ar;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbjl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/twitter/internal/android/widget/ar;)V
    .locals 1

    .prologue
    .line 1264
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/internal/android/widget/aq;->b:Ljava/util/List;

    .line 1265
    iput-object p1, p0, Lcom/twitter/internal/android/widget/aq;->a:Lcom/twitter/internal/android/widget/ar;

    .line 1266
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/internal/android/widget/ar;Lcom/twitter/internal/android/widget/ai;)V
    .locals 0

    .prologue
    .line 1260
    invoke-direct {p0, p1}, Lcom/twitter/internal/android/widget/aq;-><init>(Lcom/twitter/internal/android/widget/ar;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbjl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1319
    if-nez p1, :cond_0

    .line 1331
    :goto_0
    return-void

    .line 1322
    :cond_0
    iget-object v0, p0, Lcom/twitter/internal/android/widget/aq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1324
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjl;

    .line 1325
    invoke-virtual {v0}, Lbjl;->j()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lbjl;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1326
    iget-object v2, p0, Lcom/twitter/internal/android/widget/aq;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1329
    :cond_2
    iget-object v0, p0, Lcom/twitter/internal/android/widget/aq;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/twitter/internal/android/widget/aq;->a:Lcom/twitter/internal/android/widget/ar;

    invoke-static {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(Ljava/util/Collection;Lcom/twitter/internal/android/widget/ar;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/internal/android/widget/aq;->b:Ljava/util/List;

    .line 1330
    invoke-virtual {p0}, Lcom/twitter/internal/android/widget/aq;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/twitter/internal/android/widget/aq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/twitter/internal/android/widget/aq;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/twitter/internal/android/widget/aq;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjl;

    invoke-virtual {v0}, Lbjl;->a()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1291
    if-nez p2, :cond_0

    .line 1292
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1293
    sget v1, Lbjx;->overflow_drop_down_item:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1294
    new-instance v0, Lcom/twitter/internal/android/widget/at;

    invoke-direct {v0, p2}, Lcom/twitter/internal/android/widget/at;-><init>(Landroid/view/View;)V

    .line 1295
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 1299
    :goto_0
    iget-object v0, p0, Lcom/twitter/internal/android/widget/aq;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjl;

    .line 1300
    iget-object v2, v1, Lcom/twitter/internal/android/widget/at;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lbjl;->j()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1301
    invoke-virtual {v0}, Lbjl;->o()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1302
    invoke-static {v2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1303
    iget-object v3, v1, Lcom/twitter/internal/android/widget/at;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1304
    iget-object v2, v1, Lcom/twitter/internal/android/widget/at;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1308
    :goto_1
    invoke-virtual {v0}, Lbjl;->p()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1309
    if-eqz v0, :cond_2

    .line 1310
    iget-object v2, v1, Lcom/twitter/internal/android/widget/at;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1311
    iget-object v0, v1, Lcom/twitter/internal/android/widget/at;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1315
    :goto_2
    return-object p2

    .line 1297
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/at;

    move-object v1, v0

    goto :goto_0

    .line 1306
    :cond_1
    iget-object v2, v1, Lcom/twitter/internal/android/widget/at;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1313
    :cond_2
    iget-object v0, v1, Lcom/twitter/internal/android/widget/at;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/twitter/internal/android/widget/aq;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjl;

    invoke-virtual {v0}, Lbjl;->l()Z

    move-result v0

    return v0
.end method
