.class Lcom/twitter/android/settings/h;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/config/f;


# instance fields
.field final synthetic a:Lcom/twitter/android/settings/MobileNotificationsActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/settings/MobileNotificationsActivity;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/twitter/android/settings/h;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 153
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 154
    iget-object v2, p0, Lcom/twitter/android/settings/h;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-boolean v2, v2, Lcom/twitter/android/settings/MobileNotificationsActivity;->f:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/twitter/android/settings/h;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v2, v2, Lcom/twitter/android/settings/MobileNotificationsActivity;->b:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/twitter/android/settings/h;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    new-instance v1, Lcom/twitter/android/settings/i;

    invoke-direct {v1, p0}, Lcom/twitter/android/settings/i;-><init>(Lcom/twitter/android/settings/h;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/settings/MobileNotificationsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 162
    :cond_0
    return-void
.end method
