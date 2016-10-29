.class Lcom/twitter/android/revenue/card/au;
.super Lcom/twitter/library/util/z;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/revenue/card/ar;


# direct methods
.method constructor <init>(Lcom/twitter/android/revenue/card/ar;Lcom/twitter/ui/widget/TwitterButton;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/twitter/android/revenue/card/au;->a:Lcom/twitter/android/revenue/card/ar;

    invoke-direct {p0, p2}, Lcom/twitter/library/util/z;-><init>(Lcom/twitter/ui/widget/TwitterButton;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/twitter/android/revenue/card/au;->a:Lcom/twitter/android/revenue/card/ar;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/revenue/card/ar;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 209
    return-void
.end method
