.class public abstract Lcom/twitter/util/ak;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:F

.field private static b:I

.field private static c:F

.field private static d:F

.field private static e:F

.field private static f:Z

.field private static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 21
    sput v1, Lcom/twitter/util/ak;->a:F

    .line 22
    const/16 v0, 0xa0

    sput v0, Lcom/twitter/util/ak;->b:I

    .line 23
    sput v1, Lcom/twitter/util/ak;->c:F

    return-void
.end method

.method public static a(F)I
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/twitter/util/ak;->b()F

    move-result v0

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/twitter/util/ak;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 39
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/twitter/util/ak;->a:F

    .line 40
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v1, Lcom/twitter/util/ak;->b:I

    .line 41
    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v0, Lcom/twitter/util/ak;->c:F

    .line 42
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/twitter/util/ak;->d:F

    .line 43
    invoke-static {}, Lcom/twitter/util/ak;->e()F

    move-result v0

    invoke-static {}, Lcom/twitter/util/ak;->e()F

    move-result v1

    mul-float/2addr v0, v1

    sput v0, Lcom/twitter/util/ak;->e:F

    .line 44
    invoke-static {p0}, Lcom/twitter/util/a;->a(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/twitter/util/ak;->f:Z

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/util/ak;->g:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 86
    sput-boolean p0, Lcom/twitter/util/ak;->f:Z

    .line 87
    return-void
.end method

.method public static b()F
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/twitter/util/ak;->a:F

    return v0
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/twitter/util/ak;->b:I

    return v0
.end method

.method public static d()F
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/twitter/util/ak;->c:F

    return v0
.end method

.method public static e()F
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/twitter/util/ak;->d:F

    return v0
.end method

.method public static f()F
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/twitter/util/ak;->e:F

    return v0
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/twitter/util/ak;->f:Z

    return v0
.end method
