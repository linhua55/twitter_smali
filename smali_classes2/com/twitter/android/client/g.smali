.class public Lcom/twitter/android/client/g;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/g;->a:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/twitter/android/client/g;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 329
    return-void
.end method

.method private varargs a(I[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/twitter/android/client/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/client/g;->a:Landroid/content/Context;

    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 325
    return-void
.end method

.method private a(Lbsb;Lcom/twitter/library/client/Session;)V
    .locals 4

    .prologue
    .line 314
    invoke-virtual {p1}, Lbsb;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p1}, Lbsb;->E()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lbsb;->H()I

    move-result v0

    if-lez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/twitter/android/client/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/client/cd;->a(Landroid/content/Context;)Lcom/twitter/android/client/cd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/twitter/android/client/cd;->a(Lcom/twitter/library/client/Session;Z)V

    .line 320
    :cond_0
    return-void
.end method

.method private a(Lbtz;Landroid/content/Context;Lcom/twitter/library/client/Session;)V
    .locals 5

    .prologue
    const v4, 0x7f0a0949

    const/high16 v3, 0x10000000

    .line 265
    invoke-virtual {p1}, Lbtz;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v0

    .line 266
    invoke-virtual {p1}, Lbtz;->g()[I

    move-result-object v1

    .line 267
    const/16 v2, 0x193

    if-ne v0, v2, :cond_a

    .line 268
    const/16 v0, 0xe2

    invoke-static {v1, v0}, Lcom/twitter/util/collection/CollectionUtils;->a([II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/DialogActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "blocked_spammer_follow"

    .line 271
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 272
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 269
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    const/16 v0, 0xe1

    invoke-static {v1, v0}, Lcom/twitter/util/collection/CollectionUtils;->a([II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/DialogActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "blocked_automated_spammer"

    .line 276
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 277
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 274
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 278
    :cond_2
    const/16 v0, 0xa2

    invoke-static {v1, v0}, Lcom/twitter/util/collection/CollectionUtils;->a([II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    const v0, 0x7f0a094a

    invoke-direct {p0, v0}, Lcom/twitter/android/client/g;->a(I)V

    goto :goto_0

    .line 280
    :cond_3
    const/16 v0, 0x158

    invoke-static {v1, v0}, Lcom/twitter/util/collection/CollectionUtils;->a([II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 281
    invoke-static {p2}, Lcom/twitter/android/dialog/RateLimitDialogFragmentActivity;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 282
    :cond_4
    const/16 v0, 0xa1

    invoke-static {v1, v0}, Lcom/twitter/util/collection/CollectionUtils;->a([II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 283
    invoke-static {p2}, Lcom/twitter/android/dialog/FollowingExceededDialogFragmentActivity;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 284
    :cond_5
    const/16 v0, 0xa0

    invoke-static {v1, v0}, Lcom/twitter/util/collection/CollectionUtils;->a([II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 285
    const v0, 0x7f0a0948

    invoke-direct {p0, v0}, Lcom/twitter/android/client/g;->a(I)V

    goto :goto_0

    .line 286
    :cond_6
    const/16 v0, 0xfa

    invoke-static {v1, v0}, Lcom/twitter/util/collection/CollectionUtils;->a([II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 287
    iget-object v0, p0, Lcom/twitter/android/client/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/client/bz;->a(Landroid/content/Context;)Lcom/twitter/android/client/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/bz;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 288
    const v0, 0x7f0a005e

    invoke-direct {p0, v0}, Lcom/twitter/android/client/g;->a(I)V

    goto :goto_0

    .line 290
    :cond_7
    invoke-virtual {p3}, Lcom/twitter/library/client/Session;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 292
    const-string/jumbo v1, "user_id"

    invoke-virtual {p1}, Lbtz;->t()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 294
    invoke-virtual {p1}, Lbtz;->u()Lcss;

    move-result-object v1

    .line 295
    if-eqz v1, :cond_8

    .line 296
    const-string/jumbo v2, "impression_id"

    iget-object v3, v1, Lcss;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string/jumbo v2, "earned"

    invoke-virtual {v1}, Lcss;->c()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 299
    :cond_8
    const-string/jumbo v1, "age_before_timestamp"

    invoke-virtual {p1}, Lbtz;->h()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 300
    invoke-static {p2}, Lcom/twitter/android/client/y;->a(Landroid/content/Context;)Lcom/twitter/android/client/y;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/twitter/android/client/y;->a(Landroid/os/Bundle;Lcom/twitter/library/client/Session;)V

    goto/16 :goto_0

    .line 304
    :cond_9
    invoke-direct {p0, v4}, Lcom/twitter/android/client/g;->a(I)V

    .line 305
    iget-object v0, p0, Lcom/twitter/android/client/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/client/bz;->a(Landroid/content/Context;)Lcom/twitter/android/client/bz;

    move-result-object v0

    .line 306
    invoke-virtual {v0, v1}, Lcom/twitter/android/client/bz;->a([I)V

    goto/16 :goto_0

    .line 309
    :cond_a
    invoke-direct {p0, v4}, Lcom/twitter/android/client/g;->a(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 49
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/android/client/g;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const v8, 0x7f0a00b3

    const/4 v7, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 94
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    .line 95
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->N()Lcom/twitter/library/service/ab;

    move-result-object v2

    .line 96
    if-nez v2, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v2, v2, Lcom/twitter/library/service/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/twitter/library/client/bk;->c(Ljava/lang/String;)Lcom/twitter/library/client/Session;

    move-result-object v5

    .line 100
    if-eqz v5, :cond_0

    .line 103
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 110
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/twitter/library/network/at;->a(Lcom/twitter/library/service/aa;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    iget-object v2, p0, Lcom/twitter/android/client/g;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/twitter/android/client/bz;->a(Landroid/content/Context;)Lcom/twitter/android/client/bz;

    move-result-object v2

    .line 112
    invoke-virtual {v2, v5, v0}, Lcom/twitter/android/client/bz;->a(Lcom/twitter/library/client/Session;Lcom/twitter/library/service/aa;)V

    move v2, v3

    .line 118
    :goto_1
    instance-of v6, p1, Lbsb;

    if-eqz v6, :cond_3

    .line 119
    check-cast p1, Lbsb;

    invoke-direct {p0, p1, v5}, Lcom/twitter/android/client/g;->a(Lbsb;Lcom/twitter/library/client/Session;)V

    goto :goto_0

    :cond_2
    move v2, v4

    .line 115
    goto :goto_1

    .line 120
    :cond_3
    instance-of v6, p1, Lbre;

    if-eqz v6, :cond_5

    .line 121
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 122
    const v1, 0x7f0a058a

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/twitter/library/service/aa;->c:Landroid/os/Bundle;

    const-string/jumbo v3, "muted_username"

    .line 123
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    .line 122
    invoke-direct {p0, v1, v2}, Lcom/twitter/android/client/g;->a(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 124
    :cond_4
    if-nez v2, :cond_0

    .line 125
    const v0, 0x7f0a0585

    invoke-direct {p0, v0}, Lcom/twitter/android/client/g;->a(I)V

    goto :goto_0

    .line 127
    :cond_5
    instance-of v6, p1, Lbri;

    if-eqz v6, :cond_7

    .line 128
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 129
    const v1, 0x7f0a0925

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/twitter/library/service/aa;->c:Landroid/os/Bundle;

    const-string/jumbo v3, "muted_username"

    .line 130
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    .line 129
    invoke-direct {p0, v1, v2}, Lcom/twitter/android/client/g;->a(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 131
    :cond_6
    if-nez v2, :cond_0

    .line 132
    const v0, 0x7f0a0924

    invoke-direct {p0, v0}, Lcom/twitter/android/client/g;->a(I)V

    goto/16 :goto_0

    .line 134
    :cond_7
    instance-of v6, p1, Lbrc;

    if-eqz v6, :cond_d

    .line 135
    check-cast p1, Lbrc;

    .line 136
    invoke-virtual {p1}, Lbrc;->M()I

    move-result v1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_9

    .line 137
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 138
    const v0, 0x7f0a0919

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p1, Lbrc;->i:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v2}, Lcom/twitter/model/core/TwitterUser;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/client/g;->a(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 139
    :cond_8
    if-nez v2, :cond_0

    .line 140
    const v0, 0x7f0a0973

    invoke-direct {p0, v0}, Lcom/twitter/android/client/g;->a(I)V

    .line 141
    invoke-virtual {p1}, Lbrc;->N()Lcom/twitter/library/service/ab;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/library/service/ab;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/android/client/s;->a(Ljava/lang/String;)Lcom/twitter/android/client/q;

    move-result-object v0

    iget-wide v2, p1, Lbrc;->b:J

    .line 142
    invoke-virtual {v0, v2, v3, v7}, Lcom/twitter/android/client/q;->a(JI)V

    goto/16 :goto_0

    .line 144
    :cond_9
    invoke-virtual {p1}, Lbrc;->M()I

    move-result v1

    if-ne v1, v3, :cond_b

    .line 145
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 146
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p1, Lbrc;->h:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v1}, Lcom/twitter/model/core/TwitterUser;->d()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-direct {p0, v8, v0}, Lcom/twitter/android/client/g;->a(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 147
    :cond_a
    if-nez v2, :cond_0

    .line 148
    const v0, 0x7f0a0943

    invoke-direct {p0, v0}, Lcom/twitter/android/client/g;->a(I)V

    .line 149
    invoke-virtual {p1}, Lbrc;->N()Lcom/twitter/library/service/ab;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/library/service/ab;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/android/client/s;->a(Ljava/lang/String;)Lcom/twitter/android/client/q;

    move-result-object v0

    iget-wide v2, p1, Lbrc;->b:J

    .line 150
    invoke-virtual {v0, v2, v3, v7}, Lcom/twitter/android/client/q;->b(JI)V

    goto/16 :goto_0

    .line 152
    :cond_b
    invoke-virtual {p1}, Lbrc;->M()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    .line 153
    iget-boolean v1, p1, Lbrc;->g:Z

    .line 154
    iget-object v5, p1, Lbrc;->j:Ljava/lang/String;

    .line 155
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 156
    const-string/jumbo v0, "abuse"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    if-eqz v1, :cond_0

    .line 158
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p1, Lbrc;->h:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v1}, Lcom/twitter/model/core/TwitterUser;->d()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-direct {p0, v8, v0}, Lcom/twitter/android/client/g;->a(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 161
    :cond_c
    if-nez v2, :cond_0

    .line 162
    const v0, 0x7f0a0969

    invoke-direct {p0, v0}, Lcom/twitter/android/client/g;->a(I)V

    goto/16 :goto_0

    .line 165
    :cond_d
    instance-of v6, p1, Lbtz;

    if-eqz v6, :cond_f

    move-object v1, p1

    .line 166
    check-cast v1, Lbtz;

    .line 168
    iget-object v6, p0, Lcom/twitter/android/client/g;->a:Landroid/content/Context;

    .line 169
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 170
    invoke-virtual {v1}, Lbtz;->s()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lbtz;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const v0, 0x7f0a094b

    new-array v2, v3, [Ljava/lang/Object;

    .line 173
    invoke-virtual {v1}, Lbtz;->s()Lcom/twitter/model/core/TwitterUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/model/core/TwitterUser;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    .line 172
    invoke-direct {p0, v0, v2}, Lcom/twitter/android/client/g;->a(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 177
    :cond_e
    invoke-static {v5}, Lcom/twitter/android/client/s;->a(Lcom/twitter/library/client/Session;)Lcom/twitter/android/client/q;

    move-result-object v0

    .line 178
    invoke-virtual {v1}, Lbtz;->t()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9, v3}, Lcom/twitter/android/client/q;->b(JI)V

    .line 180
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 181
    invoke-direct {p0, v1, v6, v5}, Lcom/twitter/android/client/g;->a(Lbtz;Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    goto/16 :goto_0

    .line 184
    :cond_f
    instance-of v6, p1, Lbvg;

    if-eqz v6, :cond_10

    .line 185
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    check-cast p1, Lbvg;

    .line 187
    iget-object v0, p1, Lbvg;->a:Lcom/twitter/model/core/TwitterUser;

    .line 188
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v2

    invoke-virtual {v5}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 189
    invoke-virtual {v5, v0}, Lcom/twitter/library/client/Session;->a(Lcom/twitter/model/core/TwitterUser;)V

    .line 190
    invoke-static {v0}, Lcom/twitter/library/util/b;->a(Lcom/twitter/model/core/TwitterUser;)V

    goto/16 :goto_0

    .line 193
    :cond_10
    instance-of v6, p1, Lbuc;

    if-eqz v6, :cond_11

    .line 194
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-static {v5}, Lcom/twitter/android/client/s;->a(Lcom/twitter/library/client/Session;)Lcom/twitter/android/client/q;

    move-result-object v0

    check-cast p1, Lbuc;

    .line 196
    invoke-virtual {p1}, Lbuc;->g()J

    move-result-wide v4

    .line 195
    invoke-virtual {v0, v4, v5, v3}, Lcom/twitter/android/client/q;->a(JI)V

    goto/16 :goto_0

    .line 198
    :cond_11
    instance-of v6, p1, Lbuk;

    if-eqz v6, :cond_12

    .line 199
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    check-cast p1, Lbuk;

    .line 201
    iget-object v0, p1, Lbuk;->b:Lcom/twitter/model/profile/ExtendedProfile;

    .line 202
    invoke-virtual {v5}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v1

    .line 203
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/twitter/model/profile/ExtendedProfile;->b:J

    iget-wide v6, v1, Lcom/twitter/model/core/TwitterUser;->c:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    .line 204
    new-instance v2, Lcom/twitter/model/core/cv;

    invoke-direct {v2, v1}, Lcom/twitter/model/core/cv;-><init>(Lcom/twitter/model/core/TwitterUser;)V

    .line 205
    invoke-virtual {v2, v0}, Lcom/twitter/model/core/cv;->a(Lcom/twitter/model/profile/ExtendedProfile;)Lcom/twitter/model/core/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/core/cv;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 206
    invoke-virtual {v5, v0}, Lcom/twitter/library/client/Session;->a(Lcom/twitter/model/core/TwitterUser;)V

    .line 207
    invoke-static {v0}, Lcom/twitter/library/util/b;->a(Lcom/twitter/model/core/TwitterUser;)V

    goto/16 :goto_0

    .line 210
    :cond_12
    instance-of v6, p1, Lbti;

    if-eqz v6, :cond_14

    .line 211
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 213
    iget-object v0, p0, Lcom/twitter/android/client/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/client/cd;->a(Landroid/content/Context;)Lcom/twitter/android/client/cd;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Lcom/twitter/android/client/cd;->a(Lcom/twitter/library/client/Session;Z)V

    goto/16 :goto_0

    .line 214
    :cond_13
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_0

    if-nez v2, :cond_0

    .line 215
    iget-object v0, p0, Lcom/twitter/android/client/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/client/bz;->a(Landroid/content/Context;)Lcom/twitter/android/client/bz;

    move-result-object v0

    check-cast p1, Lbti;

    .line 217
    invoke-virtual {p1}, Lbti;->g()[I

    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Lcom/twitter/android/client/bz;->a([I)V

    goto/16 :goto_0

    .line 219
    :cond_14
    instance-of v6, p1, Lbtg;

    if-eqz v6, :cond_15

    .line 220
    check-cast p1, Lbtg;

    invoke-virtual {p1}, Lbtg;->e()J

    move-result-wide v2

    .line 221
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/twitter/android/client/g;->a:Landroid/content/Context;

    .line 224
    invoke-static {v0}, Lcom/twitter/android/client/cd;->a(Landroid/content/Context;)Lcom/twitter/android/client/cd;

    move-result-object v0

    .line 225
    invoke-virtual {v5}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/twitter/android/client/cd;->a(J)Lcom/twitter/android/client/WidgetControl;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/client/WidgetControl;->a(J)V

    goto/16 :goto_0

    .line 230
    :cond_15
    instance-of v6, p1, Lbrf;

    if-eqz v6, :cond_16

    .line 231
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 232
    iget-object v0, p0, Lcom/twitter/android/client/g;->a:Landroid/content/Context;

    const v1, 0x7f0a08f5

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 235
    :cond_16
    instance-of v2, p1, Lbub;

    if-eqz v2, :cond_17

    .line 236
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    invoke-static {v5}, Lcom/twitter/android/client/s;->a(Lcom/twitter/library/client/Session;)Lcom/twitter/android/client/q;

    move-result-object v0

    .line 239
    check-cast p1, Lbub;

    invoke-virtual {p1}, Lbub;->a()[J

    move-result-object v1

    .line 240
    array-length v2, v1

    :goto_2
    if-ge v4, v2, :cond_0

    aget-wide v6, v1, v4

    .line 241
    invoke-virtual {v0, v6, v7, v3}, Lcom/twitter/android/client/q;->b(JI)V

    .line 240
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 244
    :cond_17
    instance-of v2, p1, Lbkt;

    if-eqz v2, :cond_0

    .line 245
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    iget-object v0, v0, Lcom/twitter/library/service/aa;->c:Landroid/os/Bundle;

    const-string/jumbo v2, "extra_settings"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/ClientConfiguration;

    .line 249
    if-eqz v0, :cond_19

    iget-object v2, v0, Lcom/twitter/library/api/ClientConfiguration;->a:Lcom/twitter/model/client/UrlConfiguration;

    .line 251
    :goto_3
    if-eqz v2, :cond_18

    .line 252
    iget-object v3, p0, Lcom/twitter/android/client/g;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/twitter/android/client/by;->a(Landroid/content/Context;)Lcom/twitter/android/client/by;

    move-result-object v3

    .line 253
    invoke-virtual {v3, v2}, Lcom/twitter/android/client/by;->a(Lcom/twitter/model/client/UrlConfiguration;)V

    .line 255
    :cond_18
    if-eqz v0, :cond_1a

    iget-object v0, v0, Lcom/twitter/library/api/ClientConfiguration;->b:Lcom/twitter/library/api/al;

    .line 257
    :goto_4
    iget-object v1, p0, Lcom/twitter/android/client/g;->a:Landroid/content/Context;

    invoke-static {v1}, Lbki;->a(Landroid/content/Context;)Lbki;

    move-result-object v1

    .line 258
    invoke-virtual {v1, v0}, Lbki;->a(Lcom/twitter/library/api/al;)V

    goto/16 :goto_0

    :cond_19
    move-object v2, v1

    .line 249
    goto :goto_3

    :cond_1a
    move-object v0, v1

    .line 255
    goto :goto_4
.end method

.method public bridge synthetic b(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 49
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/android/client/g;->b(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public b(Lcom/twitter/library/service/x;)V
    .locals 7

    .prologue
    const/4 v4, 0x4

    const/4 v6, 0x1

    .line 58
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/service/x;)Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 60
    instance-of v1, p1, Lbrc;

    if-eqz v1, :cond_3

    .line 61
    check-cast p1, Lbrc;

    .line 62
    invoke-virtual {p1}, Lbrc;->M()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 63
    invoke-virtual {p1}, Lbrc;->N()Lcom/twitter/library/service/ab;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/library/service/ab;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/android/client/s;->a(Ljava/lang/String;)Lcom/twitter/android/client/q;

    move-result-object v0

    iget-wide v2, p1, Lbrc;->b:J

    .line 64
    invoke-virtual {v0, v2, v3, v4}, Lcom/twitter/android/client/q;->b(JI)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p1}, Lbrc;->M()I

    move-result v0

    if-eq v0, v6, :cond_2

    iget-boolean v0, p1, Lbrc;->g:Z

    if-eqz v0, :cond_0

    .line 67
    :cond_2
    invoke-virtual {p1}, Lbrc;->N()Lcom/twitter/library/service/ab;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/library/service/ab;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/android/client/s;->a(Ljava/lang/String;)Lcom/twitter/android/client/q;

    move-result-object v0

    iget-wide v2, p1, Lbrc;->b:J

    .line 68
    invoke-virtual {v0, v2, v3, v4}, Lcom/twitter/android/client/q;->a(JI)V

    goto :goto_0

    .line 70
    :cond_3
    instance-of v1, p1, Lbtz;

    if-eqz v1, :cond_4

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-static {v0}, Lcom/twitter/android/client/s;->a(Lcom/twitter/library/client/Session;)Lcom/twitter/android/client/q;

    move-result-object v0

    check-cast p1, Lbtz;

    .line 73
    invoke-virtual {p1}, Lbtz;->t()J

    move-result-wide v2

    .line 72
    invoke-virtual {v0, v2, v3, v6}, Lcom/twitter/android/client/q;->a(JI)V

    goto :goto_0

    .line 75
    :cond_4
    instance-of v1, p1, Lbuc;

    if-eqz v1, :cond_5

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-static {v0}, Lcom/twitter/android/client/s;->a(Lcom/twitter/library/client/Session;)Lcom/twitter/android/client/q;

    move-result-object v0

    check-cast p1, Lbuc;

    .line 78
    invoke-virtual {p1}, Lbuc;->g()J

    move-result-wide v2

    .line 77
    invoke-virtual {v0, v2, v3, v6}, Lcom/twitter/android/client/q;->b(JI)V

    goto :goto_0

    .line 80
    :cond_5
    instance-of v1, p1, Lbub;

    if-eqz v1, :cond_0

    .line 81
    if-eqz v0, :cond_0

    .line 83
    invoke-static {v0}, Lcom/twitter/android/client/s;->a(Lcom/twitter/library/client/Session;)Lcom/twitter/android/client/q;

    move-result-object v1

    .line 84
    check-cast p1, Lbub;

    invoke-virtual {p1}, Lbub;->a()[J

    move-result-object v2

    .line 85
    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    aget-wide v4, v2, v0

    .line 86
    invoke-virtual {v1, v4, v5, v6}, Lcom/twitter/android/client/q;->a(JI)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
