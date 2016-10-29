.class Lcom/twitter/android/revenue/card/al;
.super Lcom/twitter/library/util/z;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/revenue/card/aj;


# direct methods
.method constructor <init>(Lcom/twitter/android/revenue/card/aj;Lcom/twitter/ui/widget/TwitterButton;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/twitter/android/revenue/card/al;->a:Lcom/twitter/android/revenue/card/aj;

    invoke-direct {p0, p2}, Lcom/twitter/library/util/z;-><init>(Lcom/twitter/ui/widget/TwitterButton;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/twitter/android/revenue/card/al;->a:Lcom/twitter/android/revenue/card/aj;

    iget-object v0, v0, Lcom/twitter/android/revenue/card/aj;->f:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v1, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne v0, v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/twitter/android/revenue/card/al;->a:Lcom/twitter/android/revenue/card/aj;

    invoke-static {v0, p1, p2}, Lcom/twitter/android/revenue/card/aj;->a(Lcom/twitter/android/revenue/card/aj;Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/al;->a:Lcom/twitter/android/revenue/card/aj;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/revenue/card/aj;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0
.end method
