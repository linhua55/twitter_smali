.class public Lcom/twitter/android/profiles/l;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/twitter/android/profiles/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/profiles/l;->a:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private b(Lcom/twitter/model/core/TwitterUser;)Z
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    .line 62
    iget-wide v0, p1, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/profiles/l;->c(J)Lcom/twitter/library/client/l;

    move-result-object v0

    .line 63
    const-string/jumbo v1, "ht"

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/client/l;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 64
    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 65
    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    .line 66
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    move v0, v6

    .line 67
    :goto_0
    if-eqz v0, :cond_0

    .line 69
    iget-wide v2, p1, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-virtual {p0, v2, v3}, Lcom/twitter/android/profiles/l;->b(J)V

    .line 70
    iget-object v1, p0, Lcom/twitter/android/profiles/l;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v7

    .line 71
    new-instance v1, Lcom/twitter/library/service/ab;

    iget-wide v2, p1, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-object v4, p1, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/service/ab;-><init>(JLjava/lang/String;Lcom/twitter/model/account/OAuthToken;Z)V

    .line 72
    new-instance v2, Lcom/twitter/android/profiles/p;

    iget-object v3, p0, Lcom/twitter/android/profiles/l;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/twitter/android/profiles/p;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;)V

    invoke-virtual {v7, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    :cond_0
    move v6, v0

    .line 76
    :cond_1
    return v6

    .line 66
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(J)Lcom/twitter/library/client/l;
    .locals 3

    .prologue
    .line 96
    new-instance v0, Lcom/twitter/library/client/l;

    iget-object v1, p0, Lcom/twitter/android/profiles/l;->a:Landroid/content/Context;

    const-string/jumbo v2, "profile"

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/TwitterUser;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 54
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/twitter/android/profiles/l;->b(Lcom/twitter/model/core/TwitterUser;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/twitter/android/profiles/l;->a:Landroid/content/Context;

    iget-wide v2, p1, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-static {v0, v2, v3}, Lcom/twitter/library/media/util/q;->b(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(J)V
    .locals 5

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/profiles/l;->c(J)Lcom/twitter/library/client/l;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "ht"

    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;J)Lcom/twitter/library/client/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 44
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/twitter/model/core/TwitterUser;Lcom/twitter/android/profiles/o;)V
    .locals 4

    .prologue
    .line 82
    invoke-direct {p0, p2}, Lcom/twitter/android/profiles/l;->b(Lcom/twitter/model/core/TwitterUser;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/twitter/android/profiles/m;

    iget-wide v2, p2, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-direct {v0, p1, v2, v3, p3}, Lcom/twitter/android/profiles/m;-><init>(Landroid/app/Activity;JLcom/twitter/android/profiles/o;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/android/profiles/m;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/twitter/android/profiles/o;->a(Lcom/twitter/media/model/MediaFile;)V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/media/EditableImage;Lcom/twitter/android/profiles/o;)V
    .locals 7

    .prologue
    .line 91
    new-instance v1, Lcom/twitter/android/profiles/n;

    iget-wide v4, p2, Lcom/twitter/model/core/TwitterUser;->c:J

    move-object v2, p1

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/profiles/n;-><init>(Landroid/app/Activity;Lcom/twitter/model/media/EditableImage;JLcom/twitter/android/profiles/o;)V

    iput-object v1, p0, Lcom/twitter/android/profiles/l;->b:Lcom/twitter/android/profiles/n;

    .line 92
    iget-object v0, p0, Lcom/twitter/android/profiles/l;->b:Lcom/twitter/android/profiles/n;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/android/profiles/n;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    return-void
.end method

.method public a(Lcom/twitter/android/profiles/o;)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/twitter/android/profiles/l;->b:Lcom/twitter/android/profiles/n;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/twitter/android/profiles/l;->b:Lcom/twitter/android/profiles/n;

    invoke-static {v0, p1}, Lcom/twitter/android/profiles/n;->a(Lcom/twitter/android/profiles/n;Lcom/twitter/android/profiles/o;)V

    .line 213
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/twitter/android/profiles/l;->b:Lcom/twitter/android/profiles/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/profiles/l;->b:Lcom/twitter/android/profiles/n;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/n;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(J)V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/profiles/l;->c(J)Lcom/twitter/library/client/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "ht"

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;)Lcom/twitter/library/client/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 51
    return-void
.end method
