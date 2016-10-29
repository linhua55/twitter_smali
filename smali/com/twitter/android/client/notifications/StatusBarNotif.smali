.class public abstract Lcom/twitter/android/client/notifications/StatusBarNotif;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected final a:Lcom/twitter/library/platform/notifications/ae;

.field protected final b:J

.field protected final c:Ljava/lang/String;

.field protected final d:J

.field protected e:Landroid/content/Context;

.field private final f:Lcom/twitter/android/client/notifications/ac;

.field private g:Z

.field private h:Lcom/twitter/android/client/af;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->b:J

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->c:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->d:J

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    .line 111
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 112
    sget-object v1, Lcom/twitter/library/platform/notifications/ae;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/platform/notifications/ae;

    iput-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    .line 113
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->m()Lcom/twitter/android/client/notifications/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    .line 114
    return-void
.end method

.method protected constructor <init>(Lcom/twitter/library/platform/notifications/ae;JLjava/lang/String;)V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    .line 99
    iput-wide p2, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->b:J

    .line 100
    iput-object p4, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->c:Ljava/lang/String;

    .line 101
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->d:J

    .line 102
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->m()Lcom/twitter/android/client/notifications/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->g:Z

    .line 104
    return-void
.end method

.method private T()I
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    .line 398
    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/ac;->m()I

    move-result v0

    .line 397
    :goto_0
    return v0

    .line 398
    :cond_0
    const/high16 v0, 0x14000000

    goto :goto_0
.end method

.method private U()Ljava/lang/String;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/ac;->n()Ljava/lang/String;

    move-result-object v0

    .line 783
    :goto_0
    return-object v0

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 781
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->l:Ljava/lang/String;

    goto :goto_0

    .line 783
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 737
    invoke-direct {p0, p1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Landroid/os/Bundle;)V

    .line 738
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->e:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/client/NotificationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 739
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/provider/dc;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget v2, v2, Lcom/twitter/library/platform/notifications/ae;->r:I

    .line 741
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 740
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 742
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 743
    iget-object v1, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->e:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/twitter/android/client/notifications/StatusBarNotif;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 5

    .prologue
    .line 796
    invoke-virtual {p2, p1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->d(Landroid/content/Context;)V

    .line 797
    invoke-virtual {p0, p1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Landroid/content/Context;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 798
    invoke-virtual {p2}, Lcom/twitter/android/client/notifications/StatusBarNotif;->x()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 799
    invoke-virtual {p2}, Lcom/twitter/android/client/notifications/StatusBarNotif;->I()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 800
    invoke-virtual {p2}, Lcom/twitter/android/client/notifications/StatusBarNotif;->L()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 801
    invoke-virtual {p2}, Lcom/twitter/android/client/notifications/StatusBarNotif;->D()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 802
    invoke-virtual {p2}, Lcom/twitter/android/client/notifications/StatusBarNotif;->F()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 803
    invoke-virtual {p2}, Lcom/twitter/android/client/notifications/StatusBarNotif;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 804
    invoke-virtual {p2}, Lcom/twitter/android/client/notifications/StatusBarNotif;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 805
    invoke-virtual {p2}, Lcom/twitter/android/client/notifications/StatusBarNotif;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 806
    invoke-virtual {p2}, Lcom/twitter/android/client/notifications/StatusBarNotif;->az_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 807
    invoke-virtual {p2}, Lcom/twitter/android/client/notifications/StatusBarNotif;->z()Landroid/support/v4/app/NotificationCompat$Style;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 808
    invoke-virtual {p2}, Lcom/twitter/android/client/notifications/StatusBarNotif;->E()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 809
    invoke-virtual {p2}, Lcom/twitter/android/client/notifications/StatusBarNotif;->M()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/NotificationCompat$Action;

    .line 810
    iget v3, v0, Landroid/support/v4/app/NotificationCompat$Action;->icon:I

    iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v3, v4, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 812
    :cond_0
    return-object v1
.end method

.method private static a(Lcsa;Lcse;Lcse;)Lcom/twitter/model/core/Tweet;
    .locals 6

    .prologue
    .line 698
    new-instance v0, Lcom/twitter/model/core/bl;

    invoke-direct {v0}, Lcom/twitter/model/core/bl;-><init>()V

    iget-wide v2, p1, Lcse;->b:J

    .line 699
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/bl;->f(J)Lcom/twitter/model/core/bl;

    move-result-object v0

    iget-object v1, p1, Lcse;->c:Ljava/lang/String;

    .line 700
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/bl;->b(Ljava/lang/String;)Lcom/twitter/model/core/bl;

    move-result-object v0

    iget-wide v2, p2, Lcse;->b:J

    .line 701
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/bl;->d(J)Lcom/twitter/model/core/bl;

    move-result-object v0

    iget-object v1, p2, Lcse;->c:Ljava/lang/String;

    .line 702
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/bl;->h(Ljava/lang/String;)Lcom/twitter/model/core/bl;

    move-result-object v0

    iget-wide v2, p0, Lcsa;->b:J

    .line 703
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/bl;->g(J)Lcom/twitter/model/core/bl;

    move-result-object v0

    iget-wide v2, p0, Lcsa;->b:J

    .line 704
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/bl;->h(J)Lcom/twitter/model/core/bl;

    move-result-object v0

    iget-wide v2, p0, Lcsa;->c:J

    .line 705
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/bl;->e(J)Lcom/twitter/model/core/bl;

    move-result-object v1

    iget-wide v2, p0, Lcsa;->b:J

    iget-wide v4, p0, Lcsa;->c:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 706
    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/model/core/bl;->c(Z)Lcom/twitter/model/core/bl;

    move-result-object v0

    iget-object v1, p0, Lcsa;->e:Ljava/lang/String;

    .line 707
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/bl;->a(Ljava/lang/String;)Lcom/twitter/model/core/bl;

    move-result-object v1

    new-instance v0, Lcom/twitter/model/core/bo;

    invoke-direct {v0}, Lcom/twitter/model/core/bo;-><init>()V

    iget-object v2, p0, Lcsa;->h:Lcom/twitter/model/core/j;

    .line 709
    invoke-virtual {v0, v2}, Lcom/twitter/model/core/bo;->b(Lcom/twitter/model/core/j;)Lcom/twitter/model/core/bo;

    move-result-object v0

    .line 710
    invoke-virtual {v0}, Lcom/twitter/model/core/bo;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    .line 708
    invoke-virtual {v1, v0}, Lcom/twitter/model/core/bl;->a(Lcom/twitter/model/core/bm;)Lcom/twitter/model/core/bl;

    move-result-object v0

    .line 711
    invoke-virtual {v0}, Lcom/twitter/model/core/bl;->a()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    .line 698
    return-object v0

    .line 705
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;Lcom/twitter/android/client/af;)V
    .locals 3

    .prologue
    .line 986
    const/4 v0, 0x0

    .line 987
    iget-boolean v1, p2, Lcom/twitter/android/client/af;->d:Z

    if-eqz v1, :cond_0

    .line 988
    const/4 v0, 0x2

    .line 990
    :cond_0
    sget-object v1, Lcom/twitter/android/client/af;->a:Lcom/twitter/android/client/af;

    if-ne p2, v1, :cond_1

    .line 991
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 993
    :cond_1
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 994
    iget-boolean v0, p2, Lcom/twitter/android/client/af;->b:Z

    if-eqz v0, :cond_2

    .line 995
    const v0, -0xff0100

    const/16 v1, 0x1f4

    const/16 v2, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 997
    :cond_2
    sget-boolean v0, Lcom/twitter/library/util/al;->b:Z

    if-eqz v0, :cond_3

    .line 998
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 999
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_3

    .line 1000
    iget-object v0, p2, Lcom/twitter/android/client/af;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1001
    iget-object v0, p2, Lcom/twitter/android/client/af;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1005
    :cond_3
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 747
    const-string/jumbo v0, "sb_account_id"

    iget-wide v2, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->b:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 748
    const-string/jumbo v0, "sb_notification"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 749
    return-void
.end method

.method private a(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 970
    new-instance v0, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 971
    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v0

    .line 972
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v0

    .line 973
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v0

    .line 970
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 974
    return-void
.end method

.method private n()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-boolean v0, v0, Lcom/twitter/library/platform/notifications/ae;->o:Z

    return v0
.end method

.method private u()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 369
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/ac;->g()Landroid/content/Intent;

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->j()Landroid/content/Intent;

    move-result-object v1

    .line 374
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->o()Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->p()Ljava/lang/String;

    move-result-object v2

    .line 376
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->e:Landroid/content/Context;

    .line 377
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/twitter/android/settings/MobileNotificationsActivity;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 378
    invoke-static {}, Lcom/twitter/app/common/account/d;->a()Lcom/twitter/app/common/account/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/app/common/account/d;->b()I

    move-result v3

    .line 379
    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    :cond_1
    const-string/jumbo v3, "NotificationSettingsActivity_text"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "NotificationSettingsActivity_username"

    iget-object v4, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->c:Ljava/lang/String;

    .line 383
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "NotificationSettingsActivity_user_id"

    iget-wide v4, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->b:J

    .line 384
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "NotificationSettingsActivity_notif_type"

    .line 385
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "NotificationSettingsActivity_scribe_component"

    .line 387
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->q()Ljava/lang/String;

    move-result-object v3

    .line 386
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "NotificationSettingsActivity_notif_random_id"

    .line 389
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 388
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    move-object v0, v1

    .line 391
    goto/16 :goto_0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    .line 199
    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/ac;->e()Ljava/lang/String;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    .line 208
    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/ac;->d()Ljava/lang/String;

    move-result-object v0

    .line 207
    :goto_0
    return-object v0

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/ac;->j()[I

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    .line 219
    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/ac;->d()Ljava/lang/String;

    move-result-object v0

    .line 218
    :goto_0
    return-object v0

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final D()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    .line 228
    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/ac;->i()I

    move-result v0

    .line 227
    :goto_0
    return v0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget v0, v0, Lcom/twitter/library/platform/notifications/ae;->s:I

    goto :goto_0
.end method

.method public final E()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    .line 242
    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/ac;->l()I

    move-result v0

    .line 241
    :goto_0
    return v0

    .line 242
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final F()I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    .line 248
    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/ac;->f()I

    move-result v0

    .line 247
    :goto_0
    return v0

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->i()I

    move-result v0

    goto :goto_0
.end method

.method protected G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->y:Lcsi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->y:Lcsi;

    invoke-virtual {v0}, Lcsi;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->n:Ljava/lang/String;

    goto :goto_0
.end method

.method public final I()Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->J()Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->K()Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(ILcom/twitter/library/scribe/ScribeLog;Lcom/twitter/library/scribe/ScribeLog;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method protected final J()Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 1

    .prologue
    .line 408
    const-string/jumbo v0, "open"

    invoke-virtual {p0, v0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    return-object v0
.end method

.method protected final K()Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 1

    .prologue
    .line 417
    const-string/jumbo v0, "background_open"

    invoke-virtual {p0, v0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    return-object v0
.end method

.method public final L()Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 435
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 436
    const-string/jumbo v1, "dismiss"

    invoke-virtual {p0, v1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    .line 437
    if-eqz v1, :cond_0

    .line 438
    const-string/jumbo v2, "notif_scribe_log"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 441
    :cond_0
    const-string/jumbo v1, "background_dismiss"

    invoke-virtual {p0, v1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    .line 442
    if-eqz v1, :cond_1

    .line 443
    const-string/jumbo v2, "notif_scribe_log_from_background"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 447
    :cond_1
    iget-boolean v1, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->g:Z

    if-eqz v1, :cond_3

    .line 448
    const-string/jumbo v1, "preview_dismiss_image_loaded"

    invoke-virtual {p0, v1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    .line 449
    if-eqz v1, :cond_2

    .line 450
    const-string/jumbo v2, "notif_scribe_log_for_preview_experiment"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 461
    :cond_2
    :goto_0
    sget-object v1, Lcom/twitter/android/client/NotificationService;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 453
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lzk;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 454
    const-string/jumbo v1, "preview_dismiss"

    invoke-virtual {p0, v1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    .line 455
    if-eqz v1, :cond_2

    .line 456
    const-string/jumbo v2, "notif_scribe_log_for_preview_experiment"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected M()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 467
    iget-object v3, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    .line 468
    if-eqz v3, :cond_0

    iget-object v0, v3, Lcom/twitter/library/platform/notifications/ae;->z:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v3, Lcom/twitter/library/platform/notifications/ae;->y:Lcsi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 692
    :goto_0
    return-object v0

    .line 472
    :cond_1
    invoke-direct {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->U()Ljava/lang/String;

    move-result-object v4

    .line 473
    iget-object v5, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->e:Landroid/content/Context;

    .line 474
    iget-object v0, v3, Lcom/twitter/library/platform/notifications/ae;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrp;

    .line 475
    iget-object v1, v0, Lcrp;->h:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    .line 476
    iget v0, v0, Lcrp;->g:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 478
    :pswitch_1
    iget-object v0, v3, Lcom/twitter/library/platform/notifications/ae;->x:Lcsa;

    .line 479
    iget-object v7, v3, Lcom/twitter/library/platform/notifications/ae;->y:Lcsi;

    iget-object v7, v7, Lcsi;->c:Lcse;

    .line 480
    if-eqz v0, :cond_2

    if-eqz v7, :cond_2

    .line 483
    iget-object v8, v3, Lcom/twitter/library/platform/notifications/ae;->y:Lcsi;

    iget-object v8, v8, Lcsi;->d:Lcse;

    .line 484
    invoke-static {v0, v7, v8}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Lcsa;Lcse;Lcse;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    .line 485
    if-eqz v1, :cond_3

    .line 486
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 487
    invoke-static {v5, v0, v7, v8}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v7

    .line 486
    invoke-virtual {v1, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    .line 490
    :cond_3
    invoke-static {}, Lcom/twitter/android/composer/ax;->a()Lcom/twitter/android/composer/ax;

    move-result-object v7

    .line 491
    invoke-virtual {v7, v0}, Lcom/twitter/android/composer/ax;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    iget-object v7, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->c:Ljava/lang/String;

    .line 492
    invoke-virtual {v0, v7}, Lcom/twitter/android/composer/ax;->b(Ljava/lang/String;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 493
    invoke-virtual {v0, v5}, Lcom/twitter/android/composer/ax;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 494
    const-class v7, Lcom/twitter/android/composer/ComposerActivity;

    invoke-virtual {p0, v5, v7, v0, v1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;Lcom/twitter/library/scribe/TwitterScribeLog;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 496
    new-instance v7, Lcom/twitter/android/client/notifications/x;

    iget-object v8, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->e:Landroid/content/Context;

    sget-object v9, Lcom/twitter/android/client/NotificationService;->c:Ljava/lang/String;

    invoke-direct {v7, v8, p0, v9}, Lcom/twitter/android/client/notifications/x;-><init>(Landroid/content/Context;Lcom/twitter/android/client/notifications/StatusBarNotif;Ljava/lang/String;)V

    .line 498
    invoke-virtual {v7, v1, v1}, Lcom/twitter/android/client/notifications/x;->a(Lcom/twitter/library/scribe/TwitterScribeLog;Lcom/twitter/library/scribe/TwitterScribeLog;)Lcom/twitter/android/client/notifications/x;

    move-result-object v1

    const/4 v7, 0x1

    .line 499
    invoke-virtual {v1, v7}, Lcom/twitter/android/client/notifications/x;->a(Z)Lcom/twitter/android/client/notifications/x;

    move-result-object v1

    .line 500
    invoke-virtual {v1, v0}, Lcom/twitter/android/client/notifications/x;->a(Landroid/app/PendingIntent;)Lcom/twitter/android/client/notifications/x;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/x;->b()Landroid/app/PendingIntent;

    move-result-object v1

    .line 502
    new-instance v7, Landroid/support/v4/app/NotificationCompat$Action;

    .line 503
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v0

    invoke-virtual {v0}, Lcbh;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f02065b

    :goto_2
    const v8, 0x7f0a00d2

    .line 505
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8, v1}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 502
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 503
    :cond_4
    const v0, 0x7f02065a

    goto :goto_2

    .line 510
    :pswitch_2
    iget-object v7, v3, Lcom/twitter/library/platform/notifications/ae;->x:Lcsa;

    .line 511
    iget-object v0, v3, Lcom/twitter/library/platform/notifications/ae;->y:Lcsi;

    iget-object v0, v0, Lcsi;->c:Lcse;

    .line 512
    if-eqz v7, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcse;->h:Z

    if-nez v1, :cond_2

    .line 515
    iget-object v1, v3, Lcom/twitter/library/platform/notifications/ae;->y:Lcsi;

    iget-object v1, v1, Lcsi;->d:Lcse;

    invoke-static {v7, v0, v1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Lcsa;Lcse;Lcse;)Lcom/twitter/model/core/Tweet;

    move-result-object v8

    .line 518
    if-eqz v4, :cond_5

    .line 519
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 520
    invoke-static {v5, v8, v0, v1}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v1

    .line 521
    const-string/jumbo v0, "retweet"

    invoke-virtual {p0, v0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 522
    const-string/jumbo v9, "quote"

    invoke-virtual {p0, v9}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 527
    :goto_3
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 528
    const-string/jumbo v10, "ref_status_id"

    iget-wide v12, v7, Lcsa;->b:J

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 529
    const-string/jumbo v10, "status_id"

    iget-wide v12, v7, Lcsa;->c:J

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 535
    new-instance v7, Lcom/twitter/android/client/notifications/x;

    iget-object v10, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->e:Landroid/content/Context;

    sget-object v11, Lcom/twitter/android/client/NotificationService;->d:Ljava/lang/String;

    invoke-direct {v7, v10, p0, v11}, Lcom/twitter/android/client/notifications/x;-><init>(Landroid/content/Context;Lcom/twitter/android/client/notifications/StatusBarNotif;Ljava/lang/String;)V

    .line 537
    invoke-virtual {v7, v0, v0}, Lcom/twitter/android/client/notifications/x;->a(Lcom/twitter/library/scribe/TwitterScribeLog;Lcom/twitter/library/scribe/TwitterScribeLog;)Lcom/twitter/android/client/notifications/x;

    move-result-object v0

    const v7, 0x7f02065c

    const v10, 0x7f0a05da

    .line 539
    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 538
    invoke-virtual {v0, v7, v10}, Lcom/twitter/android/client/notifications/x;->a(ILjava/lang/String;)Lcom/twitter/android/client/notifications/x;

    move-result-object v0

    .line 541
    invoke-virtual {v0, v9}, Lcom/twitter/android/client/notifications/x;->a(Landroid/os/Bundle;)Lcom/twitter/android/client/notifications/x;

    move-result-object v0

    .line 546
    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/x;->a()Landroid/content/Intent;

    move-result-object v7

    .line 551
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/twitter/android/dialog/NotifyRetweetDialogFragmentActivity;

    invoke-direct {v9, v5, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v10, "tweet"

    .line 553
    invoke-virtual {v9, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v9, "retweet_service_intent"

    .line 554
    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v7

    .line 556
    const/4 v8, 0x0

    .line 557
    invoke-virtual {p0, v5, v8, v7, v1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;Lcom/twitter/library/scribe/TwitterScribeLog;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 563
    invoke-virtual {v0, v1}, Lcom/twitter/android/client/notifications/x;->a(Landroid/app/PendingIntent;)Lcom/twitter/android/client/notifications/x;

    move-result-object v0

    const/4 v1, 0x1

    .line 564
    invoke-virtual {v0, v1}, Lcom/twitter/android/client/notifications/x;->a(Z)Lcom/twitter/android/client/notifications/x;

    move-result-object v0

    .line 565
    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/x;->b()Landroid/app/PendingIntent;

    move-result-object v0

    .line 566
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Action;

    const v7, 0x7f02065c

    const v8, 0x7f0a00d3

    .line 567
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8, v0}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 566
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 524
    :cond_5
    const/4 v0, 0x0

    .line 525
    const/4 v1, 0x0

    goto :goto_3

    .line 572
    :pswitch_3
    iget-object v0, v3, Lcom/twitter/library/platform/notifications/ae;->x:Lcsa;

    .line 573
    iget-object v7, v3, Lcom/twitter/library/platform/notifications/ae;->y:Lcsi;

    iget-object v7, v7, Lcsi;->c:Lcse;

    .line 574
    if-eqz v0, :cond_2

    if-eqz v7, :cond_2

    .line 577
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 578
    const-string/jumbo v9, "status_id"

    iget-wide v10, v0, Lcsa;->c:J

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 579
    const-string/jumbo v9, "rt_status_id"

    iget-wide v10, v0, Lcsa;->b:J

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 580
    if-eqz v1, :cond_6

    .line 581
    iget-object v9, v3, Lcom/twitter/library/platform/notifications/ae;->y:Lcsi;

    iget-object v9, v9, Lcsi;->d:Lcse;

    invoke-static {v0, v7, v9}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Lcsa;Lcse;Lcse;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    .line 582
    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v0, v7, v9}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    .line 585
    :cond_6
    new-instance v0, Lcom/twitter/android/client/notifications/x;

    iget-object v7, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->e:Landroid/content/Context;

    sget-object v9, Lcom/twitter/android/client/NotificationService;->e:Ljava/lang/String;

    invoke-direct {v0, v7, p0, v9}, Lcom/twitter/android/client/notifications/x;-><init>(Landroid/content/Context;Lcom/twitter/android/client/notifications/StatusBarNotif;Ljava/lang/String;)V

    .line 587
    invoke-virtual {v0, v1, v1}, Lcom/twitter/android/client/notifications/x;->a(Lcom/twitter/library/scribe/TwitterScribeLog;Lcom/twitter/library/scribe/TwitterScribeLog;)Lcom/twitter/android/client/notifications/x;

    move-result-object v0

    const/4 v1, 0x1

    .line 588
    invoke-virtual {v0, v1}, Lcom/twitter/android/client/notifications/x;->a(Z)Lcom/twitter/android/client/notifications/x;

    move-result-object v0

    const v1, 0x7f020659

    const v7, 0x7f0a05d9

    .line 590
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 589
    invoke-virtual {v0, v1, v7}, Lcom/twitter/android/client/notifications/x;->a(ILjava/lang/String;)Lcom/twitter/android/client/notifications/x;

    move-result-object v0

    .line 591
    invoke-virtual {v0, v8}, Lcom/twitter/android/client/notifications/x;->a(Landroid/os/Bundle;)Lcom/twitter/android/client/notifications/x;

    move-result-object v0

    .line 592
    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/x;->b()Landroid/app/PendingIntent;

    move-result-object v0

    .line 593
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Action;

    const v7, 0x7f020659

    const v8, 0x7f0a00ce

    .line 594
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8, v0}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 593
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 599
    :pswitch_4
    iget-object v0, v3, Lcom/twitter/library/platform/notifications/ae;->y:Lcsi;

    iget-object v0, v0, Lcsi;->c:Lcse;

    .line 600
    if-eqz v0, :cond_2

    iget-boolean v7, v0, Lcse;->i:Z

    if-nez v7, :cond_2

    .line 603
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 604
    const-string/jumbo v8, "user_id"

    iget-wide v10, v0, Lcse;->b:J

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 605
    const-string/jumbo v8, "owner_id"

    iget-wide v10, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->b:J

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 607
    iget-boolean v0, v0, Lcse;->h:Z

    if-eqz v0, :cond_7

    .line 608
    const v0, 0x7f0a05d8

    .line 612
    :goto_4
    new-instance v8, Lcom/twitter/android/client/notifications/x;

    iget-object v9, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->e:Landroid/content/Context;

    sget-object v10, Lcom/twitter/android/client/NotificationService;->f:Ljava/lang/String;

    invoke-direct {v8, v9, p0, v10}, Lcom/twitter/android/client/notifications/x;-><init>(Landroid/content/Context;Lcom/twitter/android/client/notifications/StatusBarNotif;Ljava/lang/String;)V

    .line 614
    invoke-virtual {v8, v1, v1}, Lcom/twitter/android/client/notifications/x;->a(Lcom/twitter/library/scribe/TwitterScribeLog;Lcom/twitter/library/scribe/TwitterScribeLog;)Lcom/twitter/android/client/notifications/x;

    move-result-object v1

    const/4 v8, 0x1

    .line 615
    invoke-virtual {v1, v8}, Lcom/twitter/android/client/notifications/x;->a(Z)Lcom/twitter/android/client/notifications/x;

    move-result-object v1

    const v8, 0x7f020658

    .line 617
    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 616
    invoke-virtual {v1, v8, v0}, Lcom/twitter/android/client/notifications/x;->a(ILjava/lang/String;)Lcom/twitter/android/client/notifications/x;

    move-result-object v0

    .line 618
    invoke-virtual {v0, v7}, Lcom/twitter/android/client/notifications/x;->a(Landroid/os/Bundle;)Lcom/twitter/android/client/notifications/x;

    move-result-object v0

    .line 619
    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/x;->b()Landroid/app/PendingIntent;

    move-result-object v0

    .line 620
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Action;

    const v7, 0x7f020657

    const v8, 0x7f0a03b7

    .line 621
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8, v0}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 620
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 610
    :cond_7
    const v0, 0x7f0a05d5

    goto :goto_4

    .line 625
    :pswitch_5
    iget-object v0, v3, Lcom/twitter/library/platform/notifications/ae;->y:Lcsi;

    iget-object v0, v0, Lcsi;->c:Lcse;

    .line 626
    if-eqz v0, :cond_2

    .line 629
    invoke-static {}, Lcom/twitter/android/composer/ax;->a()Lcom/twitter/android/composer/ax;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v0, v0, Lcse;->c:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    .line 630
    invoke-virtual {v7, v0, v8}, Lcom/twitter/android/composer/ax;->a(Ljava/lang/String;[I)Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 631
    invoke-virtual {v0, v5}, Lcom/twitter/android/composer/ax;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 632
    const-class v7, Lcom/twitter/android/composer/ComposerActivity;

    invoke-virtual {p0, v5, v7, v0, v1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;Lcom/twitter/library/scribe/TwitterScribeLog;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 634
    new-instance v7, Lcom/twitter/android/client/notifications/x;

    iget-object v8, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->e:Landroid/content/Context;

    sget-object v9, Lcom/twitter/android/client/NotificationService;->i:Ljava/lang/String;

    invoke-direct {v7, v8, p0, v9}, Lcom/twitter/android/client/notifications/x;-><init>(Landroid/content/Context;Lcom/twitter/android/client/notifications/StatusBarNotif;Ljava/lang/String;)V

    .line 636
    invoke-virtual {v7, v1, v1}, Lcom/twitter/android/client/notifications/x;->a(Lcom/twitter/library/scribe/TwitterScribeLog;Lcom/twitter/library/scribe/TwitterScribeLog;)Lcom/twitter/android/client/notifications/x;

    move-result-object v1

    const/4 v7, 0x1

    .line 637
    invoke-virtual {v1, v7}, Lcom/twitter/android/client/notifications/x;->a(Z)Lcom/twitter/android/client/notifications/x;

    move-result-object v1

    .line 638
    invoke-virtual {v1, v0}, Lcom/twitter/android/client/notifications/x;->a(Landroid/app/PendingIntent;)Lcom/twitter/android/client/notifications/x;

    move-result-object v0

    .line 639
    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/x;->b()Landroid/app/PendingIntent;

    move-result-object v0

    .line 640
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Action;

    const v7, 0x7f020655

    const v8, 0x7f0a05dc

    .line 641
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8, v0}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 640
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 646
    :pswitch_6
    iget-object v0, v3, Lcom/twitter/library/platform/notifications/ae;->y:Lcsi;

    iget-object v0, v0, Lcsi;->c:Lcse;

    .line 647
    if-eqz v0, :cond_2

    .line 650
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 651
    const-string/jumbo v8, "user_id"

    iget-wide v10, v0, Lcse;->b:J

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 652
    new-instance v0, Lcom/twitter/android/client/notifications/x;

    iget-object v8, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->e:Landroid/content/Context;

    sget-object v9, Lcom/twitter/android/client/NotificationService;->g:Ljava/lang/String;

    invoke-direct {v0, v8, p0, v9}, Lcom/twitter/android/client/notifications/x;-><init>(Landroid/content/Context;Lcom/twitter/android/client/notifications/StatusBarNotif;Ljava/lang/String;)V

    .line 654
    invoke-virtual {v0, v1, v1}, Lcom/twitter/android/client/notifications/x;->a(Lcom/twitter/library/scribe/TwitterScribeLog;Lcom/twitter/library/scribe/TwitterScribeLog;)Lcom/twitter/android/client/notifications/x;

    move-result-object v0

    const/4 v1, 0x1

    .line 655
    invoke-virtual {v0, v1}, Lcom/twitter/android/client/notifications/x;->a(Z)Lcom/twitter/android/client/notifications/x;

    move-result-object v0

    const v1, 0x7f020654

    const v8, 0x7f0a05d6

    .line 657
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 656
    invoke-virtual {v0, v1, v8}, Lcom/twitter/android/client/notifications/x;->a(ILjava/lang/String;)Lcom/twitter/android/client/notifications/x;

    move-result-object v0

    .line 659
    invoke-virtual {v0, v7}, Lcom/twitter/android/client/notifications/x;->a(Landroid/os/Bundle;)Lcom/twitter/android/client/notifications/x;

    move-result-object v0

    .line 660
    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/x;->b()Landroid/app/PendingIntent;

    move-result-object v0

    .line 661
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Action;

    const v7, 0x7f020654

    const v8, 0x7f0a06b2

    .line 662
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8, v0}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 661
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 667
    :pswitch_7
    iget-object v0, v3, Lcom/twitter/library/platform/notifications/ae;->y:Lcsi;

    iget-object v0, v0, Lcsi;->c:Lcse;

    .line 668
    if-eqz v0, :cond_2

    .line 671
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 672
    const-string/jumbo v8, "user_id"

    iget-wide v10, v0, Lcse;->b:J

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 673
    new-instance v0, Lcom/twitter/android/client/notifications/x;

    iget-object v8, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->e:Landroid/content/Context;

    sget-object v9, Lcom/twitter/android/client/NotificationService;->h:Ljava/lang/String;

    invoke-direct {v0, v8, p0, v9}, Lcom/twitter/android/client/notifications/x;-><init>(Landroid/content/Context;Lcom/twitter/android/client/notifications/StatusBarNotif;Ljava/lang/String;)V

    .line 675
    invoke-virtual {v0, v1, v1}, Lcom/twitter/android/client/notifications/x;->a(Lcom/twitter/library/scribe/TwitterScribeLog;Lcom/twitter/library/scribe/TwitterScribeLog;)Lcom/twitter/android/client/notifications/x;

    move-result-object v0

    const/4 v1, 0x1

    .line 676
    invoke-virtual {v0, v1}, Lcom/twitter/android/client/notifications/x;->a(Z)Lcom/twitter/android/client/notifications/x;

    move-result-object v0

    const v1, 0x7f020656

    const v8, 0x7f0a05d7

    .line 678
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 677
    invoke-virtual {v0, v1, v8}, Lcom/twitter/android/client/notifications/x;->a(ILjava/lang/String;)Lcom/twitter/android/client/notifications/x;

    move-result-object v0

    .line 680
    invoke-virtual {v0, v7}, Lcom/twitter/android/client/notifications/x;->a(Landroid/os/Bundle;)Lcom/twitter/android/client/notifications/x;

    move-result-object v0

    .line 681
    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/x;->b()Landroid/app/PendingIntent;

    move-result-object v0

    .line 682
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Action;

    const v7, 0x7f020656

    const v8, 0x7f0a06b3

    .line 683
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8, v0}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 682
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    move-object v0, v2

    .line 692
    goto/16 :goto_0

    .line 476
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public N()[I
    .locals 3

    .prologue
    .line 753
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    .line 754
    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/ac;->j()[I

    move-result-object v0

    .line 753
    :goto_0
    return-object v0

    .line 754
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget v2, v2, Lcom/twitter/library/platform/notifications/ae;->r:I

    aput v2, v0, v1

    goto :goto_0
.end method

.method public O()Z
    .locals 1

    .prologue
    .line 821
    iget-boolean v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->g:Z

    return v0
.end method

.method public P()Lcom/twitter/android/client/af;
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->h:Lcom/twitter/android/client/af;

    return-object v0
.end method

.method public Q()Z
    .locals 2

    .prologue
    .line 946
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->l:Ljava/lang/String;

    .line 949
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "magic_rec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public R()Ljava/lang/String;
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->l:Ljava/lang/String;

    return-object v0
.end method

.method public S()Ljava/lang/String;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/twitter/android/client/y;Lcom/twitter/android/client/af;Landroid/graphics/Bitmap;)Landroid/app/Notification;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 902
    invoke-direct {p0, p1, p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Landroid/content/Context;Lcom/twitter/android/client/notifications/StatusBarNotif;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 903
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 904
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->f()Ljava/lang/String;

    move-result-object v4

    .line 905
    if-eqz v4, :cond_0

    .line 906
    const v5, 0x1050006

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 907
    invoke-static {v4, v5}, Lcom/twitter/library/media/manager/UserImageRequest;->a(Ljava/lang/String;I)Lcom/twitter/media/request/b;

    move-result-object v4

    .line 908
    invoke-virtual {v4, v1}, Lcom/twitter/media/request/b;->b(Z)Lcom/twitter/media/request/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/media/request/b;->a()Lcom/twitter/media/request/a;

    move-result-object v4

    .line 909
    new-instance v5, Lcom/twitter/android/client/ac;

    .line 910
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->w()I

    move-result v6

    invoke-direct {v5, v6, v0}, Lcom/twitter/android/client/ac;-><init>(IZ)V

    .line 909
    invoke-virtual {p2, v4, v5}, Lcom/twitter/android/client/y;->a(Lcom/twitter/media/request/a;Lcom/twitter/android/client/ac;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 911
    if-eqz v4, :cond_0

    .line 912
    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 915
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->g()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 916
    invoke-static {}, Lzk;->b()Z

    move-result v4

    if-nez v4, :cond_1

    .line 917
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->h()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v0, v1

    .line 918
    :cond_2
    if-eqz v0, :cond_3

    .line 921
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->H()Ljava/lang/String;

    move-result-object v0

    .line 922
    if-eqz p4, :cond_4

    .line 927
    :goto_0
    if-eqz p4, :cond_3

    .line 928
    invoke-direct {p0, v2, p4}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/graphics/Bitmap;)V

    .line 932
    :cond_3
    invoke-static {p1, v2, p3}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;Lcom/twitter/android/client/af;)V

    .line 933
    const v0, 0x7f1200f8

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 934
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 924
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/media/request/b;->a()Lcom/twitter/media/request/a;

    move-result-object v0

    new-instance v4, Lcom/twitter/android/client/ac;

    .line 926
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->w()I

    move-result v5

    invoke-direct {v4, v5, v1}, Lcom/twitter/android/client/ac;-><init>(IZ)V

    .line 923
    invoke-virtual {p2, v0, v4}, Lcom/twitter/android/client/y;->a(Lcom/twitter/media/request/a;Lcom/twitter/android/client/ac;)Landroid/graphics/Bitmap;

    move-result-object p4

    goto :goto_0
.end method

.method protected a(ILcom/twitter/library/scribe/ScribeLog;Lcom/twitter/library/scribe/ScribeLog;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 314
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 315
    if-eqz p2, :cond_0

    .line 316
    const-string/jumbo v1, "notif_scribe_log"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 319
    :cond_0
    if-eqz p3, :cond_1

    .line 320
    const-string/jumbo v1, "notif_scribe_log_from_background"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 324
    :cond_1
    iget-boolean v1, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->g:Z

    if-eqz v1, :cond_3

    .line 325
    const-string/jumbo v1, "preview_open_image_loaded"

    invoke-virtual {p0, v1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    .line 326
    if-eqz v1, :cond_2

    .line 327
    const-string/jumbo v2, "notif_scribe_log_for_preview_experiment"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 338
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Landroid/os/Bundle;)V

    .line 339
    invoke-direct {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->u()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {p0, v0, p1, v1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Landroid/content/Intent;II)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 331
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lzk;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 332
    const-string/jumbo v1, "preview_open"

    invoke-virtual {p0, v1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    .line 333
    if-eqz v1, :cond_2

    .line 334
    const-string/jumbo v2, "notif_scribe_log_for_preview_experiment"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;Lcom/twitter/library/scribe/TwitterScribeLog;)Landroid/app/PendingIntent;
    .locals 6

    .prologue
    const/high16 v5, 0x10000000

    const/4 v4, 0x0

    .line 719
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 720
    invoke-direct {p0, v0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Landroid/os/Bundle;)V

    .line 721
    const-string/jumbo v1, "notif_scribe_log"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 722
    const-string/jumbo v1, "notif_scribe_log_from_background"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 723
    sget-object v1, Lcom/twitter/library/provider/dc;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget v2, v2, Lcom/twitter/library/platform/notifications/ae;->r:I

    .line 724
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 723
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 724
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 725
    if-eqz p2, :cond_0

    .line 727
    invoke-static {p1}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    .line 728
    invoke-virtual {v0, p2}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    .line 729
    invoke-virtual {v0, p3}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    .line 730
    invoke-virtual {v0, v4}, Landroid/support/v4/app/TaskStackBuilder;->editIntentAt(I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "AbsFragmentActivity_account_name"

    iget-object v3, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    invoke-virtual {v0, v4, v5}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v0

    .line 733
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, v4, p3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Landroid/content/Intent;II)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 344
    const-string/jumbo v0, "ref_event"

    const-string/jumbo v1, "notification::::open"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "AbsFragmentActivity_account_name"

    iget-object v2, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->c:Ljava/lang/String;

    .line 345
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 346
    invoke-direct {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->T()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 347
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    .line 348
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 349
    if-eqz v1, :cond_2

    .line 350
    invoke-virtual {v0, v1}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroid/support/v4/app/TaskStackBuilder;

    .line 360
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/TaskStackBuilder;->getIntentCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 361
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/TaskStackBuilder;->editIntentAt(I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "AbsFragmentActivity_account_name"

    iget-object v3, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    :cond_1
    invoke-virtual {v0, p1}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 364
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 355
    :cond_2
    const-class v1, Lcom/twitter/app/main/MainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->e:Landroid/content/Context;

    .line 356
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 357
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->e:Landroid/content/Context;

    const-class v3, Lcom/twitter/app/main/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    goto :goto_0
.end method

.method a(Landroid/content/Context;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1

    .prologue
    .line 817
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 761
    invoke-direct {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->U()Ljava/lang/String;

    move-result-object v1

    .line 762
    if-eqz v1, :cond_0

    .line 763
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v4, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->b:J

    invoke-direct {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v3, v7, [Ljava/lang/String;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "notification"

    aput-object v5, v4, v6

    const-string/jumbo v5, "status_bar"

    aput-object v5, v4, v7

    aput-object v0, v4, v8

    const/4 v0, 0x3

    aput-object v1, v4, v0

    const/4 v0, 0x4

    aput-object p1, v4, v0

    .line 764
    invoke-static {v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v1, v1, Lcom/twitter/library/platform/notifications/ae;->e:Ljava/lang/String;

    .line 765
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->e(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 766
    invoke-virtual {v0, v8}, Lcom/twitter/library/scribe/TwitterScribeLog;->c(I)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 767
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->aA_()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/scribe/ScribeItem;

    .line 768
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    goto :goto_0

    .line 773
    :cond_0
    return-object v0
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)Lcom/twitter/media/request/b;
    .locals 1

    .prologue
    .line 286
    invoke-static {p2}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/android/client/af;)V
    .locals 0

    .prologue
    .line 882
    iput-object p1, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->h:Lcom/twitter/android/client/af;

    .line 883
    return-void
.end method

.method public a(Lcom/twitter/android/client/y;Lcom/twitter/media/request/a;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 863
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 825
    iput-boolean p1, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->g:Z

    .line 826
    return-void
.end method

.method protected aA_()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/ScribeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 790
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public az_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->g:Ljava/lang/String;

    return-object v0
.end method

.method d(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->e:Landroid/content/Context;

    .line 139
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    invoke-virtual {v0, p1}, Lcom/twitter/android/client/notifications/ac;->a(Landroid/content/Context;)V

    .line 140
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->A()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/ac;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->G()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 829
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->H()Ljava/lang/String;

    move-result-object v3

    .line 830
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->v()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v0

    .line 831
    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/twitter/model/account/UserSettings;->k:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 832
    :goto_0
    invoke-direct {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->n()Z

    move-result v4

    .line 833
    if-eqz v4, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    .line 834
    :goto_1
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    :goto_2
    return v1

    :cond_1
    move v0, v2

    .line 831
    goto :goto_0

    :cond_2
    move v0, v2

    .line 833
    goto :goto_1

    :cond_3
    move v1, v2

    .line 834
    goto :goto_2
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 938
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract i()I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end method

.method protected abstract j()Landroid/content/Intent;
.end method

.method protected abstract k()Ljava/lang/String;
.end method

.method protected m()Lcom/twitter/android/client/notifications/ac;
    .locals 6

    .prologue
    .line 156
    new-instance v0, Lcom/twitter/android/client/notifications/ab;

    iget-object v1, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v2, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->c:Ljava/lang/String;

    iget-wide v4, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->b:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/twitter/android/client/notifications/ab;-><init>(Lcom/twitter/library/platform/notifications/ae;Ljava/lang/String;J)V

    return-object v0
.end method

.method protected o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x0

    return-object v0
.end method

.method protected p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    return-object v0
.end method

.method protected q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 845
    const/4 v0, 0x0

    return v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 874
    const/4 v0, 0x0

    return v0
.end method

.method public t()V
    .locals 0

    .prologue
    .line 1045
    return-void
.end method

.method public v()J
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->b:J

    return-wide v0
.end method

.method public w()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget v0, v0, Lcom/twitter/library/platform/notifications/ae;->r:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 119
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-wide v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 121
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    sget-object v1, Lcom/twitter/library/platform/notifications/ae;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v0

    .line 122
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 124
    return-void
.end method

.method public x()J
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->d:J

    return-wide v0
.end method

.method public y()Z
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/platform/notifications/i;

    .line 162
    iget v0, v0, Lcom/twitter/library/platform/notifications/i;->d:I

    iget-object v2, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget v2, v2, Lcom/twitter/library/platform/notifications/ae;->r:I

    if-ne v0, v2, :cond_0

    .line 163
    const/4 v0, 0x1

    .line 171
    :goto_0
    return v0

    .line 166
    :cond_1
    new-instance v0, Lcom/twitter/android/client/notifications/ad;

    iget-wide v2, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->b:J

    iget-object v1, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    invoke-direct {v0, v2, v3, v1}, Lcom/twitter/android/client/notifications/ad;-><init>(JLcom/twitter/library/platform/notifications/ae;)V

    .line 167
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Notification id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget v3, v3, Lcom/twitter/library/platform/notifications/ae;->r:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " missing from inbox"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/notifications/ad;->a(Ljava/lang/Throwable;)Lbiv;

    .line 169
    invoke-static {v0}, Lbix;->a(Lbiv;)V

    .line 171
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final z()Landroid/support/v4/app/NotificationCompat$Style;
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/notifications/StatusBarNotif;->f:Lcom/twitter/android/client/notifications/ac;

    .line 193
    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/ac;->k()Landroid/support/v4/app/NotificationCompat$InboxStyle;

    move-result-object v0

    .line 192
    :goto_0
    return-object v0

    .line 193
    :cond_0
    new-instance v0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 194
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v0

    goto :goto_0
.end method
