.class public Ltv/periscope/android/ui/love/HeartView;
.super Landroid/widget/ImageView;
.source "Twttr"


# static fields
.field private static a:Landroid/graphics/Paint;

.field private static b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/PorterDuffColorFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Ltv/periscope/android/ui/love/HeartView;->a:Landroid/graphics/Paint;

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Ltv/periscope/android/ui/love/HeartView;->b:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Ltv/periscope/android/ui/love/HeartView;->a()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Ltv/periscope/android/ui/love/HeartView;->a()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Ltv/periscope/android/ui/love/HeartView;->a()V

    .line 40
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 43
    sget v0, Ltv/periscope/android/library/k;->ps__heart_border:I

    iput v0, p0, Ltv/periscope/android/ui/love/HeartView;->c:I

    .line 44
    sget v0, Ltv/periscope/android/library/k;->ps__heart_fill:I

    iput v0, p0, Ltv/periscope/android/ui/love/HeartView;->d:I

    .line 45
    iget v0, p0, Ltv/periscope/android/ui/love/HeartView;->c:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/love/HeartView;->setImageResource(I)V

    .line 46
    return-void
.end method

.method private b(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 76
    iput p1, p0, Ltv/periscope/android/ui/love/HeartView;->f:I

    .line 77
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 79
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 81
    sget-object v3, Ltv/periscope/android/ui/love/HeartView;->a:Landroid/graphics/Paint;

    .line 83
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    div-float v4, v0, v7

    .line 84
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v0, v0

    div-float v5, v0, v7

    .line 86
    invoke-virtual {v2, p2, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 87
    sget-object v0, Ltv/periscope/android/ui/love/HeartView;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    .line 88
    if-nez v0, :cond_0

    .line 89
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 90
    sget-object v6, Ltv/periscope/android/ui/love/HeartView;->b:Landroid/util/SparseArray;

    invoke-virtual {v6, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    :cond_0
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 94
    invoke-virtual {v2, p3, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 95
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 97
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Ltv/periscope/android/ui/love/HeartView;->e:I

    .line 98
    return-object v1
.end method


# virtual methods
.method public a(III)V
    .locals 0

    .prologue
    .line 54
    iput p2, p0, Ltv/periscope/android/ui/love/HeartView;->c:I

    .line 55
    iput p3, p0, Ltv/periscope/android/ui/love/HeartView;->d:I

    .line 56
    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/love/HeartView;->setColor(I)V

    .line 57
    return-void
.end method

.method public a(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Ltv/periscope/android/ui/love/HeartView;->b(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Ltv/periscope/android/ui/love/HeartView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Ltv/periscope/android/ui/love/HeartView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Ltv/periscope/android/ui/love/HeartView;->f:I

    return v0
.end method

.method public getHeartHeight()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Ltv/periscope/android/ui/love/HeartView;->e:I

    return v0
.end method

.method public setColor(I)V
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p0}, Ltv/periscope/android/ui/love/HeartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    iget v1, p0, Ltv/periscope/android/ui/love/HeartView;->c:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Ltv/periscope/android/ui/love/HeartView;->d:I

    .line 62
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    invoke-direct {p0, p1, v1, v0}, Ltv/periscope/android/ui/love/HeartView;->b(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Ltv/periscope/android/ui/love/HeartView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Ltv/periscope/android/ui/love/HeartView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    return-void
.end method
