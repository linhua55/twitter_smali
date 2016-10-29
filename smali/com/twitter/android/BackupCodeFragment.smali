.class public Lcom/twitter/android/BackupCodeFragment;
.super Lcom/twitter/app/common/list/TwitterListFragment;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/base/j;
.implements Lcom/twitter/app/common/base/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/list/TwitterListFragment",
        "<",
        "Landroid/database/Cursor;",
        "Lcom/twitter/android/ae;",
        ">;",
        "Lcom/twitter/app/common/base/j;",
        "Lcom/twitter/app/common/base/m;"
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/BackupCodeFragment;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/twitter/app/common/list/TwitterListFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    invoke-static {p0}, Lcom/twitter/android/BackupCodeFragment;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 145
    iget-object v0, p0, Lcom/twitter/android/BackupCodeFragment;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-static {p1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v3

    const-string/jumbo v2, "code"

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 149
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 153
    :goto_0
    new-instance v1, Lcmb;

    invoke-direct {v1, v0}, Lcmb;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {p0, v1}, Lcom/twitter/android/BackupCodeFragment;->b(Lcmf;)V

    .line 154
    iput-object p1, p0, Lcom/twitter/android/BackupCodeFragment;->b:Ljava/lang/String;

    .line 156
    :cond_0
    return-void

    .line 151
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    .line 264
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    .line 265
    :cond_0
    const-string/jumbo v0, ""

    .line 267
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 252
    if-eqz v0, :cond_0

    .line 253
    invoke-static {v0}, Lcom/twitter/android/ae;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 256
    const v0, 0x7f0a0226

    invoke-virtual {p0, v0}, Lcom/twitter/android/BackupCodeFragment;->a(I)V

    .line 260
    :cond_0
    return-void
.end method

.method private m()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 319
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/BackupCodeFragment;->aa:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "backup_code::take_screenshot::impression"

    aput-object v3, v1, v2

    .line 320
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 319
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 321
    new-instance v0, Lcom/twitter/android/widget/ec;

    invoke-direct {v0, v4}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a04e8

    .line 322
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->a(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a04f9

    .line 323
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->b(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a09bb

    .line 324
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a05a7

    .line 325
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 326
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 327
    invoke-virtual {v0, p0}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Lcom/twitter/app/common/base/j;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 328
    invoke-virtual {v0, p0}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/Fragment;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 329
    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 330
    return-void
.end method

.method private n()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 357
    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 358
    invoke-virtual {v0, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 359
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/media/util/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 360
    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 362
    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_0

    .line 364
    new-instance v2, Lcom/twitter/android/ag;

    const v3, 0x7f0a0720

    .line 365
    invoke-virtual {p0, v3}, Lcom/twitter/android/BackupCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcom/twitter/android/ag;-><init>(Lcom/twitter/android/BackupCodeFragment;Landroid/content/Context;Ljava/lang/String;)V

    .line 366
    new-array v0, v5, [Landroid/graphics/Bitmap;

    aput-object v1, v0, v4

    invoke-virtual {v2, v0}, Lcom/twitter/android/ag;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeFragment;->k()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 107
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->a()V

    .line 108
    iget-object v0, p0, Lcom/twitter/android/BackupCodeFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/twitter/android/BackupCodeFragment;->l(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lbkq;

    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lbkq;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Z)V

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1, v4}, Lcom/twitter/android/BackupCodeFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 112
    :cond_0
    return-void
.end method

.method a(I)V
    .locals 3

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0, p1}, Lcom/twitter/android/BackupCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 275
    :cond_0
    return-void
.end method

.method public a(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 313
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/BackupCodeFragment;->aa:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "backup_code::take_screenshot:cancel:click"

    aput-object v3, v1, v2

    .line 314
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 313
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 315
    return-void
.end method

.method public a(Landroid/content/DialogInterface;II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 280
    if-ne p2, v1, :cond_0

    .line 281
    const/4 v0, -0x1

    if-ne p3, v0, :cond_2

    .line 282
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/BackupCodeFragment;->aa:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "backup_code::take_screenshot:ok:click"

    aput-object v2, v1, v4

    .line 283
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 282
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 285
    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 286
    invoke-static {}, Lcom/twitter/android/lb;->a()Lcom/twitter/android/lb;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/BackupCodeFragment;->a:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/lb;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    invoke-direct {p0}, Lcom/twitter/android/BackupCodeFragment;->n()V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    new-instance v1, Lcom/twitter/android/runtimepermissions/b;

    .line 290
    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a071c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/BackupCodeFragment;->a:[Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/twitter/android/runtimepermissions/b;-><init>(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;)V

    const-string/jumbo v0, "backup_code::take_screenshot:"

    .line 292
    invoke-virtual {v1, v0}, Lcom/twitter/android/runtimepermissions/b;->f(Ljava/lang/String;)Lcom/twitter/android/runtimepermissions/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/runtimepermissions/b;->a()Landroid/content/Intent;

    move-result-object v0

    .line 293
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/BackupCodeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 296
    :cond_2
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/BackupCodeFragment;->aa:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "backup_code::take_screenshot:cancel:click"

    aput-object v2, v1, v4

    .line 297
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 296
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0
.end method

.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 239
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p3, v1, :cond_1

    if-eqz v0, :cond_1

    .line 240
    const-string/jumbo v1, ""

    invoke-direct {p0, v1}, Lcom/twitter/android/BackupCodeFragment;->b(Ljava/lang/String;)V

    .line 241
    iget-wide v2, p0, Lcom/twitter/android/BackupCodeFragment;->aa:J

    invoke-static {v0, v2, v3}, Lblh;->c(Landroid/content/Context;J)V

    .line 242
    new-instance v0, Lbkq;

    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Lbkq;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Z)V

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1, v4}, Lcom/twitter/android/BackupCodeFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/bl;

    invoke-virtual {v0, p3}, Lcom/twitter/android/widget/bl;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/twitter/android/BackupCodeFragment;->l()V

    goto :goto_0
.end method

.method protected a(Lcom/twitter/app/common/list/aj;)V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/app/common/list/aj;)V

    .line 178
    const v0, 0x7f04004c

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->c(I)Lcom/twitter/app/common/list/aj;

    .line 179
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 117
    packed-switch p2, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p1

    .line 119
    check-cast v0, Lbkq;

    invoke-virtual {v0}, Lbkq;->e()Lcom/twitter/model/account/a;

    move-result-object v0

    .line 120
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->U()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/twitter/model/account/a;->a()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/BackupCodeFragment;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_1
    move-object v0, p1

    .line 126
    check-cast v0, Lbkq;

    invoke-virtual {v0}, Lbkq;->e()Lcom/twitter/model/account/a;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->U()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/twitter/model/account/a;->a()[Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->a([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    new-instance v0, Lbkq;

    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lbkq;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Z)V

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1, v3}, Lcom/twitter/android/BackupCodeFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto :goto_0

    .line 133
    :cond_1
    aget-object v0, v0, v3

    invoke-virtual {p0, v0, v3}, Lcom/twitter/android/BackupCodeFragment;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method a(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 334
    if-eqz p1, :cond_0

    .line 335
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/BackupCodeFragment;->aa:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "backup_code::take_screenshot::success"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 336
    const v0, 0x7f0a072b

    invoke-virtual {p0, v0}, Lcom/twitter/android/BackupCodeFragment;->a(I)V

    .line 340
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeFragment;->k()V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 160
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    const v1, 0x7f0a04ee

    invoke-virtual {p0, v1}, Lcom/twitter/android/BackupCodeFragment;->a(I)V

    .line 162
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-direct {p0, p1}, Lcom/twitter/android/BackupCodeFragment;->b(Ljava/lang/String;)V

    .line 170
    if-eqz p2, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/twitter/android/BackupCodeFragment;->m()V

    goto :goto_0
.end method

.method k()V
    .locals 4

    .prologue
    .line 344
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/BackupCodeFragment;->aa:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "backup_code::take_screenshot::failure"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 345
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a0916

    .line 346
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->a(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a0917

    .line 347
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->b(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a05e4

    .line 348
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 349
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 350
    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 351
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 304
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/app/common/list/TwitterListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 305
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-static {p3}, Lcom/twitter/android/runtimepermissions/PermissionRequestActivity;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/twitter/android/BackupCodeFragment;->n()V

    .line 308
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 76
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0, v7}, Lcom/twitter/android/BackupCodeFragment;->setRetainInstance(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeFragment;->p()Lcom/twitter/app/common/list/w;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 81
    const-string/jumbo v2, "bc_account_id"

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/android/BackupCodeFragment;->aa:J

    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/BackupCodeFragment;->aa:J

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "backup_code::::impression"

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v1

    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    .line 90
    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v1, "show_welcome"

    invoke-virtual {v0, v1, v6}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-direct {p0}, Lcom/twitter/android/BackupCodeFragment;->m()V

    .line 93
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/list/TwitterListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 99
    new-instance v1, Lcom/twitter/android/ae;

    invoke-direct {v1, v0}, Lcom/twitter/android/ae;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {p0}, Lcom/twitter/android/BackupCodeFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v2

    new-instance v3, Lcom/twitter/android/af;

    invoke-direct {v3, v0, v1}, Lcom/twitter/android/af;-><init>(Landroid/content/Context;Lcom/twitter/android/ae;)V

    invoke-virtual {v2, v1, v3}, Lcom/twitter/app/common/list/aa;->a(Lcvt;Landroid/widget/ListAdapter;)V

    .line 102
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/twitter/android/BackupCodeFragment;->b(Ljava/lang/String;)V

    .line 103
    return-void
.end method
