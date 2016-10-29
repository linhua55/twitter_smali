.class public abstract Lcom/twitter/android/BaseEditProfileActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/profiles/k;
.implements Lcom/twitter/android/profiles/o;
.implements Lcom/twitter/app/common/base/j;
.implements Lcom/twitter/app/common/base/m;


# static fields
.field private static final m:[Ljava/lang/String;


# instance fields
.field protected a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field protected b:Lcom/twitter/android/profiles/ao;

.field c:Lcom/twitter/model/media/EditableImage;

.field d:Lcom/twitter/model/media/EditableImage;

.field e:Z

.field f:Z

.field g:Z

.field h:Lcom/twitter/model/core/TwitterUser;

.field i:Lcom/twitter/android/profiles/HeaderImageView;

.field j:Lcom/twitter/library/media/widget/UserImageView;

.field k:Landroid/widget/EditText;

.field l:Ljava/lang/String;

.field private final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Z

.field private q:Lcom/twitter/android/profiles/l;

.field private r:Lcom/twitter/android/widget/ProgressDialogFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/BaseEditProfileActivity;->m:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->n:Ljava/util/ArrayList;

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->p:Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 527
    const-string/jumbo v0, "%s:%s:%s:%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/BaseEditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 528
    invoke-virtual {v3}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/twitter/android/BaseEditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 529
    invoke-virtual {v3}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    .line 527
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Lcom/twitter/media/model/MediaFile;)V
    .locals 13

    .prologue
    .line 547
    if-eqz p1, :cond_6

    sget-object v0, Lcom/twitter/model/media/MediaSource;->b:Lcom/twitter/model/media/MediaSource;

    .line 548
    invoke-static {p1, v0}, Lcom/twitter/model/media/EditableImage;->a(Lcom/twitter/media/model/MediaFile;Lcom/twitter/model/media/MediaSource;)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/media/EditableImage;

    :goto_0
    iput-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    .line 549
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->h:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v1}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v12

    .line 550
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->m()Ljava/lang/String;

    move-result-object v5

    .line 552
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->q:Lcom/twitter/android/profiles/l;

    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->h:Lcom/twitter/model/core/TwitterUser;

    iget-wide v2, v1, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/profiles/l;->a(J)V

    .line 554
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "update_header"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 557
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->s()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 558
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->i()Ljava/lang/String;

    move-result-object v4

    .line 559
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->B_()Ljava/lang/String;

    move-result-object v6

    .line 560
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->C_()Ljava/lang/String;

    move-result-object v7

    .line 562
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->l()Lcom/twitter/model/geo/TwitterPlace;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/ab;->b(Ljava/lang/Object;)Lcom/twitter/util/collection/ab;

    move-result-object v8

    .line 564
    invoke-static {}, Lbug;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 565
    invoke-static {}, Lbug;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseEditProfileActivity;->a(Z)Lcom/twitter/model/profile/ExtendedProfile;

    move-result-object v11

    .line 566
    :goto_1
    new-instance v0, Lcom/twitter/library/client/az;

    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->d:Lcom/twitter/model/media/EditableImage;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->d:Lcom/twitter/model/media/EditableImage;

    iget-object v1, v1, Lcom/twitter/model/media/EditableImage;->k:Lcom/twitter/media/model/MediaFile;

    check-cast v1, Lcom/twitter/media/model/ImageFile;

    :goto_2
    iget-object v2, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    iget-object v2, v2, Lcom/twitter/model/media/EditableImage;->k:Lcom/twitter/media/model/MediaFile;

    check-cast v2, Lcom/twitter/media/model/ImageFile;

    :goto_3
    iget-boolean v3, p0, Lcom/twitter/android/BaseEditProfileActivity;->e:Z

    .line 571
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->q()Z

    move-result v9

    .line 572
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->r()Z

    move-result v10

    invoke-direct/range {v0 .. v11}, Lcom/twitter/library/client/az;-><init>(Lcom/twitter/media/model/MediaFile;Lcom/twitter/media/model/MediaFile;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/util/collection/ab;ZZLcom/twitter/model/profile/ExtendedProfile;)V

    .line 573
    invoke-static {p0, v12, v0}, Lcom/twitter/android/client/bv;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/library/client/az;)Ljava/lang/String;

    .line 583
    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->h:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/BaseEditProfileActivity;->a(J)V

    .line 585
    iget-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->e:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->f:Z

    if-eqz v0, :cond_3

    .line 586
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->q:Lcom/twitter/android/profiles/l;

    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->h:Lcom/twitter/model/core/TwitterUser;

    iget-wide v2, v1, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/profiles/l;->b(J)V

    .line 587
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "remove_header"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 588
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->e:Z

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->f:Z

    .line 592
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->d:Lcom/twitter/model/media/EditableImage;

    if-eqz v0, :cond_4

    .line 594
    invoke-static {}, Lcom/twitter/library/media/util/af;->a()Lcom/twitter/library/media/util/af;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->h:Lcom/twitter/model/core/TwitterUser;

    iget-wide v2, v1, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->d:Lcom/twitter/model/media/EditableImage;

    iget-object v1, v1, Lcom/twitter/model/media/EditableImage;->k:Lcom/twitter/media/model/MediaFile;

    .line 595
    invoke-virtual {v0, v2, v3, v1}, Lcom/twitter/library/media/util/af;->a(JLcom/twitter/media/model/MediaFile;)V

    .line 597
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    if-eqz v0, :cond_5

    .line 598
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/media/manager/l;->a(Landroid/content/Context;)Lcom/twitter/library/media/manager/l;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->b:Lcom/twitter/android/profiles/ao;

    invoke-static {v1}, Lcom/twitter/android/profiles/i;->a(Lcom/twitter/android/profiles/ao;)Lcom/twitter/media/request/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/manager/l;->c(Lcom/twitter/media/request/b;)V

    .line 601
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->d:Lcom/twitter/model/media/EditableImage;

    .line 602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    .line 604
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseEditProfileActivity;->a(Landroid/content/Intent;)V

    .line 605
    return-void

    .line 548
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 565
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 566
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v2, 0x0

    goto :goto_3

    .line 574
    :cond_a
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->D_()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    new-instance v2, Lcom/twitter/library/client/az;

    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->d:Lcom/twitter/model/media/EditableImage;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->d:Lcom/twitter/model/media/EditableImage;

    iget-object v0, v0, Lcom/twitter/model/media/EditableImage;->k:Lcom/twitter/media/model/MediaFile;

    check-cast v0, Lcom/twitter/media/model/ImageFile;

    move-object v1, v0

    :goto_5
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    iget-object v0, v0, Lcom/twitter/model/media/EditableImage;->k:Lcom/twitter/media/model/MediaFile;

    check-cast v0, Lcom/twitter/media/model/ImageFile;

    :goto_6
    iget-boolean v3, p0, Lcom/twitter/android/BaseEditProfileActivity;->e:Z

    invoke-direct {v2, v1, v0, v3}, Lcom/twitter/library/client/az;-><init>(Lcom/twitter/media/model/MediaFile;Lcom/twitter/media/model/MediaFile;Z)V

    .line 580
    invoke-static {p0, v12, v2}, Lcom/twitter/android/client/bv;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/library/client/az;)Ljava/lang/String;

    goto/16 :goto_4

    .line 575
    :cond_b
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private x()V
    .locals 1

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->b()V

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->p:Z

    .line 351
    return-void
.end method

.method private y()V
    .locals 2

    .prologue
    .line 730
    .line 731
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0367

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 732
    iget-boolean v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->o:Z

    if-eqz v1, :cond_1

    .line 733
    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 734
    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected abstract B_()Ljava/lang/String;
.end method

.method protected abstract C_()Ljava/lang/String;
.end method

.method D_()Z
    .locals 1

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->f:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->d:Lcom/twitter/model/media/EditableImage;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->p:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a()Lcom/twitter/library/scribe/TwitterScribeAssociation;
.end method

.method protected a(Z)Lcom/twitter/model/profile/ExtendedProfile;
    .locals 1

    .prologue
    .line 609
    const/4 v0, 0x0

    return-object v0
.end method

.method a(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 788
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->r:Lcom/twitter/android/widget/ProgressDialogFragment;

    if-nez v0, :cond_0

    .line 789
    invoke-static {p1}, Lcom/twitter/android/widget/ProgressDialogFragment;->a(I)Lcom/twitter/android/widget/ProgressDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->r:Lcom/twitter/android/widget/ProgressDialogFragment;

    .line 790
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->r:Lcom/twitter/android/widget/ProgressDialogFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ProgressDialogFragment;->setRetainInstance(Z)V

    .line 791
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->r:Lcom/twitter/android/widget/ProgressDialogFragment;

    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/widget/ProgressDialogFragment;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 793
    :cond_0
    return-void
.end method

.method protected a(J)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 709
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    if-eqz v0, :cond_0

    .line 710
    new-array v0, v6, [Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "header_image"

    const-string/jumbo v4, "change"

    .line 711
    invoke-static {v1, v2, v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 710
    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/BaseEditProfileActivity;->a(J[Ljava/lang/String;)V

    .line 714
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    new-array v0, v6, [Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "bio"

    const-string/jumbo v4, "change"

    .line 716
    invoke-static {v1, v2, v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 715
    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/BaseEditProfileActivity;->a(J[Ljava/lang/String;)V

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->d:Lcom/twitter/model/media/EditableImage;

    if-eqz v0, :cond_2

    .line 719
    new-array v0, v6, [Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "avatar"

    const-string/jumbo v4, "change"

    .line 720
    invoke-static {v1, v2, v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 719
    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/BaseEditProfileActivity;->a(J[Ljava/lang/String;)V

    .line 723
    :cond_2
    iget-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->e:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->f:Z

    if-eqz v0, :cond_3

    .line 724
    new-array v0, v6, [Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "header_image"

    const-string/jumbo v4, "remove"

    .line 725
    invoke-static {v1, v2, v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 724
    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/BaseEditProfileActivity;->a(J[Ljava/lang/String;)V

    .line 727
    :cond_3
    return-void
.end method

.method protected varargs a(J[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->b:Lcom/twitter/android/profiles/ao;

    invoke-static {p1, p2, v0, p3}, Lcom/twitter/android/profiles/as;->a(JLcom/twitter/android/profiles/ao;[Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public a(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public a(Landroid/content/DialogInterface;II)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 454
    packed-switch p2, :pswitch_data_0

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 456
    :pswitch_0
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    invoke-virtual {v0}, Lcom/twitter/model/media/EditableImage;->j()Lcom/twitter/util/concurrent/j;

    .line 460
    :cond_1
    invoke-virtual {p0, v8}, Lcom/twitter/android/BaseEditProfileActivity;->setResult(I)V

    .line 461
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/BaseEditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, "cancel"

    .line 462
    invoke-static {v3, v4, v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 461
    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/BaseEditProfileActivity;->a(J[Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->finish()V

    goto :goto_0

    .line 469
    :pswitch_1
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 470
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 471
    const v2, 0x7f0a0368

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 472
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/BaseEditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v4, "change_header_dialog"

    const-string/jumbo v5, "take_photo"

    const-string/jumbo v6, "click"

    .line 473
    invoke-static {v3, v4, v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 472
    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/BaseEditProfileActivity;->a(J[Ljava/lang/String;)V

    .line 474
    iput-boolean v8, p0, Lcom/twitter/android/BaseEditProfileActivity;->e:Z

    .line 475
    new-instance v0, Lcom/twitter/android/runtimepermissions/b;

    const v1, 0x7f0a03e7

    .line 476
    invoke-virtual {p0, v1}, Lcom/twitter/android/BaseEditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/BaseEditProfileActivity;->m:[Ljava/lang/String;

    invoke-direct {v0, v1, p0, v2}, Lcom/twitter/android/runtimepermissions/b;-><init>(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;)V

    const-string/jumbo v1, "change_header_dialog"

    const-string/jumbo v2, "take_photo"

    .line 477
    invoke-direct {p0, v1, v2}, Lcom/twitter/android/BaseEditProfileActivity;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/runtimepermissions/b;->f(Ljava/lang/String;)Lcom/twitter/android/runtimepermissions/b;

    move-result-object v0

    .line 478
    invoke-virtual {v0}, Lcom/twitter/android/runtimepermissions/b;->a()Landroid/content/Intent;

    move-result-object v0

    .line 479
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/BaseEditProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 480
    :cond_2
    const v2, 0x7f0a0363

    .line 481
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 480
    invoke-static {v0, v2}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 482
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/BaseEditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v4, "change_header_dialog"

    const-string/jumbo v5, "choose_photo"

    const-string/jumbo v6, "click"

    .line 483
    invoke-static {v3, v4, v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 482
    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/BaseEditProfileActivity;->a(J[Ljava/lang/String;)V

    .line 485
    iput-boolean v8, p0, Lcom/twitter/android/BaseEditProfileActivity;->e:Z

    .line 486
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/twitter/library/media/util/y;->a(Landroid/app/Activity;I)Z

    goto/16 :goto_0

    .line 488
    :cond_3
    const v2, 0x7f0a0367

    .line 489
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-static {v0, v1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iput-object v9, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    .line 491
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/BaseEditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v4, "change_header_dialog"

    const-string/jumbo v5, "remove"

    const-string/jumbo v6, "click"

    .line 492
    invoke-static {v3, v4, v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 491
    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/BaseEditProfileActivity;->a(J[Ljava/lang/String;)V

    .line 493
    iput-boolean v7, p0, Lcom/twitter/android/BaseEditProfileActivity;->e:Z

    .line 494
    iput-boolean v8, p0, Lcom/twitter/android/BaseEditProfileActivity;->o:Z

    .line 495
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->i:Lcom/twitter/android/profiles/HeaderImageView;

    invoke-virtual {v0, v9}, Lcom/twitter/android/profiles/HeaderImageView;->b(Lcom/twitter/media/request/b;)Z

    goto/16 :goto_0

    .line 501
    :pswitch_2
    if-nez p3, :cond_4

    .line 502
    new-instance v0, Lcom/twitter/android/runtimepermissions/b;

    const v1, 0x7f0a06a1

    .line 503
    invoke-virtual {p0, v1}, Lcom/twitter/android/BaseEditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/BaseEditProfileActivity;->m:[Ljava/lang/String;

    invoke-direct {v0, v1, p0, v2}, Lcom/twitter/android/runtimepermissions/b;-><init>(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;)V

    const-string/jumbo v1, "change_avatar_dialog"

    const-string/jumbo v2, "take_photo"

    .line 504
    invoke-direct {p0, v1, v2}, Lcom/twitter/android/BaseEditProfileActivity;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/runtimepermissions/b;->f(Ljava/lang/String;)Lcom/twitter/android/runtimepermissions/b;

    move-result-object v0

    .line 505
    invoke-virtual {v0}, Lcom/twitter/android/runtimepermissions/b;->a()Landroid/content/Intent;

    move-result-object v0

    .line 506
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    new-array v1, v7, [Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/BaseEditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v5, "change_avatar_dialog"

    const-string/jumbo v6, "take_photo"

    const-string/jumbo v7, "click"

    .line 507
    invoke-static {v4, v5, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    .line 506
    invoke-virtual {p0, v2, v3, v1}, Lcom/twitter/android/BaseEditProfileActivity;->a(J[Ljava/lang/String;)V

    .line 508
    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/BaseEditProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 509
    :cond_4
    if-ne p3, v7, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/BaseEditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v4, "change_avatar_dialog"

    const-string/jumbo v5, "choose_photo"

    const-string/jumbo v6, "click"

    .line 511
    invoke-static {v3, v4, v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 510
    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/BaseEditProfileActivity;->a(J[Ljava/lang/String;)V

    .line 514
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/twitter/library/media/util/y;->a(Landroid/app/Activity;I)Z

    goto/16 :goto_0

    .line 454
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract a(Landroid/content/Intent;)V
.end method

.method public a(Lcom/twitter/media/model/MediaFile;)V
    .locals 1

    .prologue
    .line 196
    if-eqz p1, :cond_0

    sget-object v0, Lcom/twitter/model/media/MediaSource;->b:Lcom/twitter/model/media/MediaSource;

    .line 197
    invoke-static {p1, v0}, Lcom/twitter/model/media/EditableImage;->a(Lcom/twitter/media/model/MediaFile;Lcom/twitter/model/media/MediaSource;)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/media/EditableImage;

    :goto_0
    iput-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    .line 198
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->t()V

    .line 199
    return-void

    .line 197
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 343
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->i:Lcom/twitter/android/profiles/HeaderImageView;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->i:Lcom/twitter/android/profiles/HeaderImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/twitter/android/BaseEditProfileActivity;->h:Lcom/twitter/model/core/TwitterUser;

    invoke-static {v2, p0}, Lcom/twitter/android/profiles/as;->a(Lcom/twitter/model/core/TwitterUser;Landroid/content/Context;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/profiles/HeaderImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 346
    :cond_0
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->o:Z

    .line 213
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->i:Lcom/twitter/android/profiles/HeaderImageView;

    if-eqz v0, :cond_0

    .line 214
    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->i:Lcom/twitter/android/profiles/HeaderImageView;

    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    .line 215
    invoke-static {p0, v0}, Lcom/twitter/library/media/util/w;->a(Landroid/content/Context;Lcom/twitter/model/media/EditableMedia;)Lcom/twitter/media/request/b;

    move-result-object v0

    .line 214
    :goto_1
    invoke-virtual {v1, v0}, Lcom/twitter/android/profiles/HeaderImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 217
    :cond_0
    return-void

    .line 212
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 215
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongViewCast"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 134
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->a()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 135
    const v0, 0x7f130153

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseEditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/UserImageView;

    iput-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->j:Lcom/twitter/library/media/widget/UserImageView;

    .line 136
    const v0, 0x7f13033d

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseEditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->k:Landroid/widget/EditText;

    .line 137
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->h:Lcom/twitter/model/core/TwitterUser;

    .line 138
    const v0, 0x7f13033a

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseEditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profiles/HeaderImageView;

    iput-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->i:Lcom/twitter/android/profiles/HeaderImageView;

    .line 139
    const-string/jumbo v0, "location_header_repository"

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseEditProfileActivity;->a_(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profiles/l;

    iput-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->q:Lcom/twitter/android/profiles/l;

    .line 140
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->q:Lcom/twitter/android/profiles/l;

    if-nez v0, :cond_5

    .line 141
    new-instance v0, Lcom/twitter/android/profiles/l;

    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/twitter/android/profiles/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->q:Lcom/twitter/android/profiles/l;

    .line 147
    :cond_0
    :goto_0
    new-instance v0, Lcom/twitter/android/profiles/ao;

    iget-object v3, p0, Lcom/twitter/android/BaseEditProfileActivity;->h:Lcom/twitter/model/core/TwitterUser;

    invoke-direct {v0, p0, v3, v1}, Lcom/twitter/android/profiles/ao;-><init>(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;Z)V

    iput-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->b:Lcom/twitter/android/profiles/ao;

    .line 148
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->i:Lcom/twitter/android/profiles/HeaderImageView;

    if-eqz v0, :cond_1

    .line 149
    const-string/jumbo v0, "bitmaps"

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseEditProfileActivity;->a_(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 150
    iget-object v3, p0, Lcom/twitter/android/BaseEditProfileActivity;->i:Lcom/twitter/android/profiles/HeaderImageView;

    iget-object v4, p0, Lcom/twitter/android/BaseEditProfileActivity;->h:Lcom/twitter/model/core/TwitterUser;

    invoke-static {v4, p0}, Lcom/twitter/android/profiles/as;->a(Lcom/twitter/model/core/TwitterUser;Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, p0, v0, v4}, Lcom/twitter/android/profiles/HeaderImageView;->a(Lcom/twitter/android/profiles/k;Ljava/util/Set;I)V

    .line 151
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->i:Lcom/twitter/android/profiles/HeaderImageView;

    iget-object v3, p0, Lcom/twitter/android/BaseEditProfileActivity;->b:Lcom/twitter/android/profiles/ao;

    invoke-virtual {v0, v3}, Lcom/twitter/android/profiles/HeaderImageView;->setProfileUser(Lcom/twitter/android/profiles/ao;)V

    .line 154
    :cond_1
    invoke-static {p0}, Lcom/twitter/android/util/j;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->g:Z

    .line 156
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 157
    const v3, 0x7f0a0368

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 158
    iget-boolean v4, p0, Lcom/twitter/android/BaseEditProfileActivity;->g:Z

    if-eqz v4, :cond_2

    .line 159
    iget-object v4, p0, Lcom/twitter/android/BaseEditProfileActivity;->n:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_2
    iget-object v3, p0, Lcom/twitter/android/BaseEditProfileActivity;->n:Ljava/util/ArrayList;

    const v4, 0x7f0a0363

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    if-eqz p1, :cond_6

    .line 164
    const-string/jumbo v0, "pending_avatar_media"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/media/EditableImage;

    iput-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->d:Lcom/twitter/model/media/EditableImage;

    .line 165
    const-string/jumbo v0, "initial_header"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->f:Z

    .line 166
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->d:Lcom/twitter/model/media/EditableImage;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->j:Lcom/twitter/library/media/widget/UserImageView;

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->j:Lcom/twitter/library/media/widget/UserImageView;

    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->d:Lcom/twitter/model/media/EditableImage;

    invoke-virtual {v1}, Lcom/twitter/model/media/EditableImage;->e()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->a(Ljava/lang/String;)Z

    .line 169
    :cond_3
    const-string/jumbo v0, "pending_header_media"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/media/EditableImage;

    iput-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    .line 170
    const-string/jumbo v0, "has_updated_header"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->p:Z

    .line 171
    const-string/jumbo v0, "remove_header"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->e:Z

    .line 172
    const-string/jumbo v0, "remove_header_enabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->o:Z

    .line 174
    iget-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->e:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->i:Lcom/twitter/android/profiles/HeaderImageView;

    if-eqz v0, :cond_4

    .line 175
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->i:Lcom/twitter/android/profiles/HeaderImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/profiles/HeaderImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 178
    :cond_4
    invoke-direct {p0}, Lcom/twitter/android/BaseEditProfileActivity;->y()V

    .line 179
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->t()V

    .line 188
    :goto_1
    return-void

    .line 143
    :cond_5
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->q:Lcom/twitter/android/profiles/l;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->q:Lcom/twitter/android/profiles/l;

    invoke-virtual {v0, p0}, Lcom/twitter/android/profiles/l;->a(Lcom/twitter/android/profiles/o;)V

    goto/16 :goto_0

    .line 181
    :cond_6
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->h:Lcom/twitter/model/core/TwitterUser;

    iget-wide v4, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    new-array v0, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/BaseEditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, "impression"

    .line 182
    invoke-static {v3, v6, v7, v8}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 181
    invoke-virtual {p0, v4, v5, v0}, Lcom/twitter/android/BaseEditProfileActivity;->a(J[Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->h:Lcom/twitter/model/core/TwitterUser;

    iget-wide v4, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    new-array v3, v1, [Ljava/lang/String;

    iget-object v6, p0, Lcom/twitter/android/BaseEditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v7, ""

    const-string/jumbo v8, "camera"

    iget-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->g:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "available"

    .line 184
    :goto_2
    invoke-static {v6, v7, v8, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 183
    invoke-virtual {p0, v4, v5, v3}, Lcom/twitter/android/BaseEditProfileActivity;->a(J[Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->b:Lcom/twitter/android/profiles/ao;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/ao;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->f:Z

    .line 186
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->q:Lcom/twitter/android/profiles/l;

    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->h:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0, p0, v1, p0}, Lcom/twitter/android/profiles/l;->a(Landroid/app/Activity;Lcom/twitter/model/core/TwitterUser;Lcom/twitter/android/profiles/o;)V

    goto :goto_1

    .line 183
    :cond_7
    const-string/jumbo v0, "unavailable"

    goto :goto_2

    :cond_8
    move v0, v2

    .line 185
    goto :goto_3
.end method

.method public b(Lcom/twitter/media/model/MediaFile;)V
    .locals 0

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->w()V

    .line 543
    invoke-direct {p0, p1}, Lcom/twitter/android/BaseEditProfileActivity;->e(Lcom/twitter/media/model/MediaFile;)V

    .line 544
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->i:Lcom/twitter/android/profiles/HeaderImageView;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    if-eqz v0, :cond_2

    .line 222
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->b()V

    .line 227
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->b:Lcom/twitter/android/profiles/ao;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/ao;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->o:Z

    .line 228
    return-void

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->i:Lcom/twitter/android/profiles/HeaderImageView;

    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->b:Lcom/twitter/android/profiles/ao;

    invoke-static {v1}, Lcom/twitter/android/profiles/i;->a(Lcom/twitter/android/profiles/ao;)Lcom/twitter/media/request/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/profiles/HeaderImageView;->b(Lcom/twitter/media/request/b;)Z

    goto :goto_0

    .line 227
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method c(Lcom/twitter/media/model/MediaFile;)V
    .locals 6

    .prologue
    .line 753
    if-eqz p1, :cond_0

    sget-object v0, Lcom/twitter/model/media/MediaSource;->b:Lcom/twitter/model/media/MediaSource;

    .line 754
    invoke-static {p1, v0}, Lcom/twitter/model/media/EditableImage;->a(Lcom/twitter/media/model/MediaFile;Lcom/twitter/model/media/MediaSource;)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/media/EditableImage;

    :goto_0
    iput-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    .line 756
    if-eqz p1, :cond_1

    .line 757
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 758
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    const-string/jumbo v2, "profile"

    const/high16 v3, 0x40400000    # 3.0f

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/media/imageeditor/EditImageActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;FIZ)Landroid/content/Intent;

    move-result-object v0

    .line 761
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/BaseEditProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 765
    :goto_1
    return-void

    .line 754
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 763
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->v()V

    goto :goto_1
.end method

.method protected d()V
    .locals 8

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->g:Z

    if-eqz v0, :cond_0

    .line 259
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0b000f

    .line 260
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->c(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 261
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 262
    invoke-virtual {v0, p0}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Lcom/twitter/app/common/base/j;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 263
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 270
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/BaseEditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v5, "change_avatar_dialog"

    const-string/jumbo v6, "choose_photo"

    const-string/jumbo v7, "click"

    .line 266
    invoke-static {v4, v5, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 265
    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/BaseEditProfileActivity;->a(J[Ljava/lang/String;)V

    .line 268
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/twitter/library/media/util/y;->a(Landroid/app/Activity;I)Z

    goto :goto_0
.end method

.method d(Lcom/twitter/media/model/MediaFile;)V
    .locals 2

    .prologue
    .line 768
    if-eqz p1, :cond_0

    sget-object v0, Lcom/twitter/model/media/MediaSource;->b:Lcom/twitter/model/media/MediaSource;

    .line 769
    invoke-static {p1, v0}, Lcom/twitter/model/media/EditableImage;->a(Lcom/twitter/media/model/MediaFile;Lcom/twitter/model/media/MediaSource;)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/media/EditableImage;

    :goto_0
    iput-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->d:Lcom/twitter/model/media/EditableImage;

    .line 771
    if-eqz p1, :cond_1

    .line 772
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->j:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {p1}, Lcom/twitter/media/model/MediaFile;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->a(Ljava/lang/String;)Z

    .line 776
    :goto_1
    return-void

    .line 769
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 774
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->u()V

    goto :goto_1
.end method

.method protected e()V
    .locals 3

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->g:Z

    if-nez v0, :cond_0

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->e:Z

    .line 275
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/twitter/library/media/util/y;->a(Landroid/app/Activity;I)Z

    .line 286
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/BaseEditProfileActivity;->y()V

    .line 281
    new-instance v1, Lcom/twitter/android/widget/ec;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Lcom/twitter/android/widget/ec;-><init>(I)V

    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->n:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/twitter/android/BaseEditProfileActivity;->n:Ljava/util/ArrayList;

    .line 282
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/ec;->a([Ljava/lang/CharSequence;)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 283
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 284
    invoke-virtual {v0, p0}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Lcom/twitter/app/common/base/j;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 285
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 289
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a035a

    .line 290
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->a(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a0034

    .line 291
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->b(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a0285

    .line 292
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a00fd

    .line 293
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 294
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 295
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 296
    return-void
.end method

.method h()V
    .locals 3

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/twitter/util/ui/r;->b(Landroid/content/Context;Landroid/view/View;Z)V

    .line 536
    const v0, 0x7f0a06ac

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseEditProfileActivity;->a(I)V

    .line 537
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->q:Lcom/twitter/android/profiles/l;

    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->h:Lcom/twitter/model/core/TwitterUser;

    iget-object v2, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    invoke-virtual {v0, p0, v1, v2, p0}, Lcom/twitter/android/profiles/l;->a(Landroid/app/Activity;Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/media/EditableImage;Lcom/twitter/android/profiles/o;)V

    .line 538
    return-void
.end method

.method protected abstract i()Ljava/lang/String;
.end method

.method protected l()Lcom/twitter/model/geo/TwitterPlace;
    .locals 1

    .prologue
    .line 634
    const/4 v0, 0x0

    return-object v0
.end method

.method protected m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->k:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected o()V
    .locals 1

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->f()V

    .line 674
    :goto_0
    return-void

    .line 671
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseEditProfileActivity;->setResult(I)V

    .line 672
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->o()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, -0x1

    .line 355
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 356
    packed-switch p1, :pswitch_data_0

    .line 444
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 358
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 360
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/twitter/media/model/MediaType;->b:Lcom/twitter/media/model/MediaType;

    invoke-static {p0, v0, v1}, Lcom/twitter/media/model/MediaFile;->b(Landroid/content/Context;Landroid/net/Uri;Lcom/twitter/media/model/MediaType;)Lcom/twitter/util/concurrent/j;

    move-result-object v0

    .line 362
    new-instance v1, Lcom/twitter/util/concurrent/f;

    invoke-direct {v1}, Lcom/twitter/util/concurrent/f;-><init>()V

    sget-object v2, Lcom/twitter/util/concurrent/i;->a:Ljava/util/concurrent/Executor;

    .line 363
    invoke-virtual {v1, v2}, Lcom/twitter/util/concurrent/f;->a(Ljava/util/concurrent/Executor;)Lcom/twitter/util/concurrent/f;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/aj;

    invoke-direct {v2, p0}, Lcom/twitter/android/aj;-><init>(Lcom/twitter/android/BaseEditProfileActivity;)V

    .line 364
    invoke-virtual {v1, v2}, Lcom/twitter/util/concurrent/f;->a(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/f;

    move-result-object v1

    .line 362
    invoke-interface {v0, v1}, Lcom/twitter/util/concurrent/j;->b(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/j;

    .line 374
    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseEditProfileActivity;->a(Lcom/twitter/util/concurrent/j;)V

    goto :goto_0

    .line 379
    :pswitch_2
    if-ne p2, v0, :cond_0

    .line 380
    const-string/jumbo v0, "media_file"

    .line 381
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/model/MediaFile;

    .line 382
    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseEditProfileActivity;->c(Lcom/twitter/media/model/MediaFile;)V

    goto :goto_0

    .line 387
    :pswitch_3
    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    .line 388
    invoke-static {p3}, Lcom/twitter/android/media/imageeditor/EditImageActivity;->a(Landroid/content/Intent;)Lcom/twitter/model/media/EditableImage;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_0

    .line 390
    iput-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    .line 391
    invoke-direct {p0}, Lcom/twitter/android/BaseEditProfileActivity;->x()V

    goto :goto_0

    .line 394
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    .line 395
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->c()V

    goto :goto_0

    .line 400
    :pswitch_4
    if-ne p2, v0, :cond_0

    .line 402
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/twitter/media/model/MediaType;->b:Lcom/twitter/media/model/MediaType;

    invoke-static {p0, v0, v1}, Lcom/twitter/media/model/MediaFile;->b(Landroid/content/Context;Landroid/net/Uri;Lcom/twitter/media/model/MediaType;)Lcom/twitter/util/concurrent/j;

    move-result-object v0

    .line 403
    new-instance v1, Lcom/twitter/util/concurrent/f;

    invoke-direct {v1}, Lcom/twitter/util/concurrent/f;-><init>()V

    sget-object v2, Lcom/twitter/util/concurrent/i;->a:Ljava/util/concurrent/Executor;

    .line 404
    invoke-virtual {v1, v2}, Lcom/twitter/util/concurrent/f;->a(Ljava/util/concurrent/Executor;)Lcom/twitter/util/concurrent/f;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/ak;

    invoke-direct {v2, p0}, Lcom/twitter/android/ak;-><init>(Lcom/twitter/android/BaseEditProfileActivity;)V

    .line 405
    invoke-virtual {v1, v2}, Lcom/twitter/util/concurrent/f;->a(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/f;

    move-result-object v1

    .line 403
    invoke-interface {v0, v1}, Lcom/twitter/util/concurrent/j;->b(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/j;

    .line 415
    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseEditProfileActivity;->a(Lcom/twitter/util/concurrent/j;)V

    goto :goto_0

    .line 420
    :pswitch_5
    if-ne p2, v0, :cond_0

    .line 421
    const-string/jumbo v0, "media_file"

    .line 422
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/model/MediaFile;

    .line 421
    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseEditProfileActivity;->d(Lcom/twitter/media/model/MediaFile;)V

    goto/16 :goto_0

    .line 427
    :pswitch_6
    invoke-static {}, Lcom/twitter/android/lb;->a()Lcom/twitter/android/lb;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/BaseEditProfileActivity;->m:[Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/twitter/android/lb;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    invoke-static {p0, v2, v3, v3}, Lcom/twitter/android/media/camera/CameraActivity;->a(Landroid/content/Context;IZZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/twitter/android/BaseEditProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 434
    :pswitch_7
    invoke-static {}, Lcom/twitter/android/lb;->a()Lcom/twitter/android/lb;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/BaseEditProfileActivity;->m:[Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/twitter/android/lb;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    invoke-static {p0, v2, v3, v2}, Lcom/twitter/android/media/camera/CameraActivity;->a(Landroid/content/Context;IZZ)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/BaseEditProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->f()V

    .line 659
    :goto_0
    return-void

    .line 657
    :cond_0
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClickHandler(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 243
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->l_()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 245
    const v1, 0x7f13033a

    if-eq v0, v1, :cond_0

    const v1, 0x7f130155

    if-ne v0, v1, :cond_2

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/BaseEditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "header_image"

    const-string/jumbo v6, "click"

    .line 247
    invoke-static {v3, v4, v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 246
    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/BaseEditProfileActivity;->a(J[Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->e()V

    .line 255
    :cond_1
    :goto_0
    return-void

    .line 249
    :cond_2
    const v1, 0x7f130153

    if-eq v0, v1, :cond_3

    const v1, 0x7f130645

    if-ne v0, v1, :cond_1

    .line 250
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/BaseEditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "avatar"

    const-string/jumbo v6, "click"

    .line 251
    invoke-static {v3, v4, v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 250
    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/BaseEditProfileActivity;->a(J[Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->d()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->p:Z

    if-nez v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    invoke-virtual {v0}, Lcom/twitter/model/media/EditableImage;->j()Lcom/twitter/util/concurrent/j;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->d:Lcom/twitter/model/media/EditableImage;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->d:Lcom/twitter/model/media/EditableImage;

    invoke-virtual {v0}, Lcom/twitter/model/media/EditableImage;->j()Lcom/twitter/util/concurrent/j;

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->q:Lcom/twitter/android/profiles/l;

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->q:Lcom/twitter/android/profiles/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/profiles/l;->a(Lcom/twitter/android/profiles/o;)V

    .line 322
    :cond_2
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onDestroy()V

    .line 323
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 327
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onRestart()V

    .line 328
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->i:Lcom/twitter/android/profiles/HeaderImageView;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->i:Lcom/twitter/android/profiles/HeaderImageView;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/HeaderImageView;->aP_()V

    .line 331
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 233
    const-string/jumbo v0, "pending_avatar_media"

    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->d:Lcom/twitter/model/media/EditableImage;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 234
    const-string/jumbo v0, "pending_header_media"

    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 235
    const-string/jumbo v0, "initial_header"

    iget-boolean v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    const-string/jumbo v0, "remove_header"

    iget-boolean v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->e:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    const-string/jumbo v0, "remove_header_enabled"

    iget-boolean v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->o:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    const-string/jumbo v0, "has_updated_header"

    iget-boolean v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->p:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 239
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->i:Lcom/twitter/android/profiles/HeaderImageView;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->i:Lcom/twitter/android/profiles/HeaderImageView;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/HeaderImageView;->f()V

    .line 338
    :cond_0
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onStop()V

    .line 339
    return-void
.end method

.method protected p()Z
    .locals 1

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->D_()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected q()Z
    .locals 2

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->m()Ljava/lang/String;

    move-result-object v0

    .line 685
    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->l:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->l:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->l:Ljava/lang/String;

    .line 686
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 685
    :goto_0
    return v0

    .line 686
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract r()Z
.end method

.method protected r_()V
    .locals 2

    .prologue
    .line 300
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->r_()V

    .line 301
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->i:Lcom/twitter/android/profiles/HeaderImageView;

    if-eqz v0, :cond_0

    .line 302
    const-string/jumbo v0, "bitmaps"

    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->i:Lcom/twitter/android/profiles/HeaderImageView;

    invoke-virtual {v1}, Lcom/twitter/android/profiles/HeaderImageView;->getSavedBitmaps()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/BaseEditProfileActivity;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->q:Lcom/twitter/android/profiles/l;

    if-eqz v0, :cond_1

    .line 305
    const-string/jumbo v0, "location_header_repository"

    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->q:Lcom/twitter/android/profiles/l;

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/BaseEditProfileActivity;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_1
    return-void
.end method

.method protected abstract s()Z
.end method

.method t()V
    .locals 2

    .prologue
    .line 742
    iget-boolean v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->b:Lcom/twitter/android/profiles/ao;

    invoke-virtual {v0}, Lcom/twitter/android/profiles/ao;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    if-eqz v0, :cond_1

    .line 744
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/BaseEditProfileActivity;->c()V

    .line 747
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->d:Lcom/twitter/model/media/EditableImage;

    if-nez v0, :cond_2

    .line 748
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->j:Lcom/twitter/library/media/widget/UserImageView;

    iget-object v1, p0, Lcom/twitter/android/BaseEditProfileActivity;->h:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->a(Lcom/twitter/model/core/TwitterUser;)Z

    .line 750
    :cond_2
    return-void
.end method

.method u()V
    .locals 2

    .prologue
    .line 779
    const v0, 0x7f0a0689

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 780
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 781
    return-void
.end method

.method v()V
    .locals 2

    .prologue
    .line 783
    const v0, 0x7f0a068e

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 784
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 785
    return-void
.end method

.method w()V
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->r:Lcom/twitter/android/widget/ProgressDialogFragment;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->r:Lcom/twitter/android/widget/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/twitter/android/widget/ProgressDialogFragment;->b()V

    .line 798
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/BaseEditProfileActivity;->r:Lcom/twitter/android/widget/ProgressDialogFragment;

    .line 800
    :cond_0
    return-void
.end method
