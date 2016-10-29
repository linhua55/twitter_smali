.class final Lcom/twitter/android/revenue/card/bq;
.super Lcom/twitter/library/util/y;
.source "Twttr"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/twitter/android/card/i;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Landroid/view/View;

.field final synthetic g:Lcom/twitter/library/card/CardContext;

.field final synthetic h:Lcom/twitter/android/av/g;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/twitter/android/card/i;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;Lcom/twitter/library/card/CardContext;Lcom/twitter/android/av/g;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/twitter/android/revenue/card/bq;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/twitter/android/revenue/card/bq;->b:Lcom/twitter/android/card/i;

    iput-object p3, p0, Lcom/twitter/android/revenue/card/bq;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/twitter/android/revenue/card/bq;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/twitter/android/revenue/card/bq;->e:Landroid/content/Context;

    iput-object p6, p0, Lcom/twitter/android/revenue/card/bq;->f:Landroid/view/View;

    iput-object p7, p0, Lcom/twitter/android/revenue/card/bq;->g:Lcom/twitter/library/card/CardContext;

    iput-object p8, p0, Lcom/twitter/android/revenue/card/bq;->h:Lcom/twitter/android/av/g;

    invoke-direct {p0}, Lcom/twitter/library/util/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 86
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bq;->a:Landroid/view/View;

    invoke-static {v0, p1, p2, v4}, Lcom/twitter/library/scribe/NativeCardUserAction;->a(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;I)Lcom/twitter/library/scribe/NativeCardUserAction;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/twitter/android/revenue/card/bq;->b:Lcom/twitter/android/card/i;

    const-string/jumbo v2, "card_click"

    iget-object v3, p0, Lcom/twitter/android/revenue/card/bq;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/twitter/android/card/i;->c(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 90
    iget-object v1, p0, Lcom/twitter/android/revenue/card/bq;->b:Lcom/twitter/android/card/i;

    sget-object v2, Lcom/twitter/library/api/PromotedEvent;->p:Lcom/twitter/library/api/PromotedEvent;

    invoke-interface {v1, v2, v0}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/api/PromotedEvent;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 92
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bq;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bq;->e:Landroid/content/Context;

    const v1, 0x7f0a00a4

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 112
    :goto_0
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 100
    iget-object v1, p0, Lcom/twitter/android/revenue/card/bq;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 101
    new-instance v1, Landroid/graphics/PointF;

    aget v2, v0, v4

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    int-to-float v0, v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 102
    new-instance v2, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/twitter/android/revenue/card/bq;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/twitter/android/revenue/card/bq;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 104
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bq;->g:Lcom/twitter/library/card/CardContext;

    invoke-static {v0}, Lcom/twitter/library/card/CardContext;->a(Lcom/twitter/library/card/CardContext;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    .line 105
    iget-object v3, p0, Lcom/twitter/android/revenue/card/bq;->h:Lcom/twitter/android/av/g;

    invoke-virtual {v3, v0}, Lcom/twitter/android/av/g;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/av/g;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/android/revenue/card/bq;->d:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v3}, Lcom/twitter/android/av/g;->a(Ljava/lang/String;)Lcom/twitter/android/av/g;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/android/revenue/card/bq;->b:Lcom/twitter/android/card/i;

    .line 107
    invoke-interface {v3}, Lcom/twitter/android/card/i;->a()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/twitter/android/av/g;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/android/av/g;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/av/g;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/twitter/android/av/g;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/revenue/card/bq;->e:Landroid/content/Context;

    .line 110
    invoke-static {v1}, Lbki;->a(Landroid/content/Context;)Lbki;

    move-result-object v1

    invoke-virtual {v1}, Lbki;->k()Z

    move-result v1

    .line 109
    invoke-virtual {v0, v1}, Lcom/twitter/android/av/g;->a(Z)Lcom/twitter/android/av/g;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/revenue/card/bq;->e:Landroid/content/Context;

    .line 111
    invoke-virtual {v0, v1}, Lcom/twitter/android/av/g;->b(Landroid/content/Context;)V

    goto :goto_0
.end method
