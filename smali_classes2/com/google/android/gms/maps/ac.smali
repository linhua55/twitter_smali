.class Lcom/google/android/gms/maps/ac;
.super Llf;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/v;

.field final synthetic b:Lcom/google/android/gms/maps/ab;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/ab;Lcom/google/android/gms/maps/v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/ac;->b:Lcom/google/android/gms/maps/ab;

    iput-object p2, p0, Lcom/google/android/gms/maps/ac;->a:Lcom/google/android/gms/maps/v;

    invoke-direct {p0}, Llf;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lif;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/ac;->a:Lcom/google/android/gms/maps/v;

    new-instance v1, Lcom/google/android/gms/maps/c;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/c;-><init>(Lif;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/v;->a(Lcom/google/android/gms/maps/c;)V

    return-void
.end method
