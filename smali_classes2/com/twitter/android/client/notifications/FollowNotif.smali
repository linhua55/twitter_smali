.class public Lcom/twitter/android/client/notifications/FollowNotif;
.super Lcom/twitter/android/client/notifications/StatusBarNotif;
.source "Twttr"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/twitter/android/client/notifications/FollowNotif;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/twitter/android/client/notifications/h;

    invoke-direct {v0}, Lcom/twitter/android/client/notifications/h;-><init>()V

    sput-object v0, Lcom/twitter/android/client/notifications/FollowNotif;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/twitter/android/client/notifications/StatusBarNotif;-><init>(Landroid/os/Parcel;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/twitter/library/platform/notifications/ae;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/client/notifications/StatusBarNotif;-><init>(Lcom/twitter/library/platform/notifications/ae;JLjava/lang/String;)V

    .line 28
    return-void
.end method

.method private n()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/twitter/android/client/notifications/FollowNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->y:Lcsi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/notifications/FollowNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->y:Lcsi;

    iget-object v0, v0, Lcsi;->c:Lcse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/notifications/FollowNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->y:Lcsi;

    iget-object v0, v0, Lcsi;->c:Lcse;

    iget-boolean v0, v0, Lcse;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public az_()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/notifications/FollowNotif;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 5

    .prologue
    .line 62
    iget-object v1, p0, Lcom/twitter/android/client/notifications/FollowNotif;->e:Landroid/content/Context;

    invoke-direct {p0}, Lcom/twitter/android/client/notifications/FollowNotif;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a05c8

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/client/notifications/FollowNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    .line 64
    invoke-virtual {v4}, Lcom/twitter/library/platform/notifications/ae;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 62
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0a05c9

    goto :goto_0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/android/client/notifications/FollowNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/notifications/FollowNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->f:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/notifications/FollowNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    invoke-virtual {v0}, Lcom/twitter/library/platform/notifications/ae;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    iget-object v1, p0, Lcom/twitter/android/client/notifications/FollowNotif;->e:Landroid/content/Context;

    invoke-direct {p0}, Lcom/twitter/android/client/notifications/FollowNotif;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a05b5

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0a05b6

    goto :goto_0
.end method

.method protected i()I
    .locals 1

    .prologue
    .line 69
    const v0, 0x7f02065f

    return v0
.end method

.method protected j()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/client/notifications/FollowNotif;->e:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "screen_name"

    iget-object v2, p0, Lcom/twitter/android/client/notifications/FollowNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v2, v2, Lcom/twitter/library/platform/notifications/ae;->j:Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "com.twitter.android.home.fol."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/client/notifications/FollowNotif;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 74
    return-object v0
.end method

.method protected k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/twitter/android/client/notifications/FollowNotif;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "followed_back"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "followed"

    goto :goto_0
.end method

.method public m()Lcom/twitter/android/client/notifications/ac;
    .locals 10

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/twitter/android/client/notifications/FollowNotif;->y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/twitter/android/client/notifications/m;

    iget-object v1, p0, Lcom/twitter/android/client/notifications/FollowNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v2, p0, Lcom/twitter/android/client/notifications/FollowNotif;->c:Ljava/lang/String;

    iget-wide v4, p0, Lcom/twitter/android/client/notifications/FollowNotif;->b:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/twitter/android/client/notifications/m;-><init>(Lcom/twitter/library/platform/notifications/ae;Ljava/lang/String;J)V

    .line 44
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/notifications/FollowNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v1, p0, Lcom/twitter/android/client/notifications/FollowNotif;->c:Ljava/lang/String;

    iget-wide v2, p0, Lcom/twitter/android/client/notifications/FollowNotif;->b:J

    new-instance v5, Lcom/twitter/android/client/notifications/i;

    iget-object v4, p0, Lcom/twitter/android/client/notifications/FollowNotif;->a:Lcom/twitter/library/platform/notifications/ae;

    iget-object v6, p0, Lcom/twitter/android/client/notifications/FollowNotif;->c:Ljava/lang/String;

    iget-wide v8, p0, Lcom/twitter/android/client/notifications/FollowNotif;->b:J

    invoke-direct {v5, v4, v6, v8, v9}, Lcom/twitter/android/client/notifications/i;-><init>(Lcom/twitter/library/platform/notifications/ae;Ljava/lang/String;J)V

    move-object v4, p0

    .line 45
    invoke-static/range {v0 .. v5}, Lcom/twitter/android/client/notifications/m;->a(Lcom/twitter/library/platform/notifications/ae;Ljava/lang/String;JLcom/twitter/android/client/notifications/StatusBarNotif;Lcom/twitter/android/client/notifications/n;)Lcom/twitter/android/client/notifications/ac;

    move-result-object v0

    goto :goto_0
.end method

.method protected o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/twitter/android/client/notifications/FollowNotif;->e:Landroid/content/Context;

    const v1, 0x7f0a06b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string/jumbo v0, "follow"

    return-object v0
.end method
