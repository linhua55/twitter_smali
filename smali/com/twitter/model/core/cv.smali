.class public final Lcom/twitter/model/core/cv;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/core/TwitterUser;",
        ">;"
    }
.end annotation


# instance fields
.field A:I

.field B:Lcss;

.field C:J

.field D:Lcom/twitter/model/core/bm;

.field E:Lcom/twitter/model/core/bm;

.field F:Lcom/twitter/model/search/TwitterUserMetadata;

.field G:Ljava/lang/String;

.field H:Ljava/lang/String;

.field I:I

.field J:Z

.field K:Z

.field L:I

.field M:Lcom/twitter/model/ads/AdvertiserType;

.field N:Lcom/twitter/model/timeline/al;

.field O:J

.field P:Lcnd;

.field Q:Lcom/twitter/model/businessprofiles/BusinessProfileState;

.field R:Z

.field S:Ljava/lang/String;

.field a:J

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:I

.field h:I

.field i:Ljava/lang/String;

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Ljava/lang/String;

.field p:Lcom/twitter/util/collection/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/geo/TwitterPlace;",
            ">;"
        }
    .end annotation
.end field

.field q:Z

.field r:Lcom/twitter/model/profile/ExtendedProfile;

.field s:I

.field t:I

.field u:I

.field v:J

.field w:I

.field x:I

.field y:Z

.field z:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 484
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 434
    iput-wide v2, p0, Lcom/twitter/model/core/cv;->a:J

    .line 457
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/model/core/cv;->x:I

    .line 468
    const/16 v0, 0x80

    iput v0, p0, Lcom/twitter/model/core/cv;->I:I

    .line 472
    sget-object v0, Lcom/twitter/model/ads/AdvertiserType;->a:Lcom/twitter/model/ads/AdvertiserType;

    iput-object v0, p0, Lcom/twitter/model/core/cv;->M:Lcom/twitter/model/ads/AdvertiserType;

    .line 475
    iput-wide v2, p0, Lcom/twitter/model/core/cv;->O:J

    .line 477
    sget-object v0, Lcom/twitter/model/businessprofiles/BusinessProfileState;->a:Lcom/twitter/model/businessprofiles/BusinessProfileState;

    iput-object v0, p0, Lcom/twitter/model/core/cv;->Q:Lcom/twitter/model/businessprofiles/BusinessProfileState;

    .line 480
    const-string/jumbo v0, "none"

    iput-object v0, p0, Lcom/twitter/model/core/cv;->S:Ljava/lang/String;

    .line 485
    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/core/TwitterUser;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 487
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 434
    iput-wide v2, p0, Lcom/twitter/model/core/cv;->a:J

    .line 457
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/model/core/cv;->x:I

    .line 468
    const/16 v0, 0x80

    iput v0, p0, Lcom/twitter/model/core/cv;->I:I

    .line 472
    sget-object v0, Lcom/twitter/model/ads/AdvertiserType;->a:Lcom/twitter/model/ads/AdvertiserType;

    iput-object v0, p0, Lcom/twitter/model/core/cv;->M:Lcom/twitter/model/ads/AdvertiserType;

    .line 475
    iput-wide v2, p0, Lcom/twitter/model/core/cv;->O:J

    .line 477
    sget-object v0, Lcom/twitter/model/businessprofiles/BusinessProfileState;->a:Lcom/twitter/model/businessprofiles/BusinessProfileState;

    iput-object v0, p0, Lcom/twitter/model/core/cv;->Q:Lcom/twitter/model/businessprofiles/BusinessProfileState;

    .line 480
    const-string/jumbo v0, "none"

    iput-object v0, p0, Lcom/twitter/model/core/cv;->S:Ljava/lang/String;

    .line 488
    iget-wide v0, p1, Lcom/twitter/model/core/TwitterUser;->c:J

    iput-wide v0, p0, Lcom/twitter/model/core/cv;->a:J

    .line 489
    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/cv;->b:Ljava/lang/String;

    .line 490
    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/cv;->c:Ljava/lang/String;

    .line 491
    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/cv;->d:Ljava/lang/String;

    .line 492
    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/cv;->e:Ljava/lang/String;

    .line 493
    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/cv;->f:Ljava/lang/String;

    .line 494
    iget v0, p1, Lcom/twitter/model/core/TwitterUser;->i:I

    iput v0, p0, Lcom/twitter/model/core/cv;->g:I

    .line 495
    iget v0, p1, Lcom/twitter/model/core/TwitterUser;->j:I

    iput v0, p0, Lcom/twitter/model/core/cv;->h:I

    .line 496
    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/cv;->i:Ljava/lang/String;

    .line 497
    iget-boolean v0, p1, Lcom/twitter/model/core/TwitterUser;->l:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/cv;->j:Z

    .line 498
    iget-boolean v0, p1, Lcom/twitter/model/core/TwitterUser;->m:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/cv;->k:Z

    .line 499
    iget-boolean v0, p1, Lcom/twitter/model/core/TwitterUser;->n:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/cv;->l:Z

    .line 500
    iget-boolean v0, p1, Lcom/twitter/model/core/TwitterUser;->o:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/cv;->m:Z

    .line 501
    iget-boolean v0, p1, Lcom/twitter/model/core/TwitterUser;->p:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/cv;->n:Z

    .line 502
    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/cv;->o:Ljava/lang/String;

    .line 503
    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->r:Lcom/twitter/util/collection/ab;

    iput-object v0, p0, Lcom/twitter/model/core/cv;->p:Lcom/twitter/util/collection/ab;

    .line 504
    iget-boolean v0, p1, Lcom/twitter/model/core/TwitterUser;->s:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/cv;->q:Z

    .line 505
    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->t:Lcom/twitter/model/profile/ExtendedProfile;

    iput-object v0, p0, Lcom/twitter/model/core/cv;->r:Lcom/twitter/model/profile/ExtendedProfile;

    .line 506
    iget v0, p1, Lcom/twitter/model/core/TwitterUser;->Q:I

    iput v0, p0, Lcom/twitter/model/core/cv;->s:I

    .line 507
    iget v0, p1, Lcom/twitter/model/core/TwitterUser;->u:I

    iput v0, p0, Lcom/twitter/model/core/cv;->t:I

    .line 508
    iget v0, p1, Lcom/twitter/model/core/TwitterUser;->v:I

    iput v0, p0, Lcom/twitter/model/core/cv;->u:I

    .line 509
    iget-wide v0, p1, Lcom/twitter/model/core/TwitterUser;->R:J

    iput-wide v0, p0, Lcom/twitter/model/core/cv;->v:J

    .line 510
    iget v0, p1, Lcom/twitter/model/core/TwitterUser;->w:I

    iput v0, p0, Lcom/twitter/model/core/cv;->w:I

    .line 511
    iget v0, p1, Lcom/twitter/model/core/TwitterUser;->x:I

    iput v0, p0, Lcom/twitter/model/core/cv;->x:I

    .line 512
    iget-boolean v0, p1, Lcom/twitter/model/core/TwitterUser;->y:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/cv;->y:Z

    .line 513
    iget-wide v0, p1, Lcom/twitter/model/core/TwitterUser;->z:J

    iput-wide v0, p0, Lcom/twitter/model/core/cv;->z:J

    .line 514
    iget v0, p1, Lcom/twitter/model/core/TwitterUser;->A:I

    iput v0, p0, Lcom/twitter/model/core/cv;->A:I

    .line 515
    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->B:Lcss;

    iput-object v0, p0, Lcom/twitter/model/core/cv;->B:Lcss;

    .line 516
    iget-wide v0, p1, Lcom/twitter/model/core/TwitterUser;->C:J

    iput-wide v0, p0, Lcom/twitter/model/core/cv;->C:J

    .line 517
    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->D:Lcom/twitter/model/core/bm;

    iput-object v0, p0, Lcom/twitter/model/core/cv;->D:Lcom/twitter/model/core/bm;

    .line 518
    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->E:Lcom/twitter/model/core/bm;

    iput-object v0, p0, Lcom/twitter/model/core/cv;->E:Lcom/twitter/model/core/bm;

    .line 519
    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->S:Lcom/twitter/model/search/TwitterUserMetadata;

    iput-object v0, p0, Lcom/twitter/model/core/cv;->F:Lcom/twitter/model/search/TwitterUserMetadata;

    .line 520
    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->G:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/cv;->G:Ljava/lang/String;

    .line 521
    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->H:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/cv;->H:Ljava/lang/String;

    .line 522
    iget v0, p1, Lcom/twitter/model/core/TwitterUser;->T:I

    iput v0, p0, Lcom/twitter/model/core/cv;->I:I

    .line 523
    iget-boolean v0, p1, Lcom/twitter/model/core/TwitterUser;->I:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/cv;->J:Z

    .line 524
    iget-boolean v0, p1, Lcom/twitter/model/core/TwitterUser;->J:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/cv;->K:Z

    .line 525
    iget v0, p1, Lcom/twitter/model/core/TwitterUser;->K:I

    iput v0, p0, Lcom/twitter/model/core/cv;->L:I

    .line 526
    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->L:Lcom/twitter/model/ads/AdvertiserType;

    iput-object v0, p0, Lcom/twitter/model/core/cv;->M:Lcom/twitter/model/ads/AdvertiserType;

    .line 527
    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->U:Lcom/twitter/model/timeline/al;

    iput-object v0, p0, Lcom/twitter/model/core/cv;->N:Lcom/twitter/model/timeline/al;

    .line 528
    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->F:Lcnd;

    iput-object v0, p0, Lcom/twitter/model/core/cv;->P:Lcnd;

    .line 529
    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->N:Lcom/twitter/model/businessprofiles/BusinessProfileState;

    iput-object v0, p0, Lcom/twitter/model/core/cv;->Q:Lcom/twitter/model/businessprofiles/BusinessProfileState;

    .line 530
    iget-boolean v0, p1, Lcom/twitter/model/core/TwitterUser;->O:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/cv;->R:Z

    .line 531
    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->P:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/cv;->S:Ljava/lang/String;

    .line 532
    return-void
.end method


# virtual methods
.method public a(I)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 589
    iput p1, p0, Lcom/twitter/model/core/cv;->g:I

    .line 590
    return-object p0
.end method

.method public a(J)Lcom/twitter/model/core/cv;
    .locals 1

    .prologue
    .line 546
    iput-wide p1, p0, Lcom/twitter/model/core/cv;->a:J

    .line 547
    return-object p0
.end method

.method public a(Lcnd;)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 818
    iput-object p1, p0, Lcom/twitter/model/core/cv;->P:Lcnd;

    .line 819
    return-object p0
.end method

.method public a(Lcom/twitter/model/ads/AdvertiserType;)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 800
    iput-object p1, p0, Lcom/twitter/model/core/cv;->M:Lcom/twitter/model/ads/AdvertiserType;

    .line 801
    return-object p0
.end method

.method public a(Lcom/twitter/model/businessprofiles/BusinessProfileState;)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 824
    iput-object p1, p0, Lcom/twitter/model/core/cv;->Q:Lcom/twitter/model/businessprofiles/BusinessProfileState;

    .line 825
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/bm;)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 736
    iput-object p1, p0, Lcom/twitter/model/core/cv;->D:Lcom/twitter/model/core/bm;

    .line 737
    return-object p0
.end method

.method public a(Lcom/twitter/model/profile/ExtendedProfile;)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 658
    iput-object p1, p0, Lcom/twitter/model/core/cv;->r:Lcom/twitter/model/profile/ExtendedProfile;

    .line 659
    return-object p0
.end method

.method public a(Lcom/twitter/model/search/TwitterUserMetadata;)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 748
    iput-object p1, p0, Lcom/twitter/model/core/cv;->F:Lcom/twitter/model/search/TwitterUserMetadata;

    .line 749
    return-object p0
.end method

.method public a(Lcom/twitter/model/timeline/al;)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 806
    iput-object p1, p0, Lcom/twitter/model/core/cv;->N:Lcom/twitter/model/timeline/al;

    .line 807
    return-object p0
.end method

.method public a(Lcom/twitter/util/collection/ab;)Lcom/twitter/model/core/cv;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/geo/TwitterPlace;",
            ">;)",
            "Lcom/twitter/model/core/cv;"
        }
    .end annotation

    .prologue
    .line 652
    iput-object p1, p0, Lcom/twitter/model/core/cv;->p:Lcom/twitter/util/collection/ab;

    .line 653
    return-object p0
.end method

.method public a(Lcss;)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 724
    iput-object p1, p0, Lcom/twitter/model/core/cv;->B:Lcss;

    .line 725
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lcom/twitter/model/core/cv;->S:Ljava/lang/String;

    .line 541
    return-object p0
.end method

.method public a(Z)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 612
    iput-boolean p1, p0, Lcom/twitter/model/core/cv;->j:Z

    .line 613
    return-object p0
.end method

.method protected aE_()Z
    .locals 2

    .prologue
    .line 841
    invoke-super {p0}, Lcom/twitter/util/object/h;->aE_()Z

    move-result v0

    if-nez v0, :cond_0

    .line 842
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Tried to build user with an invalid id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 843
    const/4 v0, 0x0

    .line 845
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(I)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 595
    iput p1, p0, Lcom/twitter/model/core/cv;->h:I

    .line 596
    return-object p0
.end method

.method public b(J)Lcom/twitter/model/core/cv;
    .locals 1

    .prologue
    .line 688
    iput-wide p1, p0, Lcom/twitter/model/core/cv;->v:J

    .line 689
    return-object p0
.end method

.method public b(Lcom/twitter/model/core/bm;)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 742
    iput-object p1, p0, Lcom/twitter/model/core/cv;->E:Lcom/twitter/model/core/bm;

    .line 743
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/twitter/model/core/cv;->b:Ljava/lang/String;

    .line 553
    return-object p0
.end method

.method public b(Z)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 622
    iput-boolean p1, p0, Lcom/twitter/model/core/cv;->k:Z

    .line 623
    return-object p0
.end method

.method public bq_()Z
    .locals 4

    .prologue
    .line 836
    iget-wide v0, p0, Lcom/twitter/model/core/cv;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 670
    iput p1, p0, Lcom/twitter/model/core/cv;->s:I

    .line 671
    return-object p0
.end method

.method public c(J)Lcom/twitter/model/core/cv;
    .locals 1

    .prologue
    .line 712
    iput-wide p1, p0, Lcom/twitter/model/core/cv;->z:J

    .line 713
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/model/core/cv;
    .locals 1

    .prologue
    .line 558
    iput-object p1, p0, Lcom/twitter/model/core/cv;->c:Ljava/lang/String;

    .line 559
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/twitter/model/core/cv;->d:Ljava/lang/String;

    .line 560
    return-object p0

    .line 559
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Z)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 628
    iput-boolean p1, p0, Lcom/twitter/model/core/cv;->l:Z

    .line 629
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/twitter/model/core/cv;->i()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 676
    iput p1, p0, Lcom/twitter/model/core/cv;->t:I

    .line 677
    return-object p0
.end method

.method public d(J)Lcom/twitter/model/core/cv;
    .locals 1

    .prologue
    .line 730
    iput-wide p1, p0, Lcom/twitter/model/core/cv;->C:J

    .line 731
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/twitter/model/core/cv;->d:Ljava/lang/String;

    .line 566
    return-object p0
.end method

.method public d(Z)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 634
    iput-boolean p1, p0, Lcom/twitter/model/core/cv;->m:Z

    .line 635
    return-object p0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 535
    iget-wide v0, p0, Lcom/twitter/model/core/cv;->a:J

    return-wide v0
.end method

.method public e(I)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 682
    iput p1, p0, Lcom/twitter/model/core/cv;->u:I

    .line 683
    return-object p0
.end method

.method public e(J)Lcom/twitter/model/core/cv;
    .locals 1

    .prologue
    .line 812
    iput-wide p1, p0, Lcom/twitter/model/core/cv;->O:J

    .line 813
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/twitter/model/core/cv;
    .locals 1

    .prologue
    .line 571
    if-eqz p1, :cond_0

    const-string/jumbo v0, "null"

    .line 572
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iput-object p1, p0, Lcom/twitter/model/core/cv;->e:Ljava/lang/String;

    .line 573
    return-object p0
.end method

.method public e(Z)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 640
    iput-boolean p1, p0, Lcom/twitter/model/core/cv;->n:Z

    .line 641
    return-object p0
.end method

.method public f(I)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 694
    iput p1, p0, Lcom/twitter/model/core/cv;->w:I

    .line 695
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/twitter/model/core/cv;
    .locals 1

    .prologue
    .line 583
    if-eqz p1, :cond_0

    const-string/jumbo v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iput-object p1, p0, Lcom/twitter/model/core/cv;->f:Ljava/lang/String;

    .line 584
    return-object p0
.end method

.method public f(Z)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 664
    iput-boolean p1, p0, Lcom/twitter/model/core/cv;->q:Z

    .line 665
    return-object p0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 617
    iget-boolean v0, p0, Lcom/twitter/model/core/cv;->k:Z

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 767
    iget v0, p0, Lcom/twitter/model/core/cv;->I:I

    return v0
.end method

.method public g(I)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 700
    iput p1, p0, Lcom/twitter/model/core/cv;->x:I

    .line 701
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lcom/twitter/model/core/cv;->i:Ljava/lang/String;

    .line 607
    return-object p0
.end method

.method public g(Z)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 706
    iput-boolean p1, p0, Lcom/twitter/model/core/cv;->y:Z

    .line 707
    return-object p0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 789
    iget v0, p0, Lcom/twitter/model/core/cv;->L:I

    return v0
.end method

.method public h(I)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 718
    iput p1, p0, Lcom/twitter/model/core/cv;->A:I

    .line 719
    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/twitter/model/core/cv;
    .locals 1

    .prologue
    .line 646
    if-eqz p1, :cond_0

    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iput-object p1, p0, Lcom/twitter/model/core/cv;->o:Ljava/lang/String;

    .line 647
    return-object p0
.end method

.method public h(Z)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 778
    iput-boolean p1, p0, Lcom/twitter/model/core/cv;->J:Z

    .line 779
    return-object p0
.end method

.method protected i()Lcom/twitter/model/core/TwitterUser;
    .locals 2

    .prologue
    .line 851
    new-instance v0, Lcom/twitter/model/core/TwitterUser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/core/TwitterUser;-><init>(Lcom/twitter/model/core/cv;Lcom/twitter/model/core/cu;)V

    return-object v0
.end method

.method public i(I)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 772
    iput p1, p0, Lcom/twitter/model/core/cv;->I:I

    .line 773
    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/twitter/model/core/cv;
    .locals 1

    .prologue
    .line 754
    iput-object p1, p0, Lcom/twitter/model/core/cv;->G:Ljava/lang/String;

    .line 755
    if-eqz p1, :cond_0

    .line 756
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/twitter/model/core/cv;->H:Ljava/lang/String;

    .line 757
    return-object p0

    .line 756
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i(Z)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 784
    iput-boolean p1, p0, Lcom/twitter/model/core/cv;->K:Z

    .line 785
    return-object p0
.end method

.method public j(I)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 794
    iput p1, p0, Lcom/twitter/model/core/cv;->L:I

    .line 795
    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 762
    iput-object p1, p0, Lcom/twitter/model/core/cv;->H:Ljava/lang/String;

    .line 763
    return-object p0
.end method

.method public j(Z)Lcom/twitter/model/core/cv;
    .locals 0

    .prologue
    .line 830
    iput-boolean p1, p0, Lcom/twitter/model/core/cv;->R:Z

    .line 831
    return-object p0
.end method
