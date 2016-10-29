.class Lcom/twitter/android/rn;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/widget/TextView;

.field public final c:Lcom/twitter/android/rm;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2304
    const v0, 0x7f13064d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/rn;->a:Landroid/widget/ImageView;

    .line 2305
    const v0, 0x7f13064e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/rn;->b:Landroid/widget/TextView;

    .line 2306
    new-instance v0, Lcom/twitter/android/rm;

    invoke-direct {v0, p1}, Lcom/twitter/android/rm;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/twitter/android/rn;->c:Lcom/twitter/android/rm;

    .line 2307
    return-void
.end method
