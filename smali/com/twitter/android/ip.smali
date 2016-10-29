.class public Lcom/twitter/android/ip;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method private static a(I)I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 243
    packed-switch p0, :pswitch_data_0

    .line 274
    :goto_0
    :pswitch_0
    return v0

    .line 250
    :pswitch_1
    const v0, 0x7f020454

    goto :goto_0

    .line 253
    :pswitch_2
    const v0, 0x7f020458

    goto :goto_0

    .line 257
    :pswitch_3
    const v0, 0x7f020457

    goto :goto_0

    .line 260
    :pswitch_4
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v0

    invoke-virtual {v0}, Lcbh;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const v0, 0x7f020456

    goto :goto_0

    .line 263
    :cond_0
    const v0, 0x7f020455

    goto :goto_0

    .line 267
    :pswitch_5
    const v0, 0x7f020452

    goto :goto_0

    .line 271
    :pswitch_6
    const v0, 0x7f020453

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Landroid/app/Activity;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    invoke-static {p0}, Lcom/twitter/android/ip;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 143
    packed-switch p1, :pswitch_data_0

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :pswitch_0
    const-string/jumbo v0, "favorite"

    .line 182
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":login_signup_dialog:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 149
    :pswitch_1
    const-string/jumbo v0, "share_via_dm"

    goto :goto_0

    .line 154
    :pswitch_2
    const-string/jumbo v0, "retweet"

    goto :goto_0

    .line 158
    :pswitch_3
    const-string/jumbo v0, "reply"

    goto :goto_0

    .line 162
    :pswitch_4
    const-string/jumbo v0, "follow"

    goto :goto_0

    .line 166
    :pswitch_5
    const-string/jumbo v0, "following"

    goto :goto_0

    .line 170
    :pswitch_6
    const-string/jumbo v0, "followers"

    goto :goto_0

    .line 175
    :pswitch_7
    const-string/jumbo v0, "favorites"

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method

.method static a(Landroid/app/Activity;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 188
    packed-switch p1, :pswitch_data_0

    .line 234
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :pswitch_1
    const v0, 0x7f0a04aa

    .line 238
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 194
    :pswitch_2
    const v0, 0x7f0a04ab

    .line 195
    goto :goto_0

    .line 198
    :pswitch_3
    const v0, 0x7f0a04af

    .line 199
    goto :goto_0

    .line 202
    :pswitch_4
    const v0, 0x7f0a04ae

    .line 203
    goto :goto_0

    .line 206
    :pswitch_5
    const v0, 0x7f0a04ad

    .line 207
    goto :goto_0

    .line 210
    :pswitch_6
    const v0, 0x7f0a04a7

    .line 211
    goto :goto_0

    .line 214
    :pswitch_7
    const v0, 0x7f0a04a9

    .line 215
    goto :goto_0

    .line 218
    :pswitch_8
    const v0, 0x7f0a04a8

    .line 219
    goto :goto_0

    .line 222
    :pswitch_9
    const v0, 0x7f0a04ac

    .line 223
    goto :goto_0

    .line 226
    :pswitch_a
    const v0, 0x7f0a04b1

    .line 227
    goto :goto_0

    .line 230
    :pswitch_b
    const v0, 0x7f0a04b0

    .line 231
    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 320
    invoke-static {p0}, Lcom/twitter/android/ip;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 322
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 323
    invoke-static {p0, v0}, Lcom/twitter/android/util/AppEventTrack;->a(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeLog;)V

    .line 325
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 327
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 353
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "logged_out_landing"

    .line 354
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 355
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 356
    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 96
    invoke-static {p0, p1, p2}, Lcom/twitter/android/ip;->d(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)Lcom/twitter/android/dialog/LoggedOutDialogFragment;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/twitter/android/dialog/LoggedOutDialogFragment;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "::impression"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/twitter/android/ip;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "logged_out_dialog_fragment"

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/dialog/LoggedOutDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static a(ZLandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 300
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const-string/jumbo v0, "is_landing_page"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 303
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->e()Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "is_landing_page"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 82
    :cond_0
    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 367
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "logged_out_landing"

    const-string/jumbo v2, "external"

    .line 368
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    return-object v0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 280
    invoke-static {p0}, Lcom/twitter/android/util/bf;->a(Landroid/content/Context;)Lcom/twitter/android/util/be;

    move-result-object v0

    const/4 v1, 0x1

    .line 281
    invoke-interface {v0, v2, v2, v1}, Lcom/twitter/android/util/be;->a(ZZZ)Lcom/twitter/android/FlowData;

    move-result-object v0

    .line 282
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/FlowActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "flow_data"

    .line 283
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 285
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 286
    if-eqz v1, :cond_0

    .line 287
    const-string/jumbo v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 289
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 290
    return-void
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 338
    invoke-static {p0}, Lcom/twitter/android/ip;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "logged_out_landing"

    .line 340
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 341
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "external:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":::impression"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/android/ip;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 345
    :cond_0
    return-void
.end method

.method public static b(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 112
    invoke-static {p0, p1, p2}, Lcom/twitter/android/ip;->d(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)Lcom/twitter/android/dialog/LoggedOutDialogFragment;

    move-result-object v0

    .line 113
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/twitter/android/iq;

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/iq;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/twitter/android/dialog/LoggedOutDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    return-void
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 306
    invoke-static {p0}, Lcom/twitter/android/ip;->d(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 307
    return-void
.end method

.method public static c(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 380
    const/4 v0, 0x0

    .line 381
    const/16 v1, 0xc

    if-ne p1, v1, :cond_1

    .line 382
    const/16 v0, 0x8

    .line 386
    :cond_0
    :goto_0
    invoke-static {p0, v0, p2}, Lcom/twitter/android/ip;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    .line 387
    return-void

    .line 383
    :cond_1
    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    .line 384
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public static d(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 311
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 312
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 313
    if-eqz v1, :cond_0

    .line 314
    const-string/jumbo v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 316
    :cond_0
    return-object v0
.end method

.method private static d(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)Lcom/twitter/android/dialog/LoggedOutDialogFragment;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/twitter/android/dialog/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/android/dialog/g;-><init>(I)V

    .line 131
    invoke-static {p0, p1}, Lcom/twitter/android/ip;->a(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/dialog/g;->a(Ljava/lang/String;)Lcom/twitter/android/dialog/g;

    move-result-object v0

    const v1, 0x7f0a04a6

    .line 132
    invoke-virtual {v0, v1}, Lcom/twitter/android/dialog/g;->c(I)Lcom/twitter/android/dialog/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/n;

    const v1, 0x7f0a04a5

    .line 133
    invoke-virtual {v0, v1}, Lcom/twitter/android/dialog/n;->d(I)Lcom/twitter/android/dialog/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/n;

    .line 134
    invoke-static {p0, p1, p2}, Lcom/twitter/android/ip;->a(Landroid/app/Activity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/dialog/n;->b(Ljava/lang/CharSequence;)Lcom/twitter/android/dialog/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/n;

    .line 135
    invoke-static {p1}, Lcom/twitter/android/ip;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/dialog/n;->a(I)Lcom/twitter/android/dialog/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/n;

    .line 136
    invoke-virtual {v0}, Lcom/twitter/android/dialog/n;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/LoggedOutDialogFragment;

    .line 130
    return-object v0
.end method
