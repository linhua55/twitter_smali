.class public final Lcom/google/android/gms/ads/internal/client/x;
.super Lcom/google/android/gms/ads/internal/client/ay;


# annotations
.annotation runtime Lcom/google/android/gms/internal/oi;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/doubleclick/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/doubleclick/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/ay;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/x;->a:Lcom/google/android/gms/ads/doubleclick/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/x;->a:Lcom/google/android/gms/ads/doubleclick/a;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/doubleclick/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
