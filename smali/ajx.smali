.class public Lajx;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lake;
.implements Lali;
.implements Laln;


# instance fields
.field private final a:Lcom/twitter/media/ui/image/MediaImageView;

.field private final b:Landroid/view/ViewGroup;

.field private final c:Landroid/view/View;

.field private final d:Landroid/widget/ProgressBar;

.field private final e:Landroid/widget/TextView;

.field private final f:Laja;

.field private final g:Lajt;

.field private final h:Lako;


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Laja;Lajt;Lako;Lrx/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Laja;",
            "Lajt;",
            "Lako;",
            "Lrx/o",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lajx;->b:Landroid/view/ViewGroup;

    .line 103
    iput-object p2, p0, Lajx;->c:Landroid/view/View;

    .line 104
    iput-object p4, p0, Lajx;->g:Lajt;

    .line 106
    iget-object v0, p0, Lajx;->b:Landroid/view/ViewGroup;

    const v1, 0x7f1304c0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lajx;->a:Lcom/twitter/media/ui/image/MediaImageView;

    .line 107
    iget-object v0, p0, Lajx;->a:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    instance-of v0, v0, Lcom/twitter/moments/core/ui/widget/capsule/DrawableAwareImageView;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MediaImageView internal view type must be DrawableAwareImageView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iput-object p3, p0, Lajx;->f:Laja;

    .line 112
    iget-object v0, p0, Lajx;->b:Landroid/view/ViewGroup;

    const v1, 0x7f1304e4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lajx;->d:Landroid/widget/ProgressBar;

    .line 113
    iget-object v0, p0, Lajx;->b:Landroid/view/ViewGroup;

    const v1, 0x7f1304e3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lajx;->e:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lajx;->e:Landroid/widget/TextView;

    const v1, 0x7f0a0563

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iput-object p5, p0, Lajx;->h:Lako;

    .line 117
    iget-object v0, p0, Lajx;->a:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-static {v0}, Ldcx;->a(Landroid/view/View;)Lrx/o;

    move-result-object v0

    new-instance v1, Lajy;

    invoke-direct {v1, p0}, Lajy;-><init>(Lajx;)V

    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    .line 123
    new-instance v0, Lajz;

    invoke-direct {v0, p0}, Lajz;-><init>(Lajx;)V

    invoke-virtual {p6, v0}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    .line 130
    return-void
.end method

.method static synthetic a(Lajx;)Lajt;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lajx;->g:Lajt;

    return-object v0
.end method

.method public static a(Landroid/view/LayoutInflater;ILrx/o;Z)Lajx;
    .locals 7
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "I",
            "Lrx/o",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Lajx;"
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 83
    const v0, 0x7f1304c0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    .line 84
    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 85
    const v2, 0x7f1304d4

    .line 86
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/moments/ui/fullscreen/ScaleToFitFrameLayout;

    .line 87
    invoke-static {v2}, Laja;->a(Landroid/view/View;)Laja;

    move-result-object v3

    .line 90
    invoke-static {v1, v4, v3, p3}, Lako;->a(Landroid/view/ViewGroup;Landroid/content/Context;Laja;Z)Lako;

    move-result-object v5

    .line 91
    new-instance v4, Lcom/twitter/android/moments/ui/fullscreen/hv;

    invoke-direct {v4, v0, v2}, Lcom/twitter/android/moments/ui/fullscreen/hv;-><init>(Lcom/twitter/media/ui/image/AspectRatioFrameLayout;Lcom/twitter/android/moments/ui/fullscreen/ScaleToFitFrameLayout;)V

    .line 93
    new-instance v0, Lajx;

    .line 94
    invoke-virtual {v4}, Lcom/twitter/android/moments/ui/fullscreen/hv;->a()Lajt;

    move-result-object v4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lajx;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Laja;Lajt;Lako;Lrx/o;)V

    .line 93
    return-object v0
.end method

.method public static a(Landroid/view/LayoutInflater;IZ)Lajx;
    .locals 7
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 67
    const v0, 0x7f1304c0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/twitter/media/ui/image/MediaImageView;

    .line 68
    new-instance v3, Laja;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Laiy;

    invoke-direct {v4, v2}, Laiy;-><init>(Lcom/twitter/media/ui/image/MediaImageView;)V

    invoke-direct {v3, v0, v4}, Laja;-><init>(Landroid/content/Context;Lajc;)V

    .line 71
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0, v3, p2}, Lako;->a(Landroid/view/ViewGroup;Landroid/content/Context;Laja;Z)Lako;

    move-result-object v5

    .line 73
    new-instance v0, Lajx;

    new-instance v4, Laka;

    new-instance v6, Laje;

    invoke-direct {v6}, Laje;-><init>()V

    invoke-direct {v4, v3, v6, v2}, Laka;-><init>(Laja;Laje;Lcom/twitter/media/ui/image/MediaImageView;)V

    .line 75
    invoke-static {}, Lrx/o;->c()Lrx/o;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lajx;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Laja;Lajt;Lako;Lrx/o;)V

    .line 73
    return-object v0
.end method

.method public static a(Landroid/view/LayoutInflater;Lcom/twitter/model/moments/k;Lcom/twitter/android/moments/ui/fullscreen/gn;Z)Lajx;
    .locals 2

    .prologue
    .line 55
    iget-boolean v0, p1, Lcom/twitter/model/moments/k;->h:Z

    if-eqz v0, :cond_0

    .line 56
    const v0, 0x7f0401e7

    .line 57
    invoke-interface {p2}, Lcom/twitter/android/moments/ui/fullscreen/gn;->b()Lrx/o;

    move-result-object v1

    .line 56
    invoke-static {p0, v0, v1, p3}, Lajx;->a(Landroid/view/LayoutInflater;ILrx/o;Z)Lajx;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0401d8

    invoke-static {p0, v0, p3}, Lajx;->a(Landroid/view/LayoutInflater;IZ)Lajx;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lajx;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)Lrx/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lrx/w",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lajx;->h:Lako;

    invoke-virtual {v0, p1}, Lako;->a(Landroid/graphics/Bitmap;)Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lajx;->f:Laja;

    invoke-virtual {v0, p1}, Laja;->b(F)V

    .line 213
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lajx;->c:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/twitter/util/ui/r;->a(Landroid/view/View;I)V

    .line 186
    return-void
.end method

.method public a(Laix;)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lajx;->f:Laja;

    invoke-virtual {v0, p1}, Laja;->a(Laix;)V

    .line 191
    return-void
.end method

.method public a(Lcom/twitter/media/request/b;)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lajx;->a:Lcom/twitter/media/ui/image/MediaImageView;

    sget-object v1, Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;->a:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setScaleType(Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;)V

    .line 144
    iget-object v0, p0, Lajx;->a:Lcom/twitter/media/ui/image/MediaImageView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setScaleFactor(F)V

    .line 145
    iget-object v0, p0, Lajx;->a:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0, p1}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 146
    return-void
.end method

.method public a(Lcom/twitter/media/ui/image/f;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lajx;->a:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0, p1}, Lcom/twitter/media/ui/image/MediaImageView;->setOnImageLoadedListener(Lcom/twitter/media/ui/image/f;)V

    .line 177
    return-void
.end method

.method public a(Lcom/twitter/util/math/Size;Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lajx;->g:Lajt;

    invoke-interface {v0, p0, p1, p2}, Lajt;->a(Lali;Lcom/twitter/util/math/Size;Landroid/graphics/Rect;)V

    .line 181
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lajx;->f:Laja;

    invoke-virtual {v0, p1}, Laja;->a(Z)V

    .line 201
    iget-object v0, p0, Lajx;->h:Lako;

    invoke-virtual {v0}, Lako;->a()V

    .line 202
    return-void
.end method

.method public b()Lcom/twitter/media/ui/image/MediaImageView;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lajx;->a:Lcom/twitter/media/ui/image/MediaImageView;

    return-object v0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lajx;->f:Laja;

    invoke-virtual {v0, p1}, Laja;->b(Z)V

    .line 207
    iget-object v0, p0, Lajx;->h:Lako;

    invoke-virtual {v0}, Lako;->b()V

    .line 208
    return-void
.end method

.method public c()Lrx/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/w",
            "<",
            "Lcom/twitter/media/request/ImageResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lajx;->a:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->i()Lrx/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrx/o;->b(I)Lrx/o;

    move-result-object v0

    invoke-virtual {v0}, Lrx/o;->b()Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lajx;->g:Lajt;

    invoke-interface {v0, p0, p1}, Lajt;->a(Lali;Z)V

    .line 218
    return-void
.end method

.method public d()F
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lajx;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/ui/r;->a(Landroid/content/Context;)Lcom/twitter/util/math/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/util/math/Size;->g()F

    move-result v0

    return v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lajx;->a:Lcom/twitter/media/ui/image/MediaImageView;

    return-object v0
.end method

.method public f()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lajx;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public g()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lajx;->e:Landroid/widget/TextView;

    return-object v0
.end method
