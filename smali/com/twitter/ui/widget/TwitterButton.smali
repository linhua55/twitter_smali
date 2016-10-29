.class public Lcom/twitter/ui/widget/TwitterButton;
.super Landroid/widget/Button;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final a:Landroid/util/SparseIntArray;

.field private static final g:[I


# instance fields
.field private final A:Landroid/graphics/Rect;

.field private B:Z

.field private C:I

.field private final D:Landroid/graphics/Rect;

.field private E:I

.field private F:I

.field private G:Landroid/graphics/Bitmap;

.field private H:Ljava/lang/String;

.field private I:I

.field private J:I

.field private final K:Landroid/graphics/Paint;

.field private L:I

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:F

.field private S:F

.field private T:I

.field private U:Landroid/graphics/Paint;

.field private V:Landroid/graphics/Bitmap;

.field private W:Landroid/graphics/Canvas;

.field private aa:Landroid/graphics/Bitmap;

.field private ab:Landroid/graphics/Canvas;

.field private ac:Z

.field protected final b:Landroid/text/TextPaint;

.field protected c:F

.field protected d:F

.field protected e:Ljava/lang/String;

.field protected f:Z

.field private final h:Landroid/graphics/Rect;

.field private i:I

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:F

.field private u:Z

.field private v:Z

.field private final w:Landroid/graphics/RectF;

.field private final x:Landroid/graphics/Paint;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/twitter/ui/widget/TwitterButton;->a:Landroid/util/SparseIntArray;

    .line 82
    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twitter/ui/widget/TwitterButton;->g:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x12
        0x14
        0x16
        0x18
        0x1a
        0x1c
        0x1e
        0x20
        0x22
        0x24
        0x28
        0x2a
        0x2c
        0x30
        0x34
        0x38
        0x3c
        0x40
        0x44
        0x48
        0x50
        0x54
        0x5a
        0x60
        0x66
        0x70
        0x78
        0x80
        0x88
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/ui/widget/TwitterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 179
    sget v0, Lcxh;->buttonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/ui/widget/TwitterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->b:Landroid/text/TextPaint;

    .line 98
    iput-boolean v2, p0, Lcom/twitter/ui/widget/TwitterButton;->f:Z

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->h:Landroid/graphics/Rect;

    .line 101
    iput-boolean v3, p0, Lcom/twitter/ui/widget/TwitterButton;->j:Z

    .line 113
    iput-boolean v2, p0, Lcom/twitter/ui/widget/TwitterButton;->v:Z

    .line 114
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->w:Landroid/graphics/RectF;

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->x:Landroid/graphics/Paint;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->A:Landroid/graphics/Rect;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->D:Landroid/graphics/Rect;

    .line 132
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->K:Landroid/graphics/Paint;

    .line 135
    iput-boolean v2, p0, Lcom/twitter/ui/widget/TwitterButton;->N:Z

    .line 137
    iput-boolean v3, p0, Lcom/twitter/ui/widget/TwitterButton;->P:Z

    .line 184
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/twitter/ui/widget/TwitterButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 188
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->b:Landroid/text/TextPaint;

    .line 98
    iput-boolean v3, p0, Lcom/twitter/ui/widget/TwitterButton;->f:Z

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->h:Landroid/graphics/Rect;

    .line 101
    iput-boolean v2, p0, Lcom/twitter/ui/widget/TwitterButton;->j:Z

    .line 113
    iput-boolean v3, p0, Lcom/twitter/ui/widget/TwitterButton;->v:Z

    .line 114
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->w:Landroid/graphics/RectF;

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->x:Landroid/graphics/Paint;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->A:Landroid/graphics/Rect;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->D:Landroid/graphics/Rect;

    .line 132
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->K:Landroid/graphics/Paint;

    .line 135
    iput-boolean v3, p0, Lcom/twitter/ui/widget/TwitterButton;->N:Z

    .line 137
    iput-boolean v2, p0, Lcom/twitter/ui/widget/TwitterButton;->P:Z

    .line 189
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/ui/widget/TwitterButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 190
    return-void
.end method

.method private static a(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 158
    sget-object v1, Lcom/twitter/ui/widget/TwitterButton;->g:[I

    array-length v1, v1

    .line 160
    sget-object v2, Lcom/twitter/ui/widget/TwitterButton;->g:[I

    aget v2, v2, v0

    if-lt p0, v2, :cond_0

    sget-object v2, Lcom/twitter/ui/widget/TwitterButton;->g:[I

    add-int/lit8 v1, v1, -0x1

    aget v1, v2, v1

    if-le p0, v1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    sget-object v0, Lcom/twitter/ui/widget/TwitterButton;->g:[I

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 165
    if-gez v0, :cond_2

    .line 168
    xor-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    .line 171
    :cond_2
    sget-object v1, Lcom/twitter/ui/widget/TwitterButton;->g:[I

    aget v0, v1, v0

    goto :goto_0
.end method

.method private a(ID)I
    .locals 6

    .prologue
    const/4 v4, 0x2

    .line 395
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 396
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 398
    aget v1, v0, v4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, p2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    aput v1, v0, v4

    .line 399
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 418
    if-nez p1, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-object v1

    .line 421
    :cond_1
    add-int v2, p2, p3

    .line 422
    sget-object v0, Lcom/twitter/ui/widget/TwitterButton;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 423
    if-nez v0, :cond_2

    .line 424
    invoke-static {v2}, Lcom/twitter/ui/widget/TwitterButton;->a(I)I

    move-result v0

    .line 425
    if-eqz v0, :cond_0

    .line 428
    sget-object v3, Lcom/twitter/ui/widget/TwitterButton;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 430
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "h"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "drawable"

    .line 432
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 431
    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 434
    if-nez v0, :cond_3

    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 435
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Paint;I)Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 380
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 381
    return-object p0
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 410
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->aa:Landroid/graphics/Bitmap;

    .line 411
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/twitter/ui/widget/TwitterButton;->aa:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->W:Landroid/graphics/Canvas;

    .line 412
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->V:Landroid/graphics/Bitmap;

    .line 413
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/twitter/ui/widget/TwitterButton;->V:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->ab:Landroid/graphics/Canvas;

    .line 414
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    .line 195
    sget-object v0, Lcxq;->TwitterButton:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 198
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 200
    iput v6, p0, Lcom/twitter/ui/widget/TwitterButton;->F:I

    .line 201
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->isInEditMode()Z

    move-result v5

    if-nez v5, :cond_0

    .line 202
    const-string/jumbo v5, "font_size"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/ui/widget/TwitterButton;->F:I

    .line 205
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 206
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 207
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 209
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/twitter/ui/widget/TwitterButton;->r:I

    .line 210
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 211
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->b:Landroid/text/TextPaint;

    int-to-float v6, v5

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 212
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->b:Landroid/text/TextPaint;

    iget v6, p0, Lcom/twitter/ui/widget/TwitterButton;->y:I

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 213
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 214
    invoke-static {p1}, Lcom/twitter/ui/widget/ax;->a(Landroid/content/Context;)Lcom/twitter/ui/widget/ax;

    move-result-object v0

    .line 215
    iget-object v6, p0, Lcom/twitter/ui/widget/TwitterButton;->b:Landroid/text/TextPaint;

    iget-object v0, v0, Lcom/twitter/ui/widget/ax;->c:Landroid/graphics/Typeface;

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 219
    :goto_0
    iget v0, p0, Lcom/twitter/ui/widget/TwitterButton;->F:I

    add-int/lit8 v0, v0, -0x10

    int-to-float v0, v0

    mul-float/2addr v0, v3

    .line 220
    iget-object v6, p0, Lcom/twitter/ui/widget/TwitterButton;->b:Landroid/text/TextPaint;

    int-to-float v5, v5

    add-float/2addr v5, v0

    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 221
    iget v5, p0, Lcom/twitter/ui/widget/TwitterButton;->r:I

    int-to-float v5, v5

    add-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/twitter/ui/widget/TwitterButton;->r:I

    .line 223
    sget v0, Lcxq;->TwitterButton_iconAndLabelMargin:I

    invoke-virtual {v4, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/ui/widget/TwitterButton;->E:I

    .line 227
    sget v0, Lcxq;->TwitterButton_nodpiBaseIconName:I

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->H:Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->H:Ljava/lang/String;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->O:Z

    .line 229
    iget-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->O:Z

    if-eqz v0, :cond_1

    .line 230
    sget v0, Lcxq;->TwitterButton_iconSize:I

    invoke-virtual {v4, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 231
    iget-object v5, p0, Lcom/twitter/ui/widget/TwitterButton;->H:Ljava/lang/String;

    invoke-virtual {p0, v5, v0}, Lcom/twitter/ui/widget/TwitterButton;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->G:Landroid/graphics/Bitmap;

    .line 232
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->G:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->O:Z

    .line 235
    :cond_1
    invoke-direct {p0, v4, v3}, Lcom/twitter/ui/widget/TwitterButton;->a(Landroid/content/res/TypedArray;F)V

    .line 236
    invoke-virtual {p0, v2}, Lcom/twitter/ui/widget/TwitterButton;->setFocusable(Z)V

    .line 238
    invoke-virtual {p0, p0}, Lcom/twitter/ui/widget/TwitterButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 239
    iput-boolean v1, p0, Lcom/twitter/ui/widget/TwitterButton;->v:Z

    .line 240
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    invoke-virtual {p0, v2}, Lcom/twitter/ui/widget/TwitterButton;->setEnabled(Z)V

    .line 244
    :cond_2
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 245
    return-void

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->b:Landroid/text/TextPaint;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v6, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    :cond_4
    move v0, v2

    .line 228
    goto :goto_1

    :cond_5
    move v0, v2

    .line 232
    goto :goto_2

    .line 205
    :array_0
    .array-data 4
        0x1010095
        0x1010155
    .end array-data
.end method

.method private a(Landroid/content/res/TypedArray;F)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 282
    sget v0, Lcxq;->TwitterButton_fillColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/ui/widget/TwitterButton;->k:I

    .line 283
    sget v0, Lcxq;->TwitterButton_fillPressedColor:I

    iget v3, p0, Lcom/twitter/ui/widget/TwitterButton;->k:I

    .line 284
    invoke-direct {p0, v3}, Lcom/twitter/ui/widget/TwitterButton;->b(I)I

    move-result v3

    .line 283
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/ui/widget/TwitterButton;->l:I

    .line 285
    sget v0, Lcxq;->TwitterButton_strokeColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/ui/widget/TwitterButton;->m:I

    .line 286
    sget v0, Lcxq;->TwitterButton_strokePressedColor:I

    iget v3, p0, Lcom/twitter/ui/widget/TwitterButton;->m:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/ui/widget/TwitterButton;->n:I

    .line 288
    sget v0, Lcxq;->TwitterButton_cornerRadius:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/ui/widget/TwitterButton;->p:I

    .line 289
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->x:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 290
    sget v3, Lcxq;->TwitterButton_bounded:I

    invoke-direct {p0}, Lcom/twitter/ui/widget/TwitterButton;->d()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->u:Z

    .line 291
    iget-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->u:Z

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->x:Landroid/graphics/Paint;

    iget v3, p0, Lcom/twitter/ui/widget/TwitterButton;->m:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    :goto_1
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/twitter/ui/widget/TwitterButton;->t:F

    .line 297
    iget v0, p0, Lcom/twitter/ui/widget/TwitterButton;->s:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/twitter/ui/widget/TwitterButton;->s:I

    .line 300
    sget v0, Lcxq;->TwitterButton_labelColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/ui/widget/TwitterButton;->y:I

    .line 301
    sget v0, Lcxq;->TwitterButton_labelPressedColor:I

    iget v3, p0, Lcom/twitter/ui/widget/TwitterButton;->y:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/ui/widget/TwitterButton;->z:I

    .line 303
    sget v0, Lcxq;->TwitterButton_labelMargin:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/ui/widget/TwitterButton;->C:I

    .line 306
    sget v0, Lcxq;->TwitterButton_iconCanBeFlipped:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->M:Z

    .line 307
    sget v0, Lcxq;->TwitterButton_iconColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/ui/widget/TwitterButton;->I:I

    .line 308
    sget v0, Lcxq;->TwitterButton_iconPressedColor:I

    iget v1, p0, Lcom/twitter/ui/widget/TwitterButton;->I:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/ui/widget/TwitterButton;->J:I

    .line 309
    sget v0, Lcxq;->TwitterButton_iconMargin:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/ui/widget/TwitterButton;->T:I

    .line 310
    sget v0, Lcxq;->TwitterButton_iconLayout:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 311
    invoke-direct {p0, v0}, Lcom/twitter/ui/widget/TwitterButton;->setIconLayout(I)V

    .line 314
    sget v0, Lcxq;->TwitterButton_knockout:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->ac:Z

    .line 315
    iget-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->ac:Z

    if-eqz v0, :cond_0

    .line 316
    invoke-direct {p0}, Lcom/twitter/ui/widget/TwitterButton;->e()V

    .line 318
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 290
    goto :goto_0

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->x:Landroid/graphics/Paint;

    iget v3, p0, Lcom/twitter/ui/widget/TwitterButton;->k:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1
.end method

.method private b(I)I
    .locals 4

    .prologue
    .line 385
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    .line 386
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4d

    .line 387
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 391
    :goto_0
    return p1

    .line 389
    :cond_0
    const-wide v0, -0x402ccccccccccccdL    # -0.3

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->a(ID)I

    goto :goto_0
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 375
    iget v0, p0, Lcom/twitter/ui/widget/TwitterButton;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/twitter/ui/widget/TwitterButton;->k:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 403
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->U:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->U:Landroid/graphics/Paint;

    .line 405
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->U:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 407
    :cond_0
    return-void
.end method

.method private getIconHeight()I
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getIconWidth()I
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setIconLayout(I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 321
    packed-switch p1, :pswitch_data_0

    .line 336
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/a;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->Q:Z

    .line 340
    :goto_1
    return-void

    .line 323
    :pswitch_0
    iput-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->Q:Z

    goto :goto_1

    .line 327
    :pswitch_1
    iput-boolean v1, p0, Lcom/twitter/ui/widget/TwitterButton;->Q:Z

    goto :goto_1

    .line 331
    :pswitch_2
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/a;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->Q:Z

    goto :goto_1

    :cond_0
    move v0, v1

    .line 336
    goto :goto_0

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 527
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 528
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 530
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 249
    if-eqz p1, :cond_1

    .line 250
    iget v0, p0, Lcom/twitter/ui/widget/TwitterButton;->F:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/twitter/ui/widget/TwitterButton;->F:I

    add-int/lit8 v0, v0, -0x10

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    .line 251
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    :goto_0
    iput v0, p0, Lcom/twitter/ui/widget/TwitterButton;->L:I

    .line 252
    iget v0, p0, Lcom/twitter/ui/widget/TwitterButton;->L:I

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/ui/widget/TwitterButton;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 255
    :goto_1
    return-object v0

    .line 251
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 255
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 730
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->e:Ljava/lang/String;

    iget v1, p0, Lcom/twitter/ui/widget/TwitterButton;->c:F

    iget v2, p0, Lcom/twitter/ui/widget/TwitterButton;->d:F

    iget-object v3, p0, Lcom/twitter/ui/widget/TwitterButton;->b:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 731
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->O:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->P:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->M:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->G:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->G:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/twitter/ui/widget/TwitterButton;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->G:Landroid/graphics/Bitmap;

    .line 515
    iget-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->N:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->N:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method c()Z
    .locals 1

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->N:Z

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 695
    iget v1, p0, Lcom/twitter/ui/widget/TwitterButton;->p:I

    .line 696
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->f()V

    .line 697
    invoke-direct {p0}, Lcom/twitter/ui/widget/TwitterButton;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->u:Z

    if-eqz v0, :cond_2

    .line 698
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->ac:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->W:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    .line 699
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/twitter/ui/widget/TwitterButton;->a(II)V

    .line 701
    :cond_1
    iget-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->ac:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->W:Landroid/graphics/Canvas;

    .line 702
    :goto_0
    iget-object v2, p0, Lcom/twitter/ui/widget/TwitterButton;->w:Landroid/graphics/RectF;

    int-to-float v3, v1

    int-to-float v4, v1

    iget-object v5, p0, Lcom/twitter/ui/widget/TwitterButton;->x:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 703
    iget-boolean v2, p0, Lcom/twitter/ui/widget/TwitterButton;->u:Z

    if-eqz v2, :cond_2

    .line 706
    iget-object v2, p0, Lcom/twitter/ui/widget/TwitterButton;->x:Landroid/graphics/Paint;

    iget v3, p0, Lcom/twitter/ui/widget/TwitterButton;->o:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 707
    iget-object v2, p0, Lcom/twitter/ui/widget/TwitterButton;->x:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 708
    iget-object v2, p0, Lcom/twitter/ui/widget/TwitterButton;->w:Landroid/graphics/RectF;

    int-to-float v3, v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/twitter/ui/widget/TwitterButton;->x:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 712
    :cond_2
    iget-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->ac:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->ab:Landroid/graphics/Canvas;

    .line 713
    :goto_1
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 714
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lcom/twitter/ui/widget/TwitterButton;->R:F

    iget v3, p0, Lcom/twitter/ui/widget/TwitterButton;->S:F

    iget-object v4, p0, Lcom/twitter/ui/widget/TwitterButton;->K:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 716
    :cond_3
    iget-boolean v1, p0, Lcom/twitter/ui/widget/TwitterButton;->ac:Z

    if-eqz v1, :cond_4

    .line 717
    iget-object v1, p0, Lcom/twitter/ui/widget/TwitterButton;->ab:Landroid/graphics/Canvas;

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 719
    :cond_4
    iget-boolean v1, p0, Lcom/twitter/ui/widget/TwitterButton;->B:Z

    if-eqz v1, :cond_5

    .line 720
    invoke-virtual {p0, v0}, Lcom/twitter/ui/widget/TwitterButton;->a(Landroid/graphics/Canvas;)V

    .line 723
    :cond_5
    iget-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->ac:Z

    if-eqz v0, :cond_6

    .line 724
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->W:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/twitter/ui/widget/TwitterButton;->V:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/twitter/ui/widget/TwitterButton;->U:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 725
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->aa:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 727
    :cond_6
    return-void

    :cond_7
    move-object v0, p1

    .line 701
    goto :goto_0

    :cond_8
    move-object v0, p1

    .line 712
    goto :goto_1
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->f:Z

    if-eqz v0, :cond_0

    .line 492
    iget v0, p0, Lcom/twitter/ui/widget/TwitterButton;->n:I

    iput v0, p0, Lcom/twitter/ui/widget/TwitterButton;->o:I

    .line 493
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->x:Landroid/graphics/Paint;

    iget v1, p0, Lcom/twitter/ui/widget/TwitterButton;->l:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 494
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->b:Landroid/text/TextPaint;

    iget v1, p0, Lcom/twitter/ui/widget/TwitterButton;->z:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 495
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->K:Landroid/graphics/Paint;

    iget v1, p0, Lcom/twitter/ui/widget/TwitterButton;->J:I

    invoke-static {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->a(Landroid/graphics/Paint;I)Landroid/graphics/Paint;

    .line 502
    :goto_0
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->x:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 503
    return-void

    .line 497
    :cond_0
    iget v0, p0, Lcom/twitter/ui/widget/TwitterButton;->m:I

    iput v0, p0, Lcom/twitter/ui/widget/TwitterButton;->o:I

    .line 498
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->x:Landroid/graphics/Paint;

    iget v1, p0, Lcom/twitter/ui/widget/TwitterButton;->k:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 499
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->b:Landroid/text/TextPaint;

    iget v1, p0, Lcom/twitter/ui/widget/TwitterButton;->y:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 500
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->K:Landroid/graphics/Paint;

    iget v1, p0, Lcom/twitter/ui/widget/TwitterButton;->I:I

    invoke-static {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->a(Landroid/graphics/Paint;I)Landroid/graphics/Paint;

    goto :goto_0
.end method

.method getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->G:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 624
    iget v1, p0, Lcom/twitter/ui/widget/TwitterButton;->q:I

    .line 625
    iget v2, p0, Lcom/twitter/ui/widget/TwitterButton;->r:I

    .line 626
    iget-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->Q:Z

    .line 628
    iget-boolean v3, p0, Lcom/twitter/ui/widget/TwitterButton;->u:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/twitter/ui/widget/TwitterButton;->f:Z

    if-nez v3, :cond_0

    .line 632
    iget-object v3, p0, Lcom/twitter/ui/widget/TwitterButton;->w:Landroid/graphics/RectF;

    iget v4, p0, Lcom/twitter/ui/widget/TwitterButton;->t:F

    div-float/2addr v4, v7

    iget v5, p0, Lcom/twitter/ui/widget/TwitterButton;->t:F

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 635
    :cond_0
    iget-boolean v3, p0, Lcom/twitter/ui/widget/TwitterButton;->B:Z

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 636
    invoke-direct {p0}, Lcom/twitter/ui/widget/TwitterButton;->getIconWidth()I

    move-result v3

    sub-int v3, v1, v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iput v3, p0, Lcom/twitter/ui/widget/TwitterButton;->R:F

    .line 649
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->a()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 650
    if-eqz v0, :cond_5

    .line 651
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->b:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 652
    iget v0, p0, Lcom/twitter/ui/widget/TwitterButton;->T:I

    invoke-direct {p0}, Lcom/twitter/ui/widget/TwitterButton;->getIconWidth()I

    move-result v3

    add-int/2addr v0, v3

    iget v3, p0, Lcom/twitter/ui/widget/TwitterButton;->E:I

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/twitter/ui/widget/TwitterButton;->A:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p0, Lcom/twitter/ui/widget/TwitterButton;->c:F

    .line 669
    :goto_1
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->b:Landroid/text/TextPaint;

    const-string/jumbo v3, "X"

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/twitter/ui/widget/TwitterButton;->D:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 670
    int-to-float v0, v2

    div-float/2addr v0, v7

    iget-object v3, p0, Lcom/twitter/ui/widget/TwitterButton;->D:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    iput v0, p0, Lcom/twitter/ui/widget/TwitterButton;->d:F

    .line 671
    int-to-float v0, v2

    div-float/2addr v0, v7

    invoke-direct {p0}, Lcom/twitter/ui/widget/TwitterButton;->getIconHeight()I

    move-result v2

    iget v3, p0, Lcom/twitter/ui/widget/TwitterButton;->L:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v7

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/twitter/ui/widget/TwitterButton;->S:F

    .line 679
    iget-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->j:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->B:Z

    if-eqz v0, :cond_2

    .line 680
    iget v0, p0, Lcom/twitter/ui/widget/TwitterButton;->i:I

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    .line 681
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 682
    iget v1, p0, Lcom/twitter/ui/widget/TwitterButton;->c:F

    int-to-float v2, v0

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/twitter/ui/widget/TwitterButton;->c:F

    .line 683
    iget v1, p0, Lcom/twitter/ui/widget/TwitterButton;->R:F

    int-to-float v0, v0

    sub-float v0, v1, v0

    iput v0, p0, Lcom/twitter/ui/widget/TwitterButton;->R:F

    .line 689
    :cond_2
    :goto_2
    return-void

    .line 637
    :cond_3
    if-eqz v0, :cond_4

    .line 638
    iget v3, p0, Lcom/twitter/ui/widget/TwitterButton;->T:I

    int-to-float v3, v3

    iput v3, p0, Lcom/twitter/ui/widget/TwitterButton;->R:F

    .line 639
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 640
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->b()V

    goto/16 :goto_0

    .line 643
    :cond_4
    iget v3, p0, Lcom/twitter/ui/widget/TwitterButton;->T:I

    sub-int v3, v1, v3

    invoke-direct {p0}, Lcom/twitter/ui/widget/TwitterButton;->getIconWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/twitter/ui/widget/TwitterButton;->R:F

    .line 644
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->c()Z

    move-result v3

    if-nez v3, :cond_1

    .line 645
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->b()V

    goto/16 :goto_0

    .line 654
    :cond_5
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->b:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 655
    iget v0, p0, Lcom/twitter/ui/widget/TwitterButton;->T:I

    sub-int v0, v1, v0

    invoke-direct {p0}, Lcom/twitter/ui/widget/TwitterButton;->getIconWidth()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/twitter/ui/widget/TwitterButton;->E:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p0, Lcom/twitter/ui/widget/TwitterButton;->c:F

    goto/16 :goto_1

    .line 658
    :cond_6
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->e:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->b:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/twitter/ui/widget/TwitterButton;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 663
    :goto_3
    int-to-float v3, v1

    div-float/2addr v3, v7

    iget-object v4, p0, Lcom/twitter/ui/widget/TwitterButton;->A:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/twitter/ui/widget/TwitterButton;->A:Landroid/graphics/Rect;

    .line 664
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    div-float/2addr v0, v7

    add-float/2addr v0, v3

    iput v0, p0, Lcom/twitter/ui/widget/TwitterButton;->c:F

    goto/16 :goto_1

    .line 658
    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    .line 685
    :cond_8
    iget v1, p0, Lcom/twitter/ui/widget/TwitterButton;->c:F

    int-to-float v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/twitter/ui/widget/TwitterButton;->c:F

    .line 686
    iget v1, p0, Lcom/twitter/ui/widget/TwitterButton;->R:F

    int-to-float v0, v0

    add-float/2addr v0, v1

    iput v0, p0, Lcom/twitter/ui/widget/TwitterButton;->R:F

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v11, -0x80000000

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 545
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 548
    iget v3, p0, Lcom/twitter/ui/widget/TwitterButton;->r:I

    .line 550
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 551
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 552
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 553
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 555
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->B:Z

    .line 556
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->b:Landroid/text/TextPaint;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, p0, Lcom/twitter/ui/widget/TwitterButton;->A:Landroid/graphics/Rect;

    invoke-virtual {v0, v5, v1, v8, v9}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 557
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->A:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 562
    iget-boolean v8, p0, Lcom/twitter/ui/widget/TwitterButton;->B:Z

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->a()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 563
    iget v8, p0, Lcom/twitter/ui/widget/TwitterButton;->T:I

    invoke-direct {p0}, Lcom/twitter/ui/widget/TwitterButton;->getIconWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/twitter/ui/widget/TwitterButton;->E:I

    add-int/2addr v8, v9

    add-int/2addr v0, v8

    iget v8, p0, Lcom/twitter/ui/widget/TwitterButton;->C:I

    add-int/2addr v0, v8

    .line 572
    :goto_1
    iput v0, p0, Lcom/twitter/ui/widget/TwitterButton;->i:I

    .line 575
    if-ne v6, v12, :cond_3

    .line 577
    iput-boolean v1, p0, Lcom/twitter/ui/widget/TwitterButton;->j:Z

    .line 585
    :goto_2
    if-ne v7, v12, :cond_5

    .line 594
    :goto_3
    iget-boolean v3, p0, Lcom/twitter/ui/widget/TwitterButton;->B:Z

    if-eqz v3, :cond_8

    if-ge v4, v0, :cond_8

    .line 596
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 597
    iget v0, p0, Lcom/twitter/ui/widget/TwitterButton;->T:I

    invoke-direct {p0}, Lcom/twitter/ui/widget/TwitterButton;->getIconWidth()I

    move-result v3

    add-int/2addr v0, v3

    iget v3, p0, Lcom/twitter/ui/widget/TwitterButton;->E:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/twitter/ui/widget/TwitterButton;->C:I

    add-int/2addr v0, v3

    sub-int v0, v4, v0

    .line 601
    :goto_4
    iget-object v3, p0, Lcom/twitter/ui/widget/TwitterButton;->b:Landroid/text/TextPaint;

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v6

    invoke-static {v5, v3, v0, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->e:Ljava/lang/String;

    .line 602
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->b:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/twitter/ui/widget/TwitterButton;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/ui/widget/TwitterButton;->e:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/twitter/ui/widget/TwitterButton;->A:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v1, v5, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 607
    :goto_5
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->w:Landroid/graphics/RectF;

    int-to-float v1, v4

    int-to-float v3, v2

    invoke-virtual {v0, v10, v10, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 608
    invoke-virtual {p0, v4, v2}, Lcom/twitter/ui/widget/TwitterButton;->setMeasuredDimension(II)V

    .line 609
    iput v4, p0, Lcom/twitter/ui/widget/TwitterButton;->q:I

    .line 610
    return-void

    :cond_0
    move v0, v1

    .line 555
    goto :goto_0

    .line 565
    :cond_1
    iget-boolean v8, p0, Lcom/twitter/ui/widget/TwitterButton;->B:Z

    if-eqz v8, :cond_2

    .line 566
    iget-object v8, p0, Lcom/twitter/ui/widget/TwitterButton;->b:Landroid/text/TextPaint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 567
    iget v8, p0, Lcom/twitter/ui/widget/TwitterButton;->C:I

    add-int/2addr v0, v8

    iget v8, p0, Lcom/twitter/ui/widget/TwitterButton;->C:I

    add-int/2addr v0, v8

    goto :goto_1

    .line 568
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 569
    iget v0, p0, Lcom/twitter/ui/widget/TwitterButton;->T:I

    invoke-direct {p0}, Lcom/twitter/ui/widget/TwitterButton;->getIconWidth()I

    move-result v8

    add-int/2addr v0, v8

    iget v8, p0, Lcom/twitter/ui/widget/TwitterButton;->T:I

    add-int/2addr v0, v8

    goto :goto_1

    .line 578
    :cond_3
    if-ne v6, v11, :cond_4

    .line 579
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_2

    :cond_4
    move v4, v0

    .line 581
    goto :goto_2

    .line 587
    :cond_5
    if-ne v7, v11, :cond_6

    .line 588
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_3

    :cond_6
    move v2, v3

    .line 590
    goto :goto_3

    .line 599
    :cond_7
    iget v0, p0, Lcom/twitter/ui/widget/TwitterButton;->C:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v4, v0

    goto :goto_4

    .line 604
    :cond_8
    iput-object v5, p0, Lcom/twitter/ui/widget/TwitterButton;->e:Ljava/lang/String;

    goto :goto_5

    :cond_9
    move v0, v1

    goto/16 :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 614
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onSizeChanged(IIII)V

    .line 617
    iget-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->ac:Z

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 618
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/twitter/ui/widget/TwitterButton;->a(II)V

    .line 620
    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 442
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 469
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->f()V

    .line 470
    return v2

    .line 444
    :pswitch_0
    iput-boolean v1, p0, Lcom/twitter/ui/widget/TwitterButton;->f:Z

    .line 445
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->invalidate()V

    goto :goto_0

    .line 450
    :pswitch_1
    iput-boolean v2, p0, Lcom/twitter/ui/widget/TwitterButton;->f:Z

    .line 451
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->invalidate()V

    goto :goto_0

    .line 455
    :pswitch_2
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->h:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 456
    iget-object v0, p0, Lcom/twitter/ui/widget/TwitterButton;->h:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    .line 457
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    .line 456
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 458
    :goto_1
    iget-boolean v3, p0, Lcom/twitter/ui/widget/TwitterButton;->f:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    xor-int/2addr v0, v3

    .line 459
    if-eqz v0, :cond_0

    .line 460
    iget-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->f:Z

    if-nez v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/twitter/ui/widget/TwitterButton;->f:Z

    .line 461
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->invalidate()V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 456
    goto :goto_1

    :cond_2
    move v0, v2

    .line 458
    goto :goto_2

    :cond_3
    move v1, v2

    .line 460
    goto :goto_3

    .line 442
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setButtonAppearance(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 366
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcxq;->TwitterButton:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 368
    invoke-direct {p0, v1, v0}, Lcom/twitter/ui/widget/TwitterButton;->a(Landroid/content/res/TypedArray;F)V

    .line 370
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->invalidate()V

    .line 371
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 372
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 344
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 345
    iget-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->v:Z

    if-eqz v0, :cond_0

    .line 346
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/twitter/ui/widget/TwitterButton;->setAlpha(F)V

    .line 347
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->invalidate()V

    .line 349
    :cond_0
    return-void

    .line 346
    :cond_1
    const v0, 0x3f19999a    # 0.6f

    goto :goto_0
.end method

.method public setKnockout(Z)V
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->ac:Z

    if-eq v0, p1, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/twitter/ui/widget/TwitterButton;->e()V

    .line 354
    iput-boolean p1, p0, Lcom/twitter/ui/widget/TwitterButton;->ac:Z

    .line 355
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->invalidate()V

    .line 357
    :cond_0
    return-void
.end method

.method public setShowIcon(Z)V
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->O:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/ui/widget/TwitterButton;->P:Z

    if-eq v0, p1, :cond_0

    .line 481
    iput-boolean p1, p0, Lcom/twitter/ui/widget/TwitterButton;->P:Z

    .line 482
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->invalidate()V

    .line 484
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .prologue
    .line 538
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 539
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->requestLayout()V

    .line 540
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TwitterButton;->invalidate()V

    .line 541
    return-void
.end method
