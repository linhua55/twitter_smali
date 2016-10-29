.class public Lcom/twitter/android/ContactsUploadService;
.super Landroid/app/IntentService;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/util/p;


# instance fields
.field private a:Lcom/twitter/android/client/c;

.field private b:Lcom/twitter/library/util/l;

.field private c:Lcom/twitter/library/client/Session;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:J

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    const-string/jumbo v0, "ab_upload_service"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 62
    iput v1, p0, Lcom/twitter/android/ContactsUploadService;->f:I

    .line 63
    iput v1, p0, Lcom/twitter/android/ContactsUploadService;->g:I

    .line 65
    iput v1, p0, Lcom/twitter/android/ContactsUploadService;->i:I

    .line 70
    return-void
.end method

.method private static a(Ljava/lang/String;J)Layp;
    .locals 3

    .prologue
    .line 175
    .line 176
    invoke-static {}, Layj;->b()Layj;

    move-result-object v0

    sget-object v1, Laxz;->m:Laye;

    .line 175
    invoke-static {p0, v0, p1, p2, v1}, Layp;->a(Ljava/lang/String;Layj;JLaye;)Layp;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 188
    iget-object v0, p0, Lcom/twitter/android/ContactsUploadService;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 189
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v8, [Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/ContactsUploadService;->d:Ljava/lang/String;

    aput-object v4, v1, v6

    const-string/jumbo v4, "follow_friends::forward_lookup:request"

    aput-object v4, v1, v7

    .line 190
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget v1, p0, Lcom/twitter/android/ContactsUploadService;->e:I

    int-to-long v4, v1

    .line 191
    invoke-virtual {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(J)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 189
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 192
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v8, [Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/ContactsUploadService;->d:Ljava/lang/String;

    aput-object v4, v1, v6

    const-string/jumbo v4, "follow_friends::forward_lookup:failure"

    aput-object v4, v1, v7

    .line 193
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget v1, p0, Lcom/twitter/android/ContactsUploadService;->i:I

    int-to-long v4, v1

    .line 194
    invoke-virtual {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(J)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 192
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 195
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v8, [Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/ContactsUploadService;->d:Ljava/lang/String;

    aput-object v4, v1, v6

    const-string/jumbo v4, "follow_friends::forward_lookup:count"

    aput-object v4, v1, v7

    .line 196
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget v1, p0, Lcom/twitter/android/ContactsUploadService;->f:I

    int-to-long v4, v1

    .line 197
    invoke-virtual {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(J)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 195
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 198
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v8, [Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/ContactsUploadService;->d:Ljava/lang/String;

    aput-object v4, v1, v6

    const-string/jumbo v4, "import_addressbook::import:done"

    aput-object v4, v1, v7

    .line 199
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 200
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/twitter/android/ContactsUploadService;->h:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(J)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 198
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 201
    const-string/jumbo v0, "contacts:timing:total:upload_contacts"

    invoke-static {v0, v2, v3}, Lcom/twitter/android/ContactsUploadService;->a(Ljava/lang/String;J)Layp;

    move-result-object v0

    invoke-virtual {v0}, Layp;->j()V

    .line 203
    iget-object v0, p0, Lcom/twitter/android/ContactsUploadService;->a:Lcom/twitter/android/client/c;

    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/client/c;->a(J)V

    .line 204
    iget-object v0, p0, Lcom/twitter/android/ContactsUploadService;->a:Lcom/twitter/android/client/c;

    invoke-virtual {v0}, Lcom/twitter/android/client/c;->f()V

    .line 205
    return-void
.end method

.method private a(Landroid/content/Intent;ZZ)V
    .locals 1

    .prologue
    .line 180
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 181
    iget-object v0, p0, Lcom/twitter/android/ContactsUploadService;->a:Lcom/twitter/android/client/c;

    invoke-virtual {v0, p2}, Lcom/twitter/android/client/c;->b(Z)V

    .line 182
    iget-object v0, p0, Lcom/twitter/android/ContactsUploadService;->a:Lcom/twitter/android/client/c;

    invoke-virtual {v0, p3}, Lcom/twitter/android/client/c;->a(Z)V

    .line 183
    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 6

    .prologue
    .line 111
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/ContactsUploadService;->b:Lcom/twitter/library/util/l;

    .line 112
    invoke-interface {v0, p1}, Lcom/twitter/library/util/l;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    .line 114
    :goto_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/ContactsUploadService;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/twitter/android/ContactsUploadService;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":follow_friends:::resolvable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 115
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 116
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(J)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 114
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 118
    iget-object v0, p0, Lcom/twitter/android/ContactsUploadService;->b:Lcom/twitter/library/util/l;

    invoke-interface {v0}, Lcom/twitter/library/util/l;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/twitter/android/ContactsUploadService;->b:Lcom/twitter/library/util/l;

    invoke-interface {v0}, Lcom/twitter/library/util/l;->c()V

    .line 121
    :cond_0
    invoke-direct {p0, v1}, Lcom/twitter/android/ContactsUploadService;->a(Ljava/util/Map;)V

    .line 122
    return-void

    .line 113
    :cond_1
    invoke-static {}, Lcom/twitter/util/collection/v;->f()Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method private a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 125
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    .line 126
    const/16 v3, 0x32

    invoke-static {v2, v3}, Lcom/twitter/library/network/at;->a(II)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/ContactsUploadService;->e:I

    .line 127
    iget v2, p0, Lcom/twitter/android/ContactsUploadService;->e:I

    if-lez v2, :cond_0

    .line 128
    const-string/jumbo v2, "contacts:timing:total:upload_contacts"

    iget-object v3, p0, Lcom/twitter/android/ContactsUploadService;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/twitter/android/ContactsUploadService;->a(Ljava/lang/String;J)Layp;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Layp;->i()V

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/twitter/android/ContactsUploadService;->b:Lcom/twitter/library/util/l;

    iget-boolean v3, p0, Lcom/twitter/android/ContactsUploadService;->j:Z

    invoke-interface {v2, p1, p0, v3}, Lcom/twitter/library/util/l;->a(Ljava/util/Map;Lcom/twitter/library/util/p;Z)V

    .line 133
    new-instance v2, Lcom/twitter/library/client/l;

    iget-object v3, p0, Lcom/twitter/android/ContactsUploadService;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v2, p0, v4, v5}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v2}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v2

    const-string/jumbo v3, "addressbook_import_done"

    .line 134
    invoke-virtual {v2, v3, v0}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Lcom/twitter/library/client/n;->apply()V

    .line 136
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "upload_success_broadcast"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "lookup_complete"

    .line 137
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "pages"

    iget v4, p0, Lcom/twitter/android/ContactsUploadService;->e:I

    .line 138
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 140
    iget v3, p0, Lcom/twitter/android/ContactsUploadService;->e:I

    if-lez v3, :cond_1

    .line 141
    const-string/jumbo v3, "page"

    iget v4, p0, Lcom/twitter/android/ContactsUploadService;->e:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    :cond_1
    iget v3, p0, Lcom/twitter/android/ContactsUploadService;->i:I

    if-nez v3, :cond_2

    .line 144
    :goto_0
    invoke-direct {p0, v2, v1, v0}, Lcom/twitter/android/ContactsUploadService;->a(Landroid/content/Intent;ZZ)V

    .line 145
    invoke-direct {p0}, Lcom/twitter/android/ContactsUploadService;->a()V

    .line 146
    return-void

    :cond_2
    move v0, v1

    .line 143
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 209
    invoke-static {p0, p2}, Lcak;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    const/4 v0, 0x0

    .line 217
    :goto_0
    return v0

    .line 213
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/ContactsUploadService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "scribe_page_term"

    .line 214
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra_is_live_sync_experience"

    .line 215
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 213
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 216
    invoke-static {p0}, Lcom/twitter/android/client/c;->a(Landroid/content/Context;)Lcom/twitter/android/client/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/c;->b(Z)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lbmu;Lcom/twitter/library/service/aa;)V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 150
    invoke-virtual {p2}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget v0, p0, Lcom/twitter/android/ContactsUploadService;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/android/ContactsUploadService;->i:I

    .line 154
    :cond_0
    invoke-virtual {p2}, Lcom/twitter/library/service/aa;->g()Lcom/twitter/internal/network/k;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p1, Lbmu;->o:Landroid/os/Bundle;

    .line 156
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 157
    const-string/jumbo v2, "pages"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 158
    iget v3, p0, Lcom/twitter/android/ContactsUploadService;->f:I

    const-string/jumbo v4, "num_users"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    iput v0, p0, Lcom/twitter/android/ContactsUploadService;->f:I

    .line 159
    iget v0, p0, Lcom/twitter/android/ContactsUploadService;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/android/ContactsUploadService;->g:I

    .line 160
    iget v0, p0, Lcom/twitter/android/ContactsUploadService;->g:I

    if-eq v0, v2, :cond_1

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "upload_success_broadcast"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "page"

    .line 162
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "pages"

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 164
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/ContactsUploadService;->a(Landroid/content/Intent;ZZ)V

    .line 167
    :cond_1
    return-void
.end method

.method public a(Lbmy;Lcom/twitter/library/service/aa;)V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 75
    if-nez p1, :cond_1

    .line 77
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "ContactsUploadService intent is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const-string/jumbo v0, "scribe_page_term"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ContactsUploadService;->d:Ljava/lang/String;

    .line 81
    invoke-static {p0}, Lcom/twitter/android/client/c;->a(Landroid/content/Context;)Lcom/twitter/android/client/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ContactsUploadService;->a:Lcom/twitter/android/client/c;

    .line 82
    iget-object v0, p0, Lcom/twitter/android/ContactsUploadService;->a:Lcom/twitter/android/client/c;

    invoke-virtual {v0, v5}, Lcom/twitter/android/client/c;->a(Z)V

    .line 83
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ContactsUploadService;->c:Lcom/twitter/library/client/Session;

    .line 84
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/ContactsUploadService;->h:J

    .line 85
    const-string/jumbo v0, "ab_upload"

    const-string/jumbo v1, "Starting AB Upload.."

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/twitter/android/ContactsUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/util/m;->a(Landroid/content/Context;)Lcom/twitter/library/util/l;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ContactsUploadService;->b:Lcom/twitter/library/util/l;

    .line 88
    iget-object v0, p0, Lcom/twitter/android/ContactsUploadService;->b:Lcom/twitter/library/util/l;

    invoke-interface {v0}, Lcom/twitter/library/util/l;->a()Landroid/database/Cursor;

    move-result-object v1

    .line 90
    const-string/jumbo v0, "extra_is_live_sync_experience"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/ContactsUploadService;->j:Z

    .line 92
    iget-boolean v0, p0, Lcom/twitter/android/ContactsUploadService;->j:Z

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 93
    :cond_2
    invoke-direct {p0, v1}, Lcom/twitter/android/ContactsUploadService;->a(Landroid/database/Cursor;)V

    .line 105
    :goto_1
    if-eqz v1, :cond_0

    .line 106
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 97
    :cond_3
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/ContactsUploadService;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v6, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/twitter/android/ContactsUploadService;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":follow_friends:::resolvable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 98
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const-wide/16 v2, 0x0

    .line 99
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(J)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "upload_success_broadcast"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "lookup_complete"

    .line 101
    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 100
    invoke-direct {p0, v0, v5, v6}, Lcom/twitter/android/ContactsUploadService;->a(Landroid/content/Intent;ZZ)V

    .line 102
    invoke-direct {p0}, Lcom/twitter/android/ContactsUploadService;->a()V

    goto :goto_1
.end method
