.class Lcom/twitter/android/av/card/d;
.super Lcom/twitter/library/util/y;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/av/card/c;


# direct methods
.method constructor <init>(Lcom/twitter/android/av/card/c;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/twitter/android/av/card/d;->a:Lcom/twitter/android/av/card/c;

    invoke-direct {p0}, Lcom/twitter/library/util/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    .line 57
    iget-object v0, p0, Lcom/twitter/android/av/card/d;->a:Lcom/twitter/android/av/card/c;

    .line 58
    invoke-virtual {v0}, Lcom/twitter/android/av/card/c;->e()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 57
    invoke-static {v0, p1, p2, v1}, Lcom/twitter/library/scribe/NativeCardUserAction;->a(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;I)Lcom/twitter/library/scribe/NativeCardUserAction;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/twitter/android/av/card/d;->a:Lcom/twitter/android/av/card/c;

    invoke-static {v1}, Lcom/twitter/android/av/card/c;->c(Lcom/twitter/android/av/card/c;)Lcom/twitter/android/card/CardActionHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/av/card/d;->a:Lcom/twitter/android/av/card/c;

    invoke-static {v2}, Lcom/twitter/android/av/card/c;->a(Lcom/twitter/android/av/card/c;)Lcom/twitter/library/card/e;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/av/card/d;->a:Lcom/twitter/android/av/card/c;

    iget-object v3, v3, Lcom/twitter/android/av/card/c;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/av/card/d;->a:Lcom/twitter/android/av/card/c;

    invoke-static {v4}, Lcom/twitter/android/av/card/c;->b(Lcom/twitter/android/av/card/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/twitter/android/card/CardActionHelper;->a(Lcom/twitter/library/card/e;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 60
    return-void
.end method
