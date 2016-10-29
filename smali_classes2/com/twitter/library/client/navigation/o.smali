.class Lcom/twitter/library/client/navigation/o;
.super Lbji;
.source "Twttr"


# instance fields
.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbjl;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcym;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic g:Lcom/twitter/library/client/navigation/l;


# direct methods
.method constructor <init>(Lcom/twitter/library/client/navigation/l;Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 399
    iput-object p1, p0, Lcom/twitter/library/client/navigation/o;->g:Lcom/twitter/library/client/navigation/l;

    .line 400
    invoke-direct {p0, p2, p3}, Lbji;-><init>(Landroid/content/Context;I)V

    .line 393
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/client/navigation/o;->d:Ljava/util/List;

    .line 395
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/client/navigation/o;->e:Ljava/util/List;

    .line 396
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/client/navigation/o;->f:Ljava/util/Set;

    .line 401
    return-void
.end method


# virtual methods
.method protected b()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 405
    iget-object v0, p0, Lcom/twitter/library/client/navigation/o;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/library/client/navigation/o;->c:Landroid/util/AttributeSet;

    sget-object v2, Lbkc;->ToolBarItem:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 406
    sget v0, Lbkc;->ToolBarItem_component:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 407
    sget v1, Lbkc;->ToolBarItem_android_id:I

    invoke-virtual {v2, v1, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 408
    const-string/jumbo v1, "drawer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 409
    sget v0, Lbkc;->ToolBarItem_drawerTitle:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 410
    if-nez v0, :cond_0

    .line 411
    sget v0, Lbkc;->ToolBarItem_android_title:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 413
    :cond_0
    sget v1, Lbkc;->ToolBarItem_drawerIcon:I

    invoke-virtual {v2, v1, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 414
    if-nez v1, :cond_1

    .line 415
    sget v1, Lbkc;->ToolBarItem_android_icon:I

    invoke-virtual {v2, v1, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 418
    :cond_1
    sget v4, Lbkc;->ToolBarItem_groupId:I

    const v5, 0x7fffffff

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 419
    sget v5, Lbkc;->ToolBarItem_order:I

    const/16 v6, 0x1f4

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 420
    sget v6, Lbkc;->ToolBarItem_android_visible:I

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 421
    sget v7, Lbkc;->ToolBarItem_actionLayout:I

    invoke-virtual {v2, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 423
    new-instance v8, Lcym;

    iget-object v9, p0, Lcom/twitter/library/client/navigation/o;->b:Landroid/content/Context;

    invoke-direct {v8, v9, v3, v4, v5}, Lcym;-><init>(Landroid/content/Context;III)V

    .line 424
    invoke-virtual {v8, v0}, Lcym;->a(Ljava/lang/CharSequence;)Lcym;

    move-result-object v0

    .line 425
    invoke-virtual {v0, v1}, Lcym;->b(I)Lcym;

    move-result-object v0

    .line 426
    invoke-virtual {v0, v6}, Lcym;->a(Z)Lcym;

    move-result-object v0

    .line 427
    invoke-virtual {v0, v7}, Lcym;->c(I)Lcym;

    move-result-object v0

    .line 430
    sget v1, Lbjw;->accounts:I

    if-eq v3, v1, :cond_2

    .line 431
    iget-object v1, p0, Lcom/twitter/library/client/navigation/o;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_2
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 442
    return-void

    .line 433
    :cond_3
    const-string/jumbo v1, "tabs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 437
    iget-object v0, p0, Lcom/twitter/library/client/navigation/o;->f:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 439
    :cond_4
    iget-object v0, p0, Lcom/twitter/library/client/navigation/o;->d:Ljava/util/List;

    new-instance v1, Lbjl;

    iget-object v3, p0, Lcom/twitter/library/client/navigation/o;->g:Lcom/twitter/library/client/navigation/l;

    iget-object v3, v3, Lcom/twitter/library/client/navigation/l;->a:Lcom/twitter/internal/android/widget/ToolBar;

    iget-object v4, p0, Lcom/twitter/library/client/navigation/o;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/twitter/library/client/navigation/o;->c:Landroid/util/AttributeSet;

    invoke-direct {v1, v3, v4, v5}, Lbjl;-><init>(Lcom/twitter/internal/android/widget/ToolBar;Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
