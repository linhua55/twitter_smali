.class public final Lcom/google/android/gms/location/places/NearbyAlertRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/h;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Lcom/google/android/gms/location/places/PlaceFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/location/places/NearbyAlertFilter;

.field private final f:Z

.field private final g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/h;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->CREATOR:Lcom/google/android/gms/location/places/h;

    return-void
.end method

.method constructor <init>(IIILcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/NearbyAlertFilter;ZII)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x6e

    iput v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->h:I

    iput p1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->a:I

    iput p2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->b:I

    iput p3, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->c:I

    if-eqz p5, :cond_0

    iput-object p5, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->e:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->d:Lcom/google/android/gms/location/places/PlaceFilter;

    iput-boolean p6, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->f:Z

    iput p7, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->g:I

    iput p8, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->h:I

    return-void

    :cond_0
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->a()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->a()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/places/NearbyAlertFilter;->a(Ljava/util/Collection;)Lcom/google/android/gms/location/places/NearbyAlertFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->e:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->b()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->b()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/places/NearbyAlertFilter;->b(Ljava/util/Collection;)Lcom/google/android/gms/location/places/NearbyAlertFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->e:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->e:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    goto :goto_0

    :cond_3
    iput-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->e:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->c:I

    return v0
.end method

.method public d()Lcom/google/android/gms/location/places/PlaceFilter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/google/android/gms/location/places/NearbyAlertFilter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->e:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->b:I

    iget v3, p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;->b:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->c:I

    iget v3, p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;->c:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->e:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    iget-object v3, p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;->e:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/bj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->h:I

    iget v3, p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;->h:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->f:Z

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->g:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->h:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->e:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bj;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/bj;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/bl;

    move-result-object v0

    const-string/jumbo v1, "transitionTypes"

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/bl;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/bl;

    move-result-object v0

    const-string/jumbo v1, "loiteringTimeMillis"

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/bl;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/bl;

    move-result-object v0

    const-string/jumbo v1, "nearbyAlertFilter"

    iget-object v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->e:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/bl;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/bl;

    move-result-object v0

    const-string/jumbo v1, "priority"

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/bl;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/bl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/h;->a(Lcom/google/android/gms/location/places/NearbyAlertRequest;Landroid/os/Parcel;I)V

    return-void
.end method
