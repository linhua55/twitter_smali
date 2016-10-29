.class public Ltv/periscope/android/view/ag;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static a:Z


# instance fields
.field private final b:Lcom/google/android/gms/maps/MapView;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Ltv/periscope/android/view/ag;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/MapView;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Ltv/periscope/android/view/ag;->b:Lcom/google/android/gms/maps/MapView;

    .line 23
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Ltv/periscope/android/view/ag;->c:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Ltv/periscope/android/view/ag;->b:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->a()V

    .line 44
    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/maps/v;)V
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Ltv/periscope/android/view/ag;->c:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Ltv/periscope/android/view/ag;->b:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapView;->a(Lcom/google/android/gms/maps/v;)V

    .line 74
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 27
    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/view/ag;->b:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapView;->a(Landroid/os/Bundle;)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/view/ag;->c:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    iget-boolean v0, p0, Ltv/periscope/android/view/ag;->c:Z

    return v0

    .line 29
    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "Failed to initialize map view"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lh;->a(Ljava/lang/Throwable;)V

    .line 34
    sput-boolean v3, Ltv/periscope/android/view/ag;->a:Z

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/view/ag;->c:Z

    goto :goto_0
.end method

.method public b()Lcom/google/android/gms/maps/MapView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Ltv/periscope/android/view/ag;->b:Lcom/google/android/gms/maps/MapView;

    return-object v0
.end method
