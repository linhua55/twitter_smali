.class public Lcom/twitter/android/settings/MobileNotificationsActivity;
.super Lcom/twitter/android/client/TwitterPreferenceActivity;
.source "Twttr"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final K:[Ljava/lang/String;


# instance fields
.field A:Landroid/preference/Preference;

.field B:Landroid/preference/Preference;

.field C:Landroid/preference/Preference;

.field D:Landroid/preference/Preference;

.field E:Landroid/preference/Preference;

.field F:Landroid/preference/Preference;

.field G:Landroid/preference/ListPreference;

.field private final L:Lcom/twitter/config/f;

.field private M:Z

.field private N:Lcom/twitter/android/settings/n;

.field private O:Z

.field a:Ljava/lang/String;

.field b:Lcom/twitter/library/client/Session;

.field c:Lcom/twitter/model/core/TwitterUser;

.field f:Z

.field g:Ljava/lang/String;

.field h:Z

.field i:I

.field j:Z

.field k:I

.field l:Z

.field m:Z

.field n:Lcom/twitter/library/provider/ca;

.field o:Z

.field p:Landroid/preference/PreferenceCategory;

.field q:Landroid/preference/Preference;

.field r:Landroid/preference/Preference;

.field s:Landroid/preference/Preference;

.field t:Landroid/preference/Preference;

.field u:Landroid/preference/Preference;

.field v:Landroid/preference/Preference;

.field w:Landroid/preference/Preference;

.field x:Landroid/preference/Preference;

.field y:Landroid/preference/Preference;

.field z:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "use_led"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "vibrate"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->K:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/twitter/android/client/TwitterPreferenceActivity;-><init>()V

    .line 149
    new-instance v0, Lcom/twitter/android/settings/h;

    invoke-direct {v0, p0}, Lcom/twitter/android/settings/h;-><init>(Lcom/twitter/android/settings/MobileNotificationsActivity;)V

    iput-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->L:Lcom/twitter/config/f;

    return-void
.end method

.method static synthetic a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 65
    invoke-static {p0, p1, p2, p3, p4}, Lcom/twitter/android/settings/MobileNotificationsActivity;->b(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Intent;Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 1081
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->a(Landroid/content/Intent;Landroid/view/ViewGroup;Landroid/content/Context;)V

    .line 1082
    return-void
.end method

.method public static a(Landroid/content/Intent;Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1100
    const-string/jumbo v0, "NotificationSettingsActivity_text"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1101
    const-string/jumbo v0, "NotificationSettingsActivity_notif_random_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1102
    const-string/jumbo v0, "NotificationSettingsActivity_notif_type"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1103
    const-string/jumbo v0, "NotificationSettingsActivity_scribe_component"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notif_settings_link_num_times_shown_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1105
    const v0, 0x7f130767

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1106
    const v0, 0x7f130588

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1107
    invoke-static {v3}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1108
    if-eqz v1, :cond_0

    .line 1109
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1110
    invoke-static {v7, v5}, Lcom/twitter/android/settings/MobileNotificationsActivity;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v1

    .line 1111
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1112
    invoke-interface {v7, v11, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    move v2, v9

    .line 1113
    :goto_0
    if-eqz v1, :cond_2

    .line 1114
    if-nez v2, :cond_0

    .line 1115
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v7, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-interface {v2, v6, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1116
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v11, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1124
    :cond_0
    :goto_1
    if-nez v1, :cond_4

    .line 1125
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1147
    :goto_2
    return-void

    :cond_1
    move v2, v10

    .line 1112
    goto :goto_0

    .line 1118
    :cond_2
    if-eqz v2, :cond_0

    .line 1120
    invoke-interface {v7, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_3

    move v1, v9

    goto :goto_1

    :cond_3
    move v1, v10

    goto :goto_1

    .line 1128
    :cond_4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1131
    const-string/jumbo v1, "NotificationSettingsActivity_username"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1132
    const-string/jumbo v1, "NotificationSettingsActivity_user_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1133
    const-string/jumbo v1, "follow"

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v7, "profile"

    .line 1134
    :goto_3
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/String;

    aput-object v7, v11, v10

    const-string/jumbo v10, "notification_landing"

    aput-object v10, v11, v9

    const/4 v9, 0x2

    aput-object v8, v11, v9

    const/4 v9, 0x3

    const-string/jumbo v10, "header"

    aput-object v10, v11, v9

    const/4 v9, 0x4

    const-string/jumbo v10, "show"

    aput-object v10, v11, v9

    invoke-virtual {v1, v11}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v1

    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    .line 1136
    new-instance v1, Lcom/twitter/android/settings/l;

    invoke-direct/range {v1 .. v8}, Lcom/twitter/android/settings/l;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1133
    :cond_5
    const-string/jumbo v7, "tweet"

    goto :goto_3
.end method

.method private static a(Landroid/preference/Preference;I)V
    .locals 1

    .prologue
    .line 507
    if-nez p1, :cond_1

    .line 508
    const v0, 0x7f0a07cd

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 510
    const v0, 0x7f0a07c8

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 511
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 512
    const v0, 0x7f0a07c7

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private static a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1190
    if-eqz p1, :cond_0

    .line 1191
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1196
    :goto_0
    return-void

    .line 1193
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NotificationSettingsActivity preference (key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") was unexpectedly null when trying to remove it."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/settings/MobileNotificationsActivity;Z)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/twitter/android/settings/MobileNotificationsActivity;->c(Z)V

    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1180
    const-string/jumbo v1, "notif_settings_link_on_push_landing_pages_enabled"

    invoke-static {v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1185
    :cond_0
    :goto_0
    return v0

    .line 1183
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notif_settings_link_num_times_shown_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1185
    if-ltz v1, :cond_0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/settings/MobileNotificationsActivity;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->O:Z

    return v0
.end method

.method private static b(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 1160
    const-string/jumbo v0, "tweet_"

    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1161
    :goto_0
    const-string/jumbo v2, "poll_announcement"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 1162
    if-eqz v0, :cond_2

    const-class v2, Lcom/twitter/android/settings/TweetSettingsActivity;

    .line 1164
    :goto_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1165
    if-eqz v0, :cond_3

    .line 1166
    const-string/jumbo v0, "TweetSettingsActivity_account_name"

    invoke-virtual {v4, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "enabled"

    .line 1168
    invoke-static {p0, p1, p2}, Lcom/twitter/android/settings/TweetSettingsActivity;->a(Landroid/content/Context;J)Z

    move-result v5

    .line 1167
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "from_notification_landing"

    .line 1169
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1173
    :goto_2
    if-eqz v3, :cond_0

    .line 1174
    const-string/jumbo v0, "NotificationSettingsActivity_notif_type"

    invoke-virtual {v4, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1176
    :cond_0
    return-object v4

    .line 1160
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1162
    :cond_2
    const-class v2, Lcom/twitter/android/settings/MobileNotificationsActivity;

    goto :goto_1

    .line 1171
    :cond_3
    const-string/jumbo v0, "NotificationSettingsActivity_account_name"

    invoke-virtual {v4, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method static synthetic b(Lcom/twitter/android/settings/MobileNotificationsActivity;Z)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/twitter/android/settings/MobileNotificationsActivity;->c(Z)V

    return-void
.end method

.method static synthetic b(Lcom/twitter/android/settings/MobileNotificationsActivity;)Z
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->n()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/twitter/android/settings/MobileNotificationsActivity;)Lcom/twitter/library/client/bd;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->J:Lcom/twitter/library/client/bd;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/settings/MobileNotificationsActivity;Z)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/twitter/android/settings/MobileNotificationsActivity;->c(Z)V

    return-void
.end method

.method static synthetic d(Lcom/twitter/android/settings/MobileNotificationsActivity;)Lcom/twitter/android/client/c;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->e:Lcom/twitter/android/client/c;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/settings/MobileNotificationsActivity;Z)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/twitter/android/settings/MobileNotificationsActivity;->e(Z)V

    return-void
.end method

.method static synthetic e(Lcom/twitter/android/settings/MobileNotificationsActivity;)Lcom/twitter/android/client/c;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->e:Lcom/twitter/android/client/c;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/android/settings/MobileNotificationsActivity;Z)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/twitter/android/settings/MobileNotificationsActivity;->c(Z)V

    return-void
.end method

.method private e(Z)V
    .locals 1

    .prologue
    .line 1059
    invoke-static {p0}, Lrq;->a(Landroid/content/Context;)Lrq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrq;->a(Z)V

    .line 1060
    return-void
.end method

.method static synthetic i()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->K:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 253
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 254
    iget-object v2, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->b:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->b:Lcom/twitter/library/client/Session;

    invoke-static {v0}, Lcbq;->a(Lcom/twitter/library/client/Session;)V

    .line 257
    :cond_0
    return-void
.end method

.method a(IZ)V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->s:Landroid/preference/Preference;

    invoke-static {v0, p1}, Lcom/twitter/android/settings/MobileNotificationsActivity;->a(Landroid/preference/Preference;I)V

    .line 518
    iput p1, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->i:I

    .line 519
    iput-boolean p2, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->j:Z

    .line 520
    return-void
.end method

.method a(Landroid/preference/Preference;)V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->p:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 320
    return-void
.end method

.method protected a(Lcom/twitter/model/core/TwitterUser;)V
    .locals 2

    .prologue
    .line 260
    invoke-static {p1}, Lcom/twitter/android/util/bt;->a(Lcom/twitter/model/core/TwitterUser;)Z

    move-result v0

    .line 261
    invoke-virtual {p0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->e()Landroid/preference/Preference;

    move-result-object v1

    .line 262
    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0, v1}, Lcom/twitter/android/settings/MobileNotificationsActivity;->a(Landroid/preference/Preference;)V

    .line 264
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 269
    :goto_0
    return-void

    .line 266
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 267
    invoke-virtual {p0, v1}, Lcom/twitter/android/settings/MobileNotificationsActivity;->b(Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method a(ZI)V
    .locals 6

    .prologue
    .line 496
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->q:Landroid/preference/Preference;

    .line 497
    if-eqz p1, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 499
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 498
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 503
    :goto_0
    iput-boolean p1, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->h:Z

    .line 504
    return-void

    .line 501
    :cond_0
    const v1, 0x7f0a07cd

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method protected a(Z)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 410
    if-eqz p1, :cond_1

    .line 411
    invoke-static {p0}, Lcom/google/android/gcm/b;->h(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 412
    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->showDialog(I)V

    .line 413
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 414
    sget-object v2, Lcom/twitter/library/platform/notifications/PushRegistration;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    sget-object v2, Lcom/twitter/library/platform/notifications/PushRegistration;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 416
    new-instance v2, Lcom/twitter/android/settings/n;

    invoke-direct {v2, p0, v4}, Lcom/twitter/android/settings/n;-><init>(Lcom/twitter/android/settings/MobileNotificationsActivity;Lcom/twitter/android/settings/h;)V

    iput-object v2, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->N:Lcom/twitter/android/settings/n;

    .line 417
    iget-object v2, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->N:Lcom/twitter/android/settings/n;

    sget-object v3, Lcom/twitter/library/provider/cn;->a:Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/twitter/android/settings/MobileNotificationsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 418
    invoke-static {p0}, Lcom/twitter/library/platform/notifications/PushRegistration;->d(Landroid/content/Context;)V

    .line 428
    :cond_0
    :goto_0
    return v0

    .line 422
    :cond_1
    invoke-static {p0}, Lcom/google/android/gcm/b;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->b:Lcom/twitter/library/client/Session;

    .line 423
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 422
    invoke-static {p0, v2, v3}, Lblh;->a(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    const v1, 0x7f0a0101

    invoke-virtual {p0, v1}, Lcom/twitter/android/settings/MobileNotificationsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 425
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(IZ)V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->t:Landroid/preference/Preference;

    invoke-static {v0, p1}, Lcom/twitter/android/settings/MobileNotificationsActivity;->a(Landroid/preference/Preference;I)V

    .line 524
    iput p1, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->k:I

    .line 525
    iput-boolean p2, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->l:Z

    .line 526
    return-void
.end method

.method b(Landroid/preference/Preference;)V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->p:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 324
    return-void
.end method

.method protected b(Lcom/twitter/model/core/TwitterUser;)V
    .locals 2

    .prologue
    .line 272
    invoke-static {p1}, Lcom/twitter/android/util/bt;->b(Lcom/twitter/model/core/TwitterUser;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->m:Z

    .line 273
    invoke-virtual {p0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->f()Landroid/preference/Preference;

    move-result-object v0

    .line 274
    iget-boolean v1, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->m:Z

    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->a(Landroid/preference/Preference;)V

    .line 276
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 277
    invoke-virtual {p0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->g()Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->b(Landroid/preference/Preference;)V

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->b(Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method b(Z)V
    .locals 1

    .prologue
    .line 529
    if-nez p1, :cond_0

    .line 537
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->c:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->a(Lcom/twitter/model/core/TwitterUser;)V

    .line 534
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->c:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->b(Lcom/twitter/model/core/TwitterUser;)V

    .line 535
    invoke-virtual {p0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->c()V

    .line 536
    invoke-virtual {p0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->d()V

    goto :goto_0
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 284
    invoke-static {}, Lcom/twitter/android/commerce/util/c;->d()Z

    move-result v0

    .line 285
    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->p:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->D:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 287
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->D:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 292
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->D:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 290
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->p:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->D:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 297
    invoke-static {}, Lcey;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->p:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->F:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 299
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->F:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 304
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->F:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 302
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->p:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->F:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method e()Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->C:Landroid/preference/Preference;

    return-object v0
.end method

.method f()Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->G:Landroid/preference/ListPreference;

    return-object v0
.end method

.method g()Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->v:Landroid/preference/Preference;

    return-object v0
.end method

.method protected h()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->f:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 375
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 376
    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 377
    const-string/jumbo v0, "enabled"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    const-string/jumbo v0, "enabled"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "count"

    .line 379
    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 378
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/settings/MobileNotificationsActivity;->a(ZI)V

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 383
    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 384
    const-string/jumbo v0, "pref_mention"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "pref_choice"

    .line 385
    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    :cond_2
    const-string/jumbo v0, "pref_choice"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "pref_mention"

    .line 387
    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 386
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/settings/MobileNotificationsActivity;->a(IZ)V

    goto :goto_0

    .line 390
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 391
    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 392
    const-string/jumbo v0, "pref_mention"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "pref_choice"

    .line 393
    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    :cond_4
    const-string/jumbo v0, "pref_choice"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "pref_mention"

    .line 395
    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 394
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/settings/MobileNotificationsActivity;->b(IZ)V

    goto :goto_0

    .line 399
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/client/TwitterPreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x7f0a07bd

    const/4 v0, 0x1

    .line 171
    invoke-static {p0}, Lcom/twitter/library/platform/notifications/PushRegistration;->c(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->f:Z

    .line 172
    invoke-super {p0, p1}, Lcom/twitter/android/client/TwitterPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 173
    const v1, 0x7f0a07da

    invoke-virtual {p0, v1}, Lcom/twitter/android/settings/MobileNotificationsActivity;->setTitle(I)V

    .line 174
    invoke-virtual {p0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "NotificationSettingsActivity_account_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->a:Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->k()Lcom/twitter/library/client/bk;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/twitter/library/client/bk;->b(Ljava/lang/String;)Lcom/twitter/library/client/Session;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->b:Lcom/twitter/library/client/Session;

    .line 176
    iget-object v1, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->b:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->c:Lcom/twitter/model/core/TwitterUser;

    .line 177
    invoke-static {p0}, Lcom/twitter/util/c;->e(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->O:Z

    .line 178
    iput-boolean v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->M:Z

    .line 180
    iget-boolean v1, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->f:Z

    if-eqz v1, :cond_3

    .line 181
    const v1, 0x7f080018

    invoke-virtual {p0, v1}, Lcom/twitter/android/settings/MobileNotificationsActivity;->addPreferencesFromResource(I)V

    .line 186
    :goto_0
    const-string/jumbo v1, "legacy_deciders_lifeline_alerts_enabled"

    invoke-static {v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v0

    .line 188
    :goto_1
    const-string/jumbo v0, "notif_lifeline_alerts"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->z:Landroid/preference/Preference;

    .line 189
    iget-boolean v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->f:Z

    if-eqz v0, :cond_5

    .line 190
    const-string/jumbo v0, "notif_tweets"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->q:Landroid/preference/Preference;

    .line 191
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->q:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 192
    const-string/jumbo v0, "notif_mentions_choice"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->r:Landroid/preference/Preference;

    .line 193
    const-string/jumbo v0, "notif_address_book"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->w:Landroid/preference/Preference;

    .line 194
    const-string/jumbo v0, "notif_experimental"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->x:Landroid/preference/Preference;

    .line 195
    const-string/jumbo v0, "notif_recommendations"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->A:Landroid/preference/Preference;

    .line 196
    const-string/jumbo v0, "notif_news"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->B:Landroid/preference/Preference;

    .line 197
    const-string/jumbo v0, "notif_vit_notable_event"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->C:Landroid/preference/Preference;

    .line 198
    const-string/jumbo v0, "notif_vit_follows"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->G:Landroid/preference/ListPreference;

    .line 199
    const-string/jumbo v0, "notif_offer_redemption"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->D:Landroid/preference/Preference;

    .line 200
    const-string/jumbo v0, "notif_highlights"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->E:Landroid/preference/Preference;

    .line 201
    const-string/jumbo v0, "notif_moments"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->F:Landroid/preference/Preference;

    .line 202
    invoke-virtual {p0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v2, "notif_pref_category"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->p:Landroid/preference/PreferenceCategory;

    .line 203
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->p:Landroid/preference/PreferenceCategory;

    const-string/jumbo v2, "notif_retweets"

    invoke-virtual {p0, v2}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const-string/jumbo v3, "notif_retweets"

    invoke-static {v0, v2, v3}, Lcom/twitter/android/settings/MobileNotificationsActivity;->a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->p:Landroid/preference/PreferenceCategory;

    const-string/jumbo v2, "notif_favorites"

    invoke-virtual {p0, v2}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const-string/jumbo v3, "notif_favorites"

    invoke-static {v0, v2, v3}, Lcom/twitter/android/settings/MobileNotificationsActivity;->a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;Ljava/lang/String;)V

    .line 205
    const-string/jumbo v0, "notif_retweets_choice"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->s:Landroid/preference/Preference;

    .line 206
    const-string/jumbo v0, "notif_favorites_choice"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->t:Landroid/preference/Preference;

    .line 207
    const-string/jumbo v0, "notif_polls_choice"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->u:Landroid/preference/Preference;

    .line 208
    if-eqz v1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->p:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->z:Landroid/preference/Preference;

    const-string/jumbo v2, "notif_lifeline_alerts"

    invoke-static {v0, v1, v2}, Lcom/twitter/android/settings/MobileNotificationsActivity;->a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;Ljava/lang/String;)V

    .line 221
    :cond_0
    :goto_2
    const-string/jumbo v0, "notif_follows"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->v:Landroid/preference/Preference;

    .line 222
    const-string/jumbo v0, "notif_direct_messages"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->y:Landroid/preference/Preference;

    .line 225
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->r:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 227
    iget-boolean v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->f:Z

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->r:Landroid/preference/Preference;

    check-cast v0, Lcom/twitter/android/settings/CheckBoxListPreference;

    invoke-virtual {v0, v4}, Lcom/twitter/android/settings/CheckBoxListPreference;->setDialogTitle(I)V

    .line 231
    :cond_1
    const-string/jumbo v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 234
    invoke-virtual {p0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_2

    const-string/jumbo v1, "poll_announcement"

    const-string/jumbo v2, "NotificationSettingsActivity_notif_type"

    .line 237
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/twitter/android/settings/j;

    invoke-direct {v1, p0}, Lcom/twitter/android/settings/j;-><init>(Lcom/twitter/android/settings/MobileNotificationsActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 248
    :cond_2
    return-void

    .line 183
    :cond_3
    const v1, 0x7f080017

    invoke-virtual {p0, v1}, Lcom/twitter/android/settings/MobileNotificationsActivity;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 186
    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_1

    .line 212
    :cond_5
    const-string/jumbo v0, "notif_timeline"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->q:Landroid/preference/Preference;

    .line 213
    const-string/jumbo v0, "notif_mentions"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->r:Landroid/preference/Preference;

    .line 214
    const-string/jumbo v0, "notif_retweets"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->s:Landroid/preference/Preference;

    .line 215
    const-string/jumbo v0, "notif_favorites"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->t:Landroid/preference/Preference;

    .line 216
    const-string/jumbo v0, "notif_polls_choice"

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->u:Landroid/preference/Preference;

    .line 217
    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->z:Landroid/preference/Preference;

    const-string/jumbo v2, "notif_lifeline_alerts"

    invoke-static {v0, v1, v2}, Lcom/twitter/android/settings/MobileNotificationsActivity;->a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 433
    if-ne p1, v2, :cond_0

    .line 434
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 435
    const v1, 0x7f0a079d

    invoke-virtual {p0, v1}, Lcom/twitter/android/settings/MobileNotificationsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 436
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 437
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 438
    new-instance v1, Lcom/twitter/android/settings/k;

    invoke-direct {v1, p0}, Lcom/twitter/android/settings/k;-><init>(Lcom/twitter/android/settings/MobileNotificationsActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 446
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/android/client/TwitterPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 367
    invoke-super {p0}, Lcom/twitter/android/client/TwitterPreferenceActivity;->onDestroy()V

    .line 368
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->N:Lcom/twitter/android/settings/n;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->N:Lcom/twitter/android/settings/n;

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 371
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 353
    invoke-super {p0}, Lcom/twitter/android/client/TwitterPreferenceActivity;->onPause()V

    .line 354
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->L:Lcom/twitter/config/f;

    invoke-static {v0}, Lcom/twitter/config/d;->b(Lcom/twitter/config/f;)V

    .line 355
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 451
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 452
    const-string/jumbo v1, "ringtone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->g:Ljava/lang/String;

    .line 457
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 454
    :cond_1
    instance-of v0, p1, Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 455
    check-cast p1, Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/twitter/library/util/an;->a(Landroid/preference/ListPreference;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 462
    const-string/jumbo v0, "notif_tweets"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    iput-boolean v2, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->M:Z

    .line 466
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/settings/TweetSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "TweetSettingsActivity_account_name"

    iget-object v2, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->a:Ljava/lang/String;

    .line 467
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "enabled"

    iget-boolean v2, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->h:Z

    .line 468
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 466
    invoke-virtual {p0, v0, v3}, Lcom/twitter/android/settings/MobileNotificationsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 492
    :cond_0
    :goto_0
    return v3

    .line 470
    :cond_1
    const-string/jumbo v0, "notif_retweets"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 471
    iput-boolean v2, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->M:Z

    .line 472
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/settings/RtFavSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "pref_choice"

    iget v2, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->i:I

    .line 473
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "pref_choice_key"

    const-string/jumbo v2, "notif_retweets_choice"

    .line 474
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "pref_mention"

    iget-boolean v2, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->j:Z

    .line 475
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "pref_mention_key"

    const-string/jumbo v2, "notif_retweeted_mention"

    .line 476
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "pref_title"

    const v2, 0x7f0a07c6

    .line 477
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "pref_xml"

    const v2, 0x7f080020

    .line 478
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    .line 472
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/settings/MobileNotificationsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 481
    :cond_2
    const-string/jumbo v0, "notif_favorites"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iput-boolean v2, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->M:Z

    .line 483
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/settings/RtFavSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "pref_choice"

    iget v2, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->k:I

    .line 484
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "pref_choice_key"

    const-string/jumbo v2, "notif_favorites_choice"

    .line 485
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "pref_mention"

    iget-boolean v2, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->l:Z

    .line 486
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "pref_mention_key"

    const-string/jumbo v2, "notif_favorited_mention"

    .line 487
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "pref_title"

    const v2, 0x7f0a07bc

    .line 488
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "pref_xml"

    const v2, 0x7f08000f

    .line 489
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x3

    .line 483
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/settings/MobileNotificationsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 345
    invoke-super {p0}, Lcom/twitter/android/client/TwitterPreferenceActivity;->onResume()V

    .line 346
    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->L:Lcom/twitter/config/f;

    invoke-static {v0}, Lcom/twitter/config/d;->a(Lcom/twitter/config/f;)V

    .line 347
    invoke-virtual {p0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->a()V

    .line 348
    iget-boolean v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->f:Z

    invoke-virtual {p0, v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->b(Z)V

    .line 349
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 333
    invoke-super {p0}, Lcom/twitter/android/client/TwitterPreferenceActivity;->onStart()V

    .line 334
    iget-boolean v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->M:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 335
    new-instance v0, Lcom/twitter/android/settings/m;

    iget-object v1, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->b:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, p0, v2, v3}, Lcom/twitter/android/settings/m;-><init>(Lcom/twitter/android/settings/MobileNotificationsActivity;J)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/android/settings/m;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-boolean v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->M:Z

    if-nez v0, :cond_0

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->M:Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 359
    invoke-super {p0}, Lcom/twitter/android/client/TwitterPreferenceActivity;->onStop()V

    .line 360
    iget-boolean v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->M:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    if-eqz v0, :cond_0

    .line 361
    new-instance v0, Lcom/twitter/android/settings/o;

    iget-object v1, p0, Lcom/twitter/android/settings/MobileNotificationsActivity;->b:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, p0, v2, v3}, Lcom/twitter/android/settings/o;-><init>(Lcom/twitter/android/settings/MobileNotificationsActivity;J)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/android/settings/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 363
    :cond_0
    return-void
.end method
