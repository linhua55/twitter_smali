.class public Lcom/google/android/gms/ads/internal/client/y;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/oi;
.end annotation


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/google/android/gms/ads/internal/client/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/ads/internal/client/y;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/a;->a()V

    sget-object v0, Lcom/google/android/gms/ads/internal/client/y;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    const-class v0, Lcom/google/android/gms/ads/internal/client/y;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/ads/internal/client/y;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/z;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/y;->b:Lcom/google/android/gms/ads/internal/client/z;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to instantiate ClientApi class."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/m;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/m;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/y;->b:Lcom/google/android/gms/ads/internal/client/z;

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "No client jar implementation found."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/m;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/m;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/y;->b:Lcom/google/android/gms/ads/internal/client/z;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/kc;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/ads/internal/client/al;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/y;->b:Lcom/google/android/gms/ads/internal/client/z;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/client/z;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/kc;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/ads/internal/client/al;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/kc;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/ads/internal/client/ar;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/y;->b:Lcom/google/android/gms/ads/internal/client/z;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/z;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/kc;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/ads/internal/client/ar;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/dm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/y;->b:Lcom/google/android/gms/ads/internal/client/z;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/z;->a(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/dm;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/Activity;)Lcom/google/android/gms/internal/mr;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/y;->b:Lcom/google/android/gms/ads/internal/client/z;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/client/z;->a(Landroid/app/Activity;)Lcom/google/android/gms/internal/mr;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/kc;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/ads/internal/client/ar;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/y;->b:Lcom/google/android/gms/ads/internal/client/z;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/z;->b(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/kc;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/ads/internal/client/ar;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/app/Activity;)Lcom/google/android/gms/internal/lx;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/y;->b:Lcom/google/android/gms/ads/internal/client/z;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/client/z;->b(Landroid/app/Activity;)Lcom/google/android/gms/internal/lx;

    move-result-object v0

    return-object v0
.end method
