.class Lcom/twitter/android/highlights/bq;
.super Lcom/twitter/android/highlights/at;
.source "Twttr"


# instance fields
.field public final f:Lcom/twitter/library/media/widget/UserImageView;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroid/view/View;

.field public final i:Landroid/widget/TextView;

.field public final j:Landroid/widget/TextView;

.field public final k:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/highlights/at;-><init>(ILandroid/view/View;)V

    .line 99
    const v0, 0x7f1301a2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/UserImageView;

    iput-object v0, p0, Lcom/twitter/android/highlights/bq;->f:Lcom/twitter/library/media/widget/UserImageView;

    .line 100
    const v0, 0x7f13004c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/highlights/bq;->g:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f1303f8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/highlights/bq;->h:Landroid/view/View;

    .line 102
    const v0, 0x7f130063

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/highlights/bq;->i:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f1303db

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/highlights/bq;->j:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/twitter/android/highlights/bq;->j:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 105
    const v0, 0x7f13004e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/highlights/bq;->k:Landroid/view/ViewGroup;

    .line 106
    return-void
.end method
