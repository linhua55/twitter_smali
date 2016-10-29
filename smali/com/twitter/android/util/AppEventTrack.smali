.class public Lcom/twitter/android/util/AppEventTrack;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/android/util/AppEventTrack;->a:Ljava/util/Map;

    .line 100
    sget-object v0, Lcom/twitter/android/util/AppEventTrack;->a:Ljava/util/Map;

    const-string/jumbo v1, "twcamp"

    const-string/jumbo v2, "utm_campaign"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/twitter/android/util/AppEventTrack;->a:Ljava/util/Map;

    const-string/jumbo v1, "twcon"

    const-string/jumbo v2, "utm_content"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/twitter/android/util/AppEventTrack;->a:Ljava/util/Map;

    const-string/jumbo v1, "twterm"

    const-string/jumbo v2, "utm_term"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/twitter/android/util/AppEventTrack;->a:Ljava/util/Map;

    const-string/jumbo v1, "twsrc"

    const-string/jumbo v2, "utm_source"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/twitter/android/util/AppEventTrack;->a:Ljava/util/Map;

    const-string/jumbo v1, "twgr"

    const-string/jumbo v2, "utm_medium"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string/jumbo v0, "app_event_track_open_app_delay"

    const-wide v2, 0x40d5180000000000L    # 21600.0

    invoke-static {v0, v2, v3}, Lcom/twitter/config/d;->a(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/twitter/android/util/AppEventTrack;->b:J

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 350
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 351
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 352
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 353
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2, p0}, Lcom/twitter/util/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 358
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 427
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 431
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%5E"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 432
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 438
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 435
    :cond_1
    const-string/jumbo v0, "%7C"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 404
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 406
    if-eqz p0, :cond_1

    .line 407
    const-string/jumbo v0, "&|%26|\\||%7C"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 408
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 409
    const-string/jumbo v6, "=|%3D|\\^|%5E"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 410
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 411
    aget-object v6, v5, v1

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    :cond_1
    return-object v2
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 388
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    .line 389
    invoke-static {p0}, Lcom/twitter/android/util/AppEventTrack;->d(Landroid/content/Context;)Lcom/twitter/library/client/l;

    move-result-object v2

    const-string/jumbo v3, "last_open_app_ts"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/twitter/library/client/l;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 391
    sub-long v2, v0, v2

    sget-wide v4, Lcom/twitter/android/util/AppEventTrack;->b:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 392
    invoke-static {p0}, Lcom/twitter/android/util/AppEventTrack;->d(Landroid/content/Context;)Lcom/twitter/library/client/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v2

    const-string/jumbo v3, "last_open_app_ts"

    invoke-virtual {v2, v3, v0, v1}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;J)Lcom/twitter/library/client/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 393
    sget-object v0, Lcom/twitter/android/util/AppEventTrack$EventType;->f:Lcom/twitter/android/util/AppEventTrack$EventType;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/twitter/android/util/AppEventTrack;->a(Landroid/content/Context;Lcom/twitter/android/util/AppEventTrack$EventType;[Ljava/lang/String;)V

    .line 395
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 6

    .prologue
    .line 368
    const-string/jumbo v0, "mat_click_id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 369
    const-string/jumbo v0, "ref_src"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    if-nez v0, :cond_0

    .line 371
    const-string/jumbo v0, "s"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    const-string/jumbo v2, "shortened_tracking_parameters_mapping"

    .line 373
    invoke-static {v2}, Lcom/twitter/config/d;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 372
    invoke-static {v0, v2}, Lcom/twitter/android/util/AppEventTrack;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 375
    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    .line 376
    :cond_1
    invoke-static {p0, v0}, Lcom/twitter/android/util/AppEventTrack;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 377
    sget-object v2, Lcom/twitter/android/util/AppEventTrack$EventType;->b:Lcom/twitter/android/util/AppEventTrack$EventType;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-static {p0, v2, v3}, Lcom/twitter/android/util/AppEventTrack;->a(Landroid/content/Context;Lcom/twitter/android/util/AppEventTrack$EventType;[Ljava/lang/String;)V

    .line 379
    :cond_2
    return-void
.end method

.method public static varargs a(Landroid/content/Context;Lcom/twitter/android/util/AppEventTrack$EventType;[Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 216
    sget-object v0, Lcom/twitter/android/util/c;->a:[I

    invoke-virtual {p1}, Lcom/twitter/android/util/AppEventTrack$EventType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move-object v2, v1

    move-object v0, v1

    .line 236
    :cond_0
    :goto_0
    new-array v3, v7, [Ljava/lang/String;

    aput-object v0, v3, v5

    aput-object v2, v3, v4

    aput-object v1, v3, v6

    .line 243
    sget-object v0, Lcom/twitter/android/util/AppEventTrack$EventType;->a:Lcom/twitter/android/util/AppEventTrack$EventType;

    if-eq p1, v0, :cond_1

    const-string/jumbo v0, "app_event_track_enabled"

    .line 244
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    :cond_1
    new-instance v0, Lcom/twitter/android/util/d;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/util/d;-><init>(Landroid/content/Context;Lcom/twitter/android/util/AppEventTrack$EventType;)V

    invoke-virtual {v0, v3}, Lcom/twitter/android/util/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 247
    :cond_2
    return-void

    .line 220
    :pswitch_0
    array-length v0, p2

    if-lt v0, v4, :cond_3

    aget-object v0, p2, v5

    :goto_1
    move-object v2, v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 221
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 220
    goto :goto_1

    .line 224
    :pswitch_1
    array-length v0, p2

    if-lt v0, v4, :cond_4

    aget-object v0, p2, v5

    .line 225
    :goto_2
    array-length v2, p2

    if-lt v2, v6, :cond_5

    aget-object v2, p2, v4

    .line 226
    :goto_3
    array-length v3, p2

    if-lt v3, v7, :cond_0

    aget-object v1, p2, v6

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 224
    goto :goto_2

    :cond_5
    move-object v2, v1

    .line 225
    goto :goto_3

    .line 216
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeLog;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 470
    invoke-static {p0}, Lcom/twitter/android/util/AppEventTrack;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-static {p0}, Lbki;->a(Landroid/content/Context;)Lbki;

    move-result-object v2

    .line 474
    if-eqz v0, :cond_1

    .line 475
    new-instance v2, Lcom/twitter/android/util/f;

    invoke-static {v0}, Lcom/twitter/android/util/AppEventTrack;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/twitter/android/util/f;-><init>(Ljava/util/HashMap;)V

    const/4 v0, 0x3

    invoke-virtual {v2, p1, v0, v1}, Lcom/twitter/android/util/f;->a(Lcom/twitter/library/scribe/TwitterScribeLog;ILjava/lang/String;)V

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    invoke-virtual {v2}, Lbki;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v2}, Lbki;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v5, "banner"

    .line 481
    :goto_1
    new-instance v0, Lcom/twitter/android/util/f;

    invoke-virtual {v2}, Lbki;->c()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "TwitterAccess"

    const/4 v7, 0x0

    move-object v2, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/util/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x4

    .line 482
    invoke-virtual {v0, p1, v2, v1}, Lcom/twitter/android/util/f;->a(Lcom/twitter/library/scribe/TwitterScribeLog;ILjava/lang/String;)V

    goto :goto_0

    .line 478
    :cond_2
    const-string/jumbo v5, "no_banner"

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 494
    invoke-static {p1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pref_ref_src"

    .line 496
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pref_ref_src_date"

    .line 497
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 498
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 500
    :cond_0
    return-void
.end method

.method static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 443
    .line 444
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 445
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    const-string/jumbo v4, "pref_ref_src_date"

    const-wide/16 v6, 0x0

    .line 446
    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 447
    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    .line 449
    const-wide/16 v4, 0x1e

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 450
    const-string/jumbo v2, "pref_ref_src"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    :cond_0
    return-object v0
.end method

.method static varargs b(Landroid/content/Context;Lcom/twitter/android/util/AppEventTrack$EventType;[Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 16

    .prologue
    .line 251
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 252
    sget-object v2, Lcom/twitter/library/client/u;->a:Lcom/twitter/library/client/u;

    invoke-virtual {v2}, Lcom/twitter/library/client/u;->a()Lcom/twitter/library/api/d;

    move-result-object v4

    .line 253
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    .line 254
    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    .line 253
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 255
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 256
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    .line 257
    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 258
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 259
    const-string/jumbo v2, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 260
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v10

    .line 261
    invoke-virtual {v6}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v6

    .line 262
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 263
    invoke-static/range {p0 .. p0}, Lcom/twitter/library/network/at;->a(Landroid/content/Context;)Lcom/twitter/library/network/at;

    move-result-object v2

    iget-object v2, v2, Lcom/twitter/library/network/at;->e:Lcom/twitter/library/network/ax;

    invoke-virtual {v2}, Lcom/twitter/library/network/ax;->toString()Ljava/lang/String;

    move-result-object v12

    .line 264
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v14

    .line 266
    if-eqz v4, :cond_0

    .line 267
    :try_start_0
    const-string/jumbo v2, "aid"

    invoke-virtual {v4}, Lcom/twitter/library/api/d;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string/jumbo v13, "limit_ad_tracking"

    invoke-virtual {v4}, Lcom/twitter/library/api/d;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 270
    :cond_0
    const-string/jumbo v2, "user_id"

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "country_code"

    .line 271
    invoke-virtual {v2, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "dev_brand"

    .line 272
    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "dev_model"

    .line 273
    invoke-virtual {v2, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "dev_carrier"

    .line 274
    invoke-virtual {v2, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "lang"

    .line 275
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "os_ver"

    .line 276
    invoke-virtual {v2, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "user_agent"

    .line 277
    invoke-virtual {v2, v4, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "ts"

    .line 278
    invoke-virtual {v2, v4, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "os_name"

    const-string/jumbo v5, "android"

    .line 279
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "guest_id"

    .line 280
    invoke-static {}, Lcom/twitter/config/b;->a()J

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 281
    sget-object v2, Lcom/twitter/android/util/c;->a:[I

    invoke-virtual/range {p1 .. p1}, Lcom/twitter/android/util/AppEventTrack$EventType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    :goto_1
    move-object v2, v3

    .line 334
    :goto_2
    return-object v2

    .line 268
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 283
    :pswitch_0
    const-string/jumbo v2, "action"

    const-string/jumbo v4, "login"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    const-string/jumbo v2, "integration"

    const-string/jumbo v4, "hasOffersEvent"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 331
    :catch_0
    move-exception v2

    .line 332
    const/4 v2, 0x0

    goto :goto_2

    .line 288
    :pswitch_1
    const-string/jumbo v2, "action"

    const-string/jumbo v4, "signup"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    const-string/jumbo v2, "integration"

    const-string/jumbo v4, "hasOffersEvent"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 293
    :pswitch_2
    move-object/from16 v0, p2

    array-length v2, v0

    const/4 v4, 0x3

    if-ge v2, v4, :cond_2

    .line 294
    const/4 v2, 0x0

    goto :goto_2

    .line 296
    :cond_2
    const-string/jumbo v2, "action"

    const-string/jumbo v4, "launch"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    const-string/jumbo v2, "referrer"

    const/4 v4, 0x2

    aget-object v4, p2, v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    const-string/jumbo v2, "integration"

    const-string/jumbo v4, "hasOffersSession"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 302
    :pswitch_3
    const-string/jumbo v2, "action"

    const-string/jumbo v4, "non_referred_launch"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    const-string/jumbo v2, "integration"

    const-string/jumbo v4, "hasOffersSession"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 307
    :pswitch_4
    move-object/from16 v0, p2

    array-length v2, v0

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    .line 308
    const/4 v2, 0x0

    goto :goto_2

    .line 310
    :cond_3
    const-string/jumbo v2, "action"

    const-string/jumbo v4, "open"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string/jumbo v2, "integration"

    const-string/jumbo v4, "hasOffersSession"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const-string/jumbo v2, "mat_click_id"

    const/4 v4, 0x1

    aget-object v4, p2, v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "ref_src"

    const/4 v5, 0x2

    aget-object v5, p2, v5

    .line 313
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "ref"

    const/4 v5, 0x0

    aget-object v5, p2, v5

    .line 314
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 318
    :pswitch_5
    const-string/jumbo v2, "action"

    const-string/jumbo v4, "non_referred_open"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    const-string/jumbo v2, "integration"

    const-string/jumbo v4, "hasOffersSession"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 323
    :pswitch_6
    const-string/jumbo v2, "action"

    const-string/jumbo v4, "update"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    const-string/jumbo v2, "integration"

    const-string/jumbo v4, "hasOffersSession"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 281
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 509
    invoke-static {p1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "oem_referrer"

    .line 511
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 512
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 514
    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 522
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "oem_referrer"

    const/4 v2, 0x0

    .line 523
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 522
    :goto_0
    return v0

    .line 523
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Lcom/twitter/library/client/l;
    .locals 4

    .prologue
    .line 383
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 384
    new-instance v2, Lcom/twitter/library/client/l;

    const-string/jumbo v3, "app_open_track"

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    return-object v2
.end method
