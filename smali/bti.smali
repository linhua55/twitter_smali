.class public Lbti;
.super Lcom/twitter/library/api/af;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/api/af",
        "<",
        "Lcom/twitter/library/api/t",
        "<",
        "Lcom/twitter/model/core/ct;",
        "Lcom/twitter/model/core/cj;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final b:J

.field private final c:J

.field private final g:Lcss;

.field private final h:Lcom/twitter/library/api/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/library/api/t",
            "<",
            "Lcom/twitter/model/core/ct;",
            "Lcom/twitter/model/core/cj;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/twitter/library/provider/dm;

.field private final j:Ljava/lang/String;

.field private k:Ljava/lang/Boolean;

.field private l:J

.field private m:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JJLcss;)V
    .locals 11

    .prologue
    .line 70
    new-instance v3, Lcom/twitter/library/service/ab;

    invoke-direct {v3, p2}, Lcom/twitter/library/service/ab;-><init>(Lcom/twitter/library/client/Session;)V

    const-class v0, Lcom/twitter/model/core/ct;

    .line 71
    invoke-static {v0}, Lcom/twitter/library/api/v;->a(Ljava/lang/Class;)Lcom/twitter/library/api/v;

    move-result-object v9

    .line 72
    invoke-virtual {p2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    .line 70
    invoke-direct/range {v1 .. v10}, Lbti;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;JJLcss;Lcom/twitter/library/api/t;Lcom/twitter/library/provider/dm;)V

    .line 73
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/twitter/library/service/ab;JJLcss;Lcom/twitter/library/api/t;Lcom/twitter/library/provider/dm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/library/service/ab;",
            "JJ",
            "Lcss;",
            "Lcom/twitter/library/api/t",
            "<",
            "Lcom/twitter/model/core/ct;",
            "Lcom/twitter/model/core/cj;",
            ">;",
            "Lcom/twitter/library/provider/dm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    const-class v0, Lbti;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/api/af;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/service/ab;)V

    .line 80
    iput-wide p3, p0, Lbti;->b:J

    .line 81
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_0

    :goto_0
    iput-wide p5, p0, Lbti;->c:J

    .line 82
    iput-object p7, p0, Lbti;->g:Lcss;

    .line 83
    iput-object p8, p0, Lbti;->h:Lcom/twitter/library/api/t;

    .line 84
    iput-object p9, p0, Lbti;->i:Lcom/twitter/library/provider/dm;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lbti;->k:Ljava/lang/Boolean;

    .line 86
    const-string/jumbo v1, "tweet_type"

    iget-object v0, p0, Lbti;->g:Lcss;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ad"

    :goto_1
    invoke-virtual {p0, v1, v0}, Lbti;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/twitter/library/service/t;

    invoke-direct {v0}, Lcom/twitter/library/service/t;-><init>()V

    invoke-virtual {p0, v0}, Lbti;->a(Lcom/twitter/library/service/f;)V

    .line 90
    invoke-static {p3, p4, p2}, Lbti;->a(JLcom/twitter/library/service/ab;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbti;->j:Ljava/lang/String;

    .line 91
    return-void

    :cond_0
    move-wide p5, p3

    .line 81
    goto :goto_0

    .line 86
    :cond_1
    const-string/jumbo v0, "organic"

    goto :goto_1
.end method

.method static synthetic a(Lbti;)Lcom/twitter/library/provider/b;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lbti;->T()Lcom/twitter/library/provider/b;

    move-result-object v0

    return-object v0
.end method

.method protected static a(JLcom/twitter/library/service/ab;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 253
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v1, "retweet_%d_%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p2, Lcom/twitter/library/service/ab;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lbti;)J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lbti;->b:J

    return-wide v0
.end method

.method static synthetic c(Lbti;)Lcom/twitter/library/provider/dm;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lbti;->i:Lcom/twitter/library/provider/dm;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Lbti;
    .locals 2

    .prologue
    .line 131
    iput-object p1, p0, Lbti;->k:Ljava/lang/Boolean;

    .line 132
    iget-object v0, p0, Lbti;->k:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 133
    const-string/jumbo v1, "has_media"

    iget-object v0, p0, Lbti;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "true"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lbti;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    return-object p0

    .line 133
    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method protected a()Lcom/twitter/library/service/d;
    .locals 6

    .prologue
    .line 96
    invoke-virtual {p0}, Lbti;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    sget-object v1, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->b:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    .line 97
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a(Lcom/twitter/internal/network/HttpOperation$RequestMethod;)Lcom/twitter/library/service/e;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "statuses"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "retweet"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lbti;->c:J

    .line 100
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "send_error_codes"

    const-string/jumbo v2, "true"

    .line 101
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "include_entities"

    const-string/jumbo v2, "true"

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "include_media_features"

    const-string/jumbo v2, "true"

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "earned_read"

    const-string/jumbo v2, "true"

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->b()Lcom/twitter/library/service/e;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->e()Lcom/twitter/library/service/e;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->d()Lcom/twitter/library/service/e;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->c()Lcom/twitter/library/service/e;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lbti;->g:Lcss;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbti;->g:Lcss;

    iget-object v1, v1, Lcss;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 111
    const-string/jumbo v1, "impression_id"

    iget-object v2, p0, Lbti;->g:Lcss;

    iget-object v2, v2, Lcss;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 112
    iget-object v1, p0, Lbti;->g:Lcss;

    invoke-virtual {v1}, Lcss;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const-string/jumbo v1, "earned"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 117
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->a()Lcom/twitter/library/service/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/internal/android/service/ab;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/android/service/ab",
            "<",
            "Lcom/twitter/library/service/aa;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 163
    invoke-super {p0, p1}, Lcom/twitter/library/api/af;->a(Lcom/twitter/internal/android/service/ab;)V

    .line 164
    invoke-virtual {p0}, Lbti;->N()Lcom/twitter/library/service/ab;

    move-result-object v0

    iget-wide v2, v0, Lcom/twitter/library/service/ab;->c:J

    .line 165
    invoke-virtual {p1}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 166
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    invoke-virtual {p0}, Lbti;->T()Lcom/twitter/library/provider/b;

    move-result-object v4

    .line 168
    iget-object v0, p0, Lbti;->h:Lcom/twitter/library/api/t;

    invoke-virtual {v0}, Lcom/twitter/library/api/t;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/ct;

    .line 169
    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {v0}, Lcom/twitter/model/core/ct;->g()Lcss;

    move-result-object v1

    if-nez v1, :cond_0

    .line 171
    iget-object v1, p0, Lbti;->g:Lcss;

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/ct;->a(Lcss;)Lcom/twitter/model/core/ct;

    .line 173
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/model/core/ct;->q()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/cs;

    .line 174
    iget-wide v8, v1, Lcom/twitter/model/core/cs;->b:J

    iput-wide v8, p0, Lbti;->l:J

    .line 175
    iget-object v0, p0, Lbti;->i:Lcom/twitter/library/provider/dm;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/library/provider/dm;->a(Lcom/twitter/model/core/cs;JLcom/twitter/library/provider/b;Lcom/twitter/model/drafts/d;Z)V

    .line 176
    invoke-virtual {v4}, Lcom/twitter/library/provider/b;->a()V

    .line 219
    :cond_1
    :goto_0
    return-void

    .line 180
    :cond_2
    iget-object v1, p0, Lbti;->h:Lcom/twitter/library/api/t;

    invoke-virtual {v1}, Lcom/twitter/library/api/t;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/cj;

    invoke-static {v1}, Lcom/twitter/model/core/cj;->a(Lcom/twitter/model/core/cj;)[I

    move-result-object v1

    iput-object v1, p0, Lbti;->m:[I

    .line 183
    iget-object v7, p0, Lbti;->m:[I

    array-length v9, v7

    move v5, v8

    move v1, v8

    move v4, v8

    :goto_1
    if-ge v5, v9, :cond_3

    aget v10, v7, v5

    .line 184
    sparse-switch v10, :sswitch_data_0

    .line 183
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :sswitch_0
    move v4, v6

    .line 188
    goto :goto_2

    :sswitch_1
    move v1, v6

    .line 192
    goto :goto_2

    .line 200
    :cond_3
    if-nez v4, :cond_4

    if-eqz v1, :cond_6

    .line 201
    :cond_4
    if-eqz v0, :cond_5

    .line 202
    invoke-virtual {v0, v6}, Lcom/twitter/library/service/aa;->a(Z)V

    .line 204
    :cond_5
    if-eqz v1, :cond_1

    iget-wide v0, p0, Lbti;->b:J

    iget-wide v2, p0, Lbti;->c:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbti;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    new-instance v1, Lbti;

    iget-object v2, p0, Lbti;->p:Landroid/content/Context;

    .line 208
    invoke-virtual {p0}, Lbti;->N()Lcom/twitter/library/service/ab;

    move-result-object v3

    iget-wide v4, p0, Lbti;->b:J

    iget-wide v6, p0, Lbti;->b:J

    iget-object v8, p0, Lbti;->g:Lcss;

    iget-object v9, p0, Lbti;->h:Lcom/twitter/library/api/t;

    iget-object v10, p0, Lbti;->i:Lcom/twitter/library/provider/dm;

    invoke-direct/range {v1 .. v10}, Lbti;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;JJLcss;Lcom/twitter/library/api/t;Lcom/twitter/library/provider/dm;)V

    iget-object v0, p0, Lbti;->k:Ljava/lang/Boolean;

    .line 209
    invoke-virtual {v1, v0}, Lbti;->a(Ljava/lang/Boolean;)Lbti;

    move-result-object v0

    .line 210
    invoke-virtual {p0, v0}, Lbti;->b(Lcom/twitter/internal/android/service/AsyncOperation;)V

    goto :goto_0

    .line 214
    :cond_6
    invoke-virtual {p0}, Lbti;->T()Lcom/twitter/library/provider/b;

    move-result-object v7

    .line 215
    iget-object v1, p0, Lbti;->i:Lcom/twitter/library/provider/dm;

    iget-wide v4, p0, Lbti;->b:J

    move v6, v8

    invoke-virtual/range {v1 .. v7}, Lcom/twitter/library/provider/dm;->a(JJZLcom/twitter/library/provider/b;)I

    .line 216
    invoke-virtual {v7}, Lcom/twitter/library/provider/b;->a()V

    goto :goto_0

    .line 184
    :sswitch_data_0
    .sparse-switch
        0x90 -> :sswitch_1
        0xbb -> :sswitch_0
        0x147 -> :sswitch_0
    .end sparse-switch
.end method

.method protected b()Lcom/twitter/library/api/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/library/api/t",
            "<",
            "Lcom/twitter/model/core/ct;",
            "Lcom/twitter/model/core/cj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lbti;->h:Lcom/twitter/library/api/t;

    return-object v0
.end method

.method public c(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 147
    if-eqz p1, :cond_0

    .line 148
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/twitter/internal/android/service/AsyncOperation;->cancel(Z)Z

    .line 150
    :cond_0
    new-instance v0, Lbtj;

    invoke-direct {v0, p0}, Lbtj;-><init>(Lbti;)V

    return-object v0
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

    .line 239
    invoke-super {p0, p1}, Lcom/twitter/library/api/af;->d(Lcom/twitter/internal/android/service/ab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    :goto_0
    return v1

    .line 243
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 249
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v2

    const/16 v3, 0x193

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v0

    const/16 v2, 0x194

    if-ne v0, v2, :cond_2

    :cond_1
    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string/jumbo v0, "app:twitter_service:retweet:create"

    return-object v0
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lbti;->b()Lcom/twitter/library/api/t;

    move-result-object v0

    return-object v0
.end method

.method public final g()[I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lbti;->m:[I

    return-object v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 230
    iget-wide v0, p0, Lbti;->b:J

    return-wide v0
.end method

.method protected o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lbti;->j:Ljava/lang/String;

    return-object v0
.end method

.method public s()J
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Lbti;->l:J

    return-wide v0
.end method
