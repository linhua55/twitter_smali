.class public Lcom/twitter/android/client/WidgetService;
.super Landroid/app/IntentService;
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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 118
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "open"

    const/4 v2, 0x1

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "close"

    const/4 v2, 0x2

    .line 120
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "refresh"

    const/4 v2, 0x3

    .line 121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "clear_logged_out"

    const/4 v2, 0x4

    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "on_update"

    const/4 v2, 0x5

    .line 123
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "on_delete"

    const/4 v2, 0x6

    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/twitter/android/client/WidgetService;->a:Ljava/util/Map;

    .line 118
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 128
    const-string/jumbo v0, "WidgetService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)Lcom/twitter/android/client/WidgetControl;
    .locals 4

    .prologue
    .line 233
    invoke-static {p0}, Lcom/twitter/android/client/cd;->a(Landroid/content/Context;)Lcom/twitter/android/client/cd;

    move-result-object v0

    const-string/jumbo v1, "account_id"

    const-wide/16 v2, 0x0

    .line 234
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 233
    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/client/cd;->a(J)Lcom/twitter/android/client/WidgetControl;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/twitter/android/client/WidgetControl;JJ)V
    .locals 2

    .prologue
    .line 239
    invoke-virtual {p1}, Lcom/twitter/android/client/WidgetControl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-wide v0, p1, Lcom/twitter/android/client/WidgetControl;->e:J

    .line 241
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/twitter/android/client/WidgetControl;->a(I)V

    .line 242
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/twitter/android/client/WidgetControl;->a(I)V

    .line 244
    :cond_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const-wide/16 v8, -0x1

    const v5, 0x7f080005

    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    .line 133
    if-nez p1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 138
    sget-object v1, Lcom/twitter/android/client/WidgetService;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 139
    if-nez v0, :cond_3

    move v0, v7

    .line 141
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 143
    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/android/client/WidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 144
    invoke-static {v0, p1}, Lcom/twitter/android/client/WidgetService;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/twitter/android/client/WidgetControl;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_0

    .line 149
    invoke-static {}, Lcom/twitter/app/common/account/d;->a()Lcom/twitter/app/common/account/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/app/common/account/d;->b()I

    move-result v4

    if-ge v4, v10, :cond_2

    .line 151
    invoke-static {v0}, Lcom/twitter/library/provider/ar;->a(Landroid/content/Context;)Lcom/twitter/library/provider/ar;

    move-result-object v4

    iget-wide v6, v1, Lcom/twitter/android/client/WidgetControl;->e:J

    .line 152
    invoke-virtual {v4, v8, v9, v6, v7}, Lcom/twitter/library/provider/ar;->a(JJ)I

    .line 156
    :cond_2
    invoke-virtual {v1}, Lcom/twitter/android/client/WidgetControl;->a()V

    .line 157
    invoke-virtual {v1, v10}, Lcom/twitter/android/client/WidgetControl;->e(I)V

    move-wide v4, v2

    .line 158
    invoke-static/range {v0 .. v5}, Lcom/twitter/android/client/WidgetService;->a(Landroid/content/Context;Lcom/twitter/android/client/WidgetControl;JJ)V

    goto :goto_0

    .line 139
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 162
    :pswitch_1
    invoke-virtual {p0}, Lcom/twitter/android/client/WidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 163
    invoke-static {v0, p1}, Lcom/twitter/android/client/WidgetService;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/twitter/android/client/WidgetControl;

    move-result-object v1

    .line 164
    if-eqz v1, :cond_0

    .line 169
    invoke-static {v0}, Lcom/twitter/library/provider/ar;->a(Landroid/content/Context;)Lcom/twitter/library/provider/ar;

    move-result-object v0

    iget-wide v2, v1, Lcom/twitter/android/client/WidgetControl;->e:J

    invoke-virtual {v0, v2, v3, v8, v9}, Lcom/twitter/library/provider/ar;->a(JJ)I

    .line 173
    const-string/jumbo v0, "widget_state"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 174
    invoke-virtual {v1}, Lcom/twitter/android/client/WidgetControl;->a()V

    .line 175
    invoke-virtual {v1, v0}, Lcom/twitter/android/client/WidgetControl;->e(I)V

    goto :goto_0

    .line 179
    :pswitch_2
    invoke-virtual {p0}, Lcom/twitter/android/client/WidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 180
    invoke-static {v0, p1}, Lcom/twitter/android/client/WidgetService;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/twitter/android/client/WidgetControl;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {v1}, Lcom/twitter/android/client/WidgetControl;->a()V

    .line 186
    const-string/jumbo v4, "latest_time_tweets"

    .line 187
    invoke-virtual {p1, v4, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string/jumbo v4, "latest_time_mentions"

    .line 188
    invoke-virtual {p1, v4, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move-wide v2, v6

    .line 186
    invoke-static/range {v0 .. v5}, Lcom/twitter/android/client/WidgetService;->a(Landroid/content/Context;Lcom/twitter/android/client/WidgetControl;JJ)V

    goto/16 :goto_0

    .line 192
    :pswitch_3
    invoke-virtual {p0}, Lcom/twitter/android/client/WidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 193
    const-string/jumbo v1, "widget_provider"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 196
    if-ne v4, v5, :cond_4

    .line 197
    const v5, 0x7f040411

    .line 198
    const v6, 0x7f04040d

    .line 203
    :goto_2
    new-instance v1, Lcom/twitter/android/client/ce;

    move-wide v2, v8

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/client/ce;-><init>(JIII)V

    .line 205
    invoke-virtual {v1, v0}, Lcom/twitter/android/client/ce;->b(Landroid/content/Context;)[I

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/client/ce;->a(Landroid/content/Context;[I)V

    .line 206
    const-string/jumbo v2, ""

    invoke-static {v0, v1, v7, v2, v7}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Lcom/twitter/android/client/ce;ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 200
    :cond_4
    const v5, 0x7f040412

    .line 201
    const v6, 0x7f04040e

    goto :goto_2

    .line 211
    :pswitch_4
    invoke-virtual {p0}, Lcom/twitter/android/client/WidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 212
    const-string/jumbo v1, "widget_provider"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 214
    invoke-static {v0}, Lcom/twitter/android/client/cd;->a(Landroid/content/Context;)Lcom/twitter/android/client/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/cd;->b()Ljava/util/Collection;

    move-result-object v0

    .line 215
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/WidgetControl;

    .line 216
    invoke-virtual {v0}, Lcom/twitter/android/client/WidgetControl;->a()V

    .line 217
    invoke-virtual {v0, v1}, Lcom/twitter/android/client/WidgetControl;->d(I)V

    goto :goto_3

    .line 222
    :pswitch_5
    invoke-static {p0}, Lcom/twitter/library/provider/ar;->a(Landroid/content/Context;)Lcom/twitter/library/provider/ar;

    move-result-object v0

    const-string/jumbo v1, "widget_ids"

    .line 223
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/ar;->a([I)I

    goto/16 :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
