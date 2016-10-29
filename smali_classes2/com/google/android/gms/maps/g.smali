.class Lcom/google/android/gms/maps/g;
.super Lli;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/o;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/g;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/g;->a:Lcom/google/android/gms/maps/o;

    invoke-direct {p0}, Lli;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lnd;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/g;->a:Lcom/google/android/gms/maps/o;

    new-instance v1, Lcom/google/android/gms/maps/model/f;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/f;-><init>(Lnd;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/o;->a(Lcom/google/android/gms/maps/model/f;)Z

    move-result v0

    return v0
.end method
