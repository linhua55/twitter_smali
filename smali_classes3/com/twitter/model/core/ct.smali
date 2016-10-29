.class public final Lcom/twitter/model/core/ct;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/core/cs;",
        ">;"
    }
.end annotation


# instance fields
.field A:Lcom/twitter/model/geo/TwitterPlace;

.field B:Lcom/twitter/model/core/cs;

.field C:J

.field D:Z

.field E:Lclw;

.field F:Lcom/twitter/model/search/m;

.field G:Lcom/twitter/model/core/cc;

.field H:Lcom/twitter/model/core/cf;

.field I:I

.field J:Z

.field a:J

.field b:Lcom/twitter/model/core/TwitterUser;

.field c:Lcom/twitter/model/core/TwitterUser;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Lcom/twitter/model/core/bm;

.field h:J

.field i:Ljava/lang/String;

.field j:J

.field k:J

.field l:Ljava/lang/String;

.field m:Z

.field n:J

.field o:Lcom/twitter/model/core/cs;

.field p:Z

.field q:I

.field r:I

.field s:J

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Z

.field w:Z

.field x:Z

.field y:Lcss;

.field z:Lcom/twitter/model/geo/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 237
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 198
    iput-wide v0, p0, Lcom/twitter/model/core/ct;->a:J

    .line 209
    iput-wide v0, p0, Lcom/twitter/model/core/ct;->j:J

    .line 210
    iput-wide v0, p0, Lcom/twitter/model/core/ct;->k:J

    .line 213
    iput-wide v0, p0, Lcom/twitter/model/core/ct;->n:J

    .line 218
    iput-wide v0, p0, Lcom/twitter/model/core/ct;->s:J

    .line 234
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/model/core/ct;->I:I

    .line 238
    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/core/cs;)V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 240
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 198
    iput-wide v0, p0, Lcom/twitter/model/core/ct;->a:J

    .line 209
    iput-wide v0, p0, Lcom/twitter/model/core/ct;->j:J

    .line 210
    iput-wide v0, p0, Lcom/twitter/model/core/ct;->k:J

    .line 213
    iput-wide v0, p0, Lcom/twitter/model/core/ct;->n:J

    .line 218
    iput-wide v0, p0, Lcom/twitter/model/core/ct;->s:J

    .line 234
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/model/core/ct;->I:I

    .line 241
    iget-wide v0, p1, Lcom/twitter/model/core/cs;->b:J

    iput-wide v0, p0, Lcom/twitter/model/core/ct;->a:J

    .line 242
    iget-object v0, p1, Lcom/twitter/model/core/cs;->E:Lcom/twitter/model/core/TwitterUser;

    iput-object v0, p0, Lcom/twitter/model/core/ct;->c:Lcom/twitter/model/core/TwitterUser;

    .line 243
    iget-object v0, p1, Lcom/twitter/model/core/cs;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/ct;->f:Ljava/lang/String;

    .line 244
    iget-object v0, p1, Lcom/twitter/model/core/cs;->e:Lcom/twitter/model/core/bm;

    iput-object v0, p0, Lcom/twitter/model/core/ct;->g:Lcom/twitter/model/core/bm;

    .line 245
    iget-wide v0, p1, Lcom/twitter/model/core/cs;->h:J

    iput-wide v0, p0, Lcom/twitter/model/core/ct;->h:J

    .line 246
    iget-object v0, p1, Lcom/twitter/model/core/cs;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/ct;->i:Ljava/lang/String;

    .line 247
    iget-wide v0, p1, Lcom/twitter/model/core/cs;->j:J

    iput-wide v0, p0, Lcom/twitter/model/core/ct;->j:J

    .line 248
    iget-wide v0, p1, Lcom/twitter/model/core/cs;->k:J

    iput-wide v0, p0, Lcom/twitter/model/core/ct;->k:J

    .line 249
    iget-object v0, p1, Lcom/twitter/model/core/cs;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/ct;->l:Ljava/lang/String;

    .line 250
    iget-boolean v0, p1, Lcom/twitter/model/core/cs;->m:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/ct;->m:Z

    .line 251
    iget-wide v0, p1, Lcom/twitter/model/core/cs;->n:J

    iput-wide v0, p0, Lcom/twitter/model/core/ct;->n:J

    .line 252
    iget-object v0, p1, Lcom/twitter/model/core/cs;->o:Lcom/twitter/model/core/cs;

    iput-object v0, p0, Lcom/twitter/model/core/ct;->o:Lcom/twitter/model/core/cs;

    .line 253
    iget-boolean v0, p1, Lcom/twitter/model/core/cs;->F:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/ct;->p:Z

    .line 254
    iget v0, p1, Lcom/twitter/model/core/cs;->p:I

    iput v0, p0, Lcom/twitter/model/core/ct;->q:I

    .line 255
    iget v0, p1, Lcom/twitter/model/core/cs;->G:I

    iput v0, p0, Lcom/twitter/model/core/ct;->r:I

    .line 256
    iget-wide v0, p1, Lcom/twitter/model/core/cs;->q:J

    iput-wide v0, p0, Lcom/twitter/model/core/ct;->s:J

    .line 257
    iget-object v0, p1, Lcom/twitter/model/core/cs;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/ct;->t:Ljava/lang/String;

    .line 258
    iget-object v0, p1, Lcom/twitter/model/core/cs;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/ct;->u:Ljava/lang/String;

    .line 259
    iget-boolean v0, p1, Lcom/twitter/model/core/cs;->s:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/ct;->v:Z

    .line 260
    iget-boolean v0, p1, Lcom/twitter/model/core/cs;->t:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/ct;->w:Z

    .line 261
    iget-boolean v0, p1, Lcom/twitter/model/core/cs;->u:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/ct;->x:Z

    .line 262
    iget-object v0, p1, Lcom/twitter/model/core/cs;->w:Lcss;

    iput-object v0, p0, Lcom/twitter/model/core/ct;->y:Lcss;

    .line 263
    iget-object v0, p1, Lcom/twitter/model/core/cs;->y:Lcom/twitter/model/geo/TwitterPlace;

    iput-object v0, p0, Lcom/twitter/model/core/ct;->A:Lcom/twitter/model/geo/TwitterPlace;

    .line 264
    iget-object v0, p1, Lcom/twitter/model/core/cs;->H:Lcom/twitter/model/core/cs;

    iput-object v0, p0, Lcom/twitter/model/core/ct;->B:Lcom/twitter/model/core/cs;

    .line 265
    iget-wide v0, p1, Lcom/twitter/model/core/cs;->I:J

    iput-wide v0, p0, Lcom/twitter/model/core/ct;->C:J

    .line 266
    iget-boolean v0, p1, Lcom/twitter/model/core/cs;->J:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/ct;->D:Z

    .line 267
    iget-object v0, p1, Lcom/twitter/model/core/cs;->z:Lclw;

    iput-object v0, p0, Lcom/twitter/model/core/ct;->E:Lclw;

    .line 268
    iget-object v0, p1, Lcom/twitter/model/core/cs;->K:Lcom/twitter/model/search/m;

    iput-object v0, p0, Lcom/twitter/model/core/ct;->F:Lcom/twitter/model/search/m;

    .line 269
    iget-object v0, p1, Lcom/twitter/model/core/cs;->A:Lcom/twitter/model/core/cc;

    iput-object v0, p0, Lcom/twitter/model/core/ct;->G:Lcom/twitter/model/core/cc;

    .line 270
    iget-object v0, p1, Lcom/twitter/model/core/cs;->B:Lcom/twitter/model/core/cf;

    iput-object v0, p0, Lcom/twitter/model/core/ct;->H:Lcom/twitter/model/core/cf;

    .line 271
    iget v0, p1, Lcom/twitter/model/core/cs;->C:I

    iput v0, p0, Lcom/twitter/model/core/ct;->I:I

    .line 272
    iget-boolean v0, p1, Lcom/twitter/model/core/cs;->D:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/ct;->J:Z

    .line 273
    return-void
.end method


# virtual methods
.method public a(I)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 445
    iput p1, p0, Lcom/twitter/model/core/ct;->q:I

    .line 446
    return-object p0
.end method

.method public a(J)Lcom/twitter/model/core/ct;
    .locals 1

    .prologue
    .line 281
    iput-wide p1, p0, Lcom/twitter/model/core/ct;->a:J

    .line 282
    return-object p0
.end method

.method public a(Lclw;)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/twitter/model/core/ct;->E:Lclw;

    .line 551
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/twitter/model/core/ct;->b:Lcom/twitter/model/core/TwitterUser;

    .line 295
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/bm;)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/twitter/model/core/ct;->g:Lcom/twitter/model/core/bm;

    .line 362
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/cc;)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/twitter/model/core/ct;->G:Lcom/twitter/model/core/cc;

    .line 568
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/cf;)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/twitter/model/core/ct;->H:Lcom/twitter/model/core/cf;

    .line 574
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/cs;)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/twitter/model/core/ct;->o:Lcom/twitter/model/core/cs;

    .line 434
    return-object p0
.end method

.method public a(Lcom/twitter/model/geo/TwitterPlace;)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/twitter/model/core/ct;->A:Lcom/twitter/model/geo/TwitterPlace;

    .line 511
    return-object p0
.end method

.method public a(Lcom/twitter/model/geo/d;)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/twitter/model/core/ct;->z:Lcom/twitter/model/geo/d;

    .line 505
    return-object p0
.end method

.method public a(Lcom/twitter/model/search/m;)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/twitter/model/core/ct;->F:Lcom/twitter/model/search/m;

    .line 562
    return-object p0
.end method

.method public a(Lcss;)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/twitter/model/core/ct;->y:Lcss;

    .line 499
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/twitter/model/core/ct;->d:Ljava/lang/String;

    .line 326
    return-object p0
.end method

.method public a(Z)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 415
    iput-boolean p1, p0, Lcom/twitter/model/core/ct;->m:Z

    .line 416
    return-object p0
.end method

.method protected aE_()Z
    .locals 4

    .prologue
    .line 596
    invoke-super {p0}, Lcom/twitter/util/object/h;->aE_()Z

    move-result v0

    if-nez v0, :cond_3

    .line 597
    iget-wide v0, p0, Lcom/twitter/model/core/ct;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 598
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Tried to build tweet with an invalid id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 605
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 607
    :goto_1
    return v0

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/twitter/model/core/ct;->c:Lcom/twitter/model/core/TwitterUser;

    if-nez v0, :cond_2

    .line 600
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Tried to build tweet with an invalid user."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 601
    :cond_2
    iget-object v0, p0, Lcom/twitter/model/core/ct;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/ct;->o:Lcom/twitter/model/core/cs;

    if-nez v0, :cond_0

    .line 602
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Tried to build a tweet that indicated it was a Retweet but did not contain a retweeted status."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 607
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public b(I)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 451
    iput p1, p0, Lcom/twitter/model/core/ct;->r:I

    .line 452
    return-object p0
.end method

.method public b(J)Lcom/twitter/model/core/ct;
    .locals 1

    .prologue
    .line 372
    iput-wide p1, p0, Lcom/twitter/model/core/ct;->h:J

    .line 373
    return-object p0
.end method

.method public b(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/twitter/model/core/ct;->c:Lcom/twitter/model/core/TwitterUser;

    .line 306
    return-object p0
.end method

.method public b(Lcom/twitter/model/core/cs;)Lcom/twitter/model/core/ct;
    .locals 2

    .prologue
    .line 516
    iput-object p1, p0, Lcom/twitter/model/core/ct;->B:Lcom/twitter/model/core/cs;

    .line 517
    if-eqz p1, :cond_0

    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/model/core/ct;->D:Z

    .line 519
    iget-wide v0, p1, Lcom/twitter/model/core/cs;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/twitter/model/core/ct;->g(J)Lcom/twitter/model/core/ct;

    .line 521
    :cond_0
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/twitter/model/core/ct;->e:Ljava/lang/String;

    .line 340
    return-object p0
.end method

.method public b(Z)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 439
    iput-boolean p1, p0, Lcom/twitter/model/core/ct;->p:Z

    .line 440
    return-object p0
.end method

.method public bq_()Z
    .locals 4

    .prologue
    .line 591
    iget-wide v0, p0, Lcom/twitter/model/core/ct;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/ct;->c:Lcom/twitter/model/core/TwitterUser;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/ct;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/ct;->o:Lcom/twitter/model/core/cs;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 579
    iput p1, p0, Lcom/twitter/model/core/ct;->I:I

    .line 580
    return-object p0
.end method

.method public c(J)Lcom/twitter/model/core/ct;
    .locals 1

    .prologue
    .line 384
    iput-wide p1, p0, Lcom/twitter/model/core/ct;->j:J

    .line 385
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/twitter/model/core/ct;->f:Ljava/lang/String;

    .line 351
    return-object p0
.end method

.method public c(Z)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 475
    iput-boolean p1, p0, Lcom/twitter/model/core/ct;->v:Z

    .line 476
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/twitter/model/core/ct;->i()Lcom/twitter/model/core/cs;

    move-result-object v0

    return-object v0
.end method

.method public d(J)Lcom/twitter/model/core/ct;
    .locals 1

    .prologue
    .line 398
    iput-wide p1, p0, Lcom/twitter/model/core/ct;->k:J

    .line 399
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/twitter/model/core/ct;->i:Ljava/lang/String;

    .line 379
    return-object p0
.end method

.method public d(Z)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 481
    iput-boolean p1, p0, Lcom/twitter/model/core/ct;->w:Z

    .line 482
    return-object p0
.end method

.method public e(J)Lcom/twitter/model/core/ct;
    .locals 1

    .prologue
    .line 427
    iput-wide p1, p0, Lcom/twitter/model/core/ct;->n:J

    .line 428
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/twitter/model/core/ct;->l:Ljava/lang/String;

    .line 405
    return-object p0
.end method

.method public e(Z)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 487
    iput-boolean p1, p0, Lcom/twitter/model/core/ct;->x:Z

    .line 488
    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/twitter/model/core/ct;->c:Lcom/twitter/model/core/TwitterUser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/ct;->c:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/model/core/ct;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public f(J)Lcom/twitter/model/core/ct;
    .locals 1

    .prologue
    .line 457
    iput-wide p1, p0, Lcom/twitter/model/core/ct;->s:J

    .line 458
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/twitter/model/core/ct;->t:Ljava/lang/String;

    .line 464
    return-object p0
.end method

.method public f(Z)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 539
    iput-boolean p1, p0, Lcom/twitter/model/core/ct;->D:Z

    .line 540
    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/twitter/model/core/ct;->o:Lcom/twitter/model/core/cs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/ct;->o:Lcom/twitter/model/core/cs;

    invoke-virtual {v0}, Lcom/twitter/model/core/cs;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/model/core/ct;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public g(J)Lcom/twitter/model/core/ct;
    .locals 3

    .prologue
    .line 530
    iput-wide p1, p0, Lcom/twitter/model/core/ct;->C:J

    .line 531
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/model/core/ct;->D:Z

    .line 534
    :cond_0
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/twitter/model/core/ct;->u:Ljava/lang/String;

    .line 470
    return-object p0
.end method

.method public g(Z)Lcom/twitter/model/core/ct;
    .locals 0

    .prologue
    .line 585
    iput-boolean p1, p0, Lcom/twitter/model/core/ct;->J:Z

    .line 586
    return-object p0
.end method

.method public g()Lcss;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/twitter/model/core/ct;->y:Lcss;

    return-object v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 525
    iget-wide v0, p0, Lcom/twitter/model/core/ct;->C:J

    return-wide v0
.end method

.method protected i()Lcom/twitter/model/core/cs;
    .locals 4

    .prologue
    .line 615
    iget-wide v0, p0, Lcom/twitter/model/core/ct;->n:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/ct;->b:Lcom/twitter/model/core/TwitterUser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/ct;->o:Lcom/twitter/model/core/cs;

    if-nez v0, :cond_0

    .line 616
    new-instance v0, Lcom/twitter/model/core/cs;

    invoke-direct {v0, p0}, Lcom/twitter/model/core/cs;-><init>(Lcom/twitter/model/core/ct;)V

    iput-object v0, p0, Lcom/twitter/model/core/ct;->o:Lcom/twitter/model/core/cs;

    .line 617
    iget-wide v0, p0, Lcom/twitter/model/core/ct;->n:J

    iput-wide v0, p0, Lcom/twitter/model/core/ct;->a:J

    .line 618
    iget-object v0, p0, Lcom/twitter/model/core/ct;->b:Lcom/twitter/model/core/TwitterUser;

    iput-object v0, p0, Lcom/twitter/model/core/ct;->c:Lcom/twitter/model/core/TwitterUser;

    .line 620
    :cond_0
    new-instance v0, Lcom/twitter/model/core/cs;

    invoke-direct {v0, p0}, Lcom/twitter/model/core/cs;-><init>(Lcom/twitter/model/core/ct;)V

    return-object v0
.end method
