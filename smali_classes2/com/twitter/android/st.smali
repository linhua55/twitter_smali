.class Lcom/twitter/android/st;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/ss;


# direct methods
.method constructor <init>(Lcom/twitter/android/ss;)V
    .locals 0

    .prologue
    .line 831
    iput-object p1, p0, Lcom/twitter/android/st;->a:Lcom/twitter/android/ss;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 834
    iget-object v0, p0, Lcom/twitter/android/st;->a:Lcom/twitter/android/ss;

    iget-object v0, v0, Lcom/twitter/android/ss;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/st;->a:Lcom/twitter/android/ss;

    iget v1, v1, Lcom/twitter/android/ss;->c:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 835
    iget-object v0, p0, Lcom/twitter/android/st;->a:Lcom/twitter/android/ss;

    iget-object v0, v0, Lcom/twitter/android/ss;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHasTransientState(Z)V

    .line 836
    return-void
.end method
