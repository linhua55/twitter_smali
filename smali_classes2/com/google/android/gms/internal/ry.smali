.class Lcom/google/android/gms/internal/ry;
.super Lcom/google/android/gms/internal/sg;

# interfaces
.implements Lcom/google/android/gms/internal/va;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/sg",
        "<TT;>;",
        "Lcom/google/android/gms/internal/va",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/rr;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/rr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ry;->a:Lcom/google/android/gms/internal/rr;

    invoke-direct {p0}, Lcom/google/android/gms/internal/sg;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/rr;Lcom/google/android/gms/internal/rs;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ry;-><init>(Lcom/google/android/gms/internal/rr;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/sg;->b(Ljava/lang/Object;)V

    return-void
.end method
