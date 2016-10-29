.class public Lcom/twitter/android/highlights/ax;
.super Lcom/twitter/android/highlights/bh;
.source "Twttr"


# instance fields
.field public a:Lcom/twitter/media/ui/image/BaseMediaImageView;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0, p2, p1}, Lcom/twitter/android/highlights/bh;-><init>(ILandroid/view/View;)V

    .line 160
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 163
    const v0, 0x7f13033a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/BaseMediaImageView;

    iput-object v0, p0, Lcom/twitter/android/highlights/ax;->a:Lcom/twitter/media/ui/image/BaseMediaImageView;

    .line 164
    const v0, 0x7f130406

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/highlights/ax;->b:Landroid/widget/ImageView;

    .line 165
    const v0, 0x7f130407

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/highlights/ax;->c:Landroid/view/View;

    .line 166
    const v0, 0x7f13003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/highlights/ax;->d:Landroid/view/View;

    .line 167
    const v0, 0x7f130408

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/highlights/ax;->e:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f1301e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/highlights/ax;->f:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f1302ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/highlights/ax;->g:Landroid/widget/TextView;

    .line 170
    return-void
.end method
