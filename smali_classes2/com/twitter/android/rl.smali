.class public Lcom/twitter/android/rl;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/internal/android/widget/GroupedRowView;

.field public final b:Lcom/twitter/media/ui/image/MediaImageView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/TextView;

.field public f:Lcom/twitter/android/widget/TopicView$TopicData;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    .line 2246
    check-cast v0, Lcom/twitter/internal/android/widget/GroupedRowView;

    iput-object v0, p0, Lcom/twitter/android/rl;->a:Lcom/twitter/internal/android/widget/GroupedRowView;

    .line 2247
    const v0, 0x7f1300e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/android/rl;->b:Lcom/twitter/media/ui/image/MediaImageView;

    .line 2248
    const v0, 0x7f1301a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/rl;->c:Landroid/widget/TextView;

    .line 2249
    const v0, 0x7f130059

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/rl;->d:Landroid/widget/TextView;

    .line 2250
    const v0, 0x7f130725

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/rl;->e:Landroid/widget/TextView;

    .line 2251
    return-void
.end method
