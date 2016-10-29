.class Lcom/twitter/android/revenue/card/s;
.super Lcom/twitter/library/util/z;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/revenue/card/p;


# direct methods
.method constructor <init>(Lcom/twitter/android/revenue/card/p;Lcom/twitter/ui/widget/TwitterButton;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/twitter/android/revenue/card/s;->a:Lcom/twitter/android/revenue/card/p;

    invoke-direct {p0, p2}, Lcom/twitter/library/util/z;-><init>(Lcom/twitter/ui/widget/TwitterButton;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/twitter/android/revenue/card/s;->a:Lcom/twitter/android/revenue/card/p;

    invoke-static {v0, p1, p2}, Lcom/twitter/android/revenue/card/p;->a(Lcom/twitter/android/revenue/card/p;Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 279
    return-void
.end method
