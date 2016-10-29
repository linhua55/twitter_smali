.class public Lcom/twitter/android/settings/PrivacyAndContentActivity;
.super Lcom/twitter/android/settings/BaseAccountSettingsActivity;
.source "Twttr"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private b:Landroid/preference/CheckBoxPreference;

.field private c:Landroid/preference/Preference;

.field private f:Landroid/preference/CheckBoxPreference;

.field private g:Landroid/preference/CheckBoxPreference;

.field private h:Landroid/preference/ListPreference;

.field private i:Landroid/preference/CheckBoxPreference;

.field private j:Landroid/preference/CheckBoxPreference;

.field private k:Landroid/preference/Preference;

.field private l:Lcom/twitter/android/widget/UrlLinkableCheckboxPreference;

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/twitter/android/settings/BaseAccountSettingsActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/settings/PrivacyAndContentActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->i:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/settings/PrivacyAndContentActivity;Landroid/preference/CheckBoxPreference;)Landroid/preference/CheckBoxPreference;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->j:Landroid/preference/CheckBoxPreference;

    return-object p1
.end method

.method static synthetic a(Lcom/twitter/android/settings/PrivacyAndContentActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/twitter/library/client/Session;Lcom/twitter/model/account/UserSettings;)V
    .locals 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->J:Lcom/twitter/library/client/bd;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 428
    invoke-static {p0, p1, p2, v1, v2}, Lblv;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/account/UserSettings;ZLjava/lang/String;)Lblv;

    move-result-object v1

    .line 427
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 429
    return-void
.end method

.method static synthetic b(Lcom/twitter/android/settings/PrivacyAndContentActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->j:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private b(Z)V
    .locals 4

    .prologue
    .line 453
    if-eqz p1, :cond_0

    .line 454
    const-string/jumbo v0, "privacy_settings:muted_automated:toggle::opt_in"

    .line 459
    :goto_0
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->I:J

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 460
    return-void

    .line 456
    :cond_0
    const-string/jumbo v0, "privacy_settings:muted_automated:toggle::opt_out"

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/settings/PrivacyAndContentActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 236
    invoke-virtual {p0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->l()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v0

    .line 237
    iget-object v2, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->i:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/twitter/model/account/UserSettings;->i:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 238
    iget-boolean v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->m:Z

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->k()Lcom/twitter/library/client/bk;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/twitter/library/client/bk;->b(Ljava/lang/String;)Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 240
    invoke-static {p0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v2

    .line 241
    iget-object v3, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->i:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0a0798

    invoke-virtual {p0, v4}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 242
    new-instance v3, Lbuf;

    invoke-direct {v3, p0, v0, v1, v1}, Lbuf;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;ZZ)V

    new-instance v0, Lcom/twitter/android/settings/w;

    invoke-direct {v0, p0}, Lcom/twitter/android/settings/w;-><init>(Lcom/twitter/android/settings/PrivacyAndContentActivity;)V

    invoke-virtual {v2, v3, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 254
    :cond_0
    return-void

    .line 237
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 436
    const v0, 0x7f0a0ab8

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    const-string/jumbo v0, "privacy_settings:who_can_tag_me::from_anyone:select"

    .line 446
    :goto_0
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->I:J

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 447
    :cond_0
    return-void

    .line 438
    :cond_1
    const v0, 0x7f0a0ab9

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 439
    const-string/jumbo v0, "privacy_settings:who_can_tag_me::from_people_you_follow:select"

    goto :goto_0

    .line 440
    :cond_2
    const v0, 0x7f0a0aba

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    const-string/jumbo v0, "privacy_settings:who_can_tag_me:::deselect"

    goto :goto_0
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 257
    iget-object v2, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->j:Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_0

    .line 311
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->l()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v2

    .line 262
    invoke-virtual {p0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 263
    invoke-static {v3}, Lcom/twitter/library/util/ab;->a(Landroid/content/Context;)Lcom/twitter/library/util/ab;

    move-result-object v4

    .line 264
    iget-boolean v5, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->m:Z

    if-eqz v5, :cond_3

    .line 265
    iget-object v5, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->j:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 266
    iget-object v5, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->j:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    iget-boolean v2, v2, Lcom/twitter/model/account/UserSettings;->l:Z

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 267
    iget-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->j:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a07e4

    invoke-virtual {p0, v1}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 268
    invoke-virtual {v4}, Lcom/twitter/library/util/ab;->c()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4}, Lcom/twitter/library/util/ab;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->j:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0791

    invoke-virtual {p0, v1}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 266
    goto :goto_1

    .line 271
    :cond_2
    invoke-static {v3}, Lcom/twitter/android/util/ap;->a(Landroid/content/Context;)Lcom/twitter/android/util/al;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/settings/x;

    invoke-direct {v1, p0}, Lcom/twitter/android/settings/x;-><init>(Lcom/twitter/android/settings/PrivacyAndContentActivity;)V

    invoke-interface {v0, v1}, Lcom/twitter/android/util/al;->a(Lcom/twitter/android/util/am;)V

    goto :goto_0

    .line 282
    :cond_3
    invoke-virtual {v4}, Lcom/twitter/library/util/ab;->c()Z

    move-result v5

    if-nez v5, :cond_6

    .line 283
    invoke-virtual {v4}, Lcom/twitter/library/util/ab;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 284
    iget-object v3, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->j:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 285
    iget-object v3, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->j:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_4

    iget-boolean v2, v2, Lcom/twitter/model/account/UserSettings;->l:Z

    if-eqz v2, :cond_4

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    .line 287
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->j:Landroid/preference/CheckBoxPreference;

    .line 288
    const-string/jumbo v0, "discoverable_by_mobile_phone"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->b(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 291
    :cond_6
    iget-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->j:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 292
    invoke-static {v3}, Lcom/twitter/android/util/ap;->a(Landroid/content/Context;)Lcom/twitter/android/util/al;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/settings/y;

    invoke-direct {v1, p0, v2}, Lcom/twitter/android/settings/y;-><init>(Lcom/twitter/android/settings/PrivacyAndContentActivity;Lcom/twitter/model/account/UserSettings;)V

    invoke-interface {v0, v1}, Lcom/twitter/android/util/al;->a(Lcom/twitter/android/util/am;)V

    goto/16 :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 475
    if-nez v2, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 479
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 480
    instance-of v3, v0, Landroid/preference/Preference;

    if-eqz v3, :cond_2

    .line 481
    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 482
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 483
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 478
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private e(Z)V
    .locals 5

    .prologue
    .line 465
    if-eqz p1, :cond_0

    const-string/jumbo v0, "enable"

    .line 466
    :goto_0
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->I:J

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "settings:privacy::read_receipts_setting"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 467
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 466
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 468
    return-void

    .line 465
    :cond_0
    const-string/jumbo v0, "disable"

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/twitter/android/settings/BaseAccountSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->addPreferencesFromResource(I)V

    .line 79
    const-string/jumbo v0, "people_discoverability_settings_update_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->m:Z

    .line 83
    const-string/jumbo v0, "allow_dms_from"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->b:Landroid/preference/CheckBoxPreference;

    .line 84
    iget-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->b:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 87
    invoke-static {}, Lbnv;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const-string/jumbo v0, "dm_read_receipts"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 89
    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 90
    new-instance v1, Lcom/twitter/library/client/l;

    iget-wide v2, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->I:J

    invoke-direct {v1, p0, v2, v3}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    const-string/jumbo v2, "dm_read_receipts"

    const/4 v3, 0x1

    .line 91
    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/client/l;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 90
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 97
    :goto_0
    const-string/jumbo v0, "display_sensitive_media"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->f:Landroid/preference/CheckBoxPreference;

    .line 98
    iget-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->f:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    invoke-static {}, Lcgb;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    const-string/jumbo v0, "contacts_sync"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 106
    :goto_1
    const-string/jumbo v0, "app_graph_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    const-string/jumbo v0, "app_graph"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->c:Landroid/preference/Preference;

    .line 108
    iget-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->c:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 114
    :goto_2
    const-string/jumbo v0, "mute_list_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    const-string/jumbo v0, "mute_list"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 121
    :goto_3
    const-string/jumbo v0, "block_list_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 122
    const-string/jumbo v0, "block_list"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 128
    :goto_4
    const-string/jumbo v0, "protected"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->g:Landroid/preference/CheckBoxPreference;

    .line 129
    iget-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    const-string/jumbo v0, "allow_media_tagging"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->h:Landroid/preference/ListPreference;

    .line 133
    iget-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->h:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    const-string/jumbo v0, "discoverable_by_email"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->i:Landroid/preference/CheckBoxPreference;

    .line 137
    iget-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->i:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    const-string/jumbo v0, "discoverable_by_mobile_phone"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->j:Landroid/preference/CheckBoxPreference;

    .line 143
    const-string/jumbo v0, "personalized_ads"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->k:Landroid/preference/Preference;

    .line 144
    iget-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->k:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 147
    const-string/jumbo v0, "automated_mute_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 148
    const-string/jumbo v0, "smart_mute"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/UrlLinkableCheckboxPreference;

    iput-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->l:Lcom/twitter/android/widget/UrlLinkableCheckboxPreference;

    .line 149
    iget-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->l:Lcom/twitter/android/widget/UrlLinkableCheckboxPreference;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/UrlLinkableCheckboxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 154
    :goto_5
    if-nez p1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "scroll_to_row"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    .line 157
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 158
    new-instance v2, Lcom/twitter/android/settings/v;

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/settings/v;-><init>(Lcom/twitter/android/settings/PrivacyAndContentActivity;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    :cond_0
    return-void

    .line 93
    :cond_1
    const-string/jumbo v0, "dm_read_receipts"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->b(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 103
    :cond_2
    const-string/jumbo v0, "contacts_sync"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->b(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 110
    :cond_3
    const-string/jumbo v0, "app_graph"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->b(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 117
    :cond_4
    const-string/jumbo v0, "mute_list"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->b(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 124
    :cond_5
    const-string/jumbo v0, "block_list"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->b(Ljava/lang/String;)Z

    goto/16 :goto_4

    .line 151
    :cond_6
    const-string/jumbo v0, "smart_mute"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->b(Ljava/lang/String;)Z

    goto :goto_5
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 355
    invoke-virtual {p0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->l()Lcom/twitter/library/client/Session;

    move-result-object v3

    .line 356
    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v4

    .line 357
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 358
    if-eqz v5, :cond_0

    if-nez v4, :cond_1

    .line 421
    :cond_0
    :goto_0
    return v0

    .line 362
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 364
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/twitter/model/account/UserSettings;->k:Z

    .line 365
    invoke-direct {p0, v3, v4}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->a(Lcom/twitter/library/client/Session;Lcom/twitter/model/account/UserSettings;)V

    move v0, v1

    .line 366
    goto :goto_0

    .line 362
    :sswitch_0
    const-string/jumbo v6, "display_sensitive_media"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v6, "allow_dms_from"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v6, "dm_read_receipts"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v6, "protected"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v6, "smart_mute"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v6, "allow_media_tagging"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v6, "discoverable_by_email"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v6, "discoverable_by_mobile_phone"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x7

    goto :goto_1

    .line 369
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 370
    if-eqz v0, :cond_3

    .line 371
    const-string/jumbo v0, "all"

    iput-object v0, v4, Lcom/twitter/model/account/UserSettings;->s:Ljava/lang/String;

    .line 375
    :goto_2
    invoke-direct {p0, v3, v4}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->a(Lcom/twitter/library/client/Session;Lcom/twitter/model/account/UserSettings;)V

    move v0, v1

    .line 376
    goto/16 :goto_0

    .line 373
    :cond_3
    const-string/jumbo v0, "following"

    iput-object v0, v4, Lcom/twitter/model/account/UserSettings;->s:Ljava/lang/String;

    goto :goto_2

    .line 379
    :pswitch_2
    invoke-static {}, Lbnv;->d()Z

    move-result v0

    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    .line 380
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 381
    new-instance v0, Lcom/twitter/library/client/l;

    iget-wide v6, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->I:J

    invoke-direct {v0, p0, v6, v7}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    .line 382
    invoke-virtual {v0}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v5, "dm_read_receipts"

    .line 383
    invoke-virtual {v0, v5, v2}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 385
    if-eqz v2, :cond_4

    const-string/jumbo v0, "all_enabled"

    :goto_3
    iput-object v0, v4, Lcom/twitter/model/account/UserSettings;->y:Ljava/lang/String;

    .line 387
    invoke-direct {p0, v3, v4}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->a(Lcom/twitter/library/client/Session;Lcom/twitter/model/account/UserSettings;)V

    .line 388
    invoke-direct {p0, v2}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->e(Z)V

    move v0, v1

    .line 389
    goto/16 :goto_0

    .line 385
    :cond_4
    const-string/jumbo v0, "all_disabled"

    goto :goto_3

    .line 392
    :pswitch_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/twitter/model/account/UserSettings;->j:Z

    .line 393
    invoke-direct {p0, v3, v4}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->a(Lcom/twitter/library/client/Session;Lcom/twitter/model/account/UserSettings;)V

    move v0, v1

    .line 394
    goto/16 :goto_0

    .line 397
    :pswitch_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/twitter/model/account/UserSettings;->t:Z

    .line 398
    invoke-direct {p0, v3, v4}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->a(Lcom/twitter/library/client/Session;Lcom/twitter/model/account/UserSettings;)V

    .line 399
    iget-boolean v0, v4, Lcom/twitter/model/account/UserSettings;->t:Z

    invoke-direct {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->b(Z)V

    move v0, v1

    .line 400
    goto/16 :goto_0

    .line 403
    :pswitch_5
    check-cast p2, Ljava/lang/String;

    .line 404
    iput-object p2, v4, Lcom/twitter/model/account/UserSettings;->n:Ljava/lang/String;

    .line 405
    invoke-direct {p0, v3, v4}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->a(Lcom/twitter/library/client/Session;Lcom/twitter/model/account/UserSettings;)V

    .line 406
    check-cast p1, Landroid/preference/ListPreference;

    invoke-static {p1, p2}, Lcom/twitter/library/util/an;->a(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 407
    invoke-direct {p0, p2}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->c(Ljava/lang/String;)V

    move v0, v1

    .line 408
    goto/16 :goto_0

    .line 411
    :pswitch_6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/twitter/model/account/UserSettings;->i:Z

    .line 412
    invoke-direct {p0, v3, v4}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->a(Lcom/twitter/library/client/Session;Lcom/twitter/model/account/UserSettings;)V

    move v0, v1

    .line 413
    goto/16 :goto_0

    .line 416
    :pswitch_7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/twitter/model/account/UserSettings;->l:Z

    .line 417
    invoke-direct {p0, v3, v4}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->a(Lcom/twitter/library/client/Session;Lcom/twitter/model/account/UserSettings;)V

    move v0, v1

    .line 418
    goto/16 :goto_0

    .line 362
    :sswitch_data_0
    .sparse-switch
        -0x6ba65531 -> :sswitch_4
        -0x6828bf1c -> :sswitch_5
        -0x5c71fc82 -> :sswitch_0
        -0x2e6a8d03 -> :sswitch_7
        -0x24459452 -> :sswitch_3
        0x1cacd08e -> :sswitch_2
        0x45b249b0 -> :sswitch_6
        0x799911f5 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 316
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 317
    if-nez v3, :cond_0

    .line 348
    :goto_0
    return v0

    .line 321
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 323
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/AppGraphSettingsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "AppGraphSettingsActivity_account_id"

    iget-wide v4, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->I:J

    .line 324
    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 323
    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 325
    goto :goto_0

    .line 321
    :sswitch_0
    const-string/jumbo v4, "app_graph"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "mute_list"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "block_list"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "personalized_ads"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v4, "contacts_sync"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    .line 328
    :pswitch_1
    iget-wide v2, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->I:J

    invoke-static {p0, v2, v3}, Lcom/twitter/android/util/bc;->b(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->startActivity(Landroid/content/Intent;)V

    .line 329
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v4, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->I:J

    invoke-direct {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v4, "settings:mute_list:::click"

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    move v0, v1

    .line 330
    goto :goto_0

    .line 333
    :pswitch_2
    iget-wide v2, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->I:J

    invoke-static {p0, v2, v3}, Lcom/twitter/android/util/bc;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->startActivity(Landroid/content/Intent;)V

    .line 334
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v4, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->I:J

    invoke-direct {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v4, "settings:block_list:::click"

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    move v0, v1

    .line 335
    goto/16 :goto_0

    .line 338
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/PersonalizedAdsSettingsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 339
    goto/16 :goto_0

    .line 342
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/settings/ContactsSyncSettingsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "ContactsSyncSettingsActivity_account_name"

    iget-object v3, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->a:Ljava/lang/String;

    .line 343
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "ContactsSyncSettingsActivity_account_id"

    iget-wide v4, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->I:J

    .line 344
    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 342
    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 345
    goto/16 :goto_0

    .line 321
    :sswitch_data_0
    .sparse-switch
        -0x32e5283f -> :sswitch_3
        0x45267f04 -> :sswitch_1
        0x4cab7510 -> :sswitch_2
        0x5a41af07 -> :sswitch_4
        0x6d28c1b0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const v1, 0x7f0a038c

    const v2, 0x7f0a0284

    const/4 v0, 0x0

    .line 171
    invoke-super {p0}, Lcom/twitter/android/settings/BaseAccountSettingsActivity;->onResume()V

    .line 172
    invoke-virtual {p0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->l()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v4

    .line 173
    if-nez v4, :cond_1

    .line 174
    invoke-static {p0}, Lcom/twitter/android/DispatchActivity;->a(Landroid/app/Activity;)V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v3, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->b:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Lcom/twitter/model/account/UserSettings;->f()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 182
    iget-object v3, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->f:Landroid/preference/CheckBoxPreference;

    iget-boolean v5, v4, Lcom/twitter/model/account/UserSettings;->k:Z

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 185
    iget-object v3, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->c:Landroid/preference/Preference;

    if-eqz v3, :cond_3

    .line 186
    new-instance v3, Lcom/twitter/library/client/l;

    invoke-virtual {p0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-wide v6, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->I:J

    invoke-direct {v3, v5, v6, v7}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    .line 188
    const-string/jumbo v5, "app_graph_status"

    const-string/jumbo v6, "undetermined"

    invoke-virtual {v3, v5, v6}, Lcom/twitter/library/client/l;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 203
    :goto_2
    if-lez v0, :cond_4

    .line 204
    iget-object v3, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->c:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 211
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->g:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, v4, Lcom/twitter/model/account/UserSettings;->j:Z

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 214
    iget-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->h:Landroid/preference/ListPreference;

    iget-object v3, v4, Lcom/twitter/model/account/UserSettings;->n:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 217
    invoke-direct {p0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->c()V

    .line 220
    invoke-direct {p0}, Lcom/twitter/android/settings/PrivacyAndContentActivity;->d()V

    .line 223
    iget-boolean v0, v4, Lcom/twitter/model/account/UserSettings;->q:Z

    if-eqz v0, :cond_5

    .line 224
    iget-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->k:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 230
    :goto_4
    iget-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->l:Lcom/twitter/android/widget/UrlLinkableCheckboxPreference;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->l:Lcom/twitter/android/widget/UrlLinkableCheckboxPreference;

    iget-boolean v1, v4, Lcom/twitter/model/account/UserSettings;->t:Z

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/UrlLinkableCheckboxPreference;->setChecked(Z)V

    goto :goto_0

    .line 188
    :sswitch_0
    const-string/jumbo v6, "optin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v6, "optout"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :pswitch_0
    move v0, v1

    .line 192
    goto :goto_2

    :pswitch_1
    move v0, v2

    .line 196
    goto :goto_2

    .line 206
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->c:Landroid/preference/Preference;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 226
    :cond_5
    iget-object v0, p0, Lcom/twitter/android/settings/PrivacyAndContentActivity;->k:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_4

    .line 188
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3c356045 -> :sswitch_1
        0x650db18 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
