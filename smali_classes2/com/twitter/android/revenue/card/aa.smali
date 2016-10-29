.class Lcom/twitter/android/revenue/card/aa;
.super Lcom/twitter/library/util/z;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/revenue/card/z;


# direct methods
.method constructor <init>(Lcom/twitter/android/revenue/card/z;Lcom/twitter/ui/widget/TwitterButton;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/twitter/android/revenue/card/aa;->a:Lcom/twitter/android/revenue/card/z;

    invoke-direct {p0, p2}, Lcom/twitter/library/util/z;-><init>(Lcom/twitter/ui/widget/TwitterButton;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/twitter/android/revenue/card/aa;->a:Lcom/twitter/android/revenue/card/z;

    .line 228
    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/z;->e()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 227
    invoke-static {v0, p1, p2, v1}, Lcom/twitter/library/scribe/NativeCardUserAction;->a(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;I)Lcom/twitter/library/scribe/NativeCardUserAction;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/twitter/android/revenue/card/aa;->a:Lcom/twitter/android/revenue/card/z;

    invoke-static {v1}, Lcom/twitter/android/revenue/card/z;->b(Lcom/twitter/android/revenue/card/z;)Lcom/twitter/android/card/CardActionHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/revenue/card/aa;->a:Lcom/twitter/android/revenue/card/z;

    invoke-static {v2}, Lcom/twitter/android/revenue/card/z;->a(Lcom/twitter/android/revenue/card/z;)Lcom/twitter/library/card/CardContext;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/card/CardActionHelper;->a(Lcom/twitter/library/card/CardContext;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 230
    return-void
.end method
