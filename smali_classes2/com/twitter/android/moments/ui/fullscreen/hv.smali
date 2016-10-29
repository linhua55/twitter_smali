.class public Lcom/twitter/android/moments/ui/fullscreen/hv;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

.field private final b:Lcom/twitter/android/moments/ui/fullscreen/ScaleToFitFrameLayout;

.field private c:F

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/twitter/media/ui/image/AspectRatioFrameLayout;Lcom/twitter/android/moments/ui/fullscreen/ScaleToFitFrameLayout;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/hv;->a:Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    .line 31
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/hv;->b:Lcom/twitter/android/moments/ui/fullscreen/ScaleToFitFrameLayout;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/hv;)F
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hv;->c:F

    return v0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/hv;F)F
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/twitter/android/moments/ui/fullscreen/hv;->c:F

    return p1
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/hv;I)I
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/twitter/android/moments/ui/fullscreen/hv;->d:I

    return p1
.end method

.method private a(Lali;)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 87
    iget-boolean v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hv;->e:Z

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 93
    :goto_0
    invoke-interface {p1, v0}, Lali;->a(I)V

    .line 94
    new-instance v1, Laix;

    invoke-direct {v1}, Laix;-><init>()V

    .line 95
    iget-object v2, v1, Laix;->a:Lajd;

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v2, v4, v3, v0}, Lajd;->a(FFF)V

    .line 96
    iget-object v0, v1, Laix;->b:Lajd;

    invoke-virtual {v0, v4, v3, v3}, Lajd;->a(FFF)V

    .line 97
    invoke-interface {p1, v1}, Lali;->a(Laix;)V

    .line 98
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hv;->b:Lcom/twitter/android/moments/ui/fullscreen/ScaleToFitFrameLayout;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/ScaleToFitFrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hv;->b:Lcom/twitter/android/moments/ui/fullscreen/ScaleToFitFrameLayout;

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/fullscreen/ScaleToFitFrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/twitter/android/moments/ui/fullscreen/hv;->c:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 91
    iget v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hv;->d:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/hv;Lali;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/hv;->a(Lali;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/hv;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/twitter/android/moments/ui/fullscreen/hv;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/fullscreen/hv;)Lcom/twitter/media/ui/image/AspectRatioFrameLayout;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hv;->a:Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/moments/ui/fullscreen/hv;)Lcom/twitter/android/moments/ui/fullscreen/ScaleToFitFrameLayout;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hv;->b:Lcom/twitter/android/moments/ui/fullscreen/ScaleToFitFrameLayout;

    return-object v0
.end method


# virtual methods
.method public a()Lajt;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/hw;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/fullscreen/hw;-><init>(Lcom/twitter/android/moments/ui/fullscreen/hv;)V

    return-object v0
.end method
