.class public final Lcom/google/android/gms/internal/dh;
.super Lcom/google/android/gms/internal/df;


# annotations
.annotation runtime Lcom/google/android/gms/internal/oi;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/doubleclick/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/doubleclick/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/df;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/dh;->a:Lcom/google/android/gms/ads/doubleclick/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/db;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dh;->a:Lcom/google/android/gms/ads/doubleclick/c;

    new-instance v1, Lcom/google/android/gms/internal/da;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/da;-><init>(Lcom/google/android/gms/internal/db;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/doubleclick/c;->a(Lcom/google/android/gms/ads/doubleclick/b;)V

    return-void
.end method
