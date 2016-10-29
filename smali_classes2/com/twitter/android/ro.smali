.class Lcom/twitter/android/ro;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Lcom/twitter/android/rm;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2293
    const v0, 0x7f130726

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/ro;->a:Landroid/widget/TextView;

    .line 2294
    new-instance v0, Lcom/twitter/android/rm;

    invoke-direct {v0, p1}, Lcom/twitter/android/rm;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/twitter/android/ro;->b:Lcom/twitter/android/rm;

    .line 2295
    return-void
.end method
