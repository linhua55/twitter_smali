.class Lcom/google/android/gms/maps/h;
.super Lkk;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/l;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/h;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/h;->a:Lcom/google/android/gms/maps/l;

    invoke-direct {p0}, Lkk;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lnd;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/h;->a:Lcom/google/android/gms/maps/l;

    new-instance v1, Lcom/google/android/gms/maps/model/f;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/f;-><init>(Lnd;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/l;->a(Lcom/google/android/gms/maps/model/f;)V

    return-void
.end method
