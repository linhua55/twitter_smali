.class Lcom/twitter/android/client/z;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/support/v4/app/NotificationCompat$Builder;

.field final synthetic c:Lcom/twitter/android/client/y;


# direct methods
.method constructor <init>(Lcom/twitter/android/client/y;Ljava/lang/String;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 0

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/twitter/android/client/z;->c:Lcom/twitter/android/client/y;

    iput-object p2, p0, Lcom/twitter/android/client/z;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/twitter/android/client/z;->b:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/twitter/android/client/z;->c:Lcom/twitter/android/client/y;

    invoke-static {v0}, Lcom/twitter/android/client/y;->a(Lcom/twitter/android/client/y;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/z;->a:Ljava/lang/String;

    const/16 v2, 0x3e9

    iget-object v3, p0, Lcom/twitter/android/client/z;->b:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1014
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 1012
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1015
    return-void
.end method
