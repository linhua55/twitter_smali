.class public Lbui;
.super Lbky;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbky",
        "<",
        "Lcom/twitter/library/api/as;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:I

.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:I

.field private final k:Z

.field private final l:J

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/service/ab;JILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 56
    const-class v0, Lbui;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lbky;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/service/ab;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbui;->a:Ljava/util/List;

    .line 57
    iput-wide p3, p0, Lbui;->l:J

    .line 58
    iput p5, p0, Lbui;->h:I

    .line 59
    iput-object p6, p0, Lbui;->i:Ljava/lang/String;

    .line 60
    sparse-switch p5, :sswitch_data_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown user type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :sswitch_0
    const/4 v0, 0x2

    iput v0, p0, Lbui;->j:I

    .line 64
    iput-boolean v2, p0, Lbui;->k:Z

    .line 100
    :goto_0
    return-void

    .line 68
    :sswitch_1
    iput v2, p0, Lbui;->j:I

    .line 69
    iput-boolean v2, p0, Lbui;->k:Z

    goto :goto_0

    .line 73
    :sswitch_2
    const/16 v0, 0x11

    iput v0, p0, Lbui;->j:I

    .line 75
    iput-boolean v1, p0, Lbui;->k:Z

    goto :goto_0

    .line 79
    :sswitch_3
    const/16 v0, 0x811

    iput v0, p0, Lbui;->j:I

    .line 81
    iput-boolean v1, p0, Lbui;->k:Z

    goto :goto_0

    .line 86
    :sswitch_4
    const/4 v0, 0x4

    iput v0, p0, Lbui;->j:I

    .line 87
    iput-boolean v1, p0, Lbui;->k:Z

    goto :goto_0

    .line 92
    :sswitch_5
    const/16 v0, 0x2000

    iput v0, p0, Lbui;->j:I

    .line 93
    iput-boolean v1, p0, Lbui;->k:Z

    goto :goto_0

    .line 60
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x2 -> :sswitch_4
        0x10 -> :sswitch_2
        0x1a -> :sswitch_5
        0x1d -> :sswitch_0
        0x25 -> :sswitch_4
        0x26 -> :sswitch_5
        0x2b -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lbui;
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lbui;->m:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/as;)V
    .locals 16

    .prologue
    .line 183
    move-object/from16 v0, p0

    iget-object v13, v0, Lbui;->m:Ljava/lang/String;

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/internal/network/HttpOperation;->j()Z

    move-result v2

    if-nez v2, :cond_0

    .line 243
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/twitter/library/api/as;->b()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/twitter/library/api/aq;

    .line 188
    if-nez v8, :cond_1

    .line 189
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/twitter/library/service/aa;->a(I)V

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {v8}, Lcom/twitter/library/api/aq;->b()Ljava/util/List;

    move-result-object v14

    .line 193
    invoke-virtual/range {p0 .. p0}, Lbui;->N()Lcom/twitter/library/service/ab;

    move-result-object v2

    iget-wide v2, v2, Lcom/twitter/library/service/ab;->c:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lbui;->l:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    const/4 v2, 0x1

    move v10, v2

    .line 196
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lbui;->h:I

    sparse-switch v2, :sswitch_data_0

    .line 207
    const/4 v2, -0x1

    move v11, v2

    .line 212
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lbui;->k:Z

    if-eqz v2, :cond_5

    invoke-static {v13}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, -0x1

    if-eq v11, v2, :cond_5

    const/4 v2, 0x1

    move v12, v2

    .line 215
    :goto_3
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/twitter/model/core/TwitterUser;

    .line 217
    if-eqz v10, :cond_3

    .line 218
    iget v2, v9, Lcom/twitter/model/core/TwitterUser;->T:I

    move-object/from16 v0, p0

    iget v3, v0, Lbui;->j:I

    invoke-static {v2, v3}, Lcom/twitter/model/core/p;->a(II)I

    move-result v2

    iput v2, v9, Lcom/twitter/model/core/TwitterUser;->T:I

    .line 220
    :cond_3
    if-eqz v12, :cond_2

    iget-object v2, v9, Lcom/twitter/model/core/TwitterUser;->B:Lcss;

    if-eqz v2, :cond_2

    .line 223
    new-instance v2, Lcom/twitter/model/core/cq;

    invoke-direct {v2}, Lcom/twitter/model/core/cq;-><init>()V

    .line 224
    invoke-virtual {v2, v11}, Lcom/twitter/model/core/cq;->a(I)Lcom/twitter/model/core/cq;

    move-result-object v2

    .line 225
    invoke-virtual {v2, v13}, Lcom/twitter/model/core/cq;->a(Ljava/lang/String;)Lcom/twitter/model/core/cq;

    move-result-object v2

    .line 226
    invoke-virtual {v2}, Lcom/twitter/model/core/cq;->q()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/core/TwitterSocialProof;

    .line 227
    iget-object v2, v9, Lcom/twitter/model/core/TwitterUser;->S:Lcom/twitter/model/search/TwitterUserMetadata;

    if-nez v2, :cond_6

    .line 228
    new-instance v2, Lcom/twitter/model/search/TwitterUserMetadata;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/twitter/model/search/TwitterUserMetadata;-><init>(Lcom/twitter/model/core/TwitterSocialProof;Ljava/lang/String;Ljava/lang/String;ZLcom/twitter/model/core/bb;)V

    iput-object v2, v9, Lcom/twitter/model/core/TwitterUser;->S:Lcom/twitter/model/search/TwitterUserMetadata;

    goto :goto_4

    .line 193
    :cond_4
    const/4 v2, 0x0

    move v10, v2

    goto :goto_1

    .line 199
    :sswitch_0
    const/4 v2, 0x1

    move v11, v2

    .line 200
    goto :goto_2

    .line 203
    :sswitch_1
    const/16 v2, 0x28

    move v11, v2

    .line 204
    goto :goto_2

    .line 212
    :cond_5
    const/4 v2, 0x0

    move v12, v2

    goto :goto_3

    .line 230
    :cond_6
    new-instance v2, Lcom/twitter/model/search/TwitterUserMetadata;

    const/4 v4, 0x0

    iget-object v5, v9, Lcom/twitter/model/core/TwitterUser;->S:Lcom/twitter/model/search/TwitterUserMetadata;

    iget-object v5, v5, Lcom/twitter/model/search/TwitterUserMetadata;->d:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/twitter/model/search/TwitterUserMetadata;-><init>(Lcom/twitter/model/core/TwitterSocialProof;Ljava/lang/String;Ljava/lang/String;ZLcom/twitter/model/core/bb;)V

    iput-object v2, v9, Lcom/twitter/model/core/TwitterUser;->S:Lcom/twitter/model/search/TwitterUserMetadata;

    goto :goto_4

    .line 236
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lbui;->a:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 237
    invoke-virtual {v8}, Lcom/twitter/library/api/aq;->a()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lbui;->b:Ljava/lang/String;

    .line 239
    invoke-virtual/range {p0 .. p0}, Lbui;->T()Lcom/twitter/library/provider/b;

    move-result-object v12

    .line 240
    invoke-virtual/range {p0 .. p0}, Lbui;->S()Lcom/twitter/library/provider/dm;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lbui;->l:J

    move-object/from16 v0, p0

    iget v6, v0, Lbui;->h:I

    const-wide/16 v7, -0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lbui;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lbui;->b:Ljava/lang/String;

    const/4 v11, 0x1

    move-object v3, v14

    invoke-virtual/range {v2 .. v12}, Lcom/twitter/library/provider/dm;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;ZLcom/twitter/library/provider/b;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lbui;->c:I

    .line 242
    invoke-virtual {v12}, Lcom/twitter/library/provider/b;->a()V

    goto/16 :goto_0

    .line 196
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x1d -> :sswitch_0
    .end sparse-switch
.end method

.method protected bridge synthetic a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 0

    .prologue
    .line 38
    check-cast p3, Lcom/twitter/library/api/as;

    invoke-virtual {p0, p1, p2, p3}, Lbui;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/as;)V

    return-void
.end method

.method protected b()Lcom/twitter/library/service/e;
    .locals 9

    .prologue
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 110
    invoke-virtual {p0}, Lbui;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    .line 111
    iget-wide v2, p0, Lbui;->l:J

    .line 112
    iget v1, p0, Lbui;->h:I

    sparse-switch v1, :sswitch_data_0

    .line 163
    :goto_0
    iget-boolean v1, p0, Lbui;->k:Z

    if-eqz v1, :cond_0

    .line 164
    const-string/jumbo v1, "pc"

    invoke-virtual {v0, v1, v7}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    .line 166
    :cond_0
    const-string/jumbo v1, "include_user_entities"

    invoke-virtual {v0, v1, v7}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    move-result-object v1

    const-string/jumbo v4, "user_id"

    .line 167
    invoke-virtual {v1, v4, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    .line 169
    iget-object v1, p0, Lbui;->i:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 170
    const-string/jumbo v1, "cursor"

    iget-object v2, p0, Lbui;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 172
    :cond_1
    return-object v0

    .line 114
    :sswitch_0
    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "followers"

    aput-object v4, v1, v8

    const-string/jumbo v4, "list"

    aput-object v4, v1, v7

    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    goto :goto_0

    .line 118
    :sswitch_1
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v4, "followers"

    aput-object v4, v1, v8

    const-string/jumbo v4, "vit"

    aput-object v4, v1, v7

    const-string/jumbo v4, "list"

    aput-object v4, v1, v5

    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    goto :goto_0

    .line 122
    :sswitch_2
    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "friends"

    aput-object v4, v1, v8

    const-string/jumbo v4, "list"

    aput-object v4, v1, v7

    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    goto :goto_0

    .line 126
    :sswitch_3
    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "friends"

    aput-object v4, v1, v8

    const-string/jumbo v4, "list"

    aput-object v4, v1, v7

    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v1

    const-string/jumbo v4, "type"

    const-string/jumbo v5, "sms"

    .line 127
    invoke-virtual {v1, v4, v5}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    goto :goto_0

    .line 133
    :sswitch_4
    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "friends"

    aput-object v4, v1, v8

    const-string/jumbo v4, "list"

    aput-object v4, v1, v7

    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v1

    const-string/jumbo v4, "type"

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "sms"

    aput-object v6, v5, v8

    const-string/jumbo v6, "live"

    aput-object v6, v5, v7

    .line 134
    invoke-virtual {v1, v4, v5}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/twitter/library/service/e;

    goto/16 :goto_0

    .line 138
    :sswitch_5
    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "blocks"

    aput-object v4, v1, v8

    const-string/jumbo v4, "list"

    aput-object v4, v1, v7

    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v1

    const-string/jumbo v4, "skip_status"

    .line 139
    invoke-virtual {v1, v4, v7}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    goto/16 :goto_0

    .line 143
    :sswitch_6
    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "blocks"

    aput-object v4, v1, v8

    const-string/jumbo v4, "list"

    aput-object v4, v1, v7

    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v1

    const-string/jumbo v4, "skip_status"

    .line 144
    invoke-virtual {v1, v4, v7}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    move-result-object v1

    const-string/jumbo v4, "block_type"

    const-string/jumbo v5, "imported"

    .line 145
    invoke-virtual {v1, v4, v5}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    goto/16 :goto_0

    .line 149
    :sswitch_7
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v4, "mutes"

    aput-object v4, v1, v8

    const-string/jumbo v4, "users"

    aput-object v4, v1, v7

    const-string/jumbo v4, "list"

    aput-object v4, v1, v5

    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v1

    const-string/jumbo v4, "skip_status"

    .line 150
    invoke-virtual {v1, v4, v7}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    goto/16 :goto_0

    .line 154
    :sswitch_8
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v4, "mutes"

    aput-object v4, v1, v8

    const-string/jumbo v4, "users"

    aput-object v4, v1, v7

    const-string/jumbo v4, "list"

    aput-object v4, v1, v5

    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v1

    const-string/jumbo v4, "skip_status"

    .line 155
    invoke-virtual {v1, v4, v7}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    move-result-object v1

    const-string/jumbo v4, "mute_type"

    const-string/jumbo v5, "managed"

    .line 156
    invoke-virtual {v1, v4, v5}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    goto/16 :goto_0

    .line 112
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_0
        0x2 -> :sswitch_5
        0x10 -> :sswitch_3
        0x1a -> :sswitch_7
        0x1d -> :sswitch_1
        0x25 -> :sswitch_6
        0x26 -> :sswitch_8
        0x2b -> :sswitch_4
    .end sparse-switch
.end method

.method protected e()Lcom/twitter/library/api/as;
    .locals 1

    .prologue
    .line 177
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/twitter/library/api/as;->a(I)Lcom/twitter/library/api/as;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lbui;->e()Lcom/twitter/library/api/as;

    move-result-object v0

    return-object v0
.end method
