.class public Lcom/twitter/model/json/dms/f;
.super Lcom/twitter/model/json/common/m;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/json/common/m",
        "<",
        "Lcom/twitter/model/dms/g;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/twitter/model/json/common/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/dms/g;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 45
    const-string/jumbo v0, "b2c_feedback_submitted_dm_event_enabled"

    .line 46
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v3

    .line 47
    const-string/jumbo v0, "b2c_feedback_dismissed_dm_event_enabled"

    .line 48
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v4

    .line 50
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v1, v2

    .line 54
    :goto_0
    if-eqz v0, :cond_12

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v5, :cond_12

    .line 55
    sget-object v5, Lcom/twitter/model/json/dms/h;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v5, v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v2

    .line 247
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    move-object v10, v0

    move-object v0, v2

    move-object v2, v10

    goto :goto_0

    .line 57
    :pswitch_0
    const-string/jumbo v0, "message"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-class v0, Lcom/twitter/model/dms/bo;

    .line 59
    invoke-static {p1, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/g;

    move-object v1, v0

    move-object v0, v2

    goto :goto_1

    .line 60
    :cond_0
    const-string/jumbo v0, "conversation_create"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const-class v0, Lcom/twitter/model/dms/ag;

    .line 62
    invoke-static {p1, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/g;

    move-object v1, v0

    move-object v0, v2

    goto :goto_1

    .line 63
    :cond_1
    const-string/jumbo v0, "remove_conversation"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    const-class v0, Lcom/twitter/model/dms/cn;

    .line 65
    invoke-static {p1, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/g;

    move-object v1, v0

    move-object v0, v2

    goto :goto_1

    .line 66
    :cond_2
    const-string/jumbo v0, "join_conversation"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    const-class v0, Lcom/twitter/model/json/dms/JsonParticipantsEntry;

    .line 68
    invoke-static {p1, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/dms/JsonParticipantsEntry;

    .line 70
    iget-object v1, v0, Lcom/twitter/model/json/dms/JsonParticipantsEntry;->a:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 71
    iget-object v1, v0, Lcom/twitter/model/json/dms/JsonParticipantsEntry;->a:Ljava/util/List;

    new-instance v5, Lcom/twitter/model/json/dms/g;

    invoke-direct {v5, p0}, Lcom/twitter/model/json/dms/g;-><init>(Lcom/twitter/model/json/dms/f;)V

    invoke-static {v1, v5}, Lczz;->a(Ljava/lang/Iterable;Lczn;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 82
    :goto_2
    new-instance v5, Lcom/twitter/model/dms/db;

    invoke-direct {v5}, Lcom/twitter/model/dms/db;-><init>()V

    .line 83
    invoke-virtual {v5, v1}, Lcom/twitter/model/dms/db;->a(Ljava/lang/Object;)Lcom/twitter/model/dms/d;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/db;

    iget-boolean v5, v0, Lcom/twitter/model/json/dms/JsonParticipantsEntry;->i:Z

    .line 84
    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/db;->a(Z)Lcom/twitter/model/dms/d;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/db;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonParticipantsEntry;->e:J

    .line 85
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/db;->b(J)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/db;

    iget-object v5, v0, Lcom/twitter/model/json/dms/JsonParticipantsEntry;->f:Ljava/lang/String;

    .line 86
    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/db;->a(Ljava/lang/String;)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/db;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonParticipantsEntry;->g:J

    .line 87
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/db;->c(J)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/db;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonParticipantsEntry;->h:J

    .line 88
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/db;->a(J)Lcom/twitter/model/dms/d;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/db;

    .line 89
    invoke-virtual {v0}, Lcom/twitter/model/dms/db;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/g;

    move-object v1, v0

    move-object v0, v2

    .line 90
    goto/16 :goto_1

    .line 80
    :cond_3
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v1

    goto :goto_2

    .line 90
    :cond_4
    const-string/jumbo v0, "message_delete"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    const-class v0, Lcom/twitter/model/dms/cq;

    invoke-static {p1, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/g;

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_1

    .line 92
    :cond_5
    const-string/jumbo v0, "conversation_name_update"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 93
    const-class v0, Lcom/twitter/model/json/dms/JsonUpdateConversationNameEntry;

    .line 94
    invoke-static {p1, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/dms/JsonUpdateConversationNameEntry;

    .line 95
    if-eqz v0, :cond_16

    .line 96
    new-instance v1, Lcom/twitter/model/dms/eq;

    invoke-direct {v1}, Lcom/twitter/model/dms/eq;-><init>()V

    iget-object v5, v0, Lcom/twitter/model/json/dms/JsonUpdateConversationNameEntry;->a:Ljava/lang/String;

    .line 97
    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/eq;->a(Ljava/lang/Object;)Lcom/twitter/model/dms/d;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/eq;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonUpdateConversationNameEntry;->b:J

    .line 98
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/eq;->a(J)Lcom/twitter/model/dms/d;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/eq;

    iget-boolean v5, v0, Lcom/twitter/model/json/dms/JsonUpdateConversationNameEntry;->d:Z

    .line 99
    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/eq;->a(Z)Lcom/twitter/model/dms/d;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/eq;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonUpdateConversationNameEntry;->e:J

    .line 100
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/eq;->b(J)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/eq;

    iget-object v5, v0, Lcom/twitter/model/json/dms/JsonUpdateConversationNameEntry;->f:Ljava/lang/String;

    .line 101
    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/eq;->a(Ljava/lang/String;)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/eq;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonUpdateConversationNameEntry;->g:J

    .line 102
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/eq;->c(J)Lcom/twitter/model/dms/h;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/eq;

    .line 103
    invoke-virtual {v0}, Lcom/twitter/model/dms/eq;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/g;

    :goto_3
    move-object v1, v0

    move-object v0, v2

    .line 105
    goto/16 :goto_1

    :cond_6
    const-string/jumbo v0, "conversation_avatar_update"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 106
    const-class v0, Lcom/twitter/model/json/dms/JsonUpdateConversationAvatarEntry;

    .line 107
    invoke-static {p1, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/dms/JsonUpdateConversationAvatarEntry;

    .line 108
    if-eqz v0, :cond_15

    .line 109
    new-instance v1, Lcom/twitter/model/dms/ej;

    invoke-direct {v1}, Lcom/twitter/model/dms/ej;-><init>()V

    iget-object v5, v0, Lcom/twitter/model/json/dms/JsonUpdateConversationAvatarEntry;->a:Ljava/lang/String;

    .line 110
    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/ej;->a(Ljava/lang/Object;)Lcom/twitter/model/dms/d;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/ej;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonUpdateConversationAvatarEntry;->b:J

    .line 111
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/ej;->a(J)Lcom/twitter/model/dms/d;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/ej;

    iget-boolean v5, v0, Lcom/twitter/model/json/dms/JsonUpdateConversationAvatarEntry;->d:Z

    .line 112
    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/ej;->a(Z)Lcom/twitter/model/dms/d;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/ej;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonUpdateConversationAvatarEntry;->e:J

    .line 113
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/ej;->b(J)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/ej;

    iget-object v5, v0, Lcom/twitter/model/json/dms/JsonUpdateConversationAvatarEntry;->f:Ljava/lang/String;

    .line 114
    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/ej;->a(Ljava/lang/String;)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/ej;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonUpdateConversationAvatarEntry;->g:J

    .line 115
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/ej;->c(J)Lcom/twitter/model/dms/h;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/ej;

    .line 116
    invoke-virtual {v0}, Lcom/twitter/model/dms/ej;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/g;

    :goto_4
    move-object v1, v0

    move-object v0, v2

    .line 118
    goto/16 :goto_1

    :cond_7
    const-string/jumbo v0, "participants_join"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 119
    const-class v0, Lcom/twitter/model/json/dms/JsonParticipantsEntry;

    .line 120
    invoke-static {p1, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/dms/JsonParticipantsEntry;

    .line 121
    new-instance v1, Lcom/twitter/model/dms/dr;

    invoke-direct {v1}, Lcom/twitter/model/dms/dr;-><init>()V

    new-instance v5, Lcom/twitter/model/dms/dt;

    invoke-direct {v5}, Lcom/twitter/model/dms/dt;-><init>()V

    iget-object v6, v0, Lcom/twitter/model/json/dms/JsonParticipantsEntry;->a:Ljava/util/List;

    .line 123
    invoke-virtual {v5, v6}, Lcom/twitter/model/dms/dt;->a(Ljava/util/List;)Lcom/twitter/model/dms/dt;

    move-result-object v5

    .line 124
    invoke-virtual {v5}, Lcom/twitter/model/dms/dt;->q()Ljava/lang/Object;

    move-result-object v5

    .line 122
    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/dr;->a(Ljava/lang/Object;)Lcom/twitter/model/dms/d;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/dr;

    iget-boolean v5, v0, Lcom/twitter/model/json/dms/JsonParticipantsEntry;->i:Z

    .line 125
    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/dr;->a(Z)Lcom/twitter/model/dms/d;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/dr;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonParticipantsEntry;->e:J

    .line 126
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/dr;->b(J)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/dr;

    iget-object v5, v0, Lcom/twitter/model/json/dms/JsonParticipantsEntry;->f:Ljava/lang/String;

    .line 127
    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/dr;->a(Ljava/lang/String;)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/dr;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonParticipantsEntry;->g:J

    .line 128
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/dr;->c(J)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/dr;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonParticipantsEntry;->h:J

    .line 129
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/dr;->a(J)Lcom/twitter/model/dms/d;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/dr;

    .line 130
    invoke-virtual {v0}, Lcom/twitter/model/dms/dr;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/g;

    move-object v1, v0

    move-object v0, v2

    .line 131
    goto/16 :goto_1

    :cond_8
    const-string/jumbo v0, "participants_leave"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 132
    const-class v0, Lcom/twitter/model/json/dms/JsonParticipantsEntry;

    .line 133
    invoke-static {p1, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/dms/JsonParticipantsEntry;

    .line 134
    new-instance v1, Lcom/twitter/model/dms/dy;

    invoke-direct {v1}, Lcom/twitter/model/dms/dy;-><init>()V

    iget-object v5, v0, Lcom/twitter/model/json/dms/JsonParticipantsEntry;->a:Ljava/util/List;

    .line 135
    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/dy;->a(Ljava/lang/Object;)Lcom/twitter/model/dms/d;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/dy;

    iget-boolean v5, v0, Lcom/twitter/model/json/dms/JsonParticipantsEntry;->i:Z

    .line 136
    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/dy;->a(Z)Lcom/twitter/model/dms/d;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/dy;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonParticipantsEntry;->e:J

    .line 137
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/dy;->b(J)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/dy;

    iget-object v5, v0, Lcom/twitter/model/json/dms/JsonParticipantsEntry;->f:Ljava/lang/String;

    .line 138
    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/dy;->a(Ljava/lang/String;)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/dy;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonParticipantsEntry;->g:J

    .line 139
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/dy;->c(J)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/dy;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonParticipantsEntry;->h:J

    .line 140
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/dy;->a(J)Lcom/twitter/model/dms/d;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/dy;

    .line 141
    invoke-virtual {v0}, Lcom/twitter/model/dms/dy;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/g;

    move-object v1, v0

    move-object v0, v2

    .line 142
    goto/16 :goto_1

    :cond_9
    const-string/jumbo v0, "conversation_read"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 143
    const-class v0, Lcom/twitter/model/json/dms/JsonReadStateEvent;

    .line 144
    invoke-static {p1, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/dms/JsonReadStateEvent;

    .line 145
    new-instance v1, Lcom/twitter/model/dms/di;

    invoke-direct {v1}, Lcom/twitter/model/dms/di;-><init>()V

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonReadStateEvent;->e:J

    .line 146
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/di;->a(J)Lcom/twitter/model/dms/r;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/di;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonReadStateEvent;->a:J

    .line 147
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/di;->b(J)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/di;

    iget-object v5, v0, Lcom/twitter/model/json/dms/JsonReadStateEvent;->c:Ljava/lang/String;

    .line 148
    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/di;->a(Ljava/lang/String;)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/di;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonReadStateEvent;->b:J

    .line 149
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/di;->c(J)Lcom/twitter/model/dms/h;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/di;

    .line 150
    invoke-virtual {v0}, Lcom/twitter/model/dms/di;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/g;

    move-object v1, v0

    move-object v0, v2

    .line 151
    goto/16 :goto_1

    :cond_a
    const-string/jumbo v0, "mark_all_as_read"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 152
    const-class v0, Lcom/twitter/model/json/dms/JsonReadStateEvent;

    .line 153
    invoke-static {p1, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/dms/JsonReadStateEvent;

    .line 154
    new-instance v1, Lcom/twitter/model/dms/df;

    invoke-direct {v1}, Lcom/twitter/model/dms/df;-><init>()V

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonReadStateEvent;->e:J

    .line 155
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/df;->a(J)Lcom/twitter/model/dms/r;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/df;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonReadStateEvent;->a:J

    .line 156
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/df;->b(J)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/df;

    iget-object v5, v0, Lcom/twitter/model/json/dms/JsonReadStateEvent;->c:Ljava/lang/String;

    .line 157
    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/df;->a(Ljava/lang/String;)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/df;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonReadStateEvent;->b:J

    .line 158
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/df;->c(J)Lcom/twitter/model/dms/h;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/df;

    .line 159
    invoke-virtual {v0}, Lcom/twitter/model/dms/df;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/g;

    move-object v1, v0

    move-object v0, v2

    .line 160
    goto/16 :goto_1

    :cond_b
    const-string/jumbo v0, "disable_notifications"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 161
    const-class v0, Lcom/twitter/model/json/dms/JsonUpdateConversationMuteStateEvent;

    .line 162
    invoke-static {p1, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 161
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/dms/JsonUpdateConversationMuteStateEvent;

    .line 163
    new-instance v1, Lcom/twitter/model/dms/en;

    invoke-direct {v1}, Lcom/twitter/model/dms/en;-><init>()V

    .line 164
    invoke-virtual {v1, v9}, Lcom/twitter/model/dms/en;->a(Z)Lcom/twitter/model/dms/en;

    move-result-object v1

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonUpdateConversationMuteStateEvent;->a:J

    .line 165
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/en;->b(J)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/en;

    iget-object v5, v0, Lcom/twitter/model/json/dms/JsonUpdateConversationMuteStateEvent;->c:Ljava/lang/String;

    .line 166
    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/en;->a(Ljava/lang/String;)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/en;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonUpdateConversationMuteStateEvent;->b:J

    .line 167
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/en;->c(J)Lcom/twitter/model/dms/h;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/en;

    .line 168
    invoke-virtual {v0}, Lcom/twitter/model/dms/en;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/g;

    move-object v1, v0

    move-object v0, v2

    .line 169
    goto/16 :goto_1

    :cond_c
    const-string/jumbo v0, "enable_notifications"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 170
    const-class v0, Lcom/twitter/model/json/dms/JsonUpdateConversationMuteStateEvent;

    .line 171
    invoke-static {p1, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 170
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/dms/JsonUpdateConversationMuteStateEvent;

    .line 172
    new-instance v1, Lcom/twitter/model/dms/en;

    invoke-direct {v1}, Lcom/twitter/model/dms/en;-><init>()V

    .line 173
    invoke-virtual {v1, v8}, Lcom/twitter/model/dms/en;->a(Z)Lcom/twitter/model/dms/en;

    move-result-object v1

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonUpdateConversationMuteStateEvent;->a:J

    .line 174
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/en;->b(J)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/en;

    iget-object v5, v0, Lcom/twitter/model/json/dms/JsonUpdateConversationMuteStateEvent;->c:Ljava/lang/String;

    .line 175
    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/en;->a(Ljava/lang/String;)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/en;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonUpdateConversationMuteStateEvent;->b:J

    .line 176
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/en;->c(J)Lcom/twitter/model/dms/h;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/en;

    .line 177
    invoke-virtual {v0}, Lcom/twitter/model/dms/en;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/g;

    move-object v1, v0

    move-object v0, v2

    .line 178
    goto/16 :goto_1

    :cond_d
    const-string/jumbo v0, "message_mark_as_spam"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 179
    const-class v0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;

    .line 180
    invoke-static {p1, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;

    .line 181
    new-instance v1, Lcom/twitter/model/dms/eu;

    invoke-direct {v1}, Lcom/twitter/model/dms/eu;-><init>()V

    .line 182
    invoke-virtual {v1, v9}, Lcom/twitter/model/dms/eu;->a(Z)Lcom/twitter/model/dms/eu;

    move-result-object v1

    iget-object v5, v0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;->f:Ljava/util/List;

    .line 183
    invoke-static {v5}, Lcom/twitter/model/dms/cq;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/eu;->a(Ljava/util/List;)Lcom/twitter/model/dms/cs;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/eu;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;->a:J

    .line 184
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/eu;->b(J)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/cs;

    iget-object v5, v0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;->c:Ljava/lang/String;

    .line 185
    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/cs;->a(Ljava/lang/String;)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/cs;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;->b:J

    .line 186
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/cs;->c(J)Lcom/twitter/model/dms/h;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/cs;

    .line 187
    invoke-virtual {v0}, Lcom/twitter/model/dms/cs;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/g;

    move-object v1, v0

    move-object v0, v2

    .line 188
    goto/16 :goto_1

    :cond_e
    const-string/jumbo v0, "message_unmark_as_spam"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 189
    const-class v0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;

    .line 190
    invoke-static {p1, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;

    .line 191
    new-instance v1, Lcom/twitter/model/dms/eu;

    invoke-direct {v1}, Lcom/twitter/model/dms/eu;-><init>()V

    .line 192
    invoke-virtual {v1, v8}, Lcom/twitter/model/dms/eu;->a(Z)Lcom/twitter/model/dms/eu;

    move-result-object v1

    iget-object v5, v0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;->f:Ljava/util/List;

    .line 193
    invoke-static {v5}, Lcom/twitter/model/dms/cq;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/eu;->a(Ljava/util/List;)Lcom/twitter/model/dms/cs;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/eu;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;->a:J

    .line 194
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/eu;->b(J)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/cs;

    iget-object v5, v0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;->c:Ljava/lang/String;

    .line 195
    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/cs;->a(Ljava/lang/String;)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/cs;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;->b:J

    .line 196
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/cs;->c(J)Lcom/twitter/model/dms/h;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/cs;

    .line 197
    invoke-virtual {v0}, Lcom/twitter/model/dms/cs;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/g;

    move-object v1, v0

    move-object v0, v2

    .line 198
    goto/16 :goto_1

    :cond_f
    const-string/jumbo v0, "cs_feedback_submitted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz v3, :cond_10

    .line 199
    const-class v0, Lcom/twitter/model/json/dms/JsonCSFeedbackSubmittedEntry;

    .line 200
    invoke-static {p1, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/dms/JsonCSFeedbackSubmittedEntry;

    .line 201
    if-eqz v0, :cond_14

    .line 202
    new-instance v1, Lcom/twitter/model/dms/ab;

    invoke-direct {v1}, Lcom/twitter/model/dms/ab;-><init>()V

    new-instance v5, Lcom/twitter/model/dms/ae;

    invoke-direct {v5}, Lcom/twitter/model/dms/ae;-><init>()V

    iget-object v6, v0, Lcom/twitter/model/json/dms/JsonCSFeedbackSubmittedEntry;->a:Ljava/lang/String;

    .line 204
    invoke-virtual {v5, v6}, Lcom/twitter/model/dms/ae;->a(Ljava/lang/String;)Lcom/twitter/model/dms/ae;

    move-result-object v5

    iget-object v6, v0, Lcom/twitter/model/json/dms/JsonCSFeedbackSubmittedEntry;->b:Ljava/lang/Integer;

    .line 205
    invoke-virtual {v5, v6}, Lcom/twitter/model/dms/ae;->a(Ljava/lang/Integer;)Lcom/twitter/model/dms/ae;

    move-result-object v5

    .line 206
    invoke-virtual {v5}, Lcom/twitter/model/dms/ae;->q()Ljava/lang/Object;

    move-result-object v5

    .line 203
    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/ab;->a(Ljava/lang/Object;)Lcom/twitter/model/dms/d;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/ab;

    iget-object v5, v0, Lcom/twitter/model/json/dms/JsonCSFeedbackSubmittedEntry;->c:Ljava/lang/String;

    .line 207
    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/ab;->b(Ljava/lang/String;)Lcom/twitter/model/dms/ab;

    move-result-object v1

    iget-boolean v5, v0, Lcom/twitter/model/json/dms/JsonCSFeedbackSubmittedEntry;->d:Z

    .line 208
    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/ab;->a(Z)Lcom/twitter/model/dms/d;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/ab;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonCSFeedbackSubmittedEntry;->e:J

    .line 209
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/ab;->b(J)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/ab;

    iget-object v5, v0, Lcom/twitter/model/json/dms/JsonCSFeedbackSubmittedEntry;->f:Ljava/lang/String;

    .line 210
    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/ab;->a(Ljava/lang/String;)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/ab;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonCSFeedbackSubmittedEntry;->g:J

    .line 211
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/ab;->c(J)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/ab;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonCSFeedbackSubmittedEntry;->h:J

    .line 212
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/ab;->a(J)Lcom/twitter/model/dms/d;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/ab;

    .line 213
    invoke-virtual {v0}, Lcom/twitter/model/dms/ab;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/g;

    :goto_5
    move-object v1, v0

    move-object v0, v2

    .line 215
    goto/16 :goto_1

    :cond_10
    const-string/jumbo v0, "cs_feedback_dismissed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz v4, :cond_11

    .line 216
    const-class v0, Lcom/twitter/model/json/dms/JsonCSFeedbackDismissedEntry;

    .line 217
    invoke-static {p1, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/dms/JsonCSFeedbackDismissedEntry;

    .line 218
    if-eqz v0, :cond_13

    .line 219
    new-instance v1, Lcom/twitter/model/dms/u;

    invoke-direct {v1}, Lcom/twitter/model/dms/u;-><init>()V

    new-instance v5, Lcom/twitter/model/dms/x;

    invoke-direct {v5}, Lcom/twitter/model/dms/x;-><init>()V

    iget-object v6, v0, Lcom/twitter/model/json/dms/JsonCSFeedbackDismissedEntry;->a:Ljava/lang/String;

    .line 221
    invoke-virtual {v5, v6}, Lcom/twitter/model/dms/x;->a(Ljava/lang/String;)Lcom/twitter/model/dms/x;

    move-result-object v5

    .line 222
    invoke-virtual {v5}, Lcom/twitter/model/dms/x;->q()Ljava/lang/Object;

    move-result-object v5

    .line 220
    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/u;->a(Ljava/lang/Object;)Lcom/twitter/model/dms/d;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/u;

    iget-boolean v5, v0, Lcom/twitter/model/json/dms/JsonCSFeedbackDismissedEntry;->d:Z

    .line 223
    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/u;->a(Z)Lcom/twitter/model/dms/d;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/u;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonCSFeedbackDismissedEntry;->e:J

    .line 224
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/u;->b(J)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/u;

    iget-object v5, v0, Lcom/twitter/model/json/dms/JsonCSFeedbackDismissedEntry;->f:Ljava/lang/String;

    .line 225
    invoke-virtual {v1, v5}, Lcom/twitter/model/dms/u;->a(Ljava/lang/String;)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/u;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonCSFeedbackDismissedEntry;->g:J

    .line 226
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/u;->c(J)Lcom/twitter/model/dms/h;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/u;

    iget-wide v6, v0, Lcom/twitter/model/json/dms/JsonCSFeedbackDismissedEntry;->h:J

    .line 227
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/dms/u;->a(J)Lcom/twitter/model/dms/d;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/u;

    .line 228
    invoke-virtual {v0}, Lcom/twitter/model/dms/u;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/g;

    :goto_6
    move-object v1, v0

    move-object v0, v2

    .line 230
    goto/16 :goto_1

    .line 231
    :cond_11
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v0, v2

    .line 233
    goto/16 :goto_1

    .line 236
    :pswitch_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 240
    :pswitch_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v0, v2

    .line 241
    goto/16 :goto_1

    .line 250
    :cond_12
    return-object v1

    :cond_13
    move-object v0, v1

    goto :goto_6

    :cond_14
    move-object v0, v1

    goto :goto_5

    :cond_15
    move-object v0, v1

    goto/16 :goto_4

    :cond_16
    move-object v0, v1

    goto/16 :goto_3

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public synthetic parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/twitter/model/json/dms/f;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/dms/g;

    move-result-object v0

    return-object v0
.end method
