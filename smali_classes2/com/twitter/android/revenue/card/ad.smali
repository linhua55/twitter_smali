.class Lcom/twitter/android/revenue/card/ad;
.super Lcom/twitter/library/util/y;
.source "Twttr"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/twitter/android/revenue/card/z;


# direct methods
.method constructor <init>(Lcom/twitter/android/revenue/card/z;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/twitter/android/revenue/card/ad;->b:Lcom/twitter/android/revenue/card/z;

    iput-object p2, p0, Lcom/twitter/android/revenue/card/ad;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/twitter/library/util/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ad;->b:Lcom/twitter/android/revenue/card/z;

    .line 308
    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/z;->e()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 307
    invoke-static {v0, p1, p2, v1}, Lcom/twitter/library/scribe/NativeCardUserAction;->a(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;I)Lcom/twitter/library/scribe/NativeCardUserAction;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/twitter/android/revenue/card/ad;->b:Lcom/twitter/android/revenue/card/z;

    invoke-static {v1}, Lcom/twitter/android/revenue/card/z;->e(Lcom/twitter/android/revenue/card/z;)Lcom/twitter/android/card/CardActionHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/revenue/card/ad;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/card/CardActionHelper;->a(Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 310
    return-void
.end method
