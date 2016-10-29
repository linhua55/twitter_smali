.class public Lcom/twitter/android/vv;
.super Lcom/twitter/library/view/c;
.source "Twttr"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Lcom/twitter/library/client/Session;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/twitter/library/scribe/TwitterScribeAssociation;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/twitter/library/view/c;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/android/vv;->a:Ljava/lang/ref/WeakReference;

    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/vv;->b:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/twitter/android/vv;->c:Lcom/twitter/library/client/Session;

    .line 52
    iput-object p3, p0, Lcom/twitter/android/vv;->d:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/twitter/android/vv;->e:Ljava/lang/String;

    .line 54
    iput-object p5, p0, Lcom/twitter/android/vv;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 55
    return-void
.end method

.method private a(Lcom/twitter/library/scribe/TwitterScribeLog;)V
    .locals 4

    .prologue
    .line 63
    invoke-static {}, Lcom/twitter/util/ak;->a()Ljava/lang/String;

    move-result-object v1

    .line 64
    sget-object v0, Lcom/twitter/library/client/u;->a:Lcom/twitter/library/client/u;

    invoke-virtual {v0}, Lcom/twitter/library/client/u;->a()Lcom/twitter/library/api/d;

    move-result-object v2

    .line 65
    invoke-virtual {p1}, Lcom/twitter/library/scribe/TwitterScribeLog;->c()Lcom/twitter/library/scribe/ScribeItem;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 66
    const-string/jumbo v3, "app_download_client_event"

    invoke-virtual {p1, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->h(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 67
    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    iget-object v0, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/library/util/an;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string/jumbo v3, "3"

    invoke-virtual {p1, v3, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 72
    const-string/jumbo v0, "4"

    invoke-virtual {p1, v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 75
    :cond_0
    if-eqz v2, :cond_1

    .line 76
    const-string/jumbo v0, "6"

    .line 77
    invoke-virtual {v2}, Lcom/twitter/library/api/d;->a()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {p1, v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 78
    invoke-virtual {v2}, Lcom/twitter/library/api/d;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Z)Lcom/twitter/library/scribe/ScribeLog;

    .line 80
    :cond_1
    invoke-virtual {p1}, Lcom/twitter/library/scribe/TwitterScribeLog;->e()Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 81
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;ZLcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 6

    .prologue
    .line 89
    if-nez p3, :cond_0

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/TweetActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-wide v2, p2, Lcom/twitter/model/core/Tweet;->C:J

    iget-object v1, p0, Lcom/twitter/android/vv;->c:Lcom/twitter/library/client/Session;

    .line 93
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    .line 92
    invoke-static {v2, v3, v4, v5}, Lcom/twitter/library/provider/cn;->b(JJ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "association"

    .line 94
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x23c1

    .line 91
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 106
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v0, Lcom/twitter/android/av/bj;

    invoke-direct {v0}, Lcom/twitter/android/av/bj;-><init>()V

    .line 99
    invoke-virtual {v0, p2}, Lcom/twitter/android/av/bj;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/av/ap;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p4}, Lcom/twitter/library/av/ap;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/av/ap;

    move-result-object v0

    const/4 v1, 0x0

    .line 101
    invoke-virtual {v0, v1}, Lcom/twitter/library/av/ap;->c(Z)Lcom/twitter/library/av/ap;

    move-result-object v0

    .line 103
    invoke-static {p1}, Lbki;->a(Landroid/content/Context;)Lbki;

    move-result-object v1

    invoke-virtual {v1}, Lbki;->k()Z

    move-result v1

    .line 102
    invoke-virtual {v0, v1}, Lcom/twitter/library/av/ap;->e(Z)Lcom/twitter/library/av/ap;

    move-result-object v0

    .line 104
    invoke-virtual {v0, p1}, Lcom/twitter/library/av/ap;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/cx;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/twitter/android/vv;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/vv;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/twitter/android/vv;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/cx;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 60
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/cx;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 111
    iget-object v0, p0, Lcom/twitter/android/vv;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 112
    if-eqz v1, :cond_2

    .line 113
    if-eqz p1, :cond_6

    .line 114
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    .line 116
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v4

    iget-object v4, v4, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    .line 115
    invoke-static {v4}, Lcug;->c(Ljava/lang/Iterable;)Lcom/twitter/model/core/MediaEntity;

    move-result-object v4

    .line 117
    invoke-static {p1}, Lcom/twitter/library/av/playback/bm;->d(Lcom/twitter/model/core/Tweet;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Lclw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz v4, :cond_3

    iget-object v0, v4, Lcom/twitter/model/core/MediaEntity;->D:Ljava/lang/String;

    iget-object v4, p2, Lcom/twitter/model/core/cx;->D:Ljava/lang/String;

    .line 119
    invoke-static {v0, v4}, Lcom/twitter/util/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    .line 120
    :goto_0
    if-eqz v0, :cond_4

    .line 121
    invoke-virtual {p0, v1, p1, v3, p4}, Lcom/twitter/android/vv;->a(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;ZLcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 145
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v3

    .line 119
    goto :goto_0

    .line 123
    :cond_4
    invoke-static {p1}, Lcih;->b(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 124
    iget-object v0, p0, Lcom/twitter/android/vv;->b:Landroid/content/Context;

    invoke-static {v0, p1, p4, v7}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    .line 126
    iget-object v0, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 127
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v4, p0, Lcom/twitter/android/vv;->c:Lcom/twitter/library/client/Session;

    .line 128
    invoke-virtual {v4}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 129
    new-array v2, v2, [Ljava/lang/String;

    aput-object p3, v2, v3

    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 130
    iget-object v2, p0, Lcom/twitter/android/vv;->b:Landroid/content/Context;

    invoke-virtual {v0, v2, p1, p4, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 131
    invoke-virtual {v0, p4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    .line 132
    iget-object v2, p0, Lcom/twitter/android/vv;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->g(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 133
    invoke-direct {p0, v0}, Lcom/twitter/android/vv;->a(Lcom/twitter/library/scribe/TwitterScribeLog;)V

    .line 137
    :cond_5
    invoke-static {p1}, Lcom/twitter/library/client/BrowserDataSourceFactory;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/client/BrowserDataSource;

    move-result-object v2

    iget-object v0, p0, Lcom/twitter/android/vv;->c:Lcom/twitter/library/client/Session;

    .line 138
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    iget-object v9, p0, Lcom/twitter/android/vv;->e:Ljava/lang/String;

    move-object v3, p2

    move-object v6, p3

    move-object v8, p4

    .line 137
    invoke-static/range {v1 .. v9}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Lcom/twitter/library/client/BrowserDataSource;Lcom/twitter/model/core/cx;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)V

    goto :goto_1

    .line 141
    :cond_6
    iget-object v0, p0, Lcom/twitter/android/vv;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    iget-object v9, p0, Lcom/twitter/android/vv;->e:Ljava/lang/String;

    move-object v2, v7

    move-object v3, p2

    move-object v6, p3

    move-object v8, p4

    invoke-static/range {v1 .. v9}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Lcom/twitter/library/client/BrowserDataSource;Lcom/twitter/model/core/cx;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)V

    goto :goto_1
.end method
