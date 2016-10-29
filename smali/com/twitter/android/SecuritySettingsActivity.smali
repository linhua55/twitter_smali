.class public Lcom/twitter/android/SecuritySettingsActivity;
.super Lcom/twitter/android/client/TwitterPreferenceActivity;
.source "Twttr"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/twitter/android/ps;

.field private c:Z

.field private f:Z

.field private g:Z

.field private h:Landroid/preference/Preference;

.field private i:Landroid/preference/Preference;

.field private j:Landroid/preference/Preference;

.field private k:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/twitter/android/client/TwitterPreferenceActivity;-><init>()V

    return-void
.end method

.method private static a([I)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 791
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    aget v0, p0, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/SecuritySettingsActivity;)J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    return-wide v0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 471
    invoke-virtual {p0, p1}, Lcom/twitter/android/SecuritySettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 472
    return-void
.end method

.method private a(Ljava/lang/String;I[I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 805
    const-string/jumbo v0, "settings:login_verification:"

    .line 806
    invoke-static {p3}, Lcom/twitter/android/SecuritySettingsActivity;->a([I)I

    move-result v1

    .line 807
    const/16 v0, 0x58

    if-ne v1, v0, :cond_0

    .line 808
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v6, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "settings:login_verification:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "::rate_limit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 810
    :cond_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/SecuritySettingsActivity;->l()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v6, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "settings:login_verification:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "::failure"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 811
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 812
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->f(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 813
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->d(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 814
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 815
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/SecuritySettingsActivity;Lcom/twitter/library/service/x;I)Z
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/SecuritySettingsActivity;->b(Lcom/twitter/library/service/x;I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/twitter/android/SecuritySettingsActivity;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/twitter/android/SecuritySettingsActivity;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/twitter/android/SecuritySettingsActivity;)J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    return-wide v0
.end method

.method private b(Z)V
    .locals 4

    .prologue
    .line 412
    if-eqz p1, :cond_0

    .line 413
    const v0, 0x7f0a04e0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SecuritySettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SecuritySettingsActivity;->a(Ljava/lang/String;)V

    .line 415
    :cond_0
    new-instance v0, Lbks;

    .line 416
    invoke-virtual {p0}, Lcom/twitter/android/SecuritySettingsActivity;->k()Lcom/twitter/library/client/bk;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/SecuritySettingsActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/twitter/library/client/bk;->b(Ljava/lang/String;)Lcom/twitter/library/client/Session;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    .line 417
    invoke-static {p0, v2, v3}, Lblh;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lbks;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 415
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/SecuritySettingsActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 419
    return-void
.end method

.method static synthetic b(Lcom/twitter/android/SecuritySettingsActivity;Lcom/twitter/library/service/x;I)Z
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/SecuritySettingsActivity;->b(Lcom/twitter/library/service/x;I)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 491
    .line 492
    new-instance v0, Lcom/twitter/android/pi;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/pi;-><init>(Lcom/twitter/android/SecuritySettingsActivity;Ljava/lang/String;)V

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/twitter/android/SecuritySettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 342
    const-string/jumbo v1, "login_verification_totp_code"

    invoke-virtual {p0, v1}, Lcom/twitter/android/SecuritySettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "login_verification_totp_generator_enabled"

    .line 343
    invoke-static {v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/twitter/android/SecuritySettingsActivity;->k:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 346
    :cond_0
    const-string/jumbo v1, "login_verification_generate_code"

    invoke-virtual {p0, v1}, Lcom/twitter/android/SecuritySettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_1

    .line 347
    iget-object v1, p0, Lcom/twitter/android/SecuritySettingsActivity;->h:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 349
    :cond_1
    const-string/jumbo v1, "temporary_app_password"

    invoke-virtual {p0, v1}, Lcom/twitter/android/SecuritySettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_2

    .line 350
    iget-object v1, p0, Lcom/twitter/android/SecuritySettingsActivity;->j:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 352
    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/twitter/android/SecuritySettingsActivity;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/twitter/android/SecuritySettingsActivity;->g()V

    return-void
.end method

.method static synthetic d(Lcom/twitter/android/SecuritySettingsActivity;)J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    return-wide v0
.end method

.method private d(Ljava/lang/String;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 527
    .line 528
    new-instance v0, Lcom/twitter/android/pj;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/pj;-><init>(Lcom/twitter/android/SecuritySettingsActivity;Ljava/lang/String;)V

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/twitter/android/SecuritySettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 356
    iget-wide v2, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    invoke-static {p0, v2, v3}, Lblh;->i(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 357
    const-string/jumbo v2, "login_verification_totp_code"

    invoke-virtual {p0, v2}, Lcom/twitter/android/SecuritySettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "login_verification_totp_generator_enabled"

    .line 358
    invoke-static {v2}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/twitter/android/SecuritySettingsActivity;->k:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 362
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/twitter/android/SecuritySettingsActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/twitter/android/SecuritySettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 366
    const-string/jumbo v1, "login_verification_check_requests"

    invoke-virtual {p0, v1}, Lcom/twitter/android/SecuritySettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/twitter/android/SecuritySettingsActivity;->i:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/SecuritySettingsActivity;->c()V

    .line 370
    return-void
.end method

.method static synthetic f(Lcom/twitter/android/SecuritySettingsActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/twitter/android/SecuritySettingsActivity;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/twitter/android/SecuritySettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 374
    iget-object v1, p0, Lcom/twitter/android/SecuritySettingsActivity;->i:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 375
    iget-object v1, p0, Lcom/twitter/android/SecuritySettingsActivity;->h:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 376
    iget-object v1, p0, Lcom/twitter/android/SecuritySettingsActivity;->j:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 377
    iget-object v1, p0, Lcom/twitter/android/SecuritySettingsActivity;->k:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 378
    return-void
.end method

.method static synthetic g(Lcom/twitter/android/SecuritySettingsActivity;)J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    return-wide v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->f:Z

    .line 476
    const-string/jumbo v0, "native_mobile_sms_2fa_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    new-instance v0, Lbkw;

    invoke-virtual {p0}, Lcom/twitter/android/SecuritySettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 478
    invoke-virtual {p0}, Lcom/twitter/android/SecuritySettingsActivity;->k()Lcom/twitter/library/client/bk;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/SecuritySettingsActivity;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/twitter/library/client/bk;->b(Ljava/lang/String;)Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbkw;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    const/4 v1, 0x4

    .line 477
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/SecuritySettingsActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 486
    :goto_0
    return-void

    .line 482
    :cond_0
    new-instance v0, Lcom/twitter/android/pr;

    .line 483
    invoke-virtual {p0}, Lcom/twitter/android/SecuritySettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/SecuritySettingsActivity;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/twitter/android/pr;-><init>(Lcom/twitter/android/SecuritySettingsActivity;Landroid/content/Context;Ljava/lang/String;)V

    .line 484
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/android/pr;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic h(Lcom/twitter/android/SecuritySettingsActivity;)J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    return-wide v0
.end method

.method static synthetic i(Lcom/twitter/android/SecuritySettingsActivity;)J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    return-wide v0
.end method

.method private i()Ljava/lang/String;
    .locals 4

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/twitter/android/SecuritySettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 819
    iget-wide v2, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    invoke-static {v0, v2, v3}, Lblh;->a(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 820
    iget-wide v2, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    invoke-static {v0, v2, v3}, Lblh;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 822
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lcom/twitter/android/SecuritySettingsActivity;)J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    return-wide v0
.end method

.method static synthetic k(Lcom/twitter/android/SecuritySettingsActivity;)J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    return-wide v0
.end method

.method static synthetic l(Lcom/twitter/android/SecuritySettingsActivity;)J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    return-wide v0
.end method

.method static synthetic m(Lcom/twitter/android/SecuritySettingsActivity;)J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    return-wide v0
.end method

.method static synthetic n(Lcom/twitter/android/SecuritySettingsActivity;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->f:Z

    return v0
.end method

.method private o()Z
    .locals 2

    .prologue
    .line 880
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/twitter/android/SecuritySettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 881
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic o(Lcom/twitter/android/SecuritySettingsActivity;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->c:Z

    return v0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 801
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/twitter/android/SecuritySettingsActivity;->removeDialog(I)V

    .line 802
    return-void
.end method

.method public a(Lcom/twitter/library/service/x;I)V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/16 v7, 0xb

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 162
    invoke-super {p0, p1, p2}, Lcom/twitter/android/client/TwitterPreferenceActivity;->a(Lcom/twitter/library/service/x;I)V

    .line 163
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 164
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->g()Lcom/twitter/internal/network/k;

    move-result-object v1

    iget v2, v1, Lcom/twitter/internal/network/k;->a:I

    .line 166
    packed-switch p2, :pswitch_data_0

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 168
    :pswitch_0
    iget-object v0, v0, Lcom/twitter/library/service/aa;->c:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/twitter/library/network/at;->a(Landroid/os/Bundle;)[I

    move-result-object v0

    .line 169
    invoke-static {v0}, Lcom/twitter/android/SecuritySettingsActivity;->a([I)I

    move-result v1

    .line 171
    iput-boolean v5, p0, Lcom/twitter/android/SecuritySettingsActivity;->f:Z

    .line 172
    invoke-virtual {p0}, Lcom/twitter/android/SecuritySettingsActivity;->a()V

    .line 174
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 175
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "settings:login_verification:set_enabled_for::success"

    aput-object v2, v1, v5

    .line 176
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 175
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 177
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "settings:login_verification:enroll::success"

    aput-object v2, v1, v5

    .line 178
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 177
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 179
    const v0, 0x7f0a04e6

    invoke-direct {p0, v0}, Lcom/twitter/android/SecuritySettingsActivity;->a(I)V

    .line 180
    const-string/jumbo v0, "login_verification"

    .line 181
    invoke-virtual {p0, v0}, Lcom/twitter/android/SecuritySettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 182
    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 184
    const-string/jumbo v0, "native_mobile_sms_2fa_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/twitter/android/SecuritySettingsActivity;->c()V

    .line 192
    :goto_1
    iput-boolean v5, p0, Lcom/twitter/android/SecuritySettingsActivity;->g:Z

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/BackupCodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "show_welcome"

    .line 194
    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "bc_account_id"

    iget-wide v2, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    .line 195
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 193
    invoke-virtual {p0, v0}, Lcom/twitter/android/SecuritySettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-direct {p0}, Lcom/twitter/android/SecuritySettingsActivity;->e()V

    goto :goto_1

    .line 196
    :cond_2
    const/16 v3, 0x190

    if-ne v2, v3, :cond_3

    const/16 v3, 0xf7

    if-ne v1, v3, :cond_3

    .line 198
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "settings:login_verification:set_enabled_for::failure"

    aput-object v2, v1, v5

    .line 199
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 198
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 200
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "settings:login_verification:enroll::success"

    aput-object v2, v1, v5

    .line 201
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 200
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 202
    const v0, 0x7f0a04e6

    invoke-direct {p0, v0}, Lcom/twitter/android/SecuritySettingsActivity;->a(I)V

    .line 203
    const-string/jumbo v0, "login_verification"

    .line 204
    invoke-virtual {p0, v0}, Lcom/twitter/android/SecuritySettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 205
    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 206
    iput-boolean v5, p0, Lcom/twitter/android/SecuritySettingsActivity;->g:Z

    .line 207
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/twitter/android/SecuritySettingsActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 209
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/android/SecuritySettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v4, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    invoke-static {v1, v4, v5}, Lblf;->b(Landroid/content/Context;J)Z

    .line 210
    const-string/jumbo v1, "enroll"

    invoke-direct {p0, v1, v2, v0}, Lcom/twitter/android/SecuritySettingsActivity;->a(Ljava/lang/String;I[I)V

    .line 211
    const v0, 0x7f0a04e3

    invoke-direct {p0, v0}, Lcom/twitter/android/SecuritySettingsActivity;->a(I)V

    goto/16 :goto_0

    .line 216
    :pswitch_1
    iget-object v1, v0, Lcom/twitter/library/service/aa;->c:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/twitter/library/network/at;->a(Landroid/os/Bundle;)[I

    move-result-object v1

    .line 217
    invoke-virtual {p0}, Lcom/twitter/android/SecuritySettingsActivity;->a()V

    .line 218
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 219
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "settings:login_verification:unenroll::success"

    aput-object v2, v1, v5

    .line 220
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 219
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 221
    invoke-virtual {p0}, Lcom/twitter/android/SecuritySettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    invoke-static {v0, v2, v3}, Lblf;->b(Landroid/content/Context;J)Z

    .line 222
    const-string/jumbo v0, "login_verification"

    .line 223
    invoke-virtual {p0, v0}, Lcom/twitter/android/SecuritySettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 224
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 225
    iput-boolean v5, p0, Lcom/twitter/android/SecuritySettingsActivity;->g:Z

    .line 226
    invoke-direct {p0}, Lcom/twitter/android/SecuritySettingsActivity;->f()V

    goto/16 :goto_0

    .line 228
    :cond_4
    const-string/jumbo v0, "unenroll"

    invoke-direct {p0, v0, v2, v1}, Lcom/twitter/android/SecuritySettingsActivity;->a(Ljava/lang/String;I[I)V

    .line 229
    const v0, 0x7f0a04e3

    invoke-direct {p0, v0}, Lcom/twitter/android/SecuritySettingsActivity;->a(I)V

    goto/16 :goto_0

    :pswitch_2
    move-object v1, p1

    .line 234
    check-cast v1, Lbks;

    invoke-virtual {v1}, Lbks;->g()[I

    move-result-object v1

    .line 235
    invoke-static {v1}, Lcom/twitter/android/SecuritySettingsActivity;->a([I)I

    move-result v3

    .line 236
    iget-boolean v4, p0, Lcom/twitter/android/SecuritySettingsActivity;->f:Z

    if-nez v4, :cond_5

    .line 237
    invoke-virtual {p0}, Lcom/twitter/android/SecuritySettingsActivity;->a()V

    .line 239
    :cond_5
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 240
    check-cast p1, Lbks;

    .line 241
    invoke-virtual {p1}, Lbks;->e()Lcom/twitter/model/account/LvEligibilityResponse;

    move-result-object v1

    .line 242
    iget-boolean v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->f:Z

    if-nez v0, :cond_6

    .line 243
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "settings:login_verification:eligibility::success"

    aput-object v3, v2, v5

    .line 244
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 243
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 246
    :cond_6
    const-string/jumbo v0, "sms"

    invoke-virtual {v1}, Lcom/twitter/model/account/LvEligibilityResponse;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 247
    const-string/jumbo v0, "native_mobile_sms_2fa_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const-string/jumbo v0, "login_verification"

    invoke-virtual {p0, v0}, Lcom/twitter/android/SecuritySettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 250
    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 251
    invoke-direct {p0}, Lcom/twitter/android/SecuritySettingsActivity;->c()V

    goto/16 :goto_0

    .line 256
    :cond_7
    iget-boolean v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->f:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "push"

    .line 257
    invoke-virtual {v1}, Lcom/twitter/model/account/LvEligibilityResponse;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 258
    iput-boolean v5, p0, Lcom/twitter/android/SecuritySettingsActivity;->f:Z

    .line 259
    invoke-virtual {p0}, Lcom/twitter/android/SecuritySettingsActivity;->a()V

    .line 261
    :cond_8
    iget-boolean v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->f:Z

    if-nez v0, :cond_9

    .line 262
    const-string/jumbo v0, "login_verification"

    invoke-virtual {p0, v0}, Lcom/twitter/android/SecuritySettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 263
    const-string/jumbo v2, "push"

    .line 264
    invoke-virtual {v1}, Lcom/twitter/model/account/LvEligibilityResponse;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 266
    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 267
    invoke-direct {p0}, Lcom/twitter/android/SecuritySettingsActivity;->e()V

    .line 274
    :cond_9
    :goto_2
    invoke-virtual {v1}, Lcom/twitter/model/account/LvEligibilityResponse;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 275
    iput-boolean v6, p0, Lcom/twitter/android/SecuritySettingsActivity;->g:Z

    .line 276
    invoke-virtual {p0, v7}, Lcom/twitter/android/SecuritySettingsActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 270
    :cond_a
    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 271
    invoke-direct {p0}, Lcom/twitter/android/SecuritySettingsActivity;->f()V

    goto :goto_2

    .line 278
    :cond_b
    iput-boolean v5, p0, Lcom/twitter/android/SecuritySettingsActivity;->g:Z

    goto/16 :goto_0

    .line 282
    :cond_c
    const-string/jumbo v0, "eligibility"

    invoke-direct {p0, v0, v2, v1}, Lcom/twitter/android/SecuritySettingsActivity;->a(Ljava/lang/String;I[I)V

    .line 283
    const-string/jumbo v0, "native_mobile_sms_2fa_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    packed-switch v3, :pswitch_data_1

    .line 303
    invoke-virtual {p0}, Lcom/twitter/android/SecuritySettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    invoke-static {v0, v2, v3}, Lblh;->a(Landroid/content/Context;J)Z

    move-result v0

    .line 304
    if-nez v0, :cond_0

    .line 305
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/twitter/android/SecuritySettingsActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 286
    :pswitch_3
    invoke-virtual {p0, v8}, Lcom/twitter/android/SecuritySettingsActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 292
    :pswitch_4
    invoke-virtual {p0, v7}, Lcom/twitter/android/SecuritySettingsActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 296
    :pswitch_5
    invoke-virtual {p0, v9}, Lcom/twitter/android/SecuritySettingsActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 315
    :pswitch_6
    check-cast p1, Lbkw;

    invoke-virtual {p1}, Lbkw;->e()[I

    move-result-object v1

    .line 316
    invoke-virtual {p0}, Lcom/twitter/android/SecuritySettingsActivity;->a()V

    .line 317
    invoke-static {v0}, Lcom/twitter/library/network/at;->a(Lcom/twitter/library/service/aa;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    if-eqz v1, :cond_d

    const/16 v0, 0xe8

    invoke-static {v1, v0}, Lcom/twitter/util/collection/CollectionUtils;->a([II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 320
    invoke-virtual {p0, v8}, Lcom/twitter/android/SecuritySettingsActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 321
    :cond_d
    if-eqz v1, :cond_e

    const/16 v0, 0xe9

    invoke-static {v1, v0}, Lcom/twitter/util/collection/CollectionUtils;->a([II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 323
    invoke-virtual {p0, v7}, Lcom/twitter/android/SecuritySettingsActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 324
    :cond_e
    if-eqz v1, :cond_f

    const/16 v0, 0xea

    invoke-static {v1, v0}, Lcom/twitter/util/collection/CollectionUtils;->a([II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 326
    invoke-virtual {p0, v9}, Lcom/twitter/android/SecuritySettingsActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 328
    :cond_f
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/twitter/android/SecuritySettingsActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 284
    :pswitch_data_1
    .packed-switch 0xe8
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 795
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 796
    const-string/jumbo v1, "msg"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/SecuritySettingsActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 798
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-super {p0, p1}, Lcom/twitter/android/client/TwitterPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-static {p0}, Lcom/twitter/android/client/c;->a(Landroid/content/Context;)Lcom/twitter/android/client/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->e:Lcom/twitter/android/client/c;

    .line 105
    const v0, 0x7f0a07f8

    invoke-virtual {p0, v0}, Lcom/twitter/android/SecuritySettingsActivity;->setTitle(I)V

    .line 107
    invoke-virtual {p0}, Lcom/twitter/android/SecuritySettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "SecuritySettingsActivity_account_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->a:Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Lcom/twitter/android/SecuritySettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "SecuritySettingsActivity_account_id"

    invoke-virtual {p0}, Lcom/twitter/android/SecuritySettingsActivity;->l()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    .line 110
    if-eqz p1, :cond_1

    .line 111
    const-string/jumbo v0, "enrolling"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->f:Z

    .line 116
    :goto_0
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/twitter/android/SecuritySettingsActivity;->addPreferencesFromResource(I)V

    .line 119
    invoke-virtual {p0}, Lcom/twitter/android/SecuritySettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    .line 118
    invoke-static {v0, v2, v3}, Lblh;->a(Landroid/content/Context;J)Z

    move-result v2

    .line 121
    const-string/jumbo v0, "login_verification"

    invoke-virtual {p0, v0}, Lcom/twitter/android/SecuritySettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 122
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object v0, v1

    .line 123
    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 124
    const-string/jumbo v0, "native_mobile_sms_2fa_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const v0, 0x7f0a07ad

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 128
    :cond_0
    const-string/jumbo v0, "login_verification_generate_code"

    invoke-virtual {p0, v0}, Lcom/twitter/android/SecuritySettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->h:Landroid/preference/Preference;

    .line 129
    iget-object v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->h:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 130
    const-string/jumbo v0, "login_verification_check_requests"

    invoke-virtual {p0, v0}, Lcom/twitter/android/SecuritySettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->i:Landroid/preference/Preference;

    .line 131
    iget-object v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->i:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 132
    const-string/jumbo v0, "temporary_app_password"

    invoke-virtual {p0, v0}, Lcom/twitter/android/SecuritySettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->j:Landroid/preference/Preference;

    .line 133
    iget-object v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->j:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 134
    const-string/jumbo v0, "login_verification_totp_code"

    invoke-virtual {p0, v0}, Lcom/twitter/android/SecuritySettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->k:Landroid/preference/Preference;

    .line 135
    iget-object v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->k:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 137
    invoke-direct {p0}, Lcom/twitter/android/SecuritySettingsActivity;->f()V

    .line 139
    new-instance v0, Lcom/twitter/android/ps;

    invoke-direct {v0, p0}, Lcom/twitter/android/ps;-><init>(Lcom/twitter/android/SecuritySettingsActivity;)V

    iput-object v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->b:Lcom/twitter/android/ps;

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    sget-object v1, Lcom/twitter/library/platform/notifications/PushRegistration;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    sget-object v1, Lcom/twitter/library/platform/notifications/PushRegistration;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/twitter/android/SecuritySettingsActivity;->b:Lcom/twitter/android/ps;

    sget-object v2, Lcom/twitter/library/provider/cn;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/twitter/android/SecuritySettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 145
    iput-boolean v4, p0, Lcom/twitter/android/SecuritySettingsActivity;->c:Z

    .line 146
    iput-boolean v4, p0, Lcom/twitter/android/SecuritySettingsActivity;->g:Z

    .line 147
    return-void

    .line 113
    :cond_1
    iput-boolean v4, p0, Lcom/twitter/android/SecuritySettingsActivity;->f:Z

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10

    .prologue
    const v9, 0x104000a

    const v8, 0x1040009

    const/4 v7, 0x0

    const v5, 0x7f0a04ea

    const v6, 0x7f0a00fd

    .line 553
    .line 555
    new-instance v0, Lcom/twitter/android/pk;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/pk;-><init>(Lcom/twitter/android/SecuritySettingsActivity;I)V

    .line 585
    new-instance v1, Lcom/twitter/android/pl;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/pl;-><init>(Lcom/twitter/android/SecuritySettingsActivity;I)V

    .line 617
    new-instance v2, Lcom/twitter/android/pm;

    invoke-direct {v2, p0}, Lcom/twitter/android/pm;-><init>(Lcom/twitter/android/SecuritySettingsActivity;)V

    .line 625
    new-instance v3, Lcom/twitter/android/pn;

    invoke-direct {v3, p0}, Lcom/twitter/android/pn;-><init>(Lcom/twitter/android/SecuritySettingsActivity;)V

    .line 633
    new-instance v4, Lcom/twitter/android/po;

    invoke-direct {v4, p0}, Lcom/twitter/android/po;-><init>(Lcom/twitter/android/SecuritySettingsActivity;)V

    .line 641
    packed-switch p1, :pswitch_data_0

    .line 753
    :pswitch_0
    invoke-super {p0, p1}, Lcom/twitter/android/client/TwitterPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 643
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a04e4

    .line 644
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a04e3

    .line 645
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 646
    invoke-virtual {v0, v9, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 647
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 648
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 651
    :pswitch_2
    new-instance v0, Lcom/twitter/android/pp;

    invoke-direct {v0, p0}, Lcom/twitter/android/pp;-><init>(Lcom/twitter/android/SecuritySettingsActivity;)V

    .line 664
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 665
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v5, 0x7f0a04dd

    .line 666
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v5, 0x7f0a004e

    .line 667
    invoke-virtual {v1, v5, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 668
    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 669
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 670
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 671
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 675
    :pswitch_3
    new-instance v0, Lcom/twitter/android/pq;

    invoke-direct {v0, p0}, Lcom/twitter/android/pq;-><init>(Lcom/twitter/android/SecuritySettingsActivity;)V

    .line 685
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 686
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a04ed

    .line 687
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0975

    .line 688
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 689
    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 690
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 691
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 694
    :pswitch_4
    const-string/jumbo v0, "settings:login_verification:switch:ok:click"

    .line 695
    invoke-direct {p0, v0}, Lcom/twitter/android/SecuritySettingsActivity;->c(Ljava/lang/String;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    .line 696
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 697
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a04e7

    .line 698
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a08b1

    .line 699
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 700
    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 701
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 702
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 705
    :pswitch_5
    const-string/jumbo v2, "settings:login_verification:enroll:ok:click"

    .line 706
    invoke-direct {p0, v2}, Lcom/twitter/android/SecuritySettingsActivity;->c(Ljava/lang/String;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 708
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a04e2

    .line 709
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a04e1

    .line 710
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040013

    .line 711
    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 712
    invoke-virtual {v2, v8, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 713
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 714
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 718
    :pswitch_6
    const-string/jumbo v2, "settings:login_verification:unenroll:ok:click"

    .line 719
    invoke-direct {p0, v2}, Lcom/twitter/android/SecuritySettingsActivity;->d(Ljava/lang/String;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 720
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a0283

    .line 721
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0282

    .line 722
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040013

    .line 723
    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 724
    invoke-virtual {v2, v8, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 725
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 726
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 729
    :pswitch_7
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, ""

    .line 730
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a04e5

    .line 731
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    .line 732
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 733
    invoke-virtual {v2, v9, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 734
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 735
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 738
    :pswitch_8
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a04ec

    .line 739
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a04eb

    .line 740
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a05e4

    .line 741
    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 742
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 743
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 746
    :pswitch_9
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 747
    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 748
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 749
    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto/16 :goto_0

    .line 641
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 405
    invoke-super {p0}, Lcom/twitter/android/client/TwitterPreferenceActivity;->onDestroy()V

    .line 406
    iget-object v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->b:Lcom/twitter/android/ps;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/twitter/android/SecuritySettingsActivity;->b:Lcom/twitter/android/ps;

    invoke-virtual {p0, v0}, Lcom/twitter/android/SecuritySettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 409
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 425
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 427
    const-string/jumbo v3, "login_verification"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 428
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 429
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v4, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    invoke-direct {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v4, "settings:login_verification:::select"

    aput-object v4, v3, v0

    .line 430
    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    .line 429
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 432
    iget-boolean v2, p0, Lcom/twitter/android/SecuritySettingsActivity;->g:Z

    if-nez v2, :cond_0

    .line 433
    invoke-virtual {p0, v1}, Lcom/twitter/android/SecuritySettingsActivity;->showDialog(I)V

    .line 444
    :goto_0
    return v0

    .line 435
    :cond_0
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/twitter/android/SecuritySettingsActivity;->showDialog(I)V

    goto :goto_0

    .line 438
    :cond_1
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v4, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    invoke-direct {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v3, "settings:login_verification:::deselect"

    aput-object v3, v1, v0

    .line 439
    invoke-virtual {v2, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v1

    .line 438
    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    .line 440
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/twitter/android/SecuritySettingsActivity;->showDialog(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 444
    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 449
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 450
    const-string/jumbo v2, "login_verification_generate_code"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/BackupCodeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "bc_account_id"

    iget-wide v4, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    .line 452
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    .line 451
    invoke-virtual {p0, v1}, Lcom/twitter/android/SecuritySettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 467
    :goto_0
    return v0

    .line 454
    :cond_0
    const-string/jumbo v2, "login_verification_check_requests"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 455
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/LoginVerificationActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "lv_account_name"

    iget-object v3, p0, Lcom/twitter/android/SecuritySettingsActivity;->a:Ljava/lang/String;

    .line 456
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 455
    invoke-virtual {p0, v1}, Lcom/twitter/android/SecuritySettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 458
    :cond_1
    const-string/jumbo v2, "temporary_app_password"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 459
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/TemporaryAppPasswordActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "account_id"

    iget-wide v4, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    .line 460
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    .line 459
    invoke-virtual {p0, v1}, Lcom/twitter/android/SecuritySettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 462
    :cond_2
    const-string/jumbo v2, "login_verification_totp_code"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 463
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/TotpGeneratorActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "TotpGeneratorActivity_account_id"

    iget-wide v4, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    .line 464
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    .line 463
    invoke-virtual {p0, v1}, Lcom/twitter/android/SecuritySettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 467
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 762
    sparse-switch p1, :sswitch_data_0

    .line 784
    invoke-super {p0, p1, p2}, Lcom/twitter/android/client/TwitterPreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 788
    :goto_0
    return-void

    .line 764
    :sswitch_0
    check-cast p2, Landroid/app/ProgressDialog;

    .line 765
    const-string/jumbo v0, "msg"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 770
    :sswitch_1
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "settings:login_verification:enroll::impression"

    aput-object v2, v1, v4

    .line 771
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 770
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 772
    invoke-super {p0, p1, p2}, Lcom/twitter/android/client/TwitterPreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    goto :goto_0

    .line 777
    :sswitch_2
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "settings:login_verification:unenroll::impression"

    aput-object v2, v1, v4

    .line 778
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 777
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 779
    invoke-super {p0, p1, p2}, Lcom/twitter/android/client/TwitterPreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    goto :goto_0

    .line 762
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 383
    invoke-super {p0}, Lcom/twitter/android/client/TwitterPreferenceActivity;->onResume()V

    .line 384
    invoke-virtual {p0}, Lcom/twitter/android/SecuritySettingsActivity;->l()Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 385
    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/twitter/android/SecuritySettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/android/DispatchActivity;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 395
    :goto_0
    return-void

    .line 389
    :cond_0
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v4, p0, Lcom/twitter/android/SecuritySettingsActivity;->I:J

    invoke-direct {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v4, "settings:login_verification:::impression"

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v2

    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 390
    invoke-direct {p0}, Lcom/twitter/android/SecuritySettingsActivity;->o()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 391
    iget-boolean v2, p0, Lcom/twitter/android/SecuritySettingsActivity;->f:Z

    if-nez v2, :cond_1

    :goto_1
    invoke-direct {p0, v0}, Lcom/twitter/android/SecuritySettingsActivity;->b(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 393
    :cond_2
    invoke-direct {p0}, Lcom/twitter/android/SecuritySettingsActivity;->d()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 399
    invoke-super {p0, p1}, Lcom/twitter/android/client/TwitterPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 400
    const-string/jumbo v0, "enrolling"

    iget-boolean v1, p0, Lcom/twitter/android/SecuritySettingsActivity;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 401
    return-void
.end method
