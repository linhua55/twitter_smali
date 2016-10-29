.class public Lcom/twitter/android/DMMessageDialog;
.super Lcom/twitter/android/BaseDMMessageDialog;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/twitter/android/BaseDMMessageDialog;-><init>()V

    return-void
.end method

.method public static a(ILcom/twitter/model/dms/l;Lcom/twitter/android/dg;)Lcom/twitter/android/DMMessageDialog;
    .locals 2

    .prologue
    .line 19
    invoke-static {p1}, Lcom/twitter/android/DMMessageDialog;->b(Lcom/twitter/model/dms/l;)[I

    move-result-object v0

    .line 20
    invoke-static {p0, v0}, Lcom/twitter/android/DMMessageDialog;->a(I[I)Lcom/twitter/android/DMMessageDialog;

    move-result-object v1

    .line 21
    invoke-virtual {v1, p1, v0, p2}, Lcom/twitter/android/DMMessageDialog;->a(Lcom/twitter/model/dms/l;[ILcom/twitter/android/dg;)V

    .line 22
    return-object v1
.end method

.method private static a(I[I)Lcom/twitter/android/DMMessageDialog;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/twitter/android/do;

    invoke-direct {v0, p0}, Lcom/twitter/android/do;-><init>(I)V

    .line 28
    invoke-virtual {v0, p1}, Lcom/twitter/android/do;->a([I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 29
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/DMMessageDialog;

    .line 27
    return-object v0
.end method

.method static b(Lcom/twitter/model/dms/l;)[I
    .locals 7

    .prologue
    const/4 v1, 0x0

    const v6, 0x7f0a026e

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v2

    .line 35
    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0a0229

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v2

    .line 36
    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p0

    .line 37
    check-cast v0, Lcom/twitter/model/dms/bd;

    invoke-virtual {v0}, Lcom/twitter/model/dms/bd;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a00fe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    invoke-virtual {v2, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 49
    :goto_1
    invoke-virtual {v2}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->d(Ljava/util/Collection;)[I

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    .line 35
    goto :goto_0

    .line 40
    :cond_2
    new-array v0, v5, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f0a06f9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {v2, v0}, Lcom/twitter/util/collection/r;->b([Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_1

    .line 43
    :cond_3
    const-string/jumbo v0, "dm_forwarding_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 44
    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->u()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->z()Z

    move-result v0

    if-nez v0, :cond_5

    .line 45
    :cond_4
    const v0, 0x7f0a03c7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 47
    :cond_5
    new-array v0, v5, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f0a02aa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {v2, v0}, Lcom/twitter/util/collection/r;->b([Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_1
.end method


# virtual methods
.method protected a(Lcom/twitter/model/dms/l;)V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p1}, Lcom/twitter/model/dms/l;->m()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lcom/twitter/android/DMMessageDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    return-void
.end method
