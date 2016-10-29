.class public Lcfj;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Lcfk;

.field public final b:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

.field public final c:Lcom/twitter/library/network/forecaster/NetworkQuality;

.field public final d:Lcom/twitter/clientapp/thriftandroid/RadioStatus;

.field public final e:Lcom/twitter/platform/TwRadioType;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 240
    invoke-static {}, Lcom/twitter/platform/n;->a()Lcom/twitter/platform/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/platform/n;->b()Lcom/twitter/platform/TwRadioType;

    move-result-object v1

    iput-object v1, p0, Lcfj;->e:Lcom/twitter/platform/TwRadioType;

    .line 243
    sget-object v1, Lcfi;->a:[I

    iget-object v2, p0, Lcfj;->e:Lcom/twitter/platform/TwRadioType;

    invoke-virtual {v2}, Lcom/twitter/platform/TwRadioType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 333
    sget-object v2, Lcom/twitter/clientapp/thriftandroid/RadioStatus;->a:Lcom/twitter/clientapp/thriftandroid/RadioStatus;

    .line 334
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/twitter/clientapp/thriftandroid/NetworkStatus;->b:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    .line 338
    :goto_0
    iput-object v2, p0, Lcfj;->d:Lcom/twitter/clientapp/thriftandroid/RadioStatus;

    .line 339
    iput-object v1, p0, Lcfj;->b:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    .line 340
    invoke-static {}, Lcom/twitter/library/network/forecaster/b;->a()Lcom/twitter/library/network/forecaster/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/network/forecaster/b;->b()Lcom/twitter/library/network/forecaster/NetworkQuality;

    move-result-object v1

    iput-object v1, p0, Lcfj;->c:Lcom/twitter/library/network/forecaster/NetworkQuality;

    .line 342
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcfj;->f:Ljava/lang/String;

    .line 345
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcfj;->g:Ljava/lang/String;

    .line 348
    :cond_0
    new-instance v0, Lcfk;

    iget-object v1, p0, Lcfj;->d:Lcom/twitter/clientapp/thriftandroid/RadioStatus;

    invoke-direct {v0, p1, v1}, Lcfk;-><init>(Landroid/content/Context;Lcom/twitter/clientapp/thriftandroid/RadioStatus;)V

    iput-object v0, p0, Lcfj;->a:Lcfk;

    .line 349
    return-void

    .line 245
    :pswitch_0
    sget-object v2, Lcom/twitter/clientapp/thriftandroid/RadioStatus;->h:Lcom/twitter/clientapp/thriftandroid/RadioStatus;

    .line 246
    sget-object v1, Lcom/twitter/clientapp/thriftandroid/NetworkStatus;->c:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    goto :goto_0

    .line 250
    :pswitch_1
    sget-object v2, Lcom/twitter/clientapp/thriftandroid/RadioStatus;->c:Lcom/twitter/clientapp/thriftandroid/RadioStatus;

    .line 251
    sget-object v1, Lcom/twitter/clientapp/thriftandroid/NetworkStatus;->c:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    goto :goto_0

    .line 255
    :pswitch_2
    sget-object v2, Lcom/twitter/clientapp/thriftandroid/RadioStatus;->o:Lcom/twitter/clientapp/thriftandroid/RadioStatus;

    .line 256
    sget-object v1, Lcom/twitter/clientapp/thriftandroid/NetworkStatus;->c:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    goto :goto_0

    .line 260
    :pswitch_3
    sget-object v2, Lcom/twitter/clientapp/thriftandroid/RadioStatus;->i:Lcom/twitter/clientapp/thriftandroid/RadioStatus;

    .line 261
    sget-object v1, Lcom/twitter/clientapp/thriftandroid/NetworkStatus;->c:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    goto :goto_0

    .line 265
    :pswitch_4
    sget-object v2, Lcom/twitter/clientapp/thriftandroid/RadioStatus;->j:Lcom/twitter/clientapp/thriftandroid/RadioStatus;

    .line 266
    sget-object v1, Lcom/twitter/clientapp/thriftandroid/NetworkStatus;->c:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    goto :goto_0

    .line 270
    :pswitch_5
    sget-object v2, Lcom/twitter/clientapp/thriftandroid/RadioStatus;->k:Lcom/twitter/clientapp/thriftandroid/RadioStatus;

    .line 271
    sget-object v1, Lcom/twitter/clientapp/thriftandroid/NetworkStatus;->c:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    goto :goto_0

    .line 275
    :pswitch_6
    sget-object v2, Lcom/twitter/clientapp/thriftandroid/RadioStatus;->b:Lcom/twitter/clientapp/thriftandroid/RadioStatus;

    .line 276
    sget-object v1, Lcom/twitter/clientapp/thriftandroid/NetworkStatus;->c:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    goto :goto_0

    .line 281
    :pswitch_7
    sget-object v2, Lcom/twitter/clientapp/thriftandroid/RadioStatus;->c:Lcom/twitter/clientapp/thriftandroid/RadioStatus;

    .line 282
    sget-object v1, Lcom/twitter/clientapp/thriftandroid/NetworkStatus;->c:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    goto :goto_0

    .line 286
    :pswitch_8
    sget-object v2, Lcom/twitter/clientapp/thriftandroid/RadioStatus;->e:Lcom/twitter/clientapp/thriftandroid/RadioStatus;

    .line 287
    sget-object v1, Lcom/twitter/clientapp/thriftandroid/NetworkStatus;->c:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    goto :goto_0

    .line 291
    :pswitch_9
    sget-object v2, Lcom/twitter/clientapp/thriftandroid/RadioStatus;->g:Lcom/twitter/clientapp/thriftandroid/RadioStatus;

    .line 292
    sget-object v1, Lcom/twitter/clientapp/thriftandroid/NetworkStatus;->c:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    goto :goto_0

    .line 296
    :pswitch_a
    sget-object v2, Lcom/twitter/clientapp/thriftandroid/RadioStatus;->p:Lcom/twitter/clientapp/thriftandroid/RadioStatus;

    .line 297
    sget-object v1, Lcom/twitter/clientapp/thriftandroid/NetworkStatus;->c:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    goto :goto_0

    .line 301
    :pswitch_b
    sget-object v2, Lcom/twitter/clientapp/thriftandroid/RadioStatus;->f:Lcom/twitter/clientapp/thriftandroid/RadioStatus;

    .line 302
    sget-object v1, Lcom/twitter/clientapp/thriftandroid/NetworkStatus;->c:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    goto :goto_0

    .line 306
    :pswitch_c
    sget-object v2, Lcom/twitter/clientapp/thriftandroid/RadioStatus;->m:Lcom/twitter/clientapp/thriftandroid/RadioStatus;

    .line 307
    sget-object v1, Lcom/twitter/clientapp/thriftandroid/NetworkStatus;->c:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    goto :goto_0

    .line 311
    :pswitch_d
    sget-object v2, Lcom/twitter/clientapp/thriftandroid/RadioStatus;->n:Lcom/twitter/clientapp/thriftandroid/RadioStatus;

    .line 312
    sget-object v1, Lcom/twitter/clientapp/thriftandroid/NetworkStatus;->c:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    goto :goto_0

    .line 316
    :pswitch_e
    sget-object v2, Lcom/twitter/clientapp/thriftandroid/RadioStatus;->d:Lcom/twitter/clientapp/thriftandroid/RadioStatus;

    .line 317
    sget-object v1, Lcom/twitter/clientapp/thriftandroid/NetworkStatus;->c:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    goto :goto_0

    .line 321
    :pswitch_f
    sget-object v2, Lcom/twitter/clientapp/thriftandroid/RadioStatus;->l:Lcom/twitter/clientapp/thriftandroid/RadioStatus;

    .line 322
    sget-object v1, Lcom/twitter/clientapp/thriftandroid/NetworkStatus;->c:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    goto :goto_0

    .line 326
    :pswitch_10
    sget-object v2, Lcom/twitter/clientapp/thriftandroid/RadioStatus;->a:Lcom/twitter/clientapp/thriftandroid/RadioStatus;

    .line 327
    sget-object v1, Lcom/twitter/clientapp/thriftandroid/NetworkStatus;->b:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    goto :goto_0

    .line 334
    :cond_1
    sget-object v1, Lcom/twitter/clientapp/thriftandroid/NetworkStatus;->a:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    goto/16 :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 354
    :try_start_0
    invoke-virtual {p0}, Lcfj;->b()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 356
    :goto_0
    return-object v0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 362
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 363
    const-string/jumbo v1, "networkStatus"

    iget-object v2, p0, Lcfj;->b:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    const-string/jumbo v1, "radioStatus"

    iget-object v2, p0, Lcfj;->d:Lcom/twitter/clientapp/thriftandroid/RadioStatus;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 365
    const-string/jumbo v1, "radioStatusRaw"

    iget-object v2, p0, Lcfj;->e:Lcom/twitter/platform/TwRadioType;

    invoke-virtual {v2}, Lcom/twitter/platform/TwRadioType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    const-string/jumbo v1, "bssid"

    iget-object v2, p0, Lcfj;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    const-string/jumbo v1, "ssid"

    iget-object v2, p0, Lcfj;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    const-string/jumbo v1, "networkQuality"

    iget-object v2, p0, Lcfj;->c:Lcom/twitter/library/network/forecaster/NetworkQuality;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    iget-object v1, p0, Lcfj;->a:Lcfk;

    invoke-virtual {v1}, Lcfk;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 370
    const-string/jumbo v2, "mobileDetails"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    return-object v0
.end method

.method public c()Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus;
    .locals 4

    .prologue
    .line 376
    new-instance v0, Lcom/twitter/client_network/thriftandroid/h;

    invoke-direct {v0}, Lcom/twitter/client_network/thriftandroid/h;-><init>()V

    .line 377
    sget-object v1, Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus;->b:Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus$_Fields;

    iget-object v2, p0, Lcfj;->b:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    .line 378
    invoke-virtual {v0, v1, v2}, Lcom/twitter/client_network/thriftandroid/h;->a(Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus$_Fields;Ljava/lang/Object;)Lcom/twitter/client_network/thriftandroid/h;

    move-result-object v1

    sget-object v2, Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus;->d:Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus$_Fields;

    iget-object v3, p0, Lcfj;->d:Lcom/twitter/clientapp/thriftandroid/RadioStatus;

    .line 379
    invoke-virtual {v1, v2, v3}, Lcom/twitter/client_network/thriftandroid/h;->a(Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus$_Fields;Ljava/lang/Object;)Lcom/twitter/client_network/thriftandroid/h;

    move-result-object v1

    sget-object v2, Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus;->e:Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus$_Fields;

    iget-object v3, p0, Lcfj;->e:Lcom/twitter/platform/TwRadioType;

    .line 380
    invoke-virtual {v3}, Lcom/twitter/platform/TwRadioType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/twitter/client_network/thriftandroid/h;->a(Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus$_Fields;Ljava/lang/Object;)Lcom/twitter/client_network/thriftandroid/h;

    move-result-object v1

    sget-object v2, Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus;->h:Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus$_Fields;

    iget-object v3, p0, Lcfj;->f:Ljava/lang/String;

    .line 381
    invoke-virtual {v1, v2, v3}, Lcom/twitter/client_network/thriftandroid/h;->a(Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus$_Fields;Ljava/lang/Object;)Lcom/twitter/client_network/thriftandroid/h;

    move-result-object v1

    sget-object v2, Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus;->g:Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus$_Fields;

    iget-object v3, p0, Lcfj;->g:Ljava/lang/String;

    .line 382
    invoke-virtual {v1, v2, v3}, Lcom/twitter/client_network/thriftandroid/h;->a(Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus$_Fields;Ljava/lang/Object;)Lcom/twitter/client_network/thriftandroid/h;

    .line 384
    iget-object v1, p0, Lcfj;->c:Lcom/twitter/library/network/forecaster/NetworkQuality;

    sget-object v2, Lcom/twitter/library/network/forecaster/NetworkQuality;->a:Lcom/twitter/library/network/forecaster/NetworkQuality;

    invoke-virtual {v1, v2}, Lcom/twitter/library/network/forecaster/NetworkQuality;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 385
    sget-object v1, Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus;->c:Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus$_Fields;

    sget-object v2, Lcom/twitter/clientapp/thriftandroid/NetworkStatus;->a:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/client_network/thriftandroid/h;->a(Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus$_Fields;Ljava/lang/Object;)Lcom/twitter/client_network/thriftandroid/h;

    .line 392
    :cond_0
    :goto_0
    iget-object v1, p0, Lcfj;->a:Lcfk;

    invoke-virtual {v1}, Lcfk;->b()Lcom/twitter/clientapp/thriftandroid/MobileDetails;

    move-result-object v1

    .line 393
    sget-object v2, Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus;->i:Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus$_Fields;

    invoke-virtual {v0, v2, v1}, Lcom/twitter/client_network/thriftandroid/h;->a(Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus$_Fields;Ljava/lang/Object;)Lcom/twitter/client_network/thriftandroid/h;

    .line 395
    invoke-virtual {v0}, Lcom/twitter/client_network/thriftandroid/h;->a()Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus;

    move-result-object v0

    return-object v0

    .line 386
    :cond_1
    iget-object v1, p0, Lcfj;->b:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcfj;->b:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    sget-object v2, Lcom/twitter/clientapp/thriftandroid/NetworkStatus;->b:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    invoke-virtual {v1, v2}, Lcom/twitter/clientapp/thriftandroid/NetworkStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 387
    sget-object v1, Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus;->c:Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus$_Fields;

    sget-object v2, Lcom/twitter/clientapp/thriftandroid/NetworkStatus;->b:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/client_network/thriftandroid/h;->a(Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus$_Fields;Ljava/lang/Object;)Lcom/twitter/client_network/thriftandroid/h;

    goto :goto_0

    .line 388
    :cond_2
    iget-object v1, p0, Lcfj;->b:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcfj;->b:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    sget-object v2, Lcom/twitter/clientapp/thriftandroid/NetworkStatus;->c:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    invoke-virtual {v1, v2}, Lcom/twitter/clientapp/thriftandroid/NetworkStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    sget-object v1, Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus;->c:Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus$_Fields;

    sget-object v2, Lcom/twitter/clientapp/thriftandroid/NetworkStatus;->c:Lcom/twitter/clientapp/thriftandroid/NetworkStatus;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/client_network/thriftandroid/h;->a(Lcom/twitter/client_network/thriftandroid/ClientNetworkStatus$_Fields;Ljava/lang/Object;)Lcom/twitter/client_network/thriftandroid/h;

    goto :goto_0
.end method
