.class Ltv/periscope/android/graphics/e;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/graphics/h;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/periscope/android/graphics/a;)V
    .locals 0

    .prologue
    .line 693
    invoke-direct {p0}, Ltv/periscope/android/graphics/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;)Landroid/opengl/EGLSurface;
    .locals 4

    .prologue
    .line 697
    const/4 v0, 0x0

    .line 699
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x3038

    aput v3, v1, v2

    .line 700
    const/4 v2, 0x0

    invoke-static {p1, p2, p3, v1, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 710
    :goto_0
    return-object v0

    .line 701
    :catch_0
    move-exception v1

    .line 708
    const-string/jumbo v2, "GLRenderView"

    const-string/jumbo v3, "eglCreateWindowSurface"

    invoke-static {v2, v3, v1}, Ltv/periscope/android/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)V
    .locals 0

    .prologue
    .line 715
    invoke-static {p1, p2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 716
    return-void
.end method
