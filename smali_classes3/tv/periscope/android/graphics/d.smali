.class Ltv/periscope/android/graphics/d;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/graphics/g;


# instance fields
.field final synthetic a:Ltv/periscope/android/graphics/GLRenderView;

.field private b:I


# direct methods
.method private constructor <init>(Ltv/periscope/android/graphics/GLRenderView;)V
    .locals 1

    .prologue
    .line 655
    iput-object p1, p0, Ltv/periscope/android/graphics/d;->a:Ltv/periscope/android/graphics/GLRenderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    const/16 v0, 0x3098

    iput v0, p0, Ltv/periscope/android/graphics/d;->b:I

    return-void
.end method

.method synthetic constructor <init>(Ltv/periscope/android/graphics/GLRenderView;Ltv/periscope/android/graphics/a;)V
    .locals 0

    .prologue
    .line 655
    invoke-direct {p0, p1}, Ltv/periscope/android/graphics/d;-><init>(Ltv/periscope/android/graphics/GLRenderView;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 659
    const/4 v0, 0x3

    new-array v0, v0, [I

    iget v1, p0, Ltv/periscope/android/graphics/d;->b:I

    aput v1, v0, v3

    const/4 v1, 0x1

    iget-object v2, p0, Ltv/periscope/android/graphics/d;->a:Ltv/periscope/android/graphics/GLRenderView;

    invoke-static {v2}, Ltv/periscope/android/graphics/GLRenderView;->a(Ltv/periscope/android/graphics/GLRenderView;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 662
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iget-object v2, p0, Ltv/periscope/android/graphics/d;->a:Ltv/periscope/android/graphics/GLRenderView;

    .line 663
    invoke-static {v2}, Ltv/periscope/android/graphics/GLRenderView;->a(Ltv/periscope/android/graphics/GLRenderView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 662
    :goto_0
    invoke-static {p1, p2, v1, v0, v3}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    return-object v0

    .line 663
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)V
    .locals 3

    .prologue
    .line 668
    invoke-static {p1, p2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    const-string/jumbo v0, "DefaultContextFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string/jumbo v0, "eglDestroyContex"

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-static {v0, v1}, Ltv/periscope/android/graphics/i;->a(Ljava/lang/String;I)V

    .line 675
    :cond_0
    return-void
.end method
