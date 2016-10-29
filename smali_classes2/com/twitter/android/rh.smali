.class Lcom/twitter/android/rh;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Lcom/twitter/android/widget/bn;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 2332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2333
    const v0, 0x7f13003e

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/rh;->a:Landroid/widget/ImageView;

    .line 2334
    new-instance v0, Lcom/twitter/android/widget/bn;

    invoke-direct {v0, p1}, Lcom/twitter/android/widget/bn;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/twitter/android/rh;->b:Lcom/twitter/android/widget/bn;

    .line 2335
    return-void
.end method
