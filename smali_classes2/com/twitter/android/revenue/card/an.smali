.class Lcom/twitter/android/revenue/card/an;
.super Lcom/twitter/library/util/y;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/revenue/card/aj;


# direct methods
.method constructor <init>(Lcom/twitter/android/revenue/card/aj;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/twitter/android/revenue/card/an;->a:Lcom/twitter/android/revenue/card/aj;

    invoke-direct {p0}, Lcom/twitter/library/util/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    .line 353
    iget-object v0, p0, Lcom/twitter/android/revenue/card/an;->a:Lcom/twitter/android/revenue/card/aj;

    invoke-static {v0}, Lcom/twitter/android/revenue/card/aj;->d(Lcom/twitter/android/revenue/card/aj;)Lcom/twitter/android/card/CardActionHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/revenue/card/an;->a:Lcom/twitter/android/revenue/card/aj;

    invoke-static {v1}, Lcom/twitter/android/revenue/card/aj;->c(Lcom/twitter/android/revenue/card/aj;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/revenue/card/an;->a:Lcom/twitter/android/revenue/card/aj;

    invoke-virtual {v2}, Lcom/twitter/android/revenue/card/aj;->e()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Lcom/twitter/library/scribe/NativeCardUserAction;->a(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;I)Lcom/twitter/library/scribe/NativeCardUserAction;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/card/CardActionHelper;->a(Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 355
    return-void
.end method
