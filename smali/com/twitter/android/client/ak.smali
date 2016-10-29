.class Lcom/twitter/android/client/ak;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/twitter/android/client/NotificationService;


# direct methods
.method constructor <init>(Lcom/twitter/android/client/NotificationService;ILandroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/twitter/android/client/ak;->e:Lcom/twitter/android/client/NotificationService;

    iput p2, p0, Lcom/twitter/android/client/ak;->a:I

    iput-object p3, p0, Lcom/twitter/android/client/ak;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/twitter/android/client/ak;->c:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/twitter/android/client/ak;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 254
    iget-object v0, p0, Lcom/twitter/android/client/ak;->e:Lcom/twitter/android/client/NotificationService;

    iget v1, p0, Lcom/twitter/android/client/ak;->a:I

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/NotificationService;->stopSelf(I)V

    .line 255
    iget-object v0, p0, Lcom/twitter/android/client/ak;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/client/ak;->c:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/twitter/android/client/NotificationService;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 256
    iget-object v0, p0, Lcom/twitter/android/client/ak;->e:Lcom/twitter/android/client/NotificationService;

    iget-object v1, p0, Lcom/twitter/android/client/ak;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/client/ak;->c:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/twitter/android/client/ak;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/client/NotificationService;->a(Lcom/twitter/android/client/NotificationService;Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 257
    return-void
.end method
