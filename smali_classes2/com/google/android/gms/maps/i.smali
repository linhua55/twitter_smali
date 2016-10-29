.class Lcom/google/android/gms/maps/i;
.super Lkz;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/m;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/i;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/m;

    invoke-direct {p0}, Lkz;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/m;

    invoke-interface {v0}, Lcom/google/android/gms/maps/m;->a()V

    return-void
.end method
