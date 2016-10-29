.class public Lcom/twitter/android/dl;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:J

.field private b:Lcom/twitter/android/dm;

.field private c:Z

.field private d:Z

.field private e:J

.field private f:I


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/dl;-><init>(JLcom/twitter/app/common/list/w;)V

    .line 31
    return-void
.end method

.method public constructor <init>(JLcom/twitter/app/common/list/w;)V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/twitter/android/dl;->a:J

    .line 36
    if-eqz p3, :cond_0

    .line 37
    const-string/jumbo v0, "last_read_marker_unread_messages_count"

    invoke-virtual {p3, v0}, Lcom/twitter/app/common/list/w;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/dl;->f:I

    .line 38
    iget v0, p0, Lcom/twitter/android/dl;->f:I

    if-lez v0, :cond_0

    .line 39
    const-string/jumbo v0, "last_read_marker_event_id"

    invoke-virtual {p3, v0}, Lcom/twitter/app/common/list/w;->c(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/dl;->e:J

    .line 40
    const-string/jumbo v0, "last_read_marker_is_invalid"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/dl;->d:Z

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/dl;->c:Z

    .line 44
    :cond_0
    return-void
.end method

.method private a(Lbnt;)Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p1, Lbnt;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lbnt;->a:Lcom/twitter/model/dms/b;

    invoke-virtual {v0}, Lcom/twitter/model/dms/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/database/Cursor;I)I
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/twitter/android/dl;->a:J

    invoke-static {p1, p2, v0, v1}, Lbnx;->a(Landroid/database/Cursor;IJ)I

    move-result v0

    return v0
.end method

.method public a(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/twitter/android/dl;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/dl;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dl;->b:Lcom/twitter/android/dm;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/dl;->c:Z

    .line 53
    iget v0, p0, Lcom/twitter/android/dl;->f:I

    if-gtz v0, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Lcom/twitter/android/dl;->b(Landroid/database/Cursor;)Lbnt;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Lbnt;->a()Lcom/twitter/model/dms/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/model/dms/b;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/android/dl;->e:J

    .line 61
    invoke-virtual {v0}, Lbnt;->b()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/dl;->a(Landroid/database/Cursor;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/dl;->f:I

    .line 62
    iget v0, p0, Lcom/twitter/android/dl;->f:I

    if-lez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/twitter/android/dl;->b:Lcom/twitter/android/dm;

    invoke-interface {v0}, Lcom/twitter/android/dm;->b()V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 132
    const-string/jumbo v0, "last_read_marker_unread_messages_count"

    iget v1, p0, Lcom/twitter/android/dl;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    const-string/jumbo v0, "last_read_marker_event_id"

    iget-wide v2, p0, Lcom/twitter/android/dl;->e:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 134
    const-string/jumbo v0, "last_read_marker_is_invalid"

    iget-boolean v1, p0, Lcom/twitter/android/dl;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    return-void
.end method

.method public a(Lcom/twitter/android/dm;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/twitter/android/dl;->b:Lcom/twitter/android/dm;

    .line 139
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/twitter/android/dl;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/dl;->d:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/twitter/android/dl;->f:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(J)Z
    .locals 3

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/twitter/android/dl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/twitter/android/dl;->e:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/twitter/android/dl;->f:I

    return v0
.end method

.method b(Landroid/database/Cursor;)Lbnt;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 70
    if-nez p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-object v1

    .line 74
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 75
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v2, Lbnt;

    invoke-direct {v2, p1}, Lbnt;-><init>(Landroid/database/Cursor;)V

    .line 80
    invoke-direct {p0, v2}, Lcom/twitter/android/dl;->a(Lbnt;)Z

    move-result v0

    move v5, v0

    move-object v0, v2

    move v2, v5

    .line 82
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 83
    new-instance v0, Lbnt;

    invoke-direct {v0, p1}, Lbnt;-><init>(Landroid/database/Cursor;)V

    .line 84
    if-eqz v2, :cond_4

    iget-boolean v4, v0, Lbnt;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_4

    .line 93
    :cond_3
    invoke-interface {p1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 96
    if-eqz v2, :cond_5

    iget-boolean v2, v0, Lbnt;->h:Z

    if-eqz v2, :cond_5

    :goto_2
    move-object v1, v0

    goto :goto_0

    .line 88
    :cond_4
    :try_start_1
    invoke-direct {p0, v0}, Lcom/twitter/android/dl;->a(Lbnt;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 89
    const/4 v2, 0x1

    goto :goto_1

    .line 93
    :catchall_0
    move-exception v0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    throw v0

    :cond_5
    move-object v0, v1

    .line 96
    goto :goto_2
.end method

.method public c(Landroid/database/Cursor;)I
    .locals 8

    .prologue
    const/4 v0, -0x1

    .line 100
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 108
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 110
    :cond_2
    new-instance v2, Lbnu;

    invoke-direct {v2, p1}, Lbnu;-><init>(Landroid/database/Cursor;)V

    .line 111
    invoke-virtual {v2}, Lbnu;->c()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/twitter/android/dl;->e:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 112
    invoke-virtual {v2}, Lbnu;->b()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 117
    :goto_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0

    .line 115
    :cond_3
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    throw v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/twitter/android/dl;->c:Z

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/dl;->d:Z

    .line 163
    return-void
.end method
