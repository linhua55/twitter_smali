.class public final Lcom/google/android/gms/ads/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/android/gms/ads/internal/client/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/ads/internal/client/b;->a:Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/ads/d;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/ads/f;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/b;

    invoke-static {p1}, Lcom/google/android/gms/ads/f;->a(Lcom/google/android/gms/ads/f;)Lcom/google/android/gms/ads/internal/client/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/client/b;-><init>(Lcom/google/android/gms/ads/internal/client/c;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/d;->b:Lcom/google/android/gms/ads/internal/client/b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/f;Lcom/google/android/gms/ads/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/d;-><init>(Lcom/google/android/gms/ads/f;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/ads/internal/client/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/d;->b:Lcom/google/android/gms/ads/internal/client/b;

    return-object v0
.end method
