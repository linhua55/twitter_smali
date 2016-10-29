.class public Lcom/twitter/library/util/al;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static a:F

.field public static b:Z

.field static c:Lcom/twitter/platform/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/twitter/library/util/am;

    invoke-direct {v0}, Lcom/twitter/library/util/am;-><init>()V

    sput-object v0, Lcom/twitter/library/util/al;->c:Lcom/twitter/platform/s;

    return-void
.end method

.method public static a()F
    .locals 2

    .prologue
    .line 51
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {}, Lcom/twitter/util/ak;->d()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public static a(F)F
    .locals 2

    .prologue
    .line 59
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {}, Lcom/twitter/util/ak;->d()F

    move-result v1

    mul-float/2addr v0, v1

    sub-float v0, p0, v0

    return v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 40
    sget v1, Lbju;->font_size_medium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/twitter/library/util/al;->a:F

    .line 41
    invoke-static {}, Lcom/twitter/platform/PlatformContext;->e()Lcom/twitter/platform/PlatformContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/platform/PlatformContext;->b()Lcom/twitter/platform/r;

    move-result-object v0

    .line 42
    const-string/jumbo v1, "font_size"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcom/twitter/platform/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {v1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {}, Lcom/twitter/util/ak;->d()F

    move-result v2

    mul-float/2addr v1, v2

    sput v1, Lcom/twitter/library/util/al;->a:F

    .line 46
    :cond_0
    const-string/jumbo v1, "sound_effects"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/twitter/platform/r;->a(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/twitter/library/util/al;->b:Z

    .line 47
    sget-object v1, Lcom/twitter/library/util/al;->c:Lcom/twitter/platform/s;

    invoke-interface {v0, v1}, Lcom/twitter/platform/r;->a(Lcom/twitter/platform/s;)V

    .line 48
    return-void
.end method

.method public static b()F
    .locals 2

    .prologue
    .line 55
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {}, Lcom/twitter/util/ak;->d()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method
