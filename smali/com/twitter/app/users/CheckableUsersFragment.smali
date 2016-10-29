.class public Lcom/twitter/app/users/CheckableUsersFragment;
.super Lcom/twitter/app/users/UsersFragment;
.source "Twttr"


# instance fields
.field private E:Z

.field private F:Z

.field private G:Landroid/view/View;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:[Ljava/lang/String;

.field private K:[Ljava/lang/String;

.field private L:Z

.field private M:Lcom/twitter/library/client/bd;

.field private a:Z

.field private ac:Lcom/twitter/android/ha;

.field private ad:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/twitter/app/users/UsersFragment;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 284
    const v0, 0x7f130721

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 285
    const v1, 0x7f130722

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 286
    iget-boolean v2, p0, Lcom/twitter/app/users/CheckableUsersFragment;->a:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 287
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    return-void
.end method

.method private static a(Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 292
    invoke-static {p0, p1}, Lcom/twitter/app/users/CheckableUsersFragment;->b(Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    .line 293
    invoke-static {p1, p0}, Lcom/twitter/app/users/CheckableUsersFragment;->b(Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    .line 294
    return-void
.end method

.method static synthetic a(Lcom/twitter/app/users/CheckableUsersFragment;Lcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/twitter/app/users/CheckableUsersFragment;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method private a(Lcom/twitter/library/service/x;)V
    .locals 6

    .prologue
    .line 599
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 600
    check-cast p1, Lbum;

    .line 601
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lbum;->m:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->ad:Ljava/util/ArrayList;

    .line 603
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->ad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 604
    iget-object v2, p0, Lcom/twitter/app/users/CheckableUsersFragment;->l:Ljava/util/HashSet;

    iget-wide v4, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->p:Lcom/twitter/app/users/t;

    invoke-interface {v0}, Lcom/twitter/app/users/t;->t()V

    .line 607
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->ac:Lcom/twitter/android/ha;

    new-instance v1, Lcmo;

    iget-object v2, p0, Lcom/twitter/app/users/CheckableUsersFragment;->ad:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcmo;-><init>(Ljava/lang/Iterable;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/ha;->a(Lcmf;)Lcmf;

    .line 608
    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 610
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->al()V

    .line 611
    return-void
.end method

.method private a(Lcom/twitter/library/widget/UserView;J)V
    .locals 4

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->an()Landroid/widget/CheckBox;

    move-result-object v0

    .line 437
    iget-object v1, p1, Lcom/twitter/library/widget/UserView;->s:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    iget-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->l:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v1, p2, p3}, Lcom/twitter/library/util/FriendshipCache;->b(J)V

    .line 440
    if-eqz v0, :cond_0

    .line 441
    invoke-direct {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->bg()V

    .line 450
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->p:Lcom/twitter/app/users/t;

    invoke-interface {v0}, Lcom/twitter/app/users/t;->t()V

    .line 451
    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 452
    return-void

    .line 444
    :cond_1
    iget-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->l:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 445
    iget-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v1, p2, p3}, Lcom/twitter/library/util/FriendshipCache;->c(J)V

    .line 446
    if-eqz v0, :cond_0

    .line 447
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method private am()V
    .locals 6

    .prologue
    const v5, 0x7f130723

    const v3, 0x7f130721

    const/4 v4, 0x0

    .line 254
    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->q:Lcom/twitter/android/widget/er;

    invoke-virtual {v1, p0}, Lcom/twitter/android/widget/er;->a(Lcom/twitter/android/widget/dl;)V

    .line 257
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04036e

    .line 258
    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v2

    iget-object v2, v2, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    .line 257
    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 260
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->G:Landroid/view/View;

    .line 261
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 263
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 264
    invoke-static {v0, v1}, Lcom/twitter/app/users/CheckableUsersFragment;->a(Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    .line 265
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->G:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/twitter/app/users/CheckableUsersFragment;->a(Landroid/view/View;)V

    .line 266
    invoke-direct {p0, v2}, Lcom/twitter/app/users/CheckableUsersFragment;->a(Landroid/view/View;)V

    .line 268
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->G:Landroid/view/View;

    .line 269
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 271
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 272
    new-instance v3, Lcom/twitter/app/users/f;

    invoke-direct {v3, p0, v1}, Lcom/twitter/app/users/f;-><init>(Lcom/twitter/app/users/CheckableUsersFragment;Landroid/widget/TextView;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 279
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->q:Lcom/twitter/android/widget/er;

    new-instance v1, Lcom/twitter/android/widget/et;

    invoke-direct {v1, v2}, Lcom/twitter/android/widget/et;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v4, v1}, Lcom/twitter/android/widget/er;->a(ILandroid/widget/BaseAdapter;)V

    .line 280
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->q:Lcom/twitter/android/widget/er;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/er;->a(I)V

    .line 281
    return-void
.end method

.method private an()Landroid/widget/CheckBox;
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->G:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->G:Landroid/view/View;

    const v1, 0x7f130721

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 348
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 1

    .prologue
    .line 297
    new-instance v0, Lcom/twitter/app/users/g;

    invoke-direct {v0, p1}, Lcom/twitter/app/users/g;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 305
    return-void
.end method

.method private bg()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 356
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->G:Landroid/view/View;

    if-nez v0, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->G:Landroid/view/View;

    const v3, 0x7f130723

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 360
    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->T()I

    move-result v3

    .line 362
    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a050f

    new-array v6, v1, [Ljava/lang/Object;

    .line 363
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 362
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    if-lez v3, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->an()Landroid/widget/CheckBox;

    move-result-object v4

    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->l:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private bh()Ljava/lang/String;
    .locals 3

    .prologue
    .line 551
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->ad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    const-string/jumbo v0, "(users_friendship IS NULL OR (users_friendship & 1 == 0)) AND user_groups_user_id!=?"

    .line 554
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(users_friendship IS NULL OR (users_friendship & 1 == 0)) AND user_groups_user_id!=? AND users_user_id NOT IN (?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ?"

    iget-object v2, p0, Lcom/twitter/app/users/CheckableUsersFragment;->ad:Ljava/util/ArrayList;

    .line 555
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/twitter/util/aj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private bi()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 560
    iget-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->ad:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 561
    iget-wide v4, p0, Lcom/twitter/app/users/CheckableUsersFragment;->aa:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    move v1, v0

    .line 562
    :goto_0
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->ad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 563
    add-int/lit8 v3, v1, 0x1

    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->ad:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    iget-wide v4, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 562
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 565
    :cond_0
    return-object v2
.end method

.method private bj()V
    .locals 4

    .prologue
    .line 711
    new-instance v0, Lbum;

    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    const/16 v3, 0x24

    invoke-direct {v0, v1, v2, v3}, Lbum;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;I)V

    .line 713
    const/4 v1, 0x0

    iput-boolean v1, v0, Lbum;->h:Z

    .line 715
    iget-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->M:Lcom/twitter/library/client/bd;

    new-instance v2, Lcom/twitter/app/users/h;

    invoke-direct {v2, p0}, Lcom/twitter/app/users/h;-><init>(Lcom/twitter/app/users/CheckableUsersFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 716
    return-void
.end method

.method private f(Z)V
    .locals 6

    .prologue
    .line 459
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->l:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 461
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->ac:Lcom/twitter/android/ha;

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->ad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 463
    if-eqz p1, :cond_0

    .line 464
    iget-object v2, p0, Lcom/twitter/app/users/CheckableUsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    iget-wide v4, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-virtual {v2, v4, v5}, Lcom/twitter/library/util/FriendshipCache;->b(J)V

    .line 465
    iget-object v2, p0, Lcom/twitter/app/users/CheckableUsersFragment;->l:Ljava/util/HashSet;

    iget-wide v4, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 467
    :cond_0
    iget-object v2, p0, Lcom/twitter/app/users/CheckableUsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    iget-wide v4, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-virtual {v2, v4, v5}, Lcom/twitter/library/util/FriendshipCache;->c(J)V

    .line 468
    iget-object v2, p0, Lcom/twitter/app/users/CheckableUsersFragment;->l:Ljava/util/HashSet;

    iget-wide v4, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->ac:Lcom/twitter/android/ha;

    invoke-virtual {v0}, Lcom/twitter/android/ha;->notifyDataSetChanged()V

    .line 474
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 475
    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->aQ()Landroid/database/Cursor;

    move-result-object v0

    .line 476
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 478
    :cond_3
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 479
    if-eqz p1, :cond_5

    .line 480
    iget-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/util/FriendshipCache;->b(J)V

    .line 481
    iget-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->l:Ljava/util/HashSet;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 486
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 487
    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/yb;

    invoke-virtual {v0}, Lcom/twitter/android/yb;->notifyDataSetChanged()V

    .line 491
    :cond_4
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->p:Lcom/twitter/app/users/t;

    invoke-interface {v0}, Lcom/twitter/app/users/t;->t()V

    .line 492
    return-void

    .line 483
    :cond_5
    iget-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->m:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/util/FriendshipCache;->c(J)V

    .line 484
    iget-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->l:Ljava/util/HashSet;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static g(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 569
    const-string/jumbo v0, "user_groups_tag=?"

    .line 570
    const-string/jumbo v0, "user_groups_tag=? OR "

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(users_friendship IS NULL OR (users_friendship & 1 == 0)) AND user_groups_user_id!=? AND user_groups_type=? AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "user_groups_tag=? OR "

    add-int/lit8 v2, p0, -0x1

    .line 573
    invoke-static {v1, v2}, Lcom/twitter/util/aj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "user_groups_tag=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    return-object v0
.end method

.method private q(I)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 577
    add-int/lit8 v0, p1, 0x2

    new-array v2, v0, [Ljava/lang/String;

    .line 578
    iget-wide v4, p0, Lcom/twitter/app/users/CheckableUsersFragment;->aa:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 579
    const/4 v0, 0x1

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 582
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->J:[Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    .line 583
    :goto_0
    iget-object v3, p0, Lcom/twitter/app/users/CheckableUsersFragment;->J:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 584
    add-int/lit8 v3, v0, 0x2

    iget-object v4, p0, Lcom/twitter/app/users/CheckableUsersFragment;->J:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->K:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 590
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->J:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->J:[Ljava/lang/String;

    array-length v0, v0

    .line 591
    :goto_1
    iget-object v3, p0, Lcom/twitter/app/users/CheckableUsersFragment;->K:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 592
    add-int v3, v0, v1

    add-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/twitter/app/users/CheckableUsersFragment;->K:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 591
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 590
    goto :goto_1

    .line 595
    :cond_2
    return-object v2
.end method


# virtual methods
.method C()V
    .locals 4

    .prologue
    .line 239
    iget v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->t:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 240
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 241
    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->i()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "follow_interest_suggestions:::impression"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 240
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-super {p0}, Lcom/twitter/app/users/UsersFragment;->C()V

    goto :goto_0
.end method

.method protected F()V
    .locals 0

    .prologue
    .line 249
    invoke-super {p0}, Lcom/twitter/app/users/UsersFragment;->F()V

    .line 250
    invoke-direct {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->am()V

    .line 251
    return-void
.end method

.method protected G()V
    .locals 2

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->t_()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->an()Landroid/widget/CheckBox;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/app/users/CheckableUsersFragment;->f(Z)V

    .line 316
    :cond_1
    invoke-super {p0}, Lcom/twitter/app/users/UsersFragment;->G()V

    .line 317
    invoke-direct {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->bg()V

    goto :goto_0
.end method

.method protected H()I
    .locals 2

    .prologue
    .line 322
    invoke-super {p0}, Lcom/twitter/app/users/UsersFragment;->H()I

    move-result v0

    .line 323
    iget-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->ac:Lcom/twitter/android/ha;

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->ac:Lcom/twitter/android/ha;

    invoke-virtual {v1}, Lcom/twitter/android/ha;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 326
    :cond_0
    return v0
.end method

.method protected M()V
    .locals 4

    .prologue
    .line 502
    iget v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->t:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    .line 503
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->J:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->K:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 504
    :cond_0
    sget-object v0, Lcom/twitter/library/provider/dk;->o:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/CheckableUsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->z:Landroid/net/Uri;

    .line 506
    sget-object v0, Lchs;->a:[Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->A:[Ljava/lang/String;

    .line 512
    :goto_0
    const-string/jumbo v0, "LOWER(users_name) ASC"

    iput-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->B:Ljava/lang/String;

    .line 516
    :goto_1
    return-void

    .line 508
    :cond_1
    sget-object v0, Lcom/twitter/library/provider/dk;->z:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/app/users/CheckableUsersFragment;->aa:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->z:Landroid/net/Uri;

    .line 510
    sget-object v0, Lchs;->b:[Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->A:[Ljava/lang/String;

    goto :goto_0

    .line 514
    :cond_2
    invoke-super {p0}, Lcom/twitter/app/users/UsersFragment;->M()V

    goto :goto_1
.end method

.method protected O()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 520
    iget v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->t:I

    sparse-switch v1, :sswitch_data_0

    .line 542
    invoke-super {p0}, Lcom/twitter/app/users/UsersFragment;->O()V

    .line 545
    :goto_0
    return-void

    .line 522
    :sswitch_0
    invoke-direct {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->bh()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->C:Ljava/lang/String;

    .line 523
    invoke-direct {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->bi()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->D:[Ljava/lang/String;

    goto :goto_0

    .line 527
    :sswitch_1
    iget-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->J:[Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->K:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 528
    const-string/jumbo v1, "(users_friendship IS NULL OR (users_friendship & 1 == 0)) AND user_groups_user_id!=?"

    iput-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->C:Ljava/lang/String;

    .line 529
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-wide v2, p0, Lcom/twitter/app/users/CheckableUsersFragment;->aa:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->D:[Ljava/lang/String;

    goto :goto_0

    .line 531
    :cond_0
    iget-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->J:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->J:[Ljava/lang/String;

    array-length v1, v1

    iget-object v2, p0, Lcom/twitter/app/users/CheckableUsersFragment;->K:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->K:[Ljava/lang/String;

    array-length v0, v0

    :cond_1
    add-int/2addr v0, v1

    .line 536
    :goto_1
    invoke-static {v0}, Lcom/twitter/app/users/CheckableUsersFragment;->g(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->C:Ljava/lang/String;

    .line 537
    invoke-direct {p0, v0}, Lcom/twitter/app/users/CheckableUsersFragment;->q(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->D:[Ljava/lang/String;

    goto :goto_0

    .line 531
    :cond_2
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->K:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 520
    :sswitch_data_0
    .sparse-switch
        0x1c -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method protected P()Ljava/lang/String;
    .locals 2

    .prologue
    .line 691
    iget v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->t:I

    sparse-switch v0, :sswitch_data_0

    .line 701
    invoke-super {p0}, Lcom/twitter/app/users/UsersFragment;->P()Ljava/lang/String;

    move-result-object v0

    .line 704
    :goto_0
    return-object v0

    .line 693
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":find_people:stream::results"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 697
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":follow_interest_suggestions:stream::results"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 691
    :sswitch_data_0
    .sparse-switch
        0x1c -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method public synthetic Q()Lcom/twitter/app/users/y;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->o()Lcom/twitter/app/users/i;

    move-result-object v0

    return-object v0
.end method

.method protected a(JLjava/lang/CharSequence;Lcss;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 209
    invoke-super {p0, p1, p2, p3, p4}, Lcom/twitter/app/users/UsersFragment;->a(JLjava/lang/CharSequence;Lcss;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "override_home"

    const/4 v2, 0x1

    .line 210
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 209
    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 141
    invoke-super {p0, p1, p2}, Lcom/twitter/app/users/UsersFragment;->a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 142
    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/twitter/app/common/list/aa;->a(Lcom/twitter/app/common/list/af;)V

    .line 143
    return-object v0
.end method

.method protected a(Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 374
    check-cast p1, Lcom/twitter/library/widget/UserView;

    .line 378
    iget-object v0, p1, Lcom/twitter/library/widget/UserView;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 379
    invoke-direct {p0, p1, p3, p4}, Lcom/twitter/app/users/CheckableUsersFragment;->a(Lcom/twitter/library/widget/UserView;J)V

    .line 380
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 67
    check-cast p1, Lcom/twitter/library/widget/BaseUserView;

    check-cast p2, Lcss;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/app/users/CheckableUsersFragment;->a(Lcom/twitter/library/widget/BaseUserView;Lcss;Landroid/os/Bundle;)V

    return-void
.end method

.method protected a(Lcmf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 418
    invoke-super {p0, p1}, Lcom/twitter/app/users/UsersFragment;->a(Lcmf;)V

    .line 419
    invoke-direct {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->an()Landroid/widget/CheckBox;

    move-result-object v0

    .line 420
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/app/users/CheckableUsersFragment;->f(Z)V

    .line 423
    :cond_0
    invoke-direct {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->bg()V

    .line 424
    return-void
.end method

.method protected a(Lcom/twitter/app/common/list/aj;)V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/twitter/app/users/UsersFragment;->a(Lcom/twitter/app/common/list/aj;)V

    .line 203
    const v0, 0x7f040289

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->d(I)Lcom/twitter/app/common/list/aj;

    .line 204
    return-void
.end method

.method public a(Lcom/twitter/library/client/Session;)V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->l:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->e(Ljava/util/Collection;)[J

    move-result-object v0

    .line 496
    iget-boolean v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->E:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/twitter/app/users/CheckableUsersFragment;->a(Lcom/twitter/library/client/Session;[JZ)V

    .line 497
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->l:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 498
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 661
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/app/users/UsersFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 662
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 663
    packed-switch p2, :pswitch_data_0

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 665
    :pswitch_0
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v0

    .line 666
    invoke-virtual {p0, v0}, Lcom/twitter/app/users/CheckableUsersFragment;->j(I)Z

    .line 667
    iput-boolean v3, p0, Lcom/twitter/app/users/CheckableUsersFragment;->v:Z

    .line 668
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 669
    invoke-virtual {p0, v2}, Lcom/twitter/app/users/CheckableUsersFragment;->a(Z)V

    goto :goto_0

    .line 674
    :pswitch_1
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/twitter/app/users/CheckableUsersFragment;->j(I)Z

    .line 675
    iput-boolean v3, p0, Lcom/twitter/app/users/CheckableUsersFragment;->v:Z

    .line 676
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {p0, v2}, Lcom/twitter/app/users/CheckableUsersFragment;->a(Z)V

    goto :goto_0

    .line 663
    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic a(Lcom/twitter/library/widget/BaseUserView;JII)V
    .locals 6

    .prologue
    .line 67
    move-object v1, p1

    check-cast v1, Lcom/twitter/library/widget/UserView;

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/app/users/CheckableUsersFragment;->a(Lcom/twitter/library/widget/UserView;JII)V

    return-void
.end method

.method public a(Lcom/twitter/library/widget/BaseUserView;Lcss;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 333
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/app/users/UsersFragment;->a(Lcom/twitter/library/widget/BaseUserView;Lcss;Landroid/os/Bundle;)V

    .line 334
    instance-of v0, p1, Lcom/twitter/library/widget/UserView;

    if-eqz v0, :cond_0

    .line 335
    check-cast p1, Lcom/twitter/library/widget/UserView;

    .line 336
    iget-object v0, p1, Lcom/twitter/library/widget/UserView;->s:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->l:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 338
    iget-object v1, p1, Lcom/twitter/library/widget/UserView;->s:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 341
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/library/widget/UserView;JII)V
    .locals 2

    .prologue
    .line 387
    const v0, 0x7f130087

    if-ne p4, v0, :cond_0

    .line 388
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/app/users/CheckableUsersFragment;->a(Lcom/twitter/library/widget/UserView;J)V

    .line 392
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/twitter/app/users/UsersFragment;->a(Lcom/twitter/library/widget/UserView;JII)V

    goto :goto_0
.end method

.method public a(Landroid/widget/AbsListView;IIIZ)Z
    .locals 1

    .prologue
    .line 429
    move-object v0, p1

    check-cast v0, Lcom/twitter/android/widget/PinnedHeaderRefreshableListView;

    invoke-virtual {v0, p2}, Lcom/twitter/android/widget/PinnedHeaderRefreshableListView;->a(I)V

    .line 430
    invoke-super/range {p0 .. p5}, Lcom/twitter/app/users/UsersFragment;->a(Landroid/widget/AbsListView;IIIZ)Z

    move-result v0

    return v0
.end method

.method protected bj_()V
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->t:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->ab()I

    move-result v0

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/CheckableUsersFragment;->k(I)V

    .line 137
    :cond_0
    return-void
.end method

.method e(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    .line 231
    const-string/jumbo v0, "categories::"

    .line 233
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/app/users/UsersFragment;->e(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected e_(I)V
    .locals 6
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 637
    iget v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->t:I

    packed-switch v0, :pswitch_data_0

    .line 654
    invoke-super {p0, p1}, Lcom/twitter/app/users/UsersFragment;->e_(I)V

    .line 657
    :goto_0
    return-void

    .line 639
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/twitter/app/users/CheckableUsersFragment;->p(I)Lcom/twitter/android/yb;

    move-result-object v0

    .line 640
    invoke-virtual {v0, p0}, Lcom/twitter/android/yb;->a(Lcom/twitter/android/kn;)V

    .line 641
    iget-boolean v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->F:Z

    if-eqz v1, :cond_0

    .line 642
    new-instance v1, Lcom/twitter/android/widget/er;

    new-array v2, v4, [Landroid/widget/BaseAdapter;

    aput-object v0, v2, v5

    invoke-direct {v1, v2, v4}, Lcom/twitter/android/widget/er;-><init>([Landroid/widget/BaseAdapter;I)V

    iput-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->q:Lcom/twitter/android/widget/er;

    .line 650
    :goto_1
    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/app/users/CheckableUsersFragment;->q:Lcom/twitter/android/widget/er;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/app/common/list/aa;->a(Lcvt;Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 644
    :cond_0
    new-instance v1, Lcom/twitter/android/ha;

    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0, p0}, Lcom/twitter/android/ha;-><init>(Landroid/content/Context;Lcom/twitter/library/widget/e;Lcom/twitter/android/kn;)V

    iput-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->ac:Lcom/twitter/android/ha;

    .line 645
    iget-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->ac:Lcom/twitter/android/ha;

    new-instance v2, Lcmo;

    iget-object v3, p0, Lcom/twitter/app/users/CheckableUsersFragment;->ad:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Lcmo;-><init>(Ljava/lang/Iterable;)V

    invoke-virtual {v1, v2}, Lcom/twitter/android/ha;->a(Lcmf;)Lcmf;

    .line 646
    new-instance v1, Lcom/twitter/android/widget/er;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/widget/BaseAdapter;

    iget-object v3, p0, Lcom/twitter/app/users/CheckableUsersFragment;->ac:Lcom/twitter/android/ha;

    aput-object v3, v2, v5

    aput-object v0, v2, v4

    invoke-direct {v1, v2, v4}, Lcom/twitter/android/widget/er;-><init>([Landroid/widget/BaseAdapter;I)V

    iput-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->q:Lcom/twitter/android/widget/er;

    goto :goto_1

    .line 637
    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method

.method protected f_(I)Z
    .locals 10

    .prologue
    const/16 v8, 0x28

    const/4 v9, 0x1

    .line 615
    iget v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->t:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 616
    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->J:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->K:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 617
    :cond_0
    new-instance v1, Lcom/twitter/library/api/i;

    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-wide v4, p0, Lcom/twitter/app/users/CheckableUsersFragment;->aa:J

    iget-object v6, p0, Lcom/twitter/app/users/CheckableUsersFragment;->J:[Ljava/lang/String;

    iget-object v7, p0, Lcom/twitter/app/users/CheckableUsersFragment;->K:[Ljava/lang/String;

    invoke-direct/range {v1 .. v8}, Lcom/twitter/library/api/i;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J[Ljava/lang/String;[Ljava/lang/String;I)V

    const/16 v0, 0x1c

    invoke-virtual {p0, v1, v0, p1}, Lcom/twitter/app/users/CheckableUsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 631
    :goto_0
    return v9

    .line 622
    :cond_1
    new-instance v1, Lbum;

    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 623
    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    const/16 v3, 0x21

    invoke-direct {v1, v0, v2, v3}, Lbum;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;I)V

    .line 624
    invoke-virtual {p0, p1}, Lcom/twitter/app/users/CheckableUsersFragment;->i(I)I

    move-result v0

    iput v0, v1, Lbum;->c:I

    .line 625
    if-ne p1, v9, :cond_2

    move v0, v9

    :goto_1
    invoke-virtual {p0, v0}, Lcom/twitter/app/users/CheckableUsersFragment;->c(Z)[J

    move-result-object v0

    iput-object v0, v1, Lbum;->i:[J

    .line 626
    iput v8, v1, Lbum;->j:I

    .line 627
    const/16 v0, 0x1d

    invoke-virtual {p0, v1, v0, p1}, Lcom/twitter/app/users/CheckableUsersFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto :goto_0

    .line 625
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 631
    :cond_3
    invoke-super {p0, p1}, Lcom/twitter/app/users/UsersFragment;->f_(I)Z

    move-result v9

    goto :goto_0
.end method

.method public o()Lcom/twitter/app/users/i;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/app/users/i;->a(Landroid/os/Bundle;)Lcom/twitter/app/users/i;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/twitter/app/users/UsersFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->M:Lcom/twitter/library/client/bd;

    .line 156
    invoke-direct {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->bg()V

    .line 157
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const v2, 0x7f130722

    .line 399
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 400
    const v1, 0x7f130721

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_2

    .line 402
    :cond_0
    if-ne v0, v2, :cond_1

    .line 403
    invoke-direct {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->an()Landroid/widget/CheckBox;

    move-result-object p1

    .line 406
    invoke-virtual {p1}, Landroid/widget/CheckBox;->toggle()V

    .line 410
    :goto_0
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/twitter/app/users/CheckableUsersFragment;->f(Z)V

    .line 414
    :goto_1
    return-void

    .line 408
    :cond_1
    check-cast p1, Landroid/widget/CheckBox;

    goto :goto_0

    .line 412
    :cond_2
    invoke-super {p0, p1}, Lcom/twitter/app/users/UsersFragment;->onClick(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/twitter/app/users/UsersFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->o()Lcom/twitter/app/users/i;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/twitter/app/users/i;->d()Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->a:Z

    .line 104
    invoke-virtual {v0}, Lcom/twitter/app/users/i;->g()Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->E:Z

    .line 105
    invoke-virtual {v0}, Lcom/twitter/app/users/i;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->I:Ljava/lang/String;

    .line 106
    invoke-virtual {v0}, Lcom/twitter/app/users/i;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->H:Ljava/lang/String;

    .line 107
    invoke-virtual {v0}, Lcom/twitter/app/users/i;->j()Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->L:Z

    .line 108
    invoke-static {}, Lcgb;->a()Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->F:Z

    .line 110
    iget-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->I:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/object/g;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    invoke-virtual {v0}, Lcom/twitter/app/users/i;->h()[Ljava/lang/String;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 116
    iput-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->J:[Ljava/lang/String;

    .line 119
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/app/users/i;->i()[Ljava/lang/String;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 121
    iput-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->K:[Ljava/lang/String;

    .line 124
    :cond_1
    if-nez p1, :cond_2

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->ad:Ljava/util/ArrayList;

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_2
    const-string/jumbo v0, "highlighted_users"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->ad:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/twitter/app/users/UsersFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 149
    const-string/jumbo v0, "highlighted_users"

    iget-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->ad:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 150
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 161
    invoke-super {p0, p1, p2}, Lcom/twitter/app/users/UsersFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/android/widget/PinnedHeaderRefreshableListView;

    .line 164
    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 166
    const v2, 0x7f04036f

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->G:Landroid/view/View;

    .line 167
    iget-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->G:Landroid/view/View;

    const v2, 0x7f120170

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 168
    iget-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->G:Landroid/view/View;

    invoke-virtual {v0, v1, v3}, Lcom/twitter/android/widget/PinnedHeaderRefreshableListView;->a(Landroid/view/View;I)V

    .line 169
    iget-object v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->G:Landroid/view/View;

    const v2, 0x7f130721

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/PinnedHeaderRefreshableListView;->setRedrawOnDirtyHeaderView(Landroid/view/View;)V

    .line 170
    return-void
.end method

.method public synthetic p()Lcom/twitter/app/common/list/w;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->o()Lcom/twitter/app/users/i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic q()Lcom/twitter/app/common/base/f;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->o()Lcom/twitter/app/users/i;

    move-result-object v0

    return-object v0
.end method

.method protected v()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Lcom/twitter/app/users/UsersFragment;->v()V

    .line 175
    iget-boolean v0, p0, Lcom/twitter/app/users/CheckableUsersFragment;->F:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->ab()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/twitter/app/users/CheckableUsersFragment;->k(I)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->bj()V

    goto :goto_0
.end method

.method protected w()Landroid/view/ViewGroup;
    .locals 5

    .prologue
    .line 185
    invoke-super {p0}, Lcom/twitter/app/users/UsersFragment;->w()Landroid/view/ViewGroup;

    move-result-object v0

    .line 186
    iget-boolean v1, p0, Lcom/twitter/app/users/CheckableUsersFragment;->L:Z

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/app/users/CheckableUsersFragment;->H:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/app/users/CheckableUsersFragment;->I:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/twitter/android/bl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 188
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 190
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    :goto_0
    return-object v0

    .line 192
    :cond_0
    new-instance v1, Lcom/twitter/ui/widget/PromptView;

    invoke-virtual {p0}, Lcom/twitter/app/users/CheckableUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/twitter/ui/widget/PromptView;-><init>(Landroid/content/Context;)V

    .line 193
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/twitter/ui/widget/PromptView;->setIsHeader(Z)V

    .line 194
    iget-object v2, p0, Lcom/twitter/app/users/CheckableUsersFragment;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/twitter/ui/widget/PromptView;->setTitle(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected x()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method protected y()Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method
