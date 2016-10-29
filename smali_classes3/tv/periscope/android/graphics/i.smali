.class Ltv/periscope/android/graphics/i;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field a:Landroid/opengl/EGLDisplay;

.field b:Landroid/opengl/EGLSurface;

.field c:Landroid/opengl/EGLConfig;

.field d:Landroid/opengl/EGLContext;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ltv/periscope/android/graphics/GLRenderView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ltv/periscope/android/graphics/GLRenderView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 881
    iput-object p1, p0, Ltv/periscope/android/graphics/i;->e:Ljava/lang/ref/WeakReference;

    .line 882
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1043
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    invoke-static {p1, v0}, Ltv/periscope/android/graphics/i;->a(Ljava/lang/String;I)V

    .line 1044
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1047
    invoke-static {p0, p1}, Ltv/periscope/android/graphics/i;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1052
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1056
    invoke-static {p1, p2}, Ltv/periscope/android/graphics/i;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ltv/periscope/android/util/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    return-void
.end method

.method public static b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 1013
    iget-object v0, p0, Ltv/periscope/android/graphics/i;->b:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/periscope/android/graphics/i;->b:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_1

    .line 1014
    iget-object v0, p0, Ltv/periscope/android/graphics/i;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 1017
    iget-object v0, p0, Ltv/periscope/android/graphics/i;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/graphics/GLRenderView;

    .line 1018
    if-eqz v0, :cond_0

    .line 1019
    invoke-static {v0}, Ltv/periscope/android/graphics/GLRenderView;->d(Ltv/periscope/android/graphics/GLRenderView;)Ltv/periscope/android/graphics/h;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/graphics/i;->a:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Ltv/periscope/android/graphics/i;->b:Landroid/opengl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ltv/periscope/android/graphics/h;->a(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)V

    .line 1021
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/periscope/android/graphics/i;->b:Landroid/opengl/EGLSurface;

    .line 1023
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 895
    invoke-static {v4}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/graphics/i;->a:Landroid/opengl/EGLDisplay;

    .line 897
    iget-object v0, p0, Ltv/periscope/android/graphics/i;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 898
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 904
    :cond_0
    new-array v0, v2, [I

    .line 905
    new-array v1, v2, [I

    .line 906
    iget-object v2, p0, Ltv/periscope/android/graphics/i;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v2, v0, v4, v1, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 907
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 909
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/graphics/i;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/graphics/GLRenderView;

    .line 910
    if-nez v0, :cond_4

    .line 911
    iput-object v3, p0, Ltv/periscope/android/graphics/i;->c:Landroid/opengl/EGLConfig;

    .line 912
    iput-object v3, p0, Ltv/periscope/android/graphics/i;->d:Landroid/opengl/EGLContext;

    .line 922
    :goto_0
    iget-object v0, p0, Ltv/periscope/android/graphics/i;->d:Landroid/opengl/EGLContext;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/periscope/android/graphics/i;->d:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v1, :cond_3

    .line 923
    :cond_2
    iput-object v3, p0, Ltv/periscope/android/graphics/i;->d:Landroid/opengl/EGLContext;

    .line 924
    const-string/jumbo v0, "createContext"

    invoke-direct {p0, v0}, Ltv/periscope/android/graphics/i;->a(Ljava/lang/String;)V

    .line 930
    :cond_3
    iput-object v3, p0, Ltv/periscope/android/graphics/i;->b:Landroid/opengl/EGLSurface;

    .line 931
    return-void

    .line 914
    :cond_4
    invoke-static {v0}, Ltv/periscope/android/graphics/GLRenderView;->b(Ltv/periscope/android/graphics/GLRenderView;)Ltv/periscope/android/graphics/f;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/graphics/i;->a:Landroid/opengl/EGLDisplay;

    invoke-interface {v1, v2}, Ltv/periscope/android/graphics/f;->a(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Ltv/periscope/android/graphics/i;->c:Landroid/opengl/EGLConfig;

    .line 920
    invoke-static {v0}, Ltv/periscope/android/graphics/GLRenderView;->c(Ltv/periscope/android/graphics/GLRenderView;)Ltv/periscope/android/graphics/g;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/graphics/i;->a:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Ltv/periscope/android/graphics/i;->c:Landroid/opengl/EGLConfig;

    invoke-interface {v0, v1, v2}, Ltv/periscope/android/graphics/g;->a(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/graphics/i;->d:Landroid/opengl/EGLContext;

    goto :goto_0
.end method

.method public b()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 946
    iget-object v0, p0, Ltv/periscope/android/graphics/i;->a:Landroid/opengl/EGLDisplay;

    if-nez v0, :cond_0

    .line 947
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 949
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/graphics/i;->c:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_1

    .line 950
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "mEglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 957
    :cond_1
    invoke-direct {p0}, Ltv/periscope/android/graphics/i;->f()V

    .line 962
    iget-object v0, p0, Ltv/periscope/android/graphics/i;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/graphics/GLRenderView;

    .line 963
    if-eqz v0, :cond_4

    .line 964
    invoke-static {v0}, Ltv/periscope/android/graphics/GLRenderView;->d(Ltv/periscope/android/graphics/GLRenderView;)Ltv/periscope/android/graphics/h;

    move-result-object v2

    iget-object v3, p0, Ltv/periscope/android/graphics/i;->a:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Ltv/periscope/android/graphics/i;->c:Landroid/opengl/EGLConfig;

    .line 965
    invoke-virtual {v0}, Ltv/periscope/android/graphics/GLRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 964
    invoke-interface {v2, v3, v4, v0}, Ltv/periscope/android/graphics/h;->a(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/graphics/i;->b:Landroid/opengl/EGLSurface;

    .line 970
    :goto_0
    iget-object v0, p0, Ltv/periscope/android/graphics/i;->b:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/periscope/android/graphics/i;->b:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v2, :cond_5

    .line 971
    :cond_2
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    .line 972
    const/16 v2, 0x300b

    if-ne v0, v2, :cond_3

    .line 973
    const-string/jumbo v0, "EglHelper"

    const-string/jumbo v2, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v0, v2}, Ltv/periscope/android/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v0, v1

    .line 991
    :goto_1
    return v0

    .line 967
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/periscope/android/graphics/i;->b:Landroid/opengl/EGLSurface;

    goto :goto_0

    .line 982
    :cond_5
    iget-object v0, p0, Ltv/periscope/android/graphics/i;->a:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Ltv/periscope/android/graphics/i;->b:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Ltv/periscope/android/graphics/i;->b:Landroid/opengl/EGLSurface;

    iget-object v4, p0, Ltv/periscope/android/graphics/i;->d:Landroid/opengl/EGLContext;

    invoke-static {v0, v2, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 987
    const-string/jumbo v0, "EGLHelper"

    const-string/jumbo v2, "eglMakeCurrent"

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v3

    invoke-static {v0, v2, v3}, Ltv/periscope/android/graphics/i;->a(Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v1

    .line 988
    goto :goto_1

    .line 991
    :cond_6
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public c()I
    .locals 2

    .prologue
    .line 999
    iget-object v0, p0, Ltv/periscope/android/graphics/i;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Ltv/periscope/android/graphics/i;->b:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1000
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    .line 1002
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3000

    goto :goto_0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 1009
    invoke-direct {p0}, Ltv/periscope/android/graphics/i;->f()V

    .line 1010
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1029
    iget-object v0, p0, Ltv/periscope/android/graphics/i;->d:Landroid/opengl/EGLContext;

    if-eqz v0, :cond_1

    .line 1030
    iget-object v0, p0, Ltv/periscope/android/graphics/i;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/graphics/GLRenderView;

    .line 1031
    if-eqz v0, :cond_0

    .line 1032
    invoke-static {v0}, Ltv/periscope/android/graphics/GLRenderView;->c(Ltv/periscope/android/graphics/GLRenderView;)Ltv/periscope/android/graphics/g;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/graphics/i;->a:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Ltv/periscope/android/graphics/i;->d:Landroid/opengl/EGLContext;

    invoke-interface {v0, v1, v2}, Ltv/periscope/android/graphics/g;->a(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)V

    .line 1034
    :cond_0
    iput-object v3, p0, Ltv/periscope/android/graphics/i;->d:Landroid/opengl/EGLContext;

    .line 1036
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/graphics/i;->a:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_2

    .line 1037
    iget-object v0, p0, Ltv/periscope/android/graphics/i;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 1038
    iput-object v3, p0, Ltv/periscope/android/graphics/i;->a:Landroid/opengl/EGLDisplay;

    .line 1040
    :cond_2
    return-void
.end method
