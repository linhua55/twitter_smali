.class public Lcfk;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Ljava/lang/Boolean;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/twitter/clientapp/thriftandroid/Orientation;

.field public final f:Lcom/twitter/clientapp/thriftandroid/RadioStatus;

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/clientapp/thriftandroid/RadioStatus;)V
    .locals 2

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput-object p2, p0, Lcfk;->f:Lcom/twitter/clientapp/thriftandroid/RadioStatus;

    .line 414
    const-string/jumbo v0, "phone"

    .line 415
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 416
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcfk;->b:Ljava/lang/String;

    .line 417
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcfk;->c:Ljava/lang/String;

    .line 418
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcfk;->d:Ljava/lang/String;

    .line 419
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcfk;->h:Ljava/lang/String;

    .line 420
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcfk;->i:Ljava/lang/String;

    .line 421
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcfk;->j:Ljava/lang/String;

    .line 423
    const/4 v0, 0x0

    .line 425
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 429
    :goto_0
    iput-object v0, p0, Lcfk;->a:Ljava/lang/Boolean;

    .line 432
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/twitter/clientapp/thriftandroid/Orientation;->b:Lcom/twitter/clientapp/thriftandroid/Orientation;

    :goto_1
    iput-object v0, p0, Lcfk;->e:Lcom/twitter/clientapp/thriftandroid/Orientation;

    .line 436
    invoke-static {}, Lcom/twitter/library/network/forecaster/b;->a()Lcom/twitter/library/network/forecaster/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/network/forecaster/b;->g()I

    move-result v0

    iput v0, p0, Lcfk;->g:I

    .line 437
    return-void

    .line 432
    :cond_0
    sget-object v0, Lcom/twitter/clientapp/thriftandroid/Orientation;->a:Lcom/twitter/clientapp/thriftandroid/Orientation;

    goto :goto_1

    .line 426
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 441
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 442
    const-string/jumbo v1, "limitAdTracking"

    iget-object v2, p0, Lcfk;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 443
    const-string/jumbo v1, "mobileNetworkOperatorIsoCountryCode"

    iget-object v2, p0, Lcfk;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    const-string/jumbo v1, "mobileNetworkOperatorCode"

    iget-object v2, p0, Lcfk;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    const-string/jumbo v1, "mobileNetworkOperatorName"

    iget-object v2, p0, Lcfk;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 446
    const-string/jumbo v1, "mobileSimProviderCode"

    iget-object v2, p0, Lcfk;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 447
    const-string/jumbo v1, "mobileSimProviderIsoCountryCode"

    iget-object v2, p0, Lcfk;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 448
    const-string/jumbo v1, "mobileSimProviderName"

    iget-object v2, p0, Lcfk;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 449
    const-string/jumbo v1, "orientation"

    iget-object v2, p0, Lcfk;->e:Lcom/twitter/clientapp/thriftandroid/Orientation;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 450
    const-string/jumbo v1, "radioStatus"

    iget-object v2, p0, Lcfk;->f:Lcom/twitter/clientapp/thriftandroid/RadioStatus;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 451
    const-string/jumbo v1, "signalStrength"

    iget v2, p0, Lcfk;->g:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 452
    return-object v0
.end method

.method public b()Lcom/twitter/clientapp/thriftandroid/MobileDetails;
    .locals 4

    .prologue
    .line 456
    new-instance v0, Lcom/twitter/clientapp/thriftandroid/d;

    invoke-direct {v0}, Lcom/twitter/clientapp/thriftandroid/d;-><init>()V

    .line 457
    sget-object v1, Lcom/twitter/clientapp/thriftandroid/MobileDetails;->e:Lcom/twitter/clientapp/thriftandroid/MobileDetails$_Fields;

    iget-object v2, p0, Lcfk;->a:Ljava/lang/Boolean;

    .line 458
    invoke-virtual {v0, v1, v2}, Lcom/twitter/clientapp/thriftandroid/d;->a(Lcom/twitter/clientapp/thriftandroid/MobileDetails$_Fields;Ljava/lang/Object;)Lcom/twitter/clientapp/thriftandroid/d;

    move-result-object v1

    sget-object v2, Lcom/twitter/clientapp/thriftandroid/MobileDetails;->g:Lcom/twitter/clientapp/thriftandroid/MobileDetails$_Fields;

    iget-object v3, p0, Lcfk;->b:Ljava/lang/String;

    .line 459
    invoke-virtual {v1, v2, v3}, Lcom/twitter/clientapp/thriftandroid/d;->a(Lcom/twitter/clientapp/thriftandroid/MobileDetails$_Fields;Ljava/lang/Object;)Lcom/twitter/clientapp/thriftandroid/d;

    move-result-object v1

    sget-object v2, Lcom/twitter/clientapp/thriftandroid/MobileDetails;->h:Lcom/twitter/clientapp/thriftandroid/MobileDetails$_Fields;

    iget-object v3, p0, Lcfk;->c:Ljava/lang/String;

    .line 460
    invoke-virtual {v1, v2, v3}, Lcom/twitter/clientapp/thriftandroid/d;->a(Lcom/twitter/clientapp/thriftandroid/MobileDetails$_Fields;Ljava/lang/Object;)Lcom/twitter/clientapp/thriftandroid/d;

    move-result-object v1

    sget-object v2, Lcom/twitter/clientapp/thriftandroid/MobileDetails;->i:Lcom/twitter/clientapp/thriftandroid/MobileDetails$_Fields;

    iget-object v3, p0, Lcfk;->d:Ljava/lang/String;

    .line 461
    invoke-virtual {v1, v2, v3}, Lcom/twitter/clientapp/thriftandroid/d;->a(Lcom/twitter/clientapp/thriftandroid/MobileDetails$_Fields;Ljava/lang/Object;)Lcom/twitter/clientapp/thriftandroid/d;

    move-result-object v1

    sget-object v2, Lcom/twitter/clientapp/thriftandroid/MobileDetails;->k:Lcom/twitter/clientapp/thriftandroid/MobileDetails$_Fields;

    iget-object v3, p0, Lcfk;->h:Ljava/lang/String;

    .line 462
    invoke-virtual {v1, v2, v3}, Lcom/twitter/clientapp/thriftandroid/d;->a(Lcom/twitter/clientapp/thriftandroid/MobileDetails$_Fields;Ljava/lang/Object;)Lcom/twitter/clientapp/thriftandroid/d;

    move-result-object v1

    sget-object v2, Lcom/twitter/clientapp/thriftandroid/MobileDetails;->j:Lcom/twitter/clientapp/thriftandroid/MobileDetails$_Fields;

    iget-object v3, p0, Lcfk;->i:Ljava/lang/String;

    .line 463
    invoke-virtual {v1, v2, v3}, Lcom/twitter/clientapp/thriftandroid/d;->a(Lcom/twitter/clientapp/thriftandroid/MobileDetails$_Fields;Ljava/lang/Object;)Lcom/twitter/clientapp/thriftandroid/d;

    move-result-object v1

    sget-object v2, Lcom/twitter/clientapp/thriftandroid/MobileDetails;->l:Lcom/twitter/clientapp/thriftandroid/MobileDetails$_Fields;

    iget-object v3, p0, Lcfk;->j:Ljava/lang/String;

    .line 464
    invoke-virtual {v1, v2, v3}, Lcom/twitter/clientapp/thriftandroid/d;->a(Lcom/twitter/clientapp/thriftandroid/MobileDetails$_Fields;Ljava/lang/Object;)Lcom/twitter/clientapp/thriftandroid/d;

    move-result-object v1

    sget-object v2, Lcom/twitter/clientapp/thriftandroid/MobileDetails;->c:Lcom/twitter/clientapp/thriftandroid/MobileDetails$_Fields;

    iget-object v3, p0, Lcfk;->e:Lcom/twitter/clientapp/thriftandroid/Orientation;

    .line 465
    invoke-virtual {v1, v2, v3}, Lcom/twitter/clientapp/thriftandroid/d;->a(Lcom/twitter/clientapp/thriftandroid/MobileDetails$_Fields;Ljava/lang/Object;)Lcom/twitter/clientapp/thriftandroid/d;

    move-result-object v1

    sget-object v2, Lcom/twitter/clientapp/thriftandroid/MobileDetails;->m:Lcom/twitter/clientapp/thriftandroid/MobileDetails$_Fields;

    iget-object v3, p0, Lcfk;->f:Lcom/twitter/clientapp/thriftandroid/RadioStatus;

    .line 466
    invoke-virtual {v1, v2, v3}, Lcom/twitter/clientapp/thriftandroid/d;->a(Lcom/twitter/clientapp/thriftandroid/MobileDetails$_Fields;Ljava/lang/Object;)Lcom/twitter/clientapp/thriftandroid/d;

    move-result-object v1

    sget-object v2, Lcom/twitter/clientapp/thriftandroid/MobileDetails;->d:Lcom/twitter/clientapp/thriftandroid/MobileDetails$_Fields;

    iget v3, p0, Lcfk;->g:I

    .line 467
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/twitter/clientapp/thriftandroid/d;->a(Lcom/twitter/clientapp/thriftandroid/MobileDetails$_Fields;Ljava/lang/Object;)Lcom/twitter/clientapp/thriftandroid/d;

    .line 468
    invoke-virtual {v0}, Lcom/twitter/clientapp/thriftandroid/d;->a()Lcom/twitter/clientapp/thriftandroid/MobileDetails;

    move-result-object v0

    return-object v0
.end method
