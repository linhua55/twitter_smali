.class public Lcom/twitter/util/al;
.super Lcom/twitter/util/m;
.source "Twttr"


# static fields
.field private static final d:Lcom/twitter/util/an;

.field private static e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/twitter/util/an;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/util/an;-><init>(Lcom/twitter/util/am;)V

    sput-object v0, Lcom/twitter/util/al;->d:Lcom/twitter/util/an;

    return-void
.end method

.method public static a(JLjava/util/concurrent/TimeUnit;)J
    .locals 4

    .prologue
    .line 230
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    invoke-static {}, Lcom/twitter/util/al;->e()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(Landroid/content/res/Resources;J)Ljava/lang/String;
    .locals 13

    .prologue
    const-wide/32 v10, 0x5265c00

    const-wide/32 v8, 0x36ee80

    const-wide/32 v6, 0xea60

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 51
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 52
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5

    .line 53
    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    .line 54
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 55
    sget v1, Lcom/twitter/util/af;->time_secs:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 56
    :cond_0
    cmp-long v2, v0, v8

    if-gez v2, :cond_1

    .line 57
    div-long/2addr v0, v6

    long-to-int v0, v0

    .line 58
    sget v1, Lcom/twitter/util/af;->time_mins:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_1
    cmp-long v2, v0, v10

    if-gez v2, :cond_2

    .line 60
    div-long/2addr v0, v8

    long-to-int v0, v0

    .line 61
    sget v1, Lcom/twitter/util/af;->time_hours:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_2
    const-wide/32 v2, 0x240c8400

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 63
    div-long/2addr v0, v10

    long-to-int v0, v0

    .line 64
    sget v1, Lcom/twitter/util/af;->time_days:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_3
    invoke-static {}, Lcom/twitter/util/al;->d()Ljava/util/Calendar;

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/twitter/util/al;->d()Ljava/util/Calendar;

    move-result-object v1

    .line 71
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 72
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 74
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 76
    sget-object v0, Lcom/twitter/util/al;->d:Lcom/twitter/util/an;

    invoke-virtual {v0, p0, v2}, Lcom/twitter/util/an;->c(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_4
    sget-object v0, Lcom/twitter/util/al;->d:Lcom/twitter/util/an;

    invoke-virtual {v0, p0, v2}, Lcom/twitter/util/an;->b(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_5
    const-wide/32 v2, -0xea60

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6

    .line 83
    sget v0, Lcom/twitter/util/ah;->now:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_6
    sget-object v0, Lcom/twitter/util/al;->d:Lcom/twitter/util/an;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p0, v1}, Lcom/twitter/util/an;->b(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static b(Landroid/content/res/Resources;J)Ljava/lang/String;
    .locals 13

    .prologue
    const-wide/32 v10, 0x5265c00

    const-wide/32 v8, 0x36ee80

    const-wide/32 v6, 0xea60

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 99
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 100
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5

    .line 101
    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    .line 102
    sget v0, Lcom/twitter/util/ah;->recent_tweets_header_title:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    .line 103
    :cond_0
    cmp-long v2, v0, v8

    if-gez v2, :cond_1

    .line 104
    div-long/2addr v0, v6

    long-to-int v0, v0

    .line 105
    sget v1, Lcom/twitter/util/af;->time_mins_ago:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_1
    cmp-long v2, v0, v10

    if-gez v2, :cond_2

    .line 107
    div-long/2addr v0, v8

    long-to-int v0, v0

    .line 108
    sget v1, Lcom/twitter/util/af;->time_hours_ago:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_2
    const-wide/32 v2, 0x240c8400

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 110
    div-long/2addr v0, v10

    long-to-int v0, v0

    .line 111
    sget v1, Lcom/twitter/util/af;->time_days_ago:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_3
    invoke-static {}, Lcom/twitter/util/al;->d()Ljava/util/Calendar;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/twitter/util/al;->d()Ljava/util/Calendar;

    move-result-object v1

    .line 118
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 119
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 121
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 123
    sget-object v0, Lcom/twitter/util/al;->d:Lcom/twitter/util/an;

    invoke-virtual {v0, p0, v2}, Lcom/twitter/util/an;->e(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_4
    sget-object v0, Lcom/twitter/util/al;->d:Lcom/twitter/util/an;

    invoke-virtual {v0, p0, v2}, Lcom/twitter/util/an;->d(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_5
    const-wide/32 v2, -0xea60

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6

    .line 130
    sget v0, Lcom/twitter/util/ah;->now:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_6
    sget-object v0, Lcom/twitter/util/al;->d:Lcom/twitter/util/an;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p0, v1}, Lcom/twitter/util/an;->d(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static c(Landroid/content/res/Resources;J)Ljava/lang/String;
    .locals 13

    .prologue
    const-wide v10, 0x9ca41900L

    const-wide/32 v8, 0x240c8400

    const-wide/32 v6, 0x5265c00

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 144
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 145
    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 158
    :goto_0
    return-object v0

    .line 147
    :cond_0
    cmp-long v2, v0, v8

    if-gez v2, :cond_1

    .line 148
    div-long/2addr v0, v6

    long-to-int v0, v0

    .line 149
    sget v1, Lcom/twitter/util/af;->days:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_1
    cmp-long v2, v0, v10

    if-gez v2, :cond_2

    .line 151
    div-long/2addr v0, v8

    long-to-int v0, v0

    .line 152
    sget v1, Lcom/twitter/util/af;->weeks:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_2
    const-wide v2, 0x757b12c00L

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 154
    div-long/2addr v0, v10

    long-to-int v0, v0

    .line 155
    sget v1, Lcom/twitter/util/af;->months:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_3
    const-wide v2, 0x757b12c00L

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 158
    sget v1, Lcom/twitter/util/af;->years:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Landroid/content/res/Resources;J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 200
    sget-object v0, Lcom/twitter/util/al;->d:Lcom/twitter/util/an;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p0, v1}, Lcom/twitter/util/an;->c(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static d()Ljava/util/Calendar;
    .locals 6

    .prologue
    .line 33
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 35
    sget-wide v2, Lcom/twitter/util/al;->c:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 36
    invoke-static {}, Lcom/twitter/util/h;->d()V

    .line 37
    sget-wide v2, Lcom/twitter/util/al;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 39
    :cond_0
    return-object v0
.end method

.method public static e()J
    .locals 4

    .prologue
    .line 222
    sget-wide v0, Lcom/twitter/util/al;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/twitter/util/al;->e:J

    :goto_0
    return-wide v0

    .line 223
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static e(Landroid/content/res/Resources;J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 215
    sget-object v0, Lcom/twitter/util/al;->d:Lcom/twitter/util/an;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p0, v1}, Lcom/twitter/util/an;->a(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(J)Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const-wide/32 v4, 0x5265c00

    const-wide/32 v8, 0x36ee80

    const-wide/32 v6, 0xea60

    .line 168
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_2

    .line 169
    const-string/jumbo v0, ""

    .line 170
    cmp-long v1, p0, v4

    if-lez v1, :cond_3

    .line 171
    div-long v2, p0, v4

    long-to-int v1, v2

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    rem-long v2, p0, v4

    .line 175
    :goto_0
    cmp-long v1, v2, v8

    if-lez v1, :cond_0

    .line 176
    div-long v4, v2, v8

    long-to-int v1, v4

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    rem-long/2addr v2, v8

    .line 180
    :cond_0
    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 181
    div-long v4, v2, v6

    long-to-int v1, v4

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    rem-long/2addr v2, v6

    .line 185
    :cond_1
    div-long v4, v2, v10

    long-to-int v1, v4

    .line 186
    rem-long/2addr v2, v10

    long-to-int v2, v2

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_1
    return-object v0

    :cond_2
    const-string/jumbo v0, "invalid duration"

    goto :goto_1

    :cond_3
    move-wide v2, p0

    goto :goto_0
.end method
