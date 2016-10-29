.class public Lcom/twitter/android/settings/TweetSettingsActivity;
.super Lcom/twitter/android/client/TwitterPreferenceActivity;
.source "Twttr"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field a:Landroid/preference/PreferenceCategory;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/twitter/library/client/Session;

.field private f:Landroid/preference/Preference;

.field private g:Landroid/preference/Preference;

.field private h:Landroid/content/Intent;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/twitter/android/client/TwitterPreferenceActivity;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->b:Ljava/util/Map;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->i:I

    return-void
.end method

.method private a(ZI)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->h:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->h:Landroid/content/Intent;

    .line 214
    :cond_0
    iput-boolean p1, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->k:Z

    .line 215
    iget-object v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->h:Landroid/content/Intent;

    const-string/jumbo v1, "enabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "count"

    .line 216
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    iget-object v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->h:Landroid/content/Intent;

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;)Landroid/preference/Preference;
    .locals 2

    .prologue
    .line 280
    new-instance v0, Lcom/twitter/android/widget/UserCheckBoxPreference;

    invoke-direct {v0, p0}, Lcom/twitter/android/widget/UserCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 281
    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/UserCheckBoxPreference;->a(Lcom/twitter/model/core/TwitterUser;)V

    .line 282
    iget v1, p1, Lcom/twitter/model/core/TwitterUser;->T:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/UserCheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 283
    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/settings/TweetSettingsActivity;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->c:Lcom/twitter/library/client/Session;

    return-object v0
.end method

.method public static a(Landroid/content/Context;JZ)V
    .locals 3

    .prologue
    .line 322
    invoke-static {p0, p1, p2}, Lcom/twitter/library/platform/notifications/PushRegistration;->c(Landroid/content/Context;J)Z

    move-result v0

    .line 323
    invoke-static {p0}, Lcom/twitter/android/client/y;->a(Landroid/content/Context;)Lcom/twitter/android/client/y;

    move-result-object v1

    .line 324
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/twitter/android/client/y;->a(JZZ)V

    .line 325
    return-void

    .line 324
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;J)Z
    .locals 3

    .prologue
    .line 329
    invoke-static {p0, p1, p2}, Lcom/twitter/library/platform/notifications/PushRegistration;->a(Landroid/content/Context;J)I

    move-result v0

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lcso;->b(II)Z

    move-result v0

    return v0
.end method

.method static b(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 288
    new-instance v0, Lcom/twitter/android/widget/UserPreference;

    invoke-direct {v0, p0}, Lcom/twitter/android/widget/UserPreference;-><init>(Landroid/content/Context;)V

    .line 289
    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/UserPreference;->a(Lcom/twitter/model/core/TwitterUser;)V

    .line 290
    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/settings/TweetSettingsActivity;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->k:Z

    return v0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    iget-object v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->f:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 296
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOrder(I)V

    .line 297
    const v1, 0x7f0a07cb

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 298
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setShouldDisableView(Z)V

    .line 299
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 300
    iput-object v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->f:Landroid/preference/Preference;

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->a:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->f:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 303
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/service/x;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 307
    invoke-super {p0, p1, p2}, Lcom/twitter/android/client/TwitterPreferenceActivity;->a(Lcom/twitter/library/service/x;I)V

    .line 308
    if-ne p2, v2, :cond_0

    .line 309
    invoke-virtual {p0, v2}, Lcom/twitter/android/settings/TweetSettingsActivity;->d(Z)V

    .line 310
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    check-cast p1, Lbtw;

    invoke-virtual {p1}, Lbtw;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->a:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/settings/TweetSettingsActivity;->a(Ljava/util/List;Landroid/preference/PreferenceCategory;)V

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->a:Landroid/preference/PreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 315
    const v0, 0x7f0a0957

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method a(Lcom/twitter/model/core/TwitterUser;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 221
    iget-object v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->a:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    .line 222
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 223
    :goto_0
    if-ge v1, v3, :cond_2

    .line 224
    iget-object v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->a:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    instance-of v0, v0, Lcom/twitter/android/widget/UserPreference;

    if-nez v0, :cond_1

    .line 223
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->a:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/UserPreference;

    .line 229
    invoke-virtual {v0}, Lcom/twitter/android/widget/UserPreference;->a()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 230
    iget-wide v6, p1, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-wide v8, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 231
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->a:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 236
    iget-object v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->g:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOrder(I)V

    .line 237
    iget-object v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->a:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->g:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 238
    iget-object v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->a:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, v4, v0}, Lcom/twitter/android/settings/TweetSettingsActivity;->a(Ljava/util/List;Landroid/preference/PreferenceCategory;)V

    .line 239
    return-void
.end method

.method a(Ljava/util/List;Landroid/preference/PreferenceCategory;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;",
            "Landroid/preference/PreferenceCategory;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 242
    invoke-virtual {p0}, Lcom/twitter/android/settings/TweetSettingsActivity;->n()Z

    move-result v3

    .line 245
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    if-eqz v3, :cond_3

    .line 247
    invoke-direct {p0}, Lcom/twitter/android/settings/TweetSettingsActivity;->c()V

    move v1, v2

    .line 266
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/settings/TweetSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0c001e

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 267
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 266
    invoke-virtual {v0, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 269
    iput-object p2, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->a:Landroid/preference/PreferenceCategory;

    .line 270
    iput v1, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->i:I

    .line 271
    iput v1, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->j:I

    .line 275
    const/4 v0, -0x1

    iget v1, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->j:I

    invoke-direct {p0, v3, v1}, Lcom/twitter/android/settings/TweetSettingsActivity;->a(ZI)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/settings/TweetSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 276
    return-void

    .line 251
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 253
    iget-boolean v5, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->m:Z

    if-eqz v5, :cond_1

    .line 254
    invoke-static {p0, v0}, Lcom/twitter/android/settings/TweetSettingsActivity;->b(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;)Landroid/preference/Preference;

    move-result-object v0

    .line 255
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 260
    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 261
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 262
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 263
    goto :goto_1

    .line 257
    :cond_1
    invoke-static {p0, v0}, Lcom/twitter/android/settings/TweetSettingsActivity;->a(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;)Landroid/preference/Preference;

    move-result-object v0

    .line 258
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_2

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->g:Landroid/preference/Preference;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setOrder(I)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected a(Z)Z
    .locals 2

    .prologue
    .line 139
    iget v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->i:I

    if-nez v0, :cond_0

    .line 140
    if-eqz p1, :cond_1

    .line 141
    invoke-direct {p0}, Lcom/twitter/android/settings/TweetSettingsActivity;->c()V

    .line 146
    :cond_0
    :goto_0
    const/4 v0, -0x1

    iget v1, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->j:I

    invoke-direct {p0, p1, v1}, Lcom/twitter/android/settings/TweetSettingsActivity;->a(ZI)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/settings/TweetSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 147
    const/4 v0, 0x1

    return v0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->f:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->a:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->f:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method protected h()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->m:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 188
    if-nez p3, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    const-string/jumbo v0, "AccountNotificationActivity_notifications_enabled"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 195
    if-nez v0, :cond_0

    .line 200
    const-string/jumbo v0, "AccountNotificationActivity_profile_account_user"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 202
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/TweetSettingsActivity;->a(Lcom/twitter/model/core/TwitterUser;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/twitter/android/client/TwitterPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/TweetSettingsActivity;->addPreferencesFromResource(I)V

    .line 70
    const v0, 0x7f0a07c9

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/TweetSettingsActivity;->setTitle(I)V

    .line 72
    invoke-static {}, Lcba;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->m:Z

    .line 74
    invoke-virtual {p0}, Lcom/twitter/android/settings/TweetSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 75
    const-string/jumbo v1, "enabled"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->k:Z

    .line 76
    iget-boolean v1, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->k:Z

    iput-boolean v1, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->l:Z

    .line 77
    iget-boolean v1, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->k:Z

    invoke-virtual {p0, v1}, Lcom/twitter/android/settings/TweetSettingsActivity;->c(Z)V

    .line 78
    invoke-virtual {p0, v6}, Lcom/twitter/android/settings/TweetSettingsActivity;->d(Z)V

    .line 80
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 81
    const v2, 0x7f0a049e

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 82
    invoke-virtual {p0}, Lcom/twitter/android/settings/TweetSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 83
    iput-object v1, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->a:Landroid/preference/PreferenceCategory;

    .line 85
    new-instance v2, Lcom/twitter/android/widget/MessagePreference;

    invoke-direct {v2, p0}, Lcom/twitter/android/widget/MessagePreference;-><init>(Landroid/content/Context;)V

    .line 86
    const-string/jumbo v3, "msg"

    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/MessagePreference;->setKey(Ljava/lang/String;)V

    .line 87
    iget-boolean v3, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->m:Z

    if-eqz v3, :cond_0

    .line 88
    const v3, 0x7f0a07ca

    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/MessagePreference;->setSummary(I)V

    .line 93
    :goto_0
    invoke-virtual {v2, v6}, Lcom/twitter/android/widget/MessagePreference;->setShouldDisableView(Z)V

    .line 94
    invoke-virtual {v2, v6}, Lcom/twitter/android/widget/MessagePreference;->setSelectable(Z)V

    .line 95
    invoke-virtual {v2, v6}, Lcom/twitter/android/widget/MessagePreference;->setPersistent(Z)V

    .line 96
    iput-object v2, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->g:Landroid/preference/Preference;

    .line 97
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 99
    const-string/jumbo v1, "TweetSettingsActivity_account_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bk;->b(Ljava/lang/String;)Lcom/twitter/library/client/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->c:Lcom/twitter/library/client/Session;

    .line 101
    iget-boolean v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->m:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x2b

    .line 103
    :goto_1
    new-instance v1, Lbtw;

    iget-object v2, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->c:Lcom/twitter/library/client/Session;

    invoke-direct {v1, p0, v2, v0}, Lbtw;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;I)V

    const/16 v0, 0x190

    invoke-virtual {v1, v0}, Lbtw;->a(I)Lbtw;

    move-result-object v0

    invoke-virtual {p0, v0, v7}, Lcom/twitter/android/settings/TweetSettingsActivity;->b(Lcom/twitter/library/service/x;I)Z

    .line 105
    return-void

    .line 90
    :cond_0
    const v3, 0x7f0a07cc

    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0a0956

    .line 91
    invoke-virtual {p0, v5}, Lcom/twitter/android/settings/TweetSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 90
    invoke-virtual {p0, v3, v4}, Lcom/twitter/android/settings/TweetSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/MessagePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 101
    :cond_1
    const/16 v0, 0x10

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->m:Z

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 168
    :goto_0
    return v0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/settings/TweetSettingsActivity;->n()Z

    move-result v0

    .line 157
    check-cast p1, Lcom/twitter/android/widget/UserCheckBoxPreference;

    .line 158
    invoke-virtual {p1}, Lcom/twitter/android/widget/UserCheckBoxPreference;->a()Lcom/twitter/model/core/TwitterUser;

    move-result-object v1

    .line 159
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/twitter/model/core/p;->i(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->b:Ljava/util/Map;

    iget-wide v4, v1, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget v1, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->j:I

    .line 167
    :goto_1
    const/4 v1, -0x1

    iget v2, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->j:I

    invoke-direct {p0, v0, v2}, Lcom/twitter/android/settings/TweetSettingsActivity;->a(ZI)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/settings/TweetSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 168
    const/4 v0, 0x1

    goto :goto_0

    .line 163
    :cond_1
    iget-object v2, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->b:Ljava/util/Map;

    iget-wide v4, v1, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget v1, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->j:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->j:I

    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->m:Z

    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 181
    :goto_0
    return v0

    .line 177
    :cond_0
    check-cast p1, Lcom/twitter/android/widget/UserPreference;

    .line 178
    invoke-virtual {p1}, Lcom/twitter/android/widget/UserPreference;->a()Lcom/twitter/model/core/TwitterUser;

    move-result-object v2

    .line 179
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/settings/TweetSettingsActivity;->l()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    const/16 v6, 0x64

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/twitter/android/settings/account/AccountNotificationsActivity;->a(Landroid/app/Activity;Lcom/twitter/model/core/TwitterUser;Lcss;JI)V

    .line 181
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onStop()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 123
    invoke-super {p0}, Lcom/twitter/android/client/TwitterPreferenceActivity;->onStop()V

    .line 124
    iget-boolean v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->m:Z

    if-nez v0, :cond_0

    .line 125
    iget-object v1, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->c:Lcom/twitter/library/client/Session;

    .line 126
    iget-object v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 127
    iget-object v3, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->J:Lcom/twitter/library/client/bd;

    new-instance v4, Lbvb;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    invoke-direct {v4, p0, v1, v0, v6}, Lbvb;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/core/TwitterUser;Lcss;)V

    const/4 v0, 0x1

    .line 128
    invoke-virtual {v4, v0, v5}, Lbvb;->a(IZ)Lbvb;

    move-result-object v0

    .line 127
    invoke-virtual {v3, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    goto :goto_0

    .line 131
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->l:Z

    iget-boolean v1, p0, Lcom/twitter/android/settings/TweetSettingsActivity;->k:Z

    if-eq v0, v1, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/twitter/android/settings/TweetSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_notification_landing"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    new-instance v0, Lcom/twitter/android/settings/ae;

    invoke-direct {v0, p0, v6}, Lcom/twitter/android/settings/ae;-><init>(Lcom/twitter/android/settings/TweetSettingsActivity;Lcom/twitter/android/settings/ad;)V

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/android/settings/ae;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 135
    :cond_1
    return-void
.end method
