.class Lcom/twitter/android/revenue/card/ae;
.super Lcom/twitter/library/util/y;
.source "Twttr"


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/twitter/android/revenue/card/z;


# direct methods
.method constructor <init>(Lcom/twitter/android/revenue/card/z;J)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/twitter/android/revenue/card/ae;->b:Lcom/twitter/android/revenue/card/z;

    iput-wide p2, p0, Lcom/twitter/android/revenue/card/ae;->a:J

    invoke-direct {p0}, Lcom/twitter/library/util/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    .line 324
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ae;->b:Lcom/twitter/android/revenue/card/z;

    iget-wide v2, p0, Lcom/twitter/android/revenue/card/ae;->a:J

    iget-object v1, p0, Lcom/twitter/android/revenue/card/ae;->b:Lcom/twitter/android/revenue/card/z;

    invoke-virtual {v1}, Lcom/twitter/android/revenue/card/z;->e()Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, p1, p2, v4}, Lcom/twitter/library/scribe/NativeCardUserAction;->a(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;I)Lcom/twitter/library/scribe/NativeCardUserAction;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/twitter/android/revenue/card/z;->a(JLcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 326
    return-void
.end method
