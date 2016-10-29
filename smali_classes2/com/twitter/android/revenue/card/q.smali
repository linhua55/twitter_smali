.class Lcom/twitter/android/revenue/card/q;
.super Lcom/twitter/library/util/y;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/revenue/card/p;


# direct methods
.method constructor <init>(Lcom/twitter/android/revenue/card/p;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/twitter/android/revenue/card/q;->a:Lcom/twitter/android/revenue/card/p;

    invoke-direct {p0}, Lcom/twitter/library/util/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/twitter/android/revenue/card/q;->a:Lcom/twitter/android/revenue/card/p;

    invoke-static {v0, p1, p2}, Lcom/twitter/android/revenue/card/p;->a(Lcom/twitter/android/revenue/card/p;Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 105
    return-void
.end method
