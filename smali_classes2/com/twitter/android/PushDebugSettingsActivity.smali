.class public Lcom/twitter/android/PushDebugSettingsActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Spinner;

.field private b:Lcom/twitter/android/ms;

.field private c:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    return-void
.end method

.method static a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 459
    const/4 v1, 0x0

    .line 461
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 462
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string/jumbo v2, "\\A"

    invoke-virtual {v0, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 465
    :goto_0
    if-eqz v1, :cond_0

    .line 466
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 463
    :cond_0
    return-object v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 466
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 472
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.google.android.c2dm.intent.RECEIVE"

    .line 473
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "priority"

    const-string/jumbo v2, "1"

    .line 474
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "schema"

    const-string/jumbo v2, "1"

    .line 475
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "type"

    const/16 v2, 0x11d

    .line 476
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "title"

    const-string/jumbo v2, "You are logged out..."

    .line 477
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "text"

    const-string/jumbo v2, "But you still got a notification!"

    .line 478
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "scribe_target"

    const-string/jumbo v2, "logged_out"

    .line 479
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "uri"

    const-string/jumbo v2, "twitter://user?screen_name=dickc"

    .line 480
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 472
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 481
    return-void
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 173
    invoke-static {p0}, Lcom/twitter/library/platform/notifications/PushRegistration;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-static {v1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string/jumbo v0, "Push settings are not enabled on this device"

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 190
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/PushDebugSettingsActivity;->b:Lcom/twitter/android/ms;

    iget-object v2, p0, Lcom/twitter/android/PushDebugSettingsActivity;->a:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/twitter/android/ms;->a(I)Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 179
    if-nez v0, :cond_1

    .line 180
    const-string/jumbo v0, "Please select a user from the list"

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 183
    :cond_1
    iget-wide v2, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-static {p0, v2, v3}, Lcom/twitter/library/platform/notifications/x;->a(Landroid/content/Context;J)Lcom/twitter/library/platform/notifications/x;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/twitter/library/platform/notifications/x;->a(J)V

    .line 184
    invoke-virtual {p0}, Lcom/twitter/android/PushDebugSettingsActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v2

    iget-wide v4, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-virtual {v2, v4, v5}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 185
    new-instance v2, Lblu;

    invoke-direct {v2, p0, v0}, Lblu;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    const/4 v0, 0x1

    .line 186
    invoke-virtual {v2, v0}, Lblu;->d(I)Lcom/twitter/library/service/o;

    move-result-object v0

    check-cast v0, Lblu;

    .line 187
    iput-object v1, v0, Lblu;->a:Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lcom/twitter/android/PushDebugSettingsActivity;->J:Lcom/twitter/library/client/bd;

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 189
    const-string/jumbo v0, "Push check in issued"

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private h()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 193
    iget-object v0, p0, Lcom/twitter/android/PushDebugSettingsActivity;->b:Lcom/twitter/android/ms;

    iget-object v1, p0, Lcom/twitter/android/PushDebugSettingsActivity;->a:Landroid/widget/Spinner;

    .line 194
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 193
    invoke-virtual {v0, v1}, Lcom/twitter/android/ms;->a(I)Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 195
    if-nez v0, :cond_0

    .line 196
    const-string/jumbo v0, "Please select a user from the list"

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 456
    :goto_0
    return-void

    .line 199
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.google.android.c2dm.intent.RECEIVE"

    .line 200
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "priority"

    const-string/jumbo v3, "1"

    .line 201
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "schema"

    const-string/jumbo v3, "1"

    .line 202
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "impression_id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "debug-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 203
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 205
    :try_start_0
    invoke-virtual {p0}, Lcom/twitter/android/PushDebugSettingsActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 206
    const-string/jumbo v3, "push/user_recipient_and_sender.json"

    invoke-static {v2, v3}, Lcom/twitter/android/PushDebugSettingsActivity;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 207
    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 206
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 208
    const-string/jumbo v4, "push/user_recipient.json"

    invoke-static {v2, v4}, Lcom/twitter/android/PushDebugSettingsActivity;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 209
    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v0, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->c()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 208
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 210
    const-string/jumbo v5, "push/tweet.json"

    invoke-static {v2, v5}, Lcom/twitter/android/PushDebugSettingsActivity;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 211
    iget-object v6, p0, Lcom/twitter/android/PushDebugSettingsActivity;->c:Landroid/widget/RadioGroup;

    invoke-virtual {v6}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_0

    .line 224
    :sswitch_0
    const-string/jumbo v0, "scribe_target"

    const-string/jumbo v2, "favorited"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "uri"

    const-string/jumbo v4, "twitter://tweet?status_id=483010988338184193"

    .line 225
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "from"

    const-string/jumbo v4, "49625052041"

    .line 226
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "tweet"

    .line 227
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "collapse_key"

    const-string/jumbo v4, "favorited"

    .line 228
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "type"

    const/4 v4, 0x5

    .line 229
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "users"

    .line 230
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :goto_1
    invoke-virtual {p0, v1}, Lcom/twitter/android/PushDebugSettingsActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 213
    :sswitch_1
    :try_start_1
    const-string/jumbo v0, "scribe_target"

    const-string/jumbo v2, "event_parrot"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "uri"

    const-string/jumbo v3, "twitter://search?query=motorola%20lenovo%20google&event_id=EVENT_NEWS:428637429881638912"

    .line 214
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "from"

    const-string/jumbo v3, "49625052041"

    .line 216
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "text"

    const-string/jumbo v3, "This is a fake Event Parrot notification"

    .line 217
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "collapse_key"

    const-string/jumbo v3, "event_parrot"

    .line 218
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "type"

    const/16 v3, 0xaf

    .line 219
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "users"

    .line 220
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 450
    :catch_0
    move-exception v0

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Push failed due to exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 234
    :sswitch_2
    :try_start_2
    const-string/jumbo v0, "scribe_target"

    const-string/jumbo v2, "retweeted"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "uri"

    const-string/jumbo v4, "twitter://tweet?status_id=483010988338184193"

    .line 235
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "collapse_key"

    const-string/jumbo v4, "retweeted"

    .line 236
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "type"

    const/4 v4, 0x6

    .line 237
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "tweet"

    .line 238
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "users"

    .line 239
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 243
    :sswitch_3
    const-string/jumbo v0, "scribe_target"

    const-string/jumbo v2, "planned_event_sports"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "uri"

    const-string/jumbo v3, "twitter://search?query=%23WorldCup&event_id=MOCKINGJAY_TWO_TEAM_SPORTS_LEAGUE|WC"

    .line 244
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "from"

    const-string/jumbo v3, "49625052041"

    .line 246
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "text"

    const-string/jumbo v3, "Fake World Cup push!"

    .line 247
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "collapse_key"

    const-string/jumbo v3, "planned_event_sports"

    .line 248
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "type"

    const/16 v3, 0xfb

    .line 249
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "users"

    .line 250
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 254
    :sswitch_4
    const-string/jumbo v0, "scribe_target"

    const-string/jumbo v2, "followed_request"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "uri"

    const-string/jumbo v4, "twitter://user?screen_name=chestcoast"

    .line 255
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "from"

    const-string/jumbo v4, "49625052041"

    .line 256
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "collapse_key"

    const-string/jumbo v4, "followed_request"

    .line 257
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "type"

    const/16 v4, 0x18

    .line 258
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "text"

    const-string/jumbo v4, "Requested to follow you"

    .line 259
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "users"

    .line 260
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 264
    :sswitch_5
    const-string/jumbo v0, "scribe_target"

    const-string/jumbo v2, "followed"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "uri"

    const-string/jumbo v4, "twitter://user?screen_name=chestcoast"

    .line 265
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "from"

    const-string/jumbo v4, "49625052041"

    .line 266
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "collapse_key"

    const-string/jumbo v4, "followed"

    .line 267
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "type"

    const/16 v4, 0x17

    .line 268
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "tweet"

    .line 269
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "text"

    const-string/jumbo v4, "@chestcoast is now following you!"

    .line 270
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "users"

    .line 271
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 276
    :sswitch_6
    const-string/jumbo v0, "scribe_target"

    const-string/jumbo v2, "tweet"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "uri"

    const-string/jumbo v4, "twitter://tweet?status_id=483010988338184193"

    .line 277
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "from"

    const-string/jumbo v4, "49625052041"

    .line 278
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "collapse_key"

    const-string/jumbo v4, "tweet"

    .line 279
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "type"

    const/16 v4, 0x4a

    .line 280
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "tweet"

    .line 281
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "text"

    const-string/jumbo v4, "Google\'s understanding of..."

    .line 282
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "users"

    .line 283
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 287
    :sswitch_7
    const-string/jumbo v0, "scribe_target"

    const-string/jumbo v2, "magic_rec_user_2"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "uri"

    const-string/jumbo v4, "twitter://user?screen_name=chestcoast"

    .line 288
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "from"

    const-string/jumbo v4, "49625052041"

    .line 289
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "collapse_key"

    const-string/jumbo v4, "magic_rec_user"

    .line 290
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "type"

    const/16 v4, 0x9a

    .line 291
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "text"

    const-string/jumbo v4, "@truthseeker1985, @vzhabiuk, @ajeet, and 2 more just followed @chestcoast"

    .line 292
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "users"

    .line 294
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 298
    :sswitch_8
    const-string/jumbo v0, "scribe_target"

    const-string/jumbo v4, "magic_rec_tweet_2"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "uri"

    const-string/jumbo v5, "twitter://tweet?status_id=490934786223898626"

    .line 299
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "from"

    const-string/jumbo v5, "49625052041"

    .line 300
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "collapse_key"

    const-string/jumbo v5, "magic_rec_tweet"

    .line 301
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "type"

    const/16 v5, 0x99

    .line 302
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "tweet"

    const-string/jumbo v5, "push/magic_rec_tweet.json"

    .line 303
    invoke-static {v2, v5}, Lcom/twitter/android/PushDebugSettingsActivity;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "users"

    .line 304
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 308
    :sswitch_9
    const-string/jumbo v0, "scribe_target"

    const-string/jumbo v2, "magic_rec_hashtag"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "uri"

    const-string/jumbo v4, "twitter://search?query=%23naacl2015&event_id=EVENT_NEWS:606132978612375552_605969794748194816"

    .line 309
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "from"

    const-string/jumbo v4, "49625052041"

    .line 311
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "collapse_key"

    const-string/jumbo v4, "magic_rec_hashtag"

    .line 312
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "type"

    const/16 v4, 0xd7

    .line 313
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "text"

    const-string/jumbo v4, "@chestcoast, @brendan642, @beaucronin and 2 more are tweeting about #naacl2015"

    .line 314
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "users"

    .line 316
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 320
    :sswitch_a
    const-string/jumbo v3, "collapse_key"

    const-string/jumbo v4, "magic_rec_user"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string/jumbo v3, "type"

    const/16 v4, 0x9a

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string/jumbo v3, "text"

    const-string/jumbo v4, "@ramnathb was just followed by @truthseeker1985, @vzhabiuk, @ajeet, and 2 more."

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string/jumbo v3, "title"

    const-string/jumbo v4, "Quannan + 4"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string/jumbo v3, "from"

    const-string/jumbo v4, "49625052041"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string/jumbo v3, "uri"

    const-string/jumbo v4, "twitter://user?screen_name=ramnathb"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string/jumbo v3, "scribe_target"

    const-string/jumbo v4, "magic_rec_user_7"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string/jumbo v3, "users"

    const-string/jumbo v4, "push/magic_rec_exp_user_users.json"

    .line 329
    invoke-static {v2, v4}, Lcom/twitter/android/PushDebugSettingsActivity;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 330
    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v0, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 328
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string/jumbo v0, "actions"

    const-string/jumbo v3, "push/magic_rec_exp_user_actions.json"

    .line 332
    invoke-static {v2, v3}, Lcom/twitter/android/PushDebugSettingsActivity;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 336
    :sswitch_b
    const-string/jumbo v3, "collapse_key"

    const-string/jumbo v4, "magic_rec_tweet"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string/jumbo v3, "type"

    const/16 v4, 0x99

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string/jumbo v3, "text"

    const-string/jumbo v4, "@ramnathb\'s Tweet was just retweeted by @truthseeker1985, @vzhabiuk, @ajeet, and 2 more."

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string/jumbo v3, "title"

    const-string/jumbo v4, "Quannan + 4"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const-string/jumbo v3, "from"

    const-string/jumbo v4, "49625052041"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const-string/jumbo v3, "uri"

    const-string/jumbo v4, "twitter://tweet?status_id=489160104734773248"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string/jumbo v3, "scribe_target"

    const-string/jumbo v4, "magic_rec_tweet_7"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string/jumbo v3, "users"

    const-string/jumbo v4, "push/magic_rec_exp_tweet_users.json"

    .line 345
    invoke-static {v2, v4}, Lcom/twitter/android/PushDebugSettingsActivity;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 346
    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v0, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 344
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string/jumbo v0, "actions"

    const-string/jumbo v3, "push/magic_rec_exp_tweet_actions.json"

    .line 348
    invoke-static {v2, v3}, Lcom/twitter/android/PushDebugSettingsActivity;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 347
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const-string/jumbo v0, "tweet"

    const-string/jumbo v3, "push/magic_rec_exp_tweet.json"

    .line 350
    invoke-static {v2, v3}, Lcom/twitter/android/PushDebugSettingsActivity;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 349
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 354
    :sswitch_c
    const-string/jumbo v0, "collapse_key"

    const-string/jumbo v2, "magic_rec_user"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const-string/jumbo v0, "type"

    const/16 v2, 0x124

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string/jumbo v0, "text"

    const-string/jumbo v2, "Would you like us to notify you when @ramnathb tweets?"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const-string/jumbo v0, "title"

    const-string/jumbo v2, "Twitter"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string/jumbo v0, "from"

    const-string/jumbo v2, "49625052041"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const-string/jumbo v0, "uri"

    const-string/jumbo v2, "twitter://user?screen_name=ramnathb&df=1"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string/jumbo v0, "scribe_target"

    const-string/jumbo v2, "magic_rec_user_10"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string/jumbo v0, "users"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 365
    :sswitch_d
    const-string/jumbo v0, "schema"

    const-string/jumbo v2, "2"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "type"

    const/16 v4, 0x10e

    .line 366
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "text"

    const-string/jumbo v4, "Stories from Gordon, Todd and 12 more"

    .line 367
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "from"

    const-string/jumbo v4, "49625052041"

    .line 368
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "scribe_target"

    const-string/jumbo v4, "highlights"

    .line 369
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "uri"

    const-string/jumbo v4, "twitter://storystream"

    .line 370
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "users"

    .line 371
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 375
    :sswitch_e
    const-string/jumbo v0, "schema"

    const-string/jumbo v2, "2"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "type"

    const/16 v4, 0x10e

    .line 376
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "text"

    const-string/jumbo v4, "Stories from Gordon, Todd and 12 more"

    .line 377
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "from"

    const-string/jumbo v4, "49625052041"

    .line 378
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "scribe_target"

    const-string/jumbo v4, "highlights"

    .line 379
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "uri"

    const-string/jumbo v4, "twitter://storystream?allow_optout=true"

    .line 380
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "users"

    .line 381
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 385
    :sswitch_f
    const-string/jumbo v0, "type"

    const/16 v4, 0x10e

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "presentation_type"

    const-string/jumbo v5, "magic_rec"

    .line 386
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "text"

    const-string/jumbo v5, "@ZJYIN, @saud, @aneeshs and 2 more are tweeting about Crimea"

    .line 387
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "from"

    const-string/jumbo v5, "49625052041"

    .line 388
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "scribe_target"

    const-string/jumbo v5, "highlights_3"

    .line 389
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "uri"

    const-string/jumbo v5, "twitter://storystream?id=MagicRecTweetFavorite:626120160760336384&ignore_nux=true"

    .line 390
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "tweet"

    const-string/jumbo v5, "push/magic_rec_tweet.json"

    .line 392
    invoke-static {v2, v5}, Lcom/twitter/android/PushDebugSettingsActivity;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "users"

    .line 394
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 398
    :sswitch_10
    const-string/jumbo v3, "type"

    const/16 v4, 0x10e

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "presentation_type"

    const-string/jumbo v5, "rich_magic_rec"

    .line 399
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "text"

    const-string/jumbo v5, "@ramnathb\'s Tweet was just retweeted by @ZJYIN, @saud, @aneeshs, and 2 more."

    .line 400
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "title"

    const-string/jumbo v5, "Quannan + 4"

    .line 402
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "from"

    const-string/jumbo v5, "49625052041"

    .line 403
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "scribe_target"

    const-string/jumbo v5, "highlights_3"

    .line 404
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "uri"

    const-string/jumbo v5, "twitter://storystream?id=MagicRecTweetFavorite:626120160760336384&ignore_nux=true"

    .line 405
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "tweet"

    const-string/jumbo v5, "push/magic_rec_exp_tweet.json"

    .line 407
    invoke-static {v2, v5}, Lcom/twitter/android/PushDebugSettingsActivity;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "users"

    const-string/jumbo v5, "push/magic_rec_exp_tweet_users.json"

    .line 409
    invoke-static {v2, v5}, Lcom/twitter/android/PushDebugSettingsActivity;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 410
    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v0, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 409
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 414
    :sswitch_11
    const-string/jumbo v0, "schema"

    const-string/jumbo v2, "2"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "type"

    const/16 v4, 0x124

    .line 415
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "title"

    const-string/jumbo v4, "Twitter"

    .line 416
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "collapse_key"

    const-string/jumbo v4, "moments"

    .line 417
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "text"

    const-string/jumbo v4, "\"National Hot Dog Day Actually Amazing\" is starting now!"

    .line 418
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "from"

    const-string/jumbo v4, "49625052041"

    .line 419
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "scribe_target"

    const-string/jumbo v4, "moments"

    .line 420
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "uri"

    const-string/jumbo v4, "twitter://moment?moment_id=623510724661243904"

    .line 421
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "users"

    .line 422
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 426
    :sswitch_12
    const-string/jumbo v0, "scribe_target"

    const-string/jumbo v2, "news"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "uri"

    const-string/jumbo v4, "twitter://news"

    .line 427
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "from"

    const-string/jumbo v4, "49625052041"

    .line 428
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "text"

    const-string/jumbo v4, "Fake News push!"

    .line 429
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "users"

    .line 430
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 434
    :sswitch_13
    const-string/jumbo v3, "push/poll_notification_users.json"

    invoke-static {v2, v3}, Lcom/twitter/android/PushDebugSettingsActivity;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 435
    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 434
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 436
    const-string/jumbo v2, "scribe_target"

    const-string/jumbo v3, "poll_announcement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "from"

    const-string/jumbo v4, "49625052041"

    .line 437
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "type"

    const/16 v4, 0x12f

    .line 438
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "text"

    const-string/jumbo v4, "You ran a poll that received one vote. View the results!"

    .line 439
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "uri"

    const-string/jumbo v4, "twitter://tweet?status_id=674371913842495488"

    .line 441
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "collapse_key"

    const-string/jumbo v4, "poll_author"

    .line 442
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "users"

    .line 443
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 211
    :sswitch_data_0
    .sparse-switch
        0x7f13002d -> :sswitch_0
        0x7f130061 -> :sswitch_2
        0x7f13028c -> :sswitch_13
        0x7f1303ea -> :sswitch_e
        0x7f1306d9 -> :sswitch_6
        0x7f1306f1 -> :sswitch_5
        0x7f1306f2 -> :sswitch_4
        0x7f1306f3 -> :sswitch_1
        0x7f1306f4 -> :sswitch_3
        0x7f1306f5 -> :sswitch_7
        0x7f1306f6 -> :sswitch_8
        0x7f1306f7 -> :sswitch_9
        0x7f1306f8 -> :sswitch_a
        0x7f1306f9 -> :sswitch_b
        0x7f1306fa -> :sswitch_c
        0x7f1306fb -> :sswitch_d
        0x7f1306fc -> :sswitch_f
        0x7f1306fd -> :sswitch_10
        0x7f1306fe -> :sswitch_11
        0x7f1306ff -> :sswitch_12
    .end sparse-switch
.end method


# virtual methods
.method protected A_()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/twitter/android/PushDebugSettingsActivity;->a:Landroid/widget/Spinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 126
    return-void
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    const v0, 0x7f040302

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 94
    invoke-virtual {p2, v1}, Lcom/twitter/app/common/base/y;->a(Z)V

    .line 95
    invoke-virtual {p2, v1}, Lcom/twitter/app/common/base/y;->b(Z)V

    .line 96
    invoke-virtual {p2, v1}, Lcom/twitter/app/common/base/y;->c(Z)V

    .line 97
    return-object p2
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/library/client/d;)V
    .locals 2

    .prologue
    .line 102
    const-string/jumbo v0, "Send a push Notification"

    invoke-virtual {p0, v0}, Lcom/twitter/android/PushDebugSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    const v0, 0x7f1306ee

    invoke-virtual {p0, v0}, Lcom/twitter/android/PushDebugSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/twitter/android/PushDebugSettingsActivity;->a:Landroid/widget/Spinner;

    .line 104
    new-instance v0, Lcom/twitter/android/ms;

    invoke-direct {v0, p0}, Lcom/twitter/android/ms;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/PushDebugSettingsActivity;->b:Lcom/twitter/android/ms;

    .line 105
    iget-object v0, p0, Lcom/twitter/android/PushDebugSettingsActivity;->a:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/twitter/android/PushDebugSettingsActivity;->b:Lcom/twitter/android/ms;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 106
    const v0, 0x7f1306f0

    invoke-virtual {p0, v0}, Lcom/twitter/android/PushDebugSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/twitter/android/PushDebugSettingsActivity;->c:Landroid/widget/RadioGroup;

    .line 107
    const v0, 0x7f130700

    invoke-virtual {p0, v0}, Lcom/twitter/android/PushDebugSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v0, 0x7f1306ef

    invoke-virtual {p0, v0}, Lcom/twitter/android/PushDebugSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method

.method protected o()V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/twitter/android/PushDebugSettingsActivity;->onBackPressed()V

    .line 131
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/twitter/android/PushDebugSettingsActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v4

    .line 136
    const/4 v1, 0x0

    .line 137
    new-instance v5, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    array-length v6, p1

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v0, p1, v3

    .line 139
    sget-object v7, Lcom/twitter/library/util/b;->a:Ljava/lang/String;

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 140
    invoke-static {v0}, Lcom/twitter/library/util/b;->a(Landroid/accounts/Account;)Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_3

    .line 142
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v7, v0, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 138
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/PushDebugSettingsActivity;->b:Lcom/twitter/android/ms;

    invoke-virtual {v0, v5}, Lcom/twitter/android/ms;->a(Ljava/util/List;)V

    .line 150
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    iget-object v3, p0, Lcom/twitter/android/PushDebugSettingsActivity;->a:Landroid/widget/Spinner;

    if-eqz v1, :cond_2

    invoke-interface {v5, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 153
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 151
    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 170
    :goto_0
    return-void

    .line 159
    :sswitch_0
    invoke-direct {p0}, Lcom/twitter/android/PushDebugSettingsActivity;->h()V

    goto :goto_0

    .line 163
    :sswitch_1
    invoke-direct {p0}, Lcom/twitter/android/PushDebugSettingsActivity;->c()V

    goto :goto_0

    .line 157
    :sswitch_data_0
    .sparse-switch
        0x7f1306ef -> :sswitch_1
        0x7f130700 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 119
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 120
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onPause()V

    .line 121
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 113
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onResume()V

    .line 114
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 115
    return-void
.end method
