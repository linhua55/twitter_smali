.class Lcom/google/android/gms/dynamic/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/i;


# instance fields
.field final synthetic a:Lcom/google/android/gms/dynamic/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/h;->a:Lcom/google/android/gms/dynamic/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public a(Lcom/google/android/gms/dynamic/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/h;->a:Lcom/google/android/gms/dynamic/b;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->b(Lcom/google/android/gms/dynamic/b;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/a;->a()V

    return-void
.end method
