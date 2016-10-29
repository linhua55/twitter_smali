.class Ltv/periscope/android/chat/e;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/chatman/c;


# instance fields
.field private final a:Lde/greenrobot/event/c;

.field private final b:Lcom/codahale/metrics/Histogram;


# direct methods
.method public constructor <init>(Lde/greenrobot/event/c;Lcom/codahale/metrics/Histogram;)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Ltv/periscope/android/chat/e;->a:Lde/greenrobot/event/c;

    .line 158
    iput-object p2, p0, Ltv/periscope/android/chat/e;->b:Lcom/codahale/metrics/Histogram;

    .line 159
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Ltv/periscope/android/chat/e;->a:Lde/greenrobot/event/c;

    sget-object v1, Ltv/periscope/android/chat/ChatRoomEvent;->e:Ltv/periscope/android/chat/ChatRoomEvent;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method public a(Ltv/periscope/chatman/model/Ban;)V
    .locals 1
    .param p1    # Ltv/periscope/chatman/model/Ban;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 231
    iget-object v0, p0, Ltv/periscope/android/chat/e;->a:Lde/greenrobot/event/c;

    invoke-virtual {v0, p1}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    .line 232
    return-void
.end method

.method public a(Ltv/periscope/chatman/model/Presence;)V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Ltv/periscope/android/chat/e;->a:Lde/greenrobot/event/c;

    invoke-virtual {v0, p1}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    .line 227
    return-void
.end method

.method public a(Ltv/periscope/chatman/model/Roster;)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Ltv/periscope/android/chat/e;->a:Lde/greenrobot/event/c;

    invoke-virtual {v0, p1}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    .line 222
    return-void
.end method

.method public a(Ltv/periscope/chatman/model/q;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 198
    sget-object v0, Ldob;->a:Lcom/google/gson/d;

    invoke-virtual {p1}, Ltv/periscope/chatman/model/q;->b()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ltv/periscope/android/api/PsMessage;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/PsMessage;

    .line 199
    invoke-virtual {v0, p1}, Ltv/periscope/android/api/PsMessage;->toMessage(Ltv/periscope/chatman/model/q;)Ltv/periscope/model/chat/Message;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Ltv/periscope/model/chat/Message;->u()Ljava/math/BigInteger;

    move-result-object v1

    .line 202
    if-eqz v1, :cond_0

    .line 203
    invoke-static {}, Ldna;->a()J

    move-result-wide v2

    .line 204
    cmp-long v4, v2, v6

    if-lez v4, :cond_0

    .line 205
    invoke-static {v1}, Ldna;->a(Ljava/math/BigInteger;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 206
    const-string/jumbo v1, "CM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "received message, latency="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ltv/periscope/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 209
    iget-object v1, p0, Ltv/periscope/android/chat/e;->b:Lcom/codahale/metrics/Histogram;

    monitor-enter v1

    .line 210
    :try_start_0
    iget-object v4, p0, Ltv/periscope/android/chat/e;->b:Lcom/codahale/metrics/Histogram;

    invoke-virtual {v4, v2, v3}, Lcom/codahale/metrics/Histogram;->update(J)V

    .line 211
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_0
    iget-object v1, p0, Ltv/periscope/android/chat/e;->a:Lde/greenrobot/event/c;

    invoke-static {v0}, Ltv/periscope/model/chat/ChatEvent;->a(Ltv/periscope/model/chat/Message;)Ltv/periscope/model/chat/ChatEvent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    .line 217
    return-void

    .line 211
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ltv/periscope/chatman/model/r;Z)V
    .locals 8

    .prologue
    .line 236
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 239
    invoke-virtual {p1}, Ltv/periscope/chatman/model/r;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/chatman/model/q;

    .line 240
    sget-object v1, Ldob;->a:Lcom/google/gson/d;

    invoke-virtual {v0}, Ltv/periscope/chatman/model/q;->b()Ljava/lang/String;

    move-result-object v4

    const-class v5, Ltv/periscope/android/api/PsMessage;

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/periscope/android/api/PsMessage;

    .line 241
    new-instance v4, Ltv/periscope/android/chat/w;

    invoke-virtual {v1, v0}, Ltv/periscope/android/api/PsMessage;->toMessage(Ltv/periscope/chatman/model/q;)Ltv/periscope/model/chat/Message;

    move-result-object v1

    invoke-virtual {v0}, Ltv/periscope/chatman/model/q;->d()J

    move-result-wide v6

    invoke-direct {v4, v1, v6, v7}, Ltv/periscope/android/chat/w;-><init>(Ltv/periscope/model/chat/Message;J)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    :cond_0
    new-instance v1, Ltv/periscope/android/chat/EventHistory;

    .line 245
    invoke-virtual {p1}, Ltv/periscope/chatman/model/r;->b()J

    move-result-wide v4

    invoke-virtual {p1}, Ltv/periscope/chatman/model/r;->c()Ljava/lang/String;

    move-result-object v6

    .line 246
    invoke-virtual {p1}, Ltv/periscope/chatman/model/r;->d()Ljava/lang/String;

    move-result-object v7

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ltv/periscope/android/chat/EventHistory;-><init>(Ljava/util/List;ZJLjava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Ltv/periscope/android/chat/e;->a:Lde/greenrobot/event/c;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    .line 248
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Ltv/periscope/android/chat/e;->a:Lde/greenrobot/event/c;

    sget-object v1, Ltv/periscope/android/chat/ChatRoomEvent;->a:Ltv/periscope/android/chat/ChatRoomEvent;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Ltv/periscope/android/chat/e;->a:Lde/greenrobot/event/c;

    sget-object v1, Ltv/periscope/android/chat/ChatRoomEvent;->c:Ltv/periscope/android/chat/ChatRoomEvent;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Ltv/periscope/android/chat/e;->a:Lde/greenrobot/event/c;

    sget-object v1, Ltv/periscope/android/chat/ChatRoomEvent;->b:Ltv/periscope/android/chat/ChatRoomEvent;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    .line 179
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Ltv/periscope/android/chat/e;->a:Lde/greenrobot/event/c;

    sget-object v1, Ltv/periscope/android/chat/ChatRoomEvent;->d:Ltv/periscope/android/chat/ChatRoomEvent;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Ltv/periscope/android/chat/e;->a:Lde/greenrobot/event/c;

    sget-object v1, Ltv/periscope/android/chat/ChatRoomEvent;->f:Ltv/periscope/android/chat/ChatRoomEvent;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    .line 189
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Ltv/periscope/android/chat/e;->a:Lde/greenrobot/event/c;

    sget-object v1, Ltv/periscope/android/chat/ChatRoomEvent;->g:Ltv/periscope/android/chat/ChatRoomEvent;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    .line 194
    return-void
.end method
