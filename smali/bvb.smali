.class public Lbvb;
.super Lcom/twitter/library/api/af;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/api/af",
        "<",
        "Lcom/twitter/library/api/as;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/twitter/model/core/TwitterUser;

.field private final c:Lcss;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/core/TwitterUser;Lcss;)V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/twitter/library/service/ab;

    invoke-direct {v0, p2}, Lcom/twitter/library/service/ab;-><init>(Lcom/twitter/library/client/Session;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lbvb;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Lcom/twitter/model/core/TwitterUser;Lcss;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Lcom/twitter/model/core/TwitterUser;Lcss;)V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lbvb;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/api/af;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/service/ab;)V

    .line 64
    iput-object p3, p0, Lbvb;->b:Lcom/twitter/model/core/TwitterUser;

    .line 65
    iput-object p4, p0, Lbvb;->c:Lcss;

    .line 66
    new-instance v0, Lcom/twitter/library/service/t;

    invoke-direct {v0}, Lcom/twitter/library/service/t;-><init>()V

    invoke-virtual {p0, v0}, Lbvb;->a(Lcom/twitter/library/service/f;)V

    .line 67
    return-void
.end method

.method private a(Lcom/twitter/library/provider/dm;Lcom/twitter/library/provider/b;JJ)V
    .locals 7

    .prologue
    .line 157
    invoke-static {}, Lcba;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const/16 v1, 0x2b

    move-object v0, p1

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/library/provider/dm;->a(IJJLcom/twitter/library/provider/b;)V

    .line 162
    :goto_0
    const/4 v0, 0x1

    iget-object v1, p0, Lbvb;->b:Lcom/twitter/model/core/TwitterUser;

    iget-object v1, v1, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/library/provider/dm;->a(ILjava/lang/String;)I

    .line 163
    return-void

    .line 160
    :cond_0
    const/16 v1, 0x10

    move-object v0, p1

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/library/provider/dm;->a(IJJLcom/twitter/library/provider/b;)V

    goto :goto_0
.end method

.method private a(Lcom/twitter/library/provider/dm;Lcom/twitter/library/provider/b;JJZ)V
    .locals 11

    .prologue
    .line 128
    invoke-static {}, Lcba;->a()Z

    move-result v0

    .line 129
    if-eqz v0, :cond_0

    const/16 v10, 0x2b

    .line 131
    :goto_0
    const/16 v9, 0x10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lbvb;->a(Lcom/twitter/library/provider/dm;Lcom/twitter/library/provider/b;JJZII)V

    .line 133
    return-void

    .line 129
    :cond_0
    const/16 v10, 0x10

    goto :goto_0
.end method

.method private a(Lcom/twitter/library/provider/dm;Lcom/twitter/library/provider/b;JJZII)V
    .locals 13

    .prologue
    .line 146
    if-eqz p7, :cond_0

    .line 147
    iget-object v3, p0, Lbvb;->b:Lcom/twitter/model/core/TwitterUser;

    invoke-static {v3}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 148
    move-wide/from16 v0, p5

    move/from16 v2, p8

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/twitter/library/provider/dm;->a(JILcom/twitter/library/provider/b;)V

    .line 149
    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    move-object v3, p1

    move-wide/from16 v5, p3

    move/from16 v7, p9

    move-object v11, p2

    invoke-virtual/range {v3 .. v11}, Lcom/twitter/library/provider/dm;->a(Ljava/util/Collection;JIJLjava/lang/String;Lcom/twitter/library/provider/b;)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    move-wide/from16 v0, p5

    move/from16 v2, p8

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/twitter/library/provider/dm;->b(JILcom/twitter/library/provider/b;)V

    goto :goto_0
.end method

.method private a(Lcom/twitter/library/service/e;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0, p3}, Lbvb;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0, p3}, Lbvb;->d(I)Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    .line 112
    :cond_0
    return-void
.end method

.method private b(Lcom/twitter/library/provider/dm;Lcom/twitter/library/provider/b;JJZ)V
    .locals 11

    .prologue
    .line 137
    invoke-static {}, Lcba;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const/16 v9, 0x800

    const/16 v10, 0x2b

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lbvb;->a(Lcom/twitter/library/provider/dm;Lcom/twitter/library/provider/b;JJZII)V

    .line 141
    :cond_0
    return-void
.end method

.method private c(I)Z
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lbvb;->g:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(I)Z
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lbvb;->h:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lbvb;
    .locals 2

    .prologue
    .line 273
    iget v0, p0, Lbvb;->g:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lbvb;->g:I

    .line 274
    return-object p0
.end method

.method public a(IZ)Lbvb;
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 249
    invoke-static {}, Lcba;->a()Z

    move-result v0

    .line 250
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 251
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    .line 252
    invoke-virtual {p0, v3, v1}, Lbvb;->a(IZ)Lbvb;

    .line 253
    invoke-virtual {p0, v4}, Lbvb;->a(I)Lbvb;

    .line 263
    :cond_0
    :goto_0
    iget v0, p0, Lbvb;->g:I

    or-int/2addr v0, p1

    iput v0, p0, Lbvb;->g:I

    .line 264
    if-eqz p2, :cond_3

    .line 265
    iget v0, p0, Lbvb;->h:I

    or-int/2addr v0, p1

    iput v0, p0, Lbvb;->h:I

    .line 269
    :goto_1
    return-object p0

    .line 254
    :cond_1
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_2

    .line 255
    invoke-virtual {p0, v2, v1}, Lbvb;->a(IZ)Lbvb;

    .line 256
    invoke-virtual {p0, v4}, Lbvb;->a(I)Lbvb;

    goto :goto_0

    .line 257
    :cond_2
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0, v2}, Lbvb;->a(I)Lbvb;

    .line 259
    invoke-virtual {p0, v3}, Lbvb;->a(I)Lbvb;

    goto :goto_0

    .line 267
    :cond_3
    iget v0, p0, Lbvb;->h:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lbvb;->h:I

    goto :goto_1
.end method

.method protected a()Lcom/twitter/library/service/d;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 77
    invoke-virtual {p0}, Lbvb;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    sget-object v1, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->b:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    .line 78
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a(Lcom/twitter/internal/network/HttpOperation$RequestMethod;)Lcom/twitter/library/service/e;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "friendships"

    aput-object v3, v1, v2

    const-string/jumbo v2, "update"

    aput-object v2, v1, v4

    .line 79
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 80
    const-string/jumbo v1, "user_id"

    iget-object v2, p0, Lbvb;->b:Lcom/twitter/model/core/TwitterUser;

    iget-wide v2, v2, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    .line 81
    const-string/jumbo v1, "device"

    invoke-direct {p0, v0, v1, v4}, Lbvb;->a(Lcom/twitter/library/service/e;Ljava/lang/String;I)V

    .line 82
    const-string/jumbo v1, "live"

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lbvb;->a(Lcom/twitter/library/service/e;Ljava/lang/String;I)V

    .line 83
    const-string/jumbo v1, "lifeline"

    invoke-direct {p0, v0, v1, v5}, Lbvb;->a(Lcom/twitter/library/service/e;Ljava/lang/String;I)V

    .line 84
    const-string/jumbo v1, "retweets"

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lbvb;->a(Lcom/twitter/library/service/e;Ljava/lang/String;I)V

    .line 85
    const-string/jumbo v1, "unsubscribe"

    const/16 v2, 0x10

    invoke-direct {p0, v0, v1, v2}, Lbvb;->a(Lcom/twitter/library/service/e;Ljava/lang/String;I)V

    .line 87
    iget-object v1, p0, Lbvb;->c:Lcss;

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lbvb;->c:Lcss;

    iget-object v1, v1, Lcss;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 89
    const-string/jumbo v1, "impression_id"

    iget-object v2, p0, Lbvb;->c:Lcss;

    iget-object v2, v2, Lcss;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 91
    :cond_0
    iget-object v1, p0, Lbvb;->c:Lcss;

    invoke-virtual {v1}, Lcss;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    const-string/jumbo v1, "earned"

    invoke-virtual {v0, v1, v4}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    .line 96
    :cond_1
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->a()Lcom/twitter/library/service/d;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/as;)V
    .locals 19

    .prologue
    .line 168
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/internal/network/HttpOperation;->j()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 169
    invoke-virtual/range {p0 .. p0}, Lbvb;->S()Lcom/twitter/library/provider/dm;

    move-result-object v4

    .line 170
    invoke-virtual/range {p0 .. p0}, Lbvb;->T()Lcom/twitter/library/provider/b;

    move-result-object v5

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lbvb;->b:Lcom/twitter/model/core/TwitterUser;

    iget-wide v8, v2, Lcom/twitter/model/core/TwitterUser;->c:J

    .line 172
    const/16 v2, 0x10

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lbvb;->c(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x10

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lbvb;->d(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    invoke-virtual/range {p0 .. p0}, Lbvb;->N()Lcom/twitter/library/service/ab;

    move-result-object v2

    .line 175
    iget-wide v6, v2, Lcom/twitter/library/service/ab;->c:J

    .line 177
    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lbvb;->a(Lcom/twitter/library/provider/dm;Lcom/twitter/library/provider/b;JJZ)V

    .line 178
    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lbvb;->b(Lcom/twitter/library/provider/dm;Lcom/twitter/library/provider/b;JJZ)V

    move-object/from16 v3, p0

    .line 179
    invoke-direct/range {v3 .. v9}, Lbvb;->a(Lcom/twitter/library/provider/dm;Lcom/twitter/library/provider/b;JJ)V

    .line 181
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lbvb;->c(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lbvb;->c(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 182
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lbvb;->N()Lcom/twitter/library/service/ab;

    move-result-object v2

    .line 183
    iget-wide v6, v2, Lcom/twitter/library/service/ab;->c:J

    .line 185
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lbvb;->d(I)Z

    move-result v10

    .line 186
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lbvb;->d(I)Z

    move-result v18

    move-object/from16 v3, p0

    .line 188
    invoke-direct/range {v3 .. v10}, Lbvb;->a(Lcom/twitter/library/provider/dm;Lcom/twitter/library/provider/b;JJZ)V

    move-object/from16 v11, p0

    move-object v12, v4

    move-object v13, v5

    move-wide v14, v6

    move-wide/from16 v16, v8

    .line 189
    invoke-direct/range {v11 .. v18}, Lbvb;->b(Lcom/twitter/library/provider/dm;Lcom/twitter/library/provider/b;JJZ)V

    .line 191
    if-nez v10, :cond_2

    if-eqz v18, :cond_7

    .line 193
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lbvb;->p:Landroid/content/Context;

    invoke-static {v2, v6, v7}, Lcom/twitter/library/platform/notifications/PushRegistration;->a(Landroid/content/Context;J)I

    move-result v2

    .line 194
    const/16 v3, 0x200

    invoke-static {v2, v3}, Lcso;->b(II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 195
    const/16 v2, 0x3e9

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/twitter/library/service/aa;->a(I)V

    .line 203
    :cond_3
    :goto_0
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lbvb;->c(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 204
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lbvb;->d(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 205
    const/16 v2, 0x100

    invoke-virtual {v4, v8, v9, v2, v5}, Lcom/twitter/library/provider/dm;->a(JILcom/twitter/library/provider/b;)V

    .line 210
    :cond_4
    :goto_1
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lbvb;->c(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 211
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lbvb;->d(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 212
    const/16 v2, 0x200

    invoke-virtual {v4, v8, v9, v2, v5}, Lcom/twitter/library/provider/dm;->a(JILcom/twitter/library/provider/b;)V

    .line 217
    :cond_5
    :goto_2
    invoke-virtual {v5}, Lcom/twitter/library/provider/b;->a()V

    .line 219
    :cond_6
    return-void

    .line 197
    :cond_7
    invoke-static {}, Lcba;->a()Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v3, p0

    .line 200
    invoke-direct/range {v3 .. v9}, Lbvb;->a(Lcom/twitter/library/provider/dm;Lcom/twitter/library/provider/b;JJ)V

    goto :goto_0

    .line 207
    :cond_8
    const/16 v2, 0x100

    invoke-virtual {v4, v8, v9, v2, v5}, Lcom/twitter/library/provider/dm;->b(JILcom/twitter/library/provider/b;)V

    goto :goto_1

    .line 214
    :cond_9
    const/16 v2, 0x200

    invoke-virtual {v4, v8, v9, v2, v5}, Lcom/twitter/library/provider/dm;->b(JILcom/twitter/library/provider/b;)V

    goto :goto_2
.end method

.method protected bridge synthetic a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 0

    .prologue
    .line 39
    check-cast p3, Lcom/twitter/library/api/as;

    invoke-virtual {p0, p1, p2, p3}, Lbvb;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/as;)V

    return-void
.end method

.method protected b()Lcom/twitter/library/api/as;
    .locals 1

    .prologue
    .line 223
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/twitter/library/api/as;->a(I)Lcom/twitter/library/api/as;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/twitter/library/service/aa;)Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lbvb;->b:Lcom/twitter/model/core/TwitterUser;

    if-eqz v0, :cond_0

    iget v0, p0, Lbvb;->g:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d(Lcom/twitter/internal/android/service/ab;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/android/service/ab",
            "<",
            "Lcom/twitter/library/service/aa;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 228
    invoke-super {p0, p1}, Lcom/twitter/library/api/af;->d(Lcom/twitter/internal/android/service/ab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    :goto_0
    return v1

    .line 232
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 241
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v2

    const/16 v3, 0x193

    if-eq v2, v3, :cond_1

    .line 242
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v0

    const/16 v2, 0x3e9

    if-ne v0, v2, :cond_2

    :cond_1
    move v0, v1

    :goto_1
    move v1, v0

    .line 241
    goto :goto_0

    .line 242
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string/jumbo v0, "app:twitter_service:follow:update"

    return-object v0
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lbvb;->b()Lcom/twitter/library/api/as;

    move-result-object v0

    return-object v0
.end method
