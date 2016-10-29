.class public Lany;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/view/ViewGroup;

.field public final e:[Landroid/view/View;

.field public final f:[Landroid/view/View;

.field public final g:Landroid/view/ViewGroup;

.field public final h:Landroid/view/View;

.field public final i:Lcom/twitter/library/media/widget/UserImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const v0, 0x7f13003e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lany;->a:Landroid/widget/ImageView;

    .line 200
    const v0, 0x7f13013f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lany;->h:Landroid/view/View;

    .line 201
    const v0, 0x7f13013e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lany;->b:Landroid/widget/TextView;

    .line 202
    const v0, 0x7f130013

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lany;->d:Landroid/view/ViewGroup;

    .line 203
    const v0, 0x7f130140

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lany;->g:Landroid/view/ViewGroup;

    .line 204
    const v0, 0x7f130487

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/UserImageView;

    iput-object v0, p0, Lany;->i:Lcom/twitter/library/media/widget/UserImageView;

    .line 205
    const v0, 0x7f130141

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lany;->c:Landroid/widget/TextView;

    .line 207
    iget-object v0, p0, Lany;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lany;->e:[Landroid/view/View;

    .line 208
    iget-object v0, p0, Lany;->e:[Landroid/view/View;

    array-length v0, v0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lany;->f:[Landroid/view/View;

    .line 211
    iget-object v0, p0, Lany;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lany;->g:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/twitter/util/ui/a;->a(Landroid/view/View;I)V

    .line 216
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lany;->e:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 217
    iget-object v1, p0, Lany;->e:[Landroid/view/View;

    iget-object v2, p0, Lany;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    .line 218
    iget-object v1, p0, Lany;->f:[Landroid/view/View;

    iget-object v2, p0, Lany;->e:[Landroid/view/View;

    aget-object v2, v2, v0

    const v3, 0x7f130486

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_1
    return-void
.end method
