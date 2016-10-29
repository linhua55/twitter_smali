.class public Lcom/twitter/android/client/notifications/DMNotif;
.super Lcom/twitter/android/client/notifications/StatusBarNotif;
.source "Twttr"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/twitter/android/client/notifications/DMNotif;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/twitter/android/client/notifications/a;

    invoke-direct {v0}, Lcom/twitter/android/client/notifications/a;-><init>()V

    sput-object v0, Lcom/twitter/android/client/notifications/DMNotif;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/twitter/android/client/notifications/StatusBarNotif;-><init>(Landroid/os/Parcel;)V

    .line 64
    invoke-static {}, Lbnv;->p()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/client/notifications/DMNotif;->f:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/twitter/library/platform/notifications/ae;JLjava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/client/notifications/StatusBarNotif;-><init>(Lcom/twitter/library/platform/notifications/ae;JLjava/lang/String;)V

    .line 59
    invoke-static {}, Lbnv;->p()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/client/notifications/DMNotif;->f:Z

    .line 60
    return-void
.end method

.method static synthetic a([B)I
    .locals 1

    .prologue
    .line 43
    invoke-static {p0}, Lcom/twitter/android/client/notifications/DMNotif;->b([B)I

    move-result v0

    return v0
.end method

.method private a(ZIZ)Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    new-instance v0, Lbod;

    invoke-direct {v0}, Lbod;-><init>()V

    .line 89
    invoke-virtual {v0, p1}, Lbod;->b(Z)Lbod;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/notifications/DMNotif;->e:Landroid/content/Context;

    .line 90
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbod;->a(Landroid/content/res/Resources;)Lbnp;

    move-result-object v0

    check-cast v0, Lbod;

    iget-object v1, p0, Lcom/twitter/android/client/notifications/DMNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-wide v2, v1, Lcom/twitter/library/platform/notifications/ae;->i:J

    .line 91
    invoke-virtual {v0, v2, v3}, Lbod;->a(J)Lbnp;

    move-result-object v0

    check-cast v0, Lbod;

    iget-object v1, p0, Lcom/twitter/android/client/notifications/DMNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v1, v1, Lcom/twitter/library/platform/notifications/ae;->y:Lcsi;

    iget-object v1, v1, Lcsi;->b:Lcse;

    iget-wide v2, v1, Lcse;->b:J

    .line 92
    invoke-virtual {v0, v2, v3}, Lbod;->b(J)Lbnp;

    move-result-object v0

    check-cast v0, Lbod;

    iget-object v1, p0, Lcom/twitter/android/client/notifications/DMNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    .line 93
    invoke-virtual {v1}, Lcom/twitter/library/platform/notifications/ae;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbod;->a(Ljava/lang/String;)Lbnp;

    move-result-object v0

    check-cast v0, Lbod;

    .line 94
    invoke-virtual {v0, p3}, Lbod;->a(Z)Lbnp;

    move-result-object v0

    check-cast v0, Lbod;

    iget-object v1, p0, Lcom/twitter/android/client/notifications/DMNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v1, v1, Lcom/twitter/library/platform/notifications/ae;->g:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v1}, Lbod;->b(Ljava/lang/String;)Lbnp;

    move-result-object v0

    check-cast v0, Lbod;

    const/4 v1, 0x0

    .line 96
    invoke-virtual {v0, v1}, Lbod;->a(I)Lbnp;

    move-result-object v0

    check-cast v0, Lbod;

    .line 97
    invoke-virtual {v0, p2}, Lbod;->b(I)Lbnp;

    move-result-object v0

    check-cast v0, Lbod;

    .line 98
    invoke-virtual {v0}, Lbod;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbno;

    .line 99
    invoke-virtual {v0}, Lbno;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    return-object v0
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/twitter/model/dms/i;->b:[I

    invoke-static {v0, p0}, Lcom/twitter/util/collection/CollectionUtils;->a([II)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/twitter/android/client/notifications/DMNotif;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/twitter/android/client/notifications/DMNotif;->f:Z

    return v0
.end method

.method private static b([B)I
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/twitter/util/serialization/i;->c:Lcom/twitter/util/serialization/ah;

    invoke-static {p0, v0}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 194
    if-nez v0, :cond_0

    .line 195
    const/4 v0, 0x0

    .line 199
    :goto_0
    return v0

    .line 198
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 184
    new-instance v0, Lcom/twitter/android/dm/o;

    invoke-direct {v0}, Lcom/twitter/android/dm/o;-><init>()V

    .line 185
    invoke-virtual {v0, p1}, Lcom/twitter/android/dm/o;->c(Ljava/lang/String;)Lcom/twitter/android/dm/o;

    move-result-object v0

    const/4 v1, 0x1

    .line 186
    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/o;->c(Z)Lcom/twitter/android/dm/o;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/twitter/android/dm/o;->d()Lcom/twitter/android/dm/n;

    move-result-object v0

    .line 184
    invoke-static {p0, v0}, Lcom/twitter/android/dm/r;->a(Landroid/content/Context;Lcom/twitter/android/dm/n;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "com.twitter.android.home.messages."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 184
    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/client/notifications/DMNotif;)Z
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/twitter/android/client/notifications/DMNotif;->n()Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 82
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/twitter/util/aj;->c(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()Z
    .locals 6

    .prologue
    .line 78
    iget-object v0, p0, Lcom/twitter/android/client/notifications/DMNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/client/notifications/DMNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-wide v2, v1, Lcom/twitter/library/platform/notifications/ae;->i:J

    iget-wide v4, p0, Lcom/twitter/android/client/notifications/DMNotif;->b:J

    invoke-static {v0, v2, v3, v4, v5}, Lbnx;->a(Ljava/lang/String;JJ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Context;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 6

    .prologue
    .line 313
    const v0, 0x7f0a00d2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 314
    new-instance v0, Landroid/support/v4/app/RemoteInput$Builder;

    const-string/jumbo v2, "extra_notification_reply"

    invoke-direct {v0, v2}, Landroid/support/v4/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0, v1}, Landroid/support/v4/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Landroid/support/v4/app/RemoteInput$Builder;->build()Landroid/support/v4/app/RemoteInput;

    move-result-object v2

    .line 317
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/dm/DMNotifReplyIntentService;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "extra_owner_id"

    .line 318
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/DMNotif;->v()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "extra_conversation_id"

    iget-object v4, p0, Lcom/twitter/android/client/notifications/DMNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v4, v4, Lcom/twitter/library/platform/notifications/ae;->k:Ljava/lang/String;

    .line 319
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "extra_notification_id"

    iget-object v4, p0, Lcom/twitter/android/client/notifications/DMNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget v4, v4, Lcom/twitter/library/platform/notifications/ae;->r:I

    .line 320
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 321
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p1, v3, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 323
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v0

    invoke-virtual {v0}, Lcbh;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f02065b

    .line 325
    :goto_0
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    invoke-direct {v4, v0, v1, v3}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 327
    invoke-virtual {v4, v2}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroid/support/v4/app/RemoteInput;)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    .line 329
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    .line 331
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v0

    .line 330
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 329
    return-object v0

    .line 323
    :cond_0
    const v0, 0x7f02065a

    goto :goto_0
.end method

.method protected a()Lcom/twitter/android/client/notifications/b;
    .locals 6

    .prologue
    .line 69
    new-instance v0, Lcom/twitter/android/client/notifications/b;

    iget-object v2, p0, Lcom/twitter/android/client/notifications/DMNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v3, p0, Lcom/twitter/android/client/notifications/DMNotif;->c:Ljava/lang/String;

    iget-wide v4, p0, Lcom/twitter/android/client/notifications/DMNotif;->b:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/client/notifications/b;-><init>(Lcom/twitter/android/client/notifications/DMNotif;Lcom/twitter/library/platform/notifications/ae;Ljava/lang/String;J)V

    return-object v0
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)Lcom/twitter/media/request/b;
    .locals 4

    .prologue
    .line 155
    new-instance v0, Lcom/twitter/library/network/aa;

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/DMNotif;->v()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->h()Lcom/twitter/model/account/OAuthToken;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/library/network/aa;-><init>(Lcom/twitter/model/account/OAuthToken;)V

    .line 157
    invoke-super {p0, p1, p2}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/media/request/b;->a(Ljava/lang/Object;)Lcom/twitter/media/request/h;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/request/b;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 104
    iget-boolean v0, p0, Lcom/twitter/android/client/notifications/DMNotif;->f:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/twitter/android/client/notifications/DMNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->t:Ljava/lang/String;

    .line 109
    :goto_0
    return-object v0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/DMNotif;->l()I

    move-result v2

    .line 108
    iget-object v0, p0, Lcom/twitter/android/client/notifications/DMNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/notifications/DMNotif;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/twitter/android/client/notifications/DMNotif;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/twitter/android/client/notifications/DMNotif;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v1

    .line 109
    :goto_1
    invoke-direct {p0, v1, v2, v0}, Lcom/twitter/android/client/notifications/DMNotif;->a(ZIZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/twitter/android/client/notifications/DMNotif;->f:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/twitter/android/client/notifications/DMNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->f:Ljava/lang/String;

    .line 118
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/notifications/DMNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/client/notifications/DMNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/client/notifications/DMNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    invoke-virtual {v0}, Lcom/twitter/library/platform/notifications/ae;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/twitter/android/client/notifications/DMNotif;->f:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/twitter/android/client/notifications/DMNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->g:Ljava/lang/String;

    .line 129
    :goto_0
    return-object v0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/DMNotif;->l()I

    move-result v0

    .line 129
    invoke-static {v0}, Lcom/twitter/android/client/notifications/DMNotif;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Lcom/twitter/android/client/notifications/DMNotif;->n()Z

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcom/twitter/android/client/notifications/DMNotif;->a(ZIZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/DMNotif;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/twitter/android/client/notifications/DMNotif;->f:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/twitter/android/client/notifications/DMNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->g:Ljava/lang/String;

    .line 139
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/client/notifications/DMNotif;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/DMNotif;->l()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/client/notifications/DMNotif;->a(ZIZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/client/notifications/DMNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/DMNotif;->G()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/DMNotif;->H()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public i()I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 173
    const v0, 0x7f020650

    return v0
.end method

.method protected j()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/twitter/android/client/notifications/DMNotif;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/client/notifications/DMNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v1, v1, Lcom/twitter/library/platform/notifications/ae;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/android/client/notifications/DMNotif;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    const-string/jumbo v0, "message"

    return-object v0
.end method

.method l()I
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/twitter/android/client/notifications/DMNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->w:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/platform/notifications/i;

    .line 211
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, Lcom/twitter/library/platform/notifications/i;->j:[B

    invoke-static {v0}, Lcom/twitter/android/client/notifications/DMNotif;->b([B)I

    move-result v0

    goto :goto_0
.end method

.method protected synthetic m()Lcom/twitter/android/client/notifications/ac;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/DMNotif;->a()Lcom/twitter/android/client/notifications/b;

    move-result-object v0

    return-object v0
.end method
