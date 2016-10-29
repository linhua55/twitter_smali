.class abstract Ltv/periscope/android/graphics/b;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/graphics/f;


# instance fields
.field protected a:[I

.field final synthetic b:Ltv/periscope/android/graphics/GLRenderView;


# direct methods
.method public constructor <init>(Ltv/periscope/android/graphics/GLRenderView;[I)V
    .locals 1

    .prologue
    .line 740
    iput-object p1, p0, Ltv/periscope/android/graphics/b;->b:Ltv/periscope/android/graphics/GLRenderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    invoke-direct {p0, p2}, Ltv/periscope/android/graphics/b;->a([I)[I

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/graphics/b;->a:[I

    .line 742
    return-void
.end method

.method private a([I)[I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 775
    iget-object v0, p0, Ltv/periscope/android/graphics/b;->b:Ltv/periscope/android/graphics/GLRenderView;

    invoke-static {v0}, Ltv/periscope/android/graphics/GLRenderView;->a(Ltv/periscope/android/graphics/GLRenderView;)I

    move-result v0

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Ltv/periscope/android/graphics/b;->b:Ltv/periscope/android/graphics/GLRenderView;

    invoke-static {v0}, Ltv/periscope/android/graphics/GLRenderView;->a(Ltv/periscope/android/graphics/GLRenderView;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 791
    :goto_0
    return-object p1

    .line 781
    :cond_0
    array-length v1, p1

    .line 782
    add-int/lit8 v0, v1, 0x2

    new-array v0, v0, [I

    .line 783
    add-int/lit8 v2, v1, -0x1

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 784
    add-int/lit8 v2, v1, -0x1

    const/16 v3, 0x3040

    aput v3, v0, v2

    .line 785
    iget-object v2, p0, Ltv/periscope/android/graphics/b;->b:Ltv/periscope/android/graphics/GLRenderView;

    invoke-static {v2}, Ltv/periscope/android/graphics/GLRenderView;->a(Ltv/periscope/android/graphics/GLRenderView;)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 786
    const/4 v2, 0x4

    aput v2, v0, v1

    .line 790
    :goto_1
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x3038

    aput v2, v0, v1

    move-object p1, v0

    .line 791
    goto :goto_0

    .line 788
    :cond_1
    const/16 v2, 0x40

    aput v2, v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 745
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 746
    iget-object v1, p0, Ltv/periscope/android/graphics/b;->a:[I

    const/4 v3, 0x0

    move-object v0, p1

    move v4, v2

    move v5, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 747
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_0
    aget v5, v6, v2

    .line 752
    if-gtz v5, :cond_1

    .line 753
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 757
    :cond_1
    new-array v3, v5, [Landroid/opengl/EGLConfig;

    .line 758
    iget-object v1, p0, Ltv/periscope/android/graphics/b;->a:[I

    move-object v0, p1

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 760
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 762
    :cond_2
    invoke-virtual {p0, p1, v3}, Ltv/periscope/android/graphics/b;->a(Landroid/opengl/EGLDisplay;[Landroid/opengl/EGLConfig;)Landroid/opengl/EGLConfig;

    move-result-object v0

    .line 763
    if-nez v0, :cond_3

    .line 764
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No config chosen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_3
    return-object v0
.end method

.method abstract a(Landroid/opengl/EGLDisplay;[Landroid/opengl/EGLConfig;)Landroid/opengl/EGLConfig;
.end method
