.class public Ltv/periscope/android/util/h;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static volatile a:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 90
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Don\'t blur on the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    invoke-static {p0}, Ltv/periscope/android/util/h;->a(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v4

    .line 100
    :try_start_0
    sget-object v2, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v3, 0x1

    invoke-static {v4, p1, v2, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 102
    :try_start_1
    invoke-static {v4, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 103
    :try_start_2
    invoke-static {v4}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    .line 104
    int-to-float v4, p2

    invoke-virtual {v1, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 105
    invoke-virtual {v1, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 106
    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 107
    invoke-virtual {v2, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 109
    if-eqz v3, :cond_1

    .line 110
    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    .line 112
    :cond_1
    if-eqz v2, :cond_2

    .line 113
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    .line 115
    :cond_2
    if-eqz v1, :cond_3

    .line 116
    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 119
    :cond_3
    return-object v0

    .line 109
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_4

    .line 110
    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    .line 112
    :cond_4
    if-eqz v2, :cond_5

    .line 113
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    .line 115
    :cond_5
    if-eqz v1, :cond_6

    .line 116
    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    :cond_6
    throw v0

    .line 109
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_0

    :catchall_2
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 67
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 69
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 70
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 74
    :cond_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;)Landroid/renderscript/RenderScript;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Ltv/periscope/android/util/h;->a:Landroid/renderscript/RenderScript;

    if-nez v0, :cond_1

    .line 36
    const-class v1, Ltv/periscope/android/util/h;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Ltv/periscope/android/util/h;->a:Landroid/renderscript/RenderScript;

    if-nez v0, :cond_0

    .line 38
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    sput-object v0, Ltv/periscope/android/util/h;->a:Landroid/renderscript/RenderScript;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v0, Ltv/periscope/android/util/h;->a:Landroid/renderscript/RenderScript;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;FILtv/periscope/android/util/k;)V
    .locals 6

    .prologue
    .line 124
    new-instance v0, Ltv/periscope/android/util/i;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/util/i;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;FILtv/periscope/android/util/k;)V

    invoke-virtual {v0}, Ltv/periscope/android/util/i;->start()V

    .line 125
    return-void
.end method
