.class public Lats;
.super Lcom/twitter/library/widget/renderablecontent/a;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/widget/renderablecontent/a",
        "<",
        "Lcom/twitter/model/core/Tweet;",
        "Lcom/twitter/library/widget/renderablecontent/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private final b:Lcom/twitter/model/core/Tweet;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/twitter/library/widget/renderablecontent/a;-><init>(Landroid/app/Activity;Ljava/lang/Object;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lats;->a:Landroid/graphics/Rect;

    .line 28
    iput-object p2, p0, Lats;->b:Lcom/twitter/model/core/Tweet;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;IIII)Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lats;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 55
    invoke-virtual {p0}, Lats;->d()Landroid/view/View;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    const/high16 v1, -0x80000000

    invoke-static {p4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 58
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p2

    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    .line 62
    iget-object v2, p0, Lats;->a:Landroid/graphics/Rect;

    invoke-virtual {v2, p2, p3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 64
    :cond_0
    iget-object v0, p0, Lats;->a:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected a(Landroid/app/Activity;)Lcom/twitter/library/widget/renderablecontent/c;
    .locals 4

    .prologue
    .line 40
    new-instance v0, Latl;

    iget-object v1, p0, Lats;->b:Lcom/twitter/model/core/Tweet;

    invoke-virtual {p0}, Lats;->b()Latq;

    move-result-object v2

    iget-object v3, p0, Lats;->i:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0, p1, v1, v2, v3}, Latl;-><init>(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;Latq;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    return-object v0
.end method

.method protected a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Latp;

    invoke-direct {v0}, Latp;-><init>()V

    return-object v0
.end method

.method b()Latq;
    .locals 5

    .prologue
    .line 44
    invoke-static {}, Lcom/twitter/android/revenue/z;->l()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/twitter/android/revenue/z;->a(Ljava/lang/String;)Z

    move-result v1

    .line 46
    invoke-static {v0}, Lcom/twitter/android/revenue/z;->b(Ljava/lang/String;)Z

    move-result v2

    .line 47
    invoke-static {v0}, Lcom/twitter/android/revenue/z;->c(Ljava/lang/String;)Z

    move-result v3

    .line 48
    invoke-static {v0}, Lcom/twitter/android/revenue/z;->d(Ljava/lang/String;)Z

    move-result v0

    .line 49
    new-instance v4, Latq;

    invoke-direct {v4, v1, v2, v3, v0}, Latq;-><init>(ZZZZ)V

    return-object v4
.end method
