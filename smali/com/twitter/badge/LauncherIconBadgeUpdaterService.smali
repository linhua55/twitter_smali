.class public Lcom/twitter/badge/LauncherIconBadgeUpdaterService;
.super Landroid/app/IntentService;
.source "Twttr"


# instance fields
.field private a:Lcom/twitter/library/client/Session;

.field private b:Lcom/twitter/badge/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->setIntentRedelivery(Z)V

    .line 68
    return-void
.end method

.method private a(J)I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 105
    .line 106
    invoke-direct {p0}, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->a()Lcom/twitter/badge/a;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/badge/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/provider/cx;->a:Landroid/net/Uri;

    .line 108
    invoke-static {v1, p1, p2}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 107
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_0

    .line 111
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 114
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v6, v0

    .line 117
    :cond_0
    return v6

    :cond_1
    move v0, v6

    goto :goto_0
.end method

.method private a()Lcom/twitter/badge/a;
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->b:Lcom/twitter/badge/a;

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 147
    new-instance v1, Lcom/twitter/badge/a;

    sget v2, Lbjr;->badge_behaviors_values:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/twitter/badge/a;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->b:Lcom/twitter/badge/a;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->b:Lcom/twitter/badge/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "update"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 38
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/client/bk;)V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/twitter/badge/b;

    invoke-direct {v0, p0, p1}, Lcom/twitter/badge/b;-><init>(Landroid/content/Context;Lcom/twitter/library/client/bk;)V

    invoke-virtual {p1, v0}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bj;)V

    .line 63
    return-void
.end method

.method private b(J)I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 121
    const/4 v6, 0x0

    .line 122
    invoke-direct {p0}, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->a()Lcom/twitter/badge/a;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/badge/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/provider/GlobalDatabaseProvider;->b:Landroid/net/Uri;

    .line 125
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/provider/at;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_0

    .line 128
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 131
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v6, v0

    .line 134
    :cond_0
    return v6

    :cond_1
    move v0, v6

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "clear"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 43
    return-void
.end method

.method private c(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 139
    new-instance v0, Lcom/twitter/library/client/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    const-string/jumbo v1, "launcher_icon_badge_behavior"

    const/4 v2, 0x0

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/l;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 72
    if-nez p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 76
    if-eqz v2, :cond_0

    .line 77
    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown intent action for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :sswitch_0
    const-string/jumbo v3, "update"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "clear"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->a:Lcom/twitter/library/client/Session;

    if-nez v0, :cond_3

    .line 80
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->a:Lcom/twitter/library/client/Session;

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->a:Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 83
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 84
    invoke-direct {p0, v0, v1}, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->a(J)I

    move-result v2

    .line 85
    invoke-direct {p0, v0, v1}, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->b(J)I

    move-result v0

    add-int/2addr v0, v2

    .line 86
    invoke-static {p0}, Lcom/twitter/badge/LauncherIconBadgeUtil;->a(Landroid/content/Context;)Lcom/twitter/badge/LauncherIconBadgeUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/badge/LauncherIconBadgeUtil;->a(I)V

    .line 87
    const-string/jumbo v1, "BadgeUpdaterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UPDATE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 92
    :pswitch_1
    invoke-static {p0}, Lcom/twitter/badge/LauncherIconBadgeUtil;->a(Landroid/content/Context;)Lcom/twitter/badge/LauncherIconBadgeUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/twitter/badge/LauncherIconBadgeUtil;->a(I)V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->a:Lcom/twitter/library/client/Session;

    .line 94
    const-string/jumbo v0, "BadgeUpdaterService"

    const-string/jumbo v1, "CLEAR"

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 77
    :sswitch_data_0
    .sparse-switch
        -0x31ffc737 -> :sswitch_0
        0x5a5b64d -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
