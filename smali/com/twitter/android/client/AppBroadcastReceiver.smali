.class public Lcom/twitter/android/client/AppBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Twttr"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/twitter/android/client/AppBroadcastReceiver;->a:Ljava/util/Map;

    .line 43
    sget-object v0, Lcom/twitter/android/client/AppBroadcastReceiver;->a:Ljava/util/Map;

    sget-object v1, Lcom/twitter/library/platform/TwitterDataSyncService;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/twitter/android/client/AppBroadcastReceiver;->a:Ljava/util/Map;

    sget-object v1, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/twitter/android/client/AppBroadcastReceiver;->a:Ljava/util/Map;

    sget-object v1, Lcom/twitter/android/client/WidgetControl;->b:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/twitter/android/client/AppBroadcastReceiver;->a:Ljava/util/Map;

    sget-object v1, Lcom/twitter/android/client/WidgetControl;->c:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/twitter/android/client/AppBroadcastReceiver;->a:Ljava/util/Map;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/twitter/android/client/AppBroadcastReceiver;->a:Ljava/util/Map;

    sget-object v1, Lcom/twitter/library/provider/cn;->b:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/twitter/android/client/AppBroadcastReceiver;->a:Ljava/util/Map;

    sget-object v1, Lcom/twitter/android/card/j;->a:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/client/AppBroadcastReceiver;->b:Z

    return-void
.end method


# virtual methods
.method a()Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .prologue
    .line 56
    sget-object v0, Lcom/twitter/android/client/AppBroadcastReceiver;->a:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 57
    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 63
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 64
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/config/AppConfig;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    invoke-static {}, Lcom/twitter/util/telephony/TelephonyUtil;->i()Lcom/twitter/util/telephony/TelephonyUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/util/telephony/TelephonyUtil;->g()Ljava/lang/String;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_2

    const-string/jumbo v2, "\""

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Dodo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    invoke-static {p1}, Lcom/twitter/android/client/p;->a(Landroid/content/Context;)V

    .line 71
    :cond_2
    new-instance v1, Lcom/twitter/platform/o;

    invoke-direct {v1, p1}, Lcom/twitter/platform/o;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-static {}, Lcom/twitter/platform/n;->a()Lcom/twitter/platform/n;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/twitter/platform/n;->a(Lcom/twitter/platform/q;)V

    .line 75
    invoke-static {p1}, Lbki;->a(Landroid/content/Context;)Lbki;

    move-result-object v1

    .line 76
    invoke-static {}, Lcom/twitter/util/telephony/TelephonyUtil;->i()Lcom/twitter/util/telephony/TelephonyUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/util/telephony/TelephonyUtil;->c()Z

    move-result v2

    iget-boolean v3, p0, Lcom/twitter/android/client/AppBroadcastReceiver;->b:Z

    invoke-virtual {v1, v2, v3}, Lbki;->e(ZZ)V

    .line 77
    invoke-static {}, Lcom/twitter/util/telephony/TelephonyUtil;->i()Lcom/twitter/util/telephony/TelephonyUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/util/telephony/TelephonyUtil;->c()Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/client/AppBroadcastReceiver;->b:Z

    .line 80
    :cond_3
    const-string/jumbo v1, "logged_out_notification"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    .line 81
    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/twitter/android/client/AppBroadcastReceiver;->a()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 82
    invoke-static {p1}, Lcom/twitter/android/client/c;->a(Landroid/content/Context;)Lcom/twitter/android/client/c;

    move-result-object v1

    .line 83
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 85
    :pswitch_1
    invoke-virtual {v1, p2}, Lcom/twitter/android/client/c;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 89
    :pswitch_2
    invoke-static {p1}, Lcom/twitter/android/client/cd;->a(Landroid/content/Context;)Lcom/twitter/android/client/cd;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/twitter/android/client/cd;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 93
    :pswitch_3
    invoke-static {p1}, Lcom/twitter/android/client/cd;->a(Landroid/content/Context;)Lcom/twitter/android/client/cd;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/twitter/android/client/cd;->b(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 97
    :pswitch_4
    const-string/jumbo v0, "widget_provider"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 98
    if-lez v0, :cond_0

    .line 99
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/client/WidgetService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "widget_provider"

    .line 100
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 101
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 103
    invoke-static {p1}, Lcom/twitter/android/client/cd;->a(Landroid/content/Context;)Lcom/twitter/android/client/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/client/cd;->a()V

    .line 104
    const-string/jumbo v1, "on_update"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 106
    :cond_4
    const-string/jumbo v1, "clear_logged_out"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 113
    :pswitch_5
    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/client/c;->a([Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 118
    :pswitch_6
    const-string/jumbo v0, "scribe_log"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 119
    const-string/jumbo v0, "scribe_download_log"

    .line 120
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 121
    new-instance v0, Lcom/twitter/android/revenue/u;

    invoke-direct {v0}, Lcom/twitter/android/revenue/u;-><init>()V

    .line 122
    const-string/jumbo v1, "app_id"

    .line 123
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "promoted_content"

    sget-object v5, Lcss;->a:Lcom/twitter/util/serialization/d;

    .line 124
    invoke-static {p2, v1, v5}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcss;

    const-string/jumbo v1, "timestamp"

    const-wide/16 v6, 0x0

    .line 126
    invoke-virtual {p2, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string/jumbo v1, "timeframe"

    const-wide/32 v8, 0x1b7740

    .line 127
    invoke-virtual {p2, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string/jumbo v1, "polling_interval"

    const-wide/32 v10, 0x927c0

    .line 129
    invoke-virtual {p2, v1, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    move-object v1, p1

    .line 122
    invoke-virtual/range {v0 .. v11}, Lcom/twitter/android/revenue/u;->a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeLog;Lcom/twitter/library/scribe/TwitterScribeLog;Lcss;JJJ)V

    goto/16 :goto_0

    .line 137
    :cond_5
    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 138
    const-string/jumbo v0, "logged_out_notification"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v1, Lcom/twitter/library/platform/notifications/a;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/platform/notifications/a;

    .line 140
    invoke-static {p1}, Lcom/twitter/android/client/y;->a(Landroid/content/Context;)Lcom/twitter/android/client/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/y;->b(Lcom/twitter/library/platform/notifications/a;)V

    goto/16 :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 113
    :array_0
    .array-data 4
        -0x3
        -0x1
    .end array-data
.end method
