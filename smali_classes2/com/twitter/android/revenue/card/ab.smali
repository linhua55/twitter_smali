.class Lcom/twitter/android/revenue/card/ab;
.super Lcom/twitter/library/util/z;
.source "Twttr"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/twitter/android/revenue/card/z;


# direct methods
.method constructor <init>(Lcom/twitter/android/revenue/card/z;Lcom/twitter/ui/widget/TwitterButton;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/twitter/android/revenue/card/ab;->b:Lcom/twitter/android/revenue/card/z;

    iput-object p3, p0, Lcom/twitter/android/revenue/card/ab;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/twitter/library/util/z;-><init>(Lcom/twitter/ui/widget/TwitterButton;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ab;->b:Lcom/twitter/android/revenue/card/z;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/ab;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/android/revenue/card/z;->a(Lcom/twitter/android/revenue/card/z;Ljava/lang/String;)V

    .line 260
    return-void
.end method
