.class Lcom/twitter/android/rp;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/view/View;

.field public final e:Lcom/twitter/android/rm;

.field public final f:Lcom/twitter/android/trends/TrendBadgesView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2319
    const v0, 0x7f13064d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/rp;->a:Landroid/widget/ImageView;

    .line 2320
    const v0, 0x7f13064e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/rp;->b:Landroid/widget/TextView;

    .line 2321
    const v0, 0x7f1301e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/rp;->c:Landroid/widget/TextView;

    .line 2322
    new-instance v0, Lcom/twitter/android/rm;

    invoke-direct {v0, p1}, Lcom/twitter/android/rm;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/twitter/android/rp;->e:Lcom/twitter/android/rm;

    .line 2323
    const v0, 0x7f130761

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/rp;->d:Landroid/view/View;

    .line 2324
    const v0, 0x7f130760

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/trends/TrendBadgesView;

    iput-object v0, p0, Lcom/twitter/android/rp;->f:Lcom/twitter/android/trends/TrendBadgesView;

    .line 2325
    return-void
.end method
