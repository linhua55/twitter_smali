.class public Lcom/google/android/gcm/GCMScribeReporter;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 69
    invoke-static {}, Lcom/google/android/gcm/GCMScribeReporter;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/account/a;

    .line 70
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "notification"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    aput-object v6, v0, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "gcm_registration"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    aput-object v6, v0, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "unregister"

    aput-object v4, v0, v3

    .line 71
    invoke-virtual {v2, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method public static a(ILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 40
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "notification"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "status_bar"

    aput-object v3, v1, v2

    aput-object v5, v1, v4

    const/4 v2, 0x3

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "push_data_dropped"

    aput-object v3, v1, v2

    .line 41
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    new-instance v1, Lcom/google/android/gcm/GCMScribeReporter$GCMDeletedMessageScribeItem;

    invoke-direct {v1, p0}, Lcom/google/android/gcm/GCMScribeReporter$GCMDeletedMessageScribeItem;-><init>(I)V

    .line 42
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 43
    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/TwitterScribeLog;->e(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 44
    invoke-virtual {v0, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->c(I)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 45
    return-void
.end method

.method public static a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x2

    .line 32
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, p0, p1}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "notification"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "status_bar"

    aput-object v3, v1, v2

    const/4 v2, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "push_data_received"

    aput-object v3, v1, v2

    .line 33
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 34
    invoke-virtual {v0, p3}, Lcom/twitter/library/scribe/TwitterScribeLog;->e(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 35
    invoke-virtual {v0, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->c(I)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 36
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 49
    invoke-static {p0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    .line 50
    :goto_0
    invoke-static {}, Lcom/google/android/gcm/GCMScribeReporter;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/account/a;

    .line 51
    new-instance v5, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/String;

    const-string/jumbo v0, "notification"

    aput-object v0, v6, v3

    aput-object v8, v6, v2

    const/4 v0, 0x2

    const-string/jumbo v7, "gcm_registration"

    aput-object v7, v6, v0

    const/4 v0, 0x3

    aput-object v8, v6, v0

    const/4 v7, 0x4

    if-eqz v1, :cond_1

    const-string/jumbo v0, "success"

    :goto_2
    aput-object v0, v6, v7

    .line 52
    invoke-virtual {v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_1

    :cond_0
    move v1, v3

    .line 49
    goto :goto_0

    .line 51
    :cond_1
    const-string/jumbo v0, "failure"

    goto :goto_2

    .line 55
    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 60
    invoke-static {}, Lcom/google/android/gcm/GCMScribeReporter;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/account/a;

    .line 61
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "notification"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "gcm_registration"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "token"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "changed"

    aput-object v4, v0, v3

    .line 62
    invoke-virtual {v2, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    new-instance v2, Lcom/google/android/gcm/GCMScribeReporter$GcmRegistrationScribeItem;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gcm/GCMScribeReporter$GcmRegistrationScribeItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method public static b()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 77
    invoke-static {}, Lcom/google/android/gcm/GCMScribeReporter;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/account/a;

    .line 78
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "notification"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    aput-object v6, v0, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "gcm_registration"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    aput-object v6, v0, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "error"

    aput-object v4, v0, v3

    .line 79
    invoke-virtual {v2, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method private static c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/app/common/account/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {}, Lcom/twitter/app/common/account/d;->a()Lcom/twitter/app/common/account/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/account/d;->c()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gcm/c;

    invoke-direct {v1}, Lcom/google/android/gcm/c;-><init>()V

    invoke-static {v0, v1}, Lczz;->a(Ljava/lang/Iterable;Ldau;)Ljava/lang/Iterable;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
