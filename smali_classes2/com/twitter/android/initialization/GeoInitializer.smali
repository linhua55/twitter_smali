.class public Lcom/twitter/android/initialization/GeoInitializer;
.super Lauo;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lauo",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lauo;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/initialization/GeoInitializer;->a(Landroid/content/Context;Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/Void;)V
    .locals 5

    .prologue
    .line 25
    new-instance v0, Lcom/twitter/android/geo/a;

    invoke-static {}, Lcom/twitter/android/lb;->a()Lcom/twitter/android/lb;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/twitter/android/geo/a;-><init>(Landroid/content/Context;Lcom/twitter/android/lb;)V

    invoke-static {v0}, Lcbz;->a(Lcca;)V

    .line 27
    const-string/jumbo v0, "geo_wifi_logging_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v1, Lcom/twitter/library/geo/wifilog/WifiLogReceiver;

    new-instance v2, Lcom/twitter/library/geo/wifilog/a;

    invoke-direct {v2}, Lcom/twitter/library/geo/wifilog/a;-><init>()V

    new-instance v3, Lcom/twitter/library/geo/wifilog/b;

    invoke-direct {v3}, Lcom/twitter/library/geo/wifilog/b;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v4

    const-string/jumbo v0, "wifi"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/twitter/library/geo/wifilog/WifiLogReceiver;-><init>(Lcom/twitter/library/geo/wifilog/a;Lcom/twitter/library/geo/wifilog/b;Lcom/twitter/library/client/bd;Landroid/net/wifi/WifiManager;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.twitter.library.geo.LOCATION_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 35
    :cond_0
    return-void
.end method
