.class Lcom/google/android/gms/maps/z;
.super Ljk;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/w;

.field final synthetic b:Lcom/google/android/gms/maps/y;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/y;Lcom/google/android/gms/maps/w;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/z;->b:Lcom/google/android/gms/maps/y;

    iput-object p2, p0, Lcom/google/android/gms/maps/z;->a:Lcom/google/android/gms/maps/w;

    invoke-direct {p0}, Ljk;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Liu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/z;->a:Lcom/google/android/gms/maps/w;

    new-instance v1, Lcom/google/android/gms/maps/x;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/x;-><init>(Liu;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/w;->a(Lcom/google/android/gms/maps/x;)V

    return-void
.end method
