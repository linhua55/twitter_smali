.class Lcom/google/android/gms/internal/kb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ju;

.field final synthetic b:Lcom/google/android/gms/internal/ka;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ka;Lcom/google/android/gms/internal/ju;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kb;->b:Lcom/google/android/gms/internal/ka;

    iput-object p2, p0, Lcom/google/android/gms/internal/kb;->a:Lcom/google/android/gms/internal/ju;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/kb;->a:Lcom/google/android/gms/internal/ju;

    iget-object v0, v0, Lcom/google/android/gms/internal/ju;->c:Lcom/google/android/gms/internal/kg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/kg;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Could not destroy mediation adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
