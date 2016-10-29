.class Ltv/periscope/android/graphics/c;
.super Ltv/periscope/android/graphics/b;
.source "Twttr"


# instance fields
.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field final synthetic i:Ltv/periscope/android/graphics/GLRenderView;

.field private j:[I


# direct methods
.method public constructor <init>(Ltv/periscope/android/graphics/GLRenderView;IIIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 801
    iput-object p1, p0, Ltv/periscope/android/graphics/c;->i:Ltv/periscope/android/graphics/GLRenderView;

    .line 802
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    aput p2, v0, v3

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p3, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x3022

    aput v2, v0, v1

    const/4 v1, 0x5

    aput p4, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3021

    aput v2, v0, v1

    const/4 v1, 0x7

    aput p5, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0x9

    aput p6, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xb

    aput p7, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3038

    aput v2, v0, v1

    invoke-direct {p0, p1, v0}, Ltv/periscope/android/graphics/b;-><init>(Ltv/periscope/android/graphics/GLRenderView;[I)V

    .line 810
    new-array v0, v3, [I

    iput-object v0, p0, Ltv/periscope/android/graphics/c;->j:[I

    .line 811
    iput p2, p0, Ltv/periscope/android/graphics/c;->c:I

    .line 812
    iput p3, p0, Ltv/periscope/android/graphics/c;->d:I

    .line 813
    iput p4, p0, Ltv/periscope/android/graphics/c;->e:I

    .line 814
    iput p5, p0, Ltv/periscope/android/graphics/c;->f:I

    .line 815
    iput p6, p0, Ltv/periscope/android/graphics/c;->g:I

    .line 816
    iput p7, p0, Ltv/periscope/android/graphics/c;->h:I

    .line 817
    return-void
.end method

.method private a(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 848
    iget-object v0, p0, Ltv/periscope/android/graphics/c;->j:[I

    invoke-static {p1, p2, p3, v0, v1}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Ltv/periscope/android/graphics/c;->j:[I

    aget p4, v0, v1

    .line 851
    :cond_0
    return p4
.end method


# virtual methods
.method public a(Landroid/opengl/EGLDisplay;[Landroid/opengl/EGLConfig;)Landroid/opengl/EGLConfig;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 822
    array-length v3, p2

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p2, v1

    .line 823
    const/16 v4, 0x3025

    invoke-direct {p0, p1, v0, v4, v2}, Ltv/periscope/android/graphics/c;->a(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I

    move-result v4

    .line 825
    const/16 v5, 0x3026

    invoke-direct {p0, p1, v0, v5, v2}, Ltv/periscope/android/graphics/c;->a(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I

    move-result v5

    .line 827
    iget v6, p0, Ltv/periscope/android/graphics/c;->g:I

    if-lt v4, v6, :cond_0

    iget v4, p0, Ltv/periscope/android/graphics/c;->h:I

    if-lt v5, v4, :cond_0

    .line 828
    const/16 v4, 0x3024

    invoke-direct {p0, p1, v0, v4, v2}, Ltv/periscope/android/graphics/c;->a(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I

    move-result v4

    .line 830
    const/16 v5, 0x3023

    invoke-direct {p0, p1, v0, v5, v2}, Ltv/periscope/android/graphics/c;->a(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I

    move-result v5

    .line 832
    const/16 v6, 0x3022

    invoke-direct {p0, p1, v0, v6, v2}, Ltv/periscope/android/graphics/c;->a(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I

    move-result v6

    .line 834
    const/16 v7, 0x3021

    invoke-direct {p0, p1, v0, v7, v2}, Ltv/periscope/android/graphics/c;->a(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I

    move-result v7

    .line 836
    iget v8, p0, Ltv/periscope/android/graphics/c;->c:I

    if-ne v4, v8, :cond_0

    iget v4, p0, Ltv/periscope/android/graphics/c;->d:I

    if-ne v5, v4, :cond_0

    iget v4, p0, Ltv/periscope/android/graphics/c;->e:I

    if-ne v6, v4, :cond_0

    iget v4, p0, Ltv/periscope/android/graphics/c;->f:I

    if-ne v7, v4, :cond_0

    .line 842
    :goto_1
    return-object v0

    .line 822
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 842
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
