.class public Lcom/twitter/android/timeline/bi;
.super Lcom/twitter/library/service/o;
.source "Twttr"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private final g:I

.field private final i:Ljava/lang/String;

.field private final j:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    const-class v0, Lcom/twitter/android/timeline/bi;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/o;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 46
    iput p6, p0, Lcom/twitter/android/timeline/bi;->g:I

    .line 47
    iput-object p7, p0, Lcom/twitter/android/timeline/bi;->i:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/twitter/android/timeline/bi;->c:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 49
    invoke-virtual {p2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/timeline/bi;->j:J

    .line 50
    iput-object p4, p0, Lcom/twitter/android/timeline/bi;->a:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lcom/twitter/android/timeline/bi;->b:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private a(Landroid/database/Cursor;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    if-eqz p1, :cond_2

    .line 89
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/timeline/bi;->h:Landroid/content/Context;

    sget-object v2, Lcgi;->a:Lcgi;

    .line 93
    invoke-virtual {v2, p1}, Lcgi;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/Tweet;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/timeline/bi;->c:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const/4 v4, 0x0

    .line 92
    invoke-static {v1, v2, v3, v4}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 101
    :goto_0
    return-object v0

    .line 98
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 101
    :cond_2
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method protected a()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 56
    sget-object v0, Lcom/twitter/library/provider/dj;->b:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/android/timeline/bi;->j:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 58
    iget-object v0, p0, Lcom/twitter/android/timeline/bi;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/timeline/bi;->j:J

    .line 59
    invoke-static {v1, v2, v3}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lchj;->a:[Ljava/lang/String;

    const-string/jumbo v3, "timeline_data_type=? AND timeline_entity_id=?"

    new-array v4, v9, [Ljava/lang/String;

    iget v6, p0, Lcom/twitter/android/timeline/bi;->g:I

    .line 62
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    iget-object v6, p0, Lcom/twitter/android/timeline/bi;->i:Ljava/lang/String;

    .line 63
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    .line 58
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 67
    iget v1, p0, Lcom/twitter/android/timeline/bi;->g:I

    packed-switch v1, :pswitch_data_0

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid timeline data type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/twitter/android/timeline/bi;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/twitter/android/timeline/bi;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 77
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/timeline/bi;->j:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/timeline/bi;->a:Ljava/lang/String;

    aput-object v3, v2, v7

    aput-object v5, v2, v8

    iget-object v3, p0, Lcom/twitter/android/timeline/bi;->b:Ljava/lang/String;

    aput-object v3, v2, v9

    const/4 v3, 0x3

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "impression"

    aput-object v4, v2, v3

    .line 79
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/timeline/bi;->c:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 80
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 81
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/util/List;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 83
    :cond_0
    return-void

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
