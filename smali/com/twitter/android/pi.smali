.class Lcom/twitter/android/pi;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/twitter/android/SecuritySettingsActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/SecuritySettingsActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/twitter/android/pi;->b:Lcom/twitter/android/SecuritySettingsActivity;

    iput-object p2, p0, Lcom/twitter/android/pi;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 495
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/pi;->b:Lcom/twitter/android/SecuritySettingsActivity;

    invoke-static {v1}, Lcom/twitter/android/SecuritySettingsActivity;->a(Lcom/twitter/android/SecuritySettingsActivity;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/pi;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 496
    iget-object v0, p0, Lcom/twitter/android/pi;->b:Lcom/twitter/android/SecuritySettingsActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SecuritySettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/pi;->b:Lcom/twitter/android/SecuritySettingsActivity;

    .line 497
    invoke-static {v1}, Lcom/twitter/android/SecuritySettingsActivity;->b(Lcom/twitter/android/SecuritySettingsActivity;)J

    move-result-wide v2

    .line 496
    invoke-static {v0, v2, v3}, Lcom/twitter/library/platform/notifications/x;->a(Landroid/content/Context;J)Lcom/twitter/library/platform/notifications/x;

    move-result-object v0

    .line 511
    iget-object v1, p0, Lcom/twitter/android/pi;->b:Lcom/twitter/android/SecuritySettingsActivity;

    invoke-virtual {v1}, Lcom/twitter/android/SecuritySettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/library/platform/e;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 512
    iget-object v0, p0, Lcom/twitter/android/pi;->b:Lcom/twitter/android/SecuritySettingsActivity;

    invoke-static {v0}, Lcom/twitter/android/SecuritySettingsActivity;->c(Lcom/twitter/android/SecuritySettingsActivity;)V

    .line 522
    :goto_0
    return-void

    .line 513
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/pi;->b:Lcom/twitter/android/SecuritySettingsActivity;

    invoke-static {v1}, Lcom/google/android/gcm/b;->h(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 514
    iget-object v0, p0, Lcom/twitter/android/pi;->b:Lcom/twitter/android/SecuritySettingsActivity;

    invoke-static {v0, v4}, Lcom/twitter/android/SecuritySettingsActivity;->a(Lcom/twitter/android/SecuritySettingsActivity;Z)Z

    .line 515
    iget-object v0, p0, Lcom/twitter/android/pi;->b:Lcom/twitter/android/SecuritySettingsActivity;

    invoke-static {v0}, Lcom/twitter/library/platform/notifications/PushRegistration;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 516
    :cond_1
    invoke-virtual {v0}, Lcom/twitter/library/platform/notifications/x;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 517
    invoke-virtual {v0, v4}, Lcom/twitter/library/platform/notifications/x;->a(Z)V

    .line 518
    iget-object v0, p0, Lcom/twitter/android/pi;->b:Lcom/twitter/android/SecuritySettingsActivity;

    invoke-static {v0}, Lcom/twitter/android/SecuritySettingsActivity;->c(Lcom/twitter/android/SecuritySettingsActivity;)V

    goto :goto_0

    .line 520
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/pi;->b:Lcom/twitter/android/SecuritySettingsActivity;

    invoke-static {v0}, Lcom/twitter/android/SecuritySettingsActivity;->c(Lcom/twitter/android/SecuritySettingsActivity;)V

    goto :goto_0
.end method
