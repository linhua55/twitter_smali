.class Lcom/crashlytics/android/core/ax;
.super Landroid/content/BroadcastReceiver;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/crashlytics/android/core/aw;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/aw;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/crashlytics/android/core/ax;->a:Lcom/crashlytics/android/core/aw;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/crashlytics/android/core/ax;->a:Lcom/crashlytics/android/core/aw;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/aw;->a(Lcom/crashlytics/android/core/aw;Z)Z

    .line 44
    return-void
.end method
