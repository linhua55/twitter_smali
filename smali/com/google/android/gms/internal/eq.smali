.class public Lcom/google/android/gms/internal/eq;
.super Lcom/google/android/gms/internal/ee;


# annotations
.annotation runtime Lcom/google/android/gms/internal/oi;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/formats/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ee;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/eq;->a:Lcom/google/android/gms/ads/formats/g;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ds;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->a:Lcom/google/android/gms/ads/formats/g;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/eq;->b(Lcom/google/android/gms/internal/ds;)Lcom/google/android/gms/internal/dv;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/g;->a(Lcom/google/android/gms/ads/formats/f;)V

    return-void
.end method

.method b(Lcom/google/android/gms/internal/ds;)Lcom/google/android/gms/internal/dv;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/dv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/dv;-><init>(Lcom/google/android/gms/internal/ds;)V

    return-object v0
.end method
