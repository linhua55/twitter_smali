.class public final Lcom/google/android/gms/ads/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/client/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/c;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/ads/internal/client/c;

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/ads/internal/client/c;

    sget-object v1, Lcom/google/android/gms/ads/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/f;)Lcom/google/android/gms/ads/internal/client/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/ads/internal/client/c;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/ads/d;
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/d;-><init>(Lcom/google/android/gms/ads/f;Lcom/google/android/gms/ads/e;)V

    return-object v0
.end method

.method public a(I)Lcom/google/android/gms/ads/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/ads/internal/client/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/c;->a(I)V

    return-object p0
.end method

.method public a(Landroid/location/Location;)Lcom/google/android/gms/ads/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/ads/internal/client/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/c;->a(Landroid/location/Location;)V

    return-object p0
.end method

.method public a(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lhm;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/f;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/ads/internal/client/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/c;->a(Ljava/lang/Class;Landroid/os/Bundle;)V

    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "_emulatorLiveAds"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/ads/internal/client/c;

    sget-object v1, Lcom/google/android/gms/ads/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/c;->c(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/android/gms/ads/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/ads/internal/client/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/c;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Ljava/util/Date;)Lcom/google/android/gms/ads/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/ads/internal/client/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/c;->a(Ljava/util/Date;)V

    return-object p0
.end method

.method public a(Z)Lcom/google/android/gms/ads/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/ads/internal/client/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/c;->a(Z)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/android/gms/ads/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/ads/internal/client/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/c;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Z)Lcom/google/android/gms/ads/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/ads/internal/client/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/c;->b(Z)V

    return-object p0
.end method
