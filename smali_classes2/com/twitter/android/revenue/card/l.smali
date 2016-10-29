.class Lcom/twitter/android/revenue/card/l;
.super Lcom/twitter/library/util/y;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/revenue/card/k;


# direct methods
.method constructor <init>(Lcom/twitter/android/revenue/card/k;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/twitter/android/revenue/card/l;->a:Lcom/twitter/android/revenue/card/k;

    invoke-direct {p0}, Lcom/twitter/library/util/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/twitter/android/revenue/card/l;->a:Lcom/twitter/android/revenue/card/k;

    invoke-static {v0}, Lcom/twitter/android/revenue/card/k;->a(Lcom/twitter/android/revenue/card/k;)Lcom/twitter/android/revenue/card/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/twitter/android/revenue/card/l;->a:Lcom/twitter/android/revenue/card/k;

    invoke-static {v0}, Lcom/twitter/android/revenue/card/k;->a(Lcom/twitter/android/revenue/card/k;)Lcom/twitter/android/revenue/card/m;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/twitter/android/revenue/card/m;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 56
    :cond_0
    return-void
.end method
