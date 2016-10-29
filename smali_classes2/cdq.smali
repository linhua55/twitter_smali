.class public Lcdq;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcln;

.field private final g:J

.field private final h:J

.field private final i:Lcom/twitter/model/livevideo/BroadcastState;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:J

.field private final m:J


# direct methods
.method public constructor <init>(JLclm;)V
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-wide p1, p0, Lcdq;->m:J

    .line 67
    const-string/jumbo v0, "event_id"

    invoke-static {v0, p3}, Lcom/twitter/library/card/at;->a(Ljava/lang/String;Lclm;)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcdq;->a:J

    .line 68
    const-string/jumbo v0, "title"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcdq;->b:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "subtitle"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcdq;->c:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "event_url"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcdq;->d:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, "stream_url"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcdq;->e:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "thumbnail"

    invoke-static {v0, p3}, Lcln;->a(Ljava/lang/String;Lclm;)Lcln;

    move-result-object v0

    iput-object v0, p0, Lcdq;->f:Lcln;

    .line 73
    const-string/jumbo v0, "media_id"

    invoke-static {v0, p3}, Lcom/twitter/library/card/at;->a(Ljava/lang/String;Lclm;)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcdq;->g:J

    .line 74
    const-string/jumbo v0, "owner_user_id"

    invoke-static {v0, p3}, Lcom/twitter/library/card/at;->a(Ljava/lang/String;Lclm;)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcdq;->h:J

    .line 76
    const-string/jumbo v0, "state"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "live"

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/model/livevideo/BroadcastState;->valueOf(Ljava/lang/String;)Lcom/twitter/model/livevideo/BroadcastState;

    move-result-object v0

    iput-object v0, p0, Lcdq;->i:Lcom/twitter/model/livevideo/BroadcastState;

    .line 78
    const-string/jumbo v0, "api"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcdq;->j:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "card_url"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcdq;->k:Ljava/lang/String;

    .line 80
    const-string/jumbo v0, "start_time"

    invoke-static {v0, p3}, Lcom/twitter/library/card/at;->a(Ljava/lang/String;Lclm;)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcdq;->l:J

    .line 81
    return-void
.end method

.method public constructor <init>(Lclm;)V
    .locals 2

    .prologue
    .line 62
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcdq;-><init>(JLclm;)V

    .line 63
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcdq;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcdq;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcdq;->a:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcdq;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcln;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcdq;->f:Lcln;

    return-object v0
.end method

.method public f()Lcom/twitter/model/livevideo/BroadcastState;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcdq;->i:Lcom/twitter/model/livevideo/BroadcastState;

    return-object v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcdq;->l:J

    return-wide v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcdq;->j:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcdq;->k:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .locals 4

    .prologue
    .line 136
    iget-wide v0, p0, Lcdq;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcdq;->h:J

    return-wide v0
.end method

.method public l()Ljava/lang/String;
    .locals 6

    .prologue
    .line 145
    iget-wide v0, p0, Lcdq;->a:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-wide v2, p0, Lcdq;->m:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcdq;->m:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_0
    return-object v0
.end method

.method public m()Lcom/twitter/model/livevideo/d;
    .locals 6

    .prologue
    .line 160
    iget-object v0, p0, Lcdq;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 185
    :goto_0
    return-object v0

    .line 164
    :cond_0
    new-instance v0, Lcom/twitter/model/livevideo/c;

    invoke-direct {v0}, Lcom/twitter/model/livevideo/c;-><init>()V

    iget-wide v2, p0, Lcdq;->g:J

    .line 165
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/livevideo/c;->a(J)Lcom/twitter/model/livevideo/c;

    move-result-object v0

    iget-object v1, p0, Lcdq;->e:Ljava/lang/String;

    .line 166
    invoke-virtual {v0, v1}, Lcom/twitter/model/livevideo/c;->a(Ljava/lang/String;)Lcom/twitter/model/livevideo/c;

    move-result-object v0

    iget-object v1, p0, Lcdq;->i:Lcom/twitter/model/livevideo/BroadcastState;

    .line 167
    invoke-virtual {v0, v1}, Lcom/twitter/model/livevideo/c;->a(Lcom/twitter/model/livevideo/BroadcastState;)Lcom/twitter/model/livevideo/c;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/twitter/model/livevideo/c;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/livevideo/a;

    .line 170
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v1

    .line 171
    iget-object v2, p0, Lcdq;->f:Lcln;

    if-eqz v2, :cond_1

    .line 172
    new-instance v1, Lcom/twitter/model/card/property/ImageSpec;

    iget-object v2, p0, Lcdq;->f:Lcln;

    iget v2, v2, Lcln;->b:I

    int-to-float v2, v2

    iget-object v3, p0, Lcdq;->f:Lcln;

    iget v3, v3, Lcln;->c:I

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/twitter/model/card/property/ImageSpec;-><init>(FF)V

    .line 173
    iget-object v2, p0, Lcdq;->f:Lcln;

    iget-object v2, v2, Lcln;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/twitter/model/card/property/ImageSpec;->c:Ljava/lang/String;

    .line 174
    invoke-static {v1}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 177
    :cond_1
    new-instance v2, Lcom/twitter/model/livevideo/e;

    invoke-direct {v2}, Lcom/twitter/model/livevideo/e;-><init>()V

    .line 178
    invoke-virtual {p0}, Lcdq;->c()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/twitter/model/livevideo/e;->a(J)Lcom/twitter/model/livevideo/e;

    move-result-object v2

    .line 179
    invoke-virtual {p0}, Lcdq;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/model/livevideo/e;->b(Ljava/lang/String;)Lcom/twitter/model/livevideo/e;

    move-result-object v2

    .line 180
    invoke-virtual {p0}, Lcdq;->k()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/twitter/model/livevideo/e;->b(J)Lcom/twitter/model/livevideo/e;

    move-result-object v2

    .line 181
    invoke-virtual {p0}, Lcdq;->g()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/twitter/model/livevideo/e;->c(J)Lcom/twitter/model/livevideo/e;

    move-result-object v2

    .line 182
    invoke-virtual {v2, v1}, Lcom/twitter/model/livevideo/e;->a(Ljava/util/List;)Lcom/twitter/model/livevideo/e;

    move-result-object v1

    .line 183
    invoke-virtual {v1, v0}, Lcom/twitter/model/livevideo/e;->a(Lcom/twitter/model/livevideo/a;)Lcom/twitter/model/livevideo/e;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/twitter/model/livevideo/e;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/livevideo/d;

    goto :goto_0
.end method
