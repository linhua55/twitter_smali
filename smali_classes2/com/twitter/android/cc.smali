.class public Lcom/twitter/android/cc;
.super Lbkj;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/dm/aa;
.implements Lcom/twitter/android/dm/au;
.implements Lcom/twitter/android/dm/widget/r;
.implements Lcom/twitter/android/dm/z;
.implements Lcom/twitter/android/dm;
.implements Lcom/twitter/library/view/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkj",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/twitter/android/dm;",
        "Lcom/twitter/android/dm/aa;",
        "Lcom/twitter/android/dm/au;",
        "Lcom/twitter/android/dm/widget/r;",
        "Lcom/twitter/android/dm/z;",
        "Lcom/twitter/library/view/m;"
    }
.end annotation


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;

.field private static final b:Ljava/text/SimpleDateFormat;

.field private static final c:Ljava/text/SimpleDateFormat;


# instance fields
.field private final A:Z

.field private final B:Lws;

.field private final C:Lcom/twitter/library/card/q;

.field private D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lclj;",
            ">;"
        }
    .end annotation
.end field

.field private final E:Z

.field private F:Lcom/twitter/android/wc;

.field private G:Laev;

.field private final H:I

.field private final I:I

.field private J:Lcom/twitter/model/dms/ao;

.field private final K:Z

.field private final L:Z

.field private M:J

.field private N:I

.field private final O:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private P:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/twitter/android/dm/widget/SentMessageBylineView;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Z

.field private R:Lcom/twitter/android/nr;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/library/widget/UserView;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private final h:Landroid/content/Context;

.field private final i:Lcom/twitter/library/network/aa;

.field private final j:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private final k:Lcom/twitter/android/by;

.field private final l:Lcom/twitter/android/dl;

.field private final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Z

.field private final p:Z

.field private final q:J

.field private s:Z

.field private t:Z

.field private u:Ljava/lang/String;

.field private final v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/lang/String;

.field private final x:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Z

.field private final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    sput-object v0, Lcom/twitter/android/cc;->a:Ljava/text/SimpleDateFormat;

    .line 122
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    sput-object v0, Lcom/twitter/android/cc;->b:Ljava/text/SimpleDateFormat;

    .line 124
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    sput-object v0, Lcom/twitter/android/cc;->c:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/android/ce;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-static {p1}, Lcom/twitter/android/ce;->a(Lcom/twitter/android/ce;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lbkj;-><init>(Landroid/content/Context;I)V

    .line 126
    invoke-static {}, Lcom/twitter/util/collection/MutableMap;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/cc;->d:Ljava/util/Map;

    .line 127
    invoke-static {}, Lcom/twitter/util/collection/MutableMap;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/cc;->e:Ljava/util/Map;

    .line 128
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/cc;->f:Ljava/util/Set;

    .line 129
    iput-boolean v1, p0, Lcom/twitter/android/cc;->g:Z

    .line 136
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/cc;->m:Ljava/util/Set;

    .line 137
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/cc;->n:Ljava/util/Set;

    .line 144
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/cc;->v:Ljava/util/Set;

    .line 146
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/cc;->x:Ljava/util/Set;

    .line 168
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twitter/android/cc;->M:J

    .line 169
    const/4 v0, 0x1

    iput v0, p0, Lcom/twitter/android/cc;->N:I

    .line 171
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/cc;->O:Ljava/util/Set;

    .line 172
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/android/cc;->P:Ljava/lang/ref/WeakReference;

    .line 181
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 182
    invoke-static {p1}, Lcom/twitter/android/ce;->a(Lcom/twitter/android/ce;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/cc;->h:Landroid/content/Context;

    .line 183
    new-instance v1, Lcom/twitter/library/network/aa;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->h()Lcom/twitter/model/account/OAuthToken;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/twitter/library/network/aa;-><init>(Lcom/twitter/model/account/OAuthToken;)V

    iput-object v1, p0, Lcom/twitter/android/cc;->i:Lcom/twitter/library/network/aa;

    .line 184
    invoke-static {p1}, Lcom/twitter/android/ce;->b(Lcom/twitter/android/ce;)Lcom/twitter/android/by;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/cc;->k:Lcom/twitter/android/by;

    .line 185
    invoke-static {p1}, Lcom/twitter/android/ce;->c(Lcom/twitter/android/ce;)Lcom/twitter/android/dl;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/cc;->l:Lcom/twitter/android/dl;

    .line 186
    iget-object v1, p0, Lcom/twitter/android/cc;->l:Lcom/twitter/android/dl;

    invoke-virtual {v1, p0}, Lcom/twitter/android/dl;->a(Lcom/twitter/android/dm;)V

    .line 187
    invoke-static {p1}, Lcom/twitter/android/ce;->d(Lcom/twitter/android/ce;)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/cc;->j:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 189
    invoke-static {p1}, Lcom/twitter/android/ce;->e(Lcom/twitter/android/ce;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/cc;->z:Z

    .line 190
    invoke-static {p1}, Lcom/twitter/android/ce;->f(Lcom/twitter/android/ce;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/cc;->A:Z

    .line 191
    invoke-static {p1}, Lcom/twitter/android/ce;->g(Lcom/twitter/android/ce;)Lws;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/cc;->B:Lws;

    .line 192
    invoke-static {p1}, Lcom/twitter/android/ce;->h(Lcom/twitter/android/ce;)Lcom/twitter/library/card/q;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/cc;->C:Lcom/twitter/library/card/q;

    .line 194
    invoke-static {p1}, Lcom/twitter/android/ce;->i(Lcom/twitter/android/ce;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/cc;->o:Z

    .line 195
    invoke-static {p1}, Lcom/twitter/android/ce;->j(Lcom/twitter/android/ce;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/cc;->p:Z

    .line 196
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/android/cc;->q:J

    .line 199
    sget-object v1, Lcom/twitter/android/cc;->a:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/twitter/android/cc;->h:Landroid/content/Context;

    const v3, 0x7f0a0a79

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 200
    sget-object v1, Lcom/twitter/android/cc;->b:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/twitter/android/cc;->h:Landroid/content/Context;

    const v3, 0x7f0a0a76

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 201
    sget-object v1, Lcom/twitter/android/cc;->c:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/twitter/android/cc;->h:Landroid/content/Context;

    const v3, 0x7f0a0a78

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 203
    invoke-static {p1}, Lcom/twitter/android/ce;->k(Lcom/twitter/android/ce;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/cc;->K:Z

    .line 204
    invoke-static {p1}, Lcom/twitter/android/ce;->l(Lcom/twitter/android/ce;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/cc;->L:Z

    .line 205
    invoke-static {}, Lbnv;->k()Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/cc;->y:Z

    .line 207
    invoke-static {}, Lbnv;->o()Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/cc;->E:Z

    .line 209
    iget-object v1, p0, Lcom/twitter/android/cc;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 210
    const v2, 0x7f0f04e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/cc;->H:I

    .line 211
    iget v2, p0, Lcom/twitter/android/cc;->H:I

    const v3, 0x7f0f007b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/twitter/android/cc;->I:I

    .line 213
    iget-boolean v1, p0, Lcom/twitter/android/cc;->E:Z

    if-eqz v1, :cond_0

    .line 214
    new-instance v1, Laev;

    new-instance v2, Lazm;

    new-instance v3, Ladd;

    .line 215
    invoke-virtual {p0}, Lcom/twitter/android/cc;->j()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ladd;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    invoke-direct {v2, v3}, Lazm;-><init>(Lazt;)V

    new-instance v0, Lazm;

    new-instance v3, Ladb;

    .line 217
    invoke-virtual {p0}, Lcom/twitter/android/cc;->j()Landroid/content/Context;

    move-result-object v4

    iget-wide v6, p0, Lcom/twitter/android/cc;->q:J

    invoke-static {v4, v6, v7}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v4

    invoke-direct {v3, v4}, Ladb;-><init>(Lcom/twitter/library/provider/dm;)V

    invoke-direct {v0, v3}, Lazm;-><init>(Lazt;)V

    invoke-direct {v1, v2, v0}, Laev;-><init>(Lazt;Lazt;)V

    iput-object v1, p0, Lcom/twitter/android/cc;->G:Laev;

    .line 219
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/ce;Lcom/twitter/android/cd;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/twitter/android/cc;-><init>(Lcom/twitter/android/ce;)V

    return-void
.end method

.method private a(ILandroid/view/ViewGroup;Z)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/twitter/android/cc;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/cc;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/twitter/android/cc;->e:Ljava/util/Map;

    return-object v0
.end method

.method private a(Lcom/twitter/model/dms/b;Lxa;)Lwz;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 412
    invoke-virtual {p1}, Lcom/twitter/model/dms/b;->i()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 510
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 416
    :pswitch_1
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/l;

    .line 417
    invoke-direct {p0, p1}, Lcom/twitter/android/cc;->b(Lcom/twitter/model/dms/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    invoke-static {p2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxu;

    .line 419
    new-instance v2, Lzj;

    invoke-direct {v2}, Lzj;-><init>()V

    .line 420
    invoke-virtual {v2, v1}, Lzj;->a(Lxa;)Lwz;

    move-result-object v1

    check-cast v1, Lzj;

    .line 421
    invoke-virtual {v1, v0}, Lzj;->a(Lcom/twitter/model/dms/b;)Lwz;

    move-result-object v0

    check-cast v0, Lzj;

    .line 422
    invoke-virtual {v0, p0}, Lzj;->a(Lcom/twitter/android/dm/au;)Lzj;

    move-result-object v0

    goto :goto_0

    .line 425
    :cond_0
    iget-wide v6, p0, Lcom/twitter/android/cc;->q:J

    invoke-virtual {p1, v6, v7}, Lcom/twitter/model/dms/b;->b(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 426
    invoke-static {p2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzg;

    .line 427
    new-instance v2, Lze;

    invoke-direct {v2}, Lze;-><init>()V

    iget-boolean v5, p0, Lcom/twitter/android/cc;->L:Z

    .line 428
    invoke-virtual {v2, v5}, Lze;->e(Z)Lze;

    move-result-object v5

    iget v2, p0, Lcom/twitter/android/cc;->N:I

    .line 429
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v5, v2}, Lze;->a(I)Lze;

    move-result-object v2

    iget-object v5, p0, Lcom/twitter/android/cc;->J:Lcom/twitter/model/dms/ao;

    .line 430
    invoke-virtual {v2, v5}, Lze;->a(Lcom/twitter/model/dms/ao;)Lze;

    move-result-object v5

    iget-wide v6, p0, Lcom/twitter/android/cc;->M:J

    .line 431
    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->l()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lze;->f(Z)Lze;

    move-result-object v2

    .line 432
    invoke-virtual {v2, v1}, Lze;->a(Lxa;)Lwz;

    move-result-object v1

    check-cast v1, Lyl;

    .line 440
    :goto_2
    iget-boolean v2, p0, Lcom/twitter/android/cc;->A:Z

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/twitter/android/cc;->c(Lcom/twitter/model/dms/l;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 442
    :goto_3
    invoke-virtual {v1, v0}, Lyl;->a(Lcom/twitter/model/dms/b;)Lwz;

    move-result-object v0

    check-cast v0, Lyl;

    .line 443
    invoke-virtual {v0, p0}, Lyl;->a(Lcom/twitter/android/dm/aa;)Lyl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/android/cc;->s:Z

    .line 444
    invoke-virtual {v0, v1}, Lyl;->a(Z)Lyl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/android/cc;->p:Z

    .line 445
    invoke-virtual {v0, v1}, Lyl;->b(Z)Lyl;

    move-result-object v0

    .line 446
    invoke-virtual {v0, v3}, Lyl;->c(Z)Lyl;

    move-result-object v0

    .line 447
    invoke-virtual {v0, p0}, Lyl;->a(Lcom/twitter/library/view/m;)Lyl;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/cc;->k:Lcom/twitter/android/by;

    .line 448
    invoke-virtual {v0, v1}, Lyl;->a(Lcom/twitter/android/by;)Lyl;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/cc;->j:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 449
    invoke-virtual {v0, v1}, Lyl;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lyl;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/cc;->i:Lcom/twitter/library/network/aa;

    .line 450
    invoke-virtual {v0, v1}, Lyl;->a(Lcom/twitter/library/network/aa;)Lyl;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/cc;->a:Ljava/text/SimpleDateFormat;

    .line 451
    invoke-virtual {v0, v1}, Lyl;->a(Ljava/text/SimpleDateFormat;)Lyl;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/cc;->b:Ljava/text/SimpleDateFormat;

    .line 452
    invoke-virtual {v0, v1}, Lyl;->b(Ljava/text/SimpleDateFormat;)Lyl;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/cc;->c:Ljava/text/SimpleDateFormat;

    .line 453
    invoke-virtual {v0, v1}, Lyl;->c(Ljava/text/SimpleDateFormat;)Lyl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/android/cc;->y:Z

    .line 454
    invoke-virtual {v0, v1}, Lyl;->d(Z)Lyl;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/cc;->R:Lcom/twitter/android/nr;

    .line 455
    invoke-virtual {v0, v1}, Lyl;->a(Lcom/twitter/android/nr;)Lyl;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    move v2, v4

    .line 431
    goto :goto_1

    .line 434
    :cond_2
    invoke-static {p2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lza;

    .line 435
    new-instance v2, Lyz;

    invoke-direct {v2}, Lyz;-><init>()V

    iget-object v5, p0, Lcom/twitter/android/cc;->F:Lcom/twitter/android/wc;

    .line 436
    invoke-virtual {v2, v5}, Lyz;->a(Lcom/twitter/android/wc;)Lyz;

    move-result-object v2

    .line 437
    invoke-virtual {v2, v1}, Lyz;->a(Lxa;)Lwz;

    move-result-object v1

    check-cast v1, Lyl;

    goto :goto_2

    :cond_3
    move v3, v4

    .line 440
    goto :goto_3

    .line 459
    :pswitch_2
    invoke-static {p2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxn;

    .line 460
    new-instance v1, Lxm;

    invoke-direct {v1}, Lxm;-><init>()V

    .line 461
    invoke-virtual {v1, v0}, Lxm;->a(Lxa;)Lwz;

    move-result-object v0

    check-cast v0, Lxm;

    .line 462
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/b;

    invoke-virtual {v0, v1}, Lxm;->a(Lcom/twitter/model/dms/b;)Lwz;

    move-result-object v0

    check-cast v0, Lxm;

    iget-object v1, p0, Lcom/twitter/android/cc;->u:Ljava/lang/String;

    .line 463
    invoke-virtual {v0, v1}, Lxm;->a(Ljava/lang/String;)Lxm;

    move-result-object v0

    goto/16 :goto_0

    .line 466
    :pswitch_3
    invoke-static {p2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxy;

    .line 467
    new-instance v1, Lxx;

    invoke-direct {v1}, Lxx;-><init>()V

    .line 468
    invoke-virtual {v1, v0}, Lxx;->a(Lxa;)Lwz;

    move-result-object v0

    check-cast v0, Lxx;

    .line 469
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/b;

    invoke-virtual {v0, v1}, Lxx;->a(Lcom/twitter/model/dms/b;)Lwz;

    move-result-object v0

    check-cast v0, Lxx;

    .line 470
    invoke-virtual {v0, p0}, Lxx;->a(Lcom/twitter/android/dm/z;)Lxx;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/android/cc;->o:Z

    .line 471
    invoke-virtual {v0, v1}, Lxx;->a(Z)Lxx;

    move-result-object v0

    goto/16 :goto_0

    .line 474
    :pswitch_4
    invoke-static {p2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxu;

    .line 475
    new-instance v1, Lyp;

    invoke-direct {v1}, Lyp;-><init>()V

    .line 476
    invoke-virtual {v1, v0}, Lyp;->a(Lxa;)Lwz;

    move-result-object v0

    check-cast v0, Lyp;

    .line 477
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/b;

    invoke-virtual {v0, v1}, Lyp;->a(Lcom/twitter/model/dms/b;)Lwz;

    move-result-object v0

    goto/16 :goto_0

    .line 480
    :pswitch_5
    invoke-static {p2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxu;

    .line 481
    new-instance v1, Lys;

    invoke-direct {v1}, Lys;-><init>()V

    .line 482
    invoke-virtual {v1, v0}, Lys;->a(Lxa;)Lwz;

    move-result-object v0

    check-cast v0, Lys;

    .line 483
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/b;

    invoke-virtual {v0, v1}, Lys;->a(Lcom/twitter/model/dms/b;)Lwz;

    move-result-object v0

    goto/16 :goto_0

    .line 486
    :pswitch_6
    invoke-static {p2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxu;

    .line 487
    new-instance v1, Lxj;

    invoke-direct {v1}, Lxj;-><init>()V

    .line 488
    invoke-virtual {v1, v0}, Lxj;->a(Lxa;)Lwz;

    move-result-object v0

    check-cast v0, Lxj;

    .line 489
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/b;

    invoke-virtual {v0, v1}, Lxj;->a(Lcom/twitter/model/dms/b;)Lwz;

    move-result-object v0

    goto/16 :goto_0

    .line 492
    :pswitch_7
    invoke-static {p2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxu;

    .line 493
    new-instance v1, Lyv;

    invoke-direct {v1}, Lyv;-><init>()V

    .line 494
    invoke-virtual {v1, v0}, Lyv;->a(Lxa;)Lwz;

    move-result-object v0

    check-cast v0, Lyv;

    .line 495
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/b;

    invoke-virtual {v0, v1}, Lyv;->a(Lcom/twitter/model/dms/b;)Lwz;

    move-result-object v0

    goto/16 :goto_0

    .line 498
    :pswitch_8
    invoke-static {p2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxu;

    .line 499
    new-instance v1, Lxg;

    invoke-direct {v1}, Lxg;-><init>()V

    .line 500
    invoke-virtual {v1, v0}, Lxg;->a(Lxa;)Lwz;

    move-result-object v0

    check-cast v0, Lxg;

    .line 501
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/b;

    invoke-virtual {v0, v1}, Lxg;->a(Lcom/twitter/model/dms/b;)Lwz;

    move-result-object v0

    goto/16 :goto_0

    .line 504
    :pswitch_9
    invoke-static {p2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxu;

    .line 505
    new-instance v1, Lxd;

    invoke-direct {v1}, Lxd;-><init>()V

    .line 506
    invoke-virtual {v1, v0}, Lxd;->a(Lxa;)Lwz;

    move-result-object v0

    check-cast v0, Lxd;

    .line 507
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/b;

    invoke-virtual {v0, v1}, Lxd;->a(Lcom/twitter/model/dms/b;)Lwz;

    move-result-object v0

    goto/16 :goto_0

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private a(Landroid/view/View;Z)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const v3, 0x7f13030a

    .line 517
    iget-object v0, p0, Lcom/twitter/android/cc;->F:Lcom/twitter/android/wc;

    if-nez v0, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/cc;->F:Lcom/twitter/android/wc;

    invoke-virtual {v0}, Lcom/twitter/android/wc;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 524
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 527
    :cond_2
    const/4 v0, 0x0

    .line 530
    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/twitter/android/cc;->F:Lcom/twitter/android/wc;

    invoke-virtual {v2}, Lcom/twitter/android/wc;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 532
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 533
    if-nez v2, :cond_3

    .line 536
    const v2, 0x7f0400cb

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v0, v1}, Lcom/twitter/android/cc;->a(ILandroid/view/ViewGroup;Z)Landroid/view/ViewGroup;

    move v0, v1

    .line 540
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 541
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/twitter/android/cc;->G:Laev;

    if-eqz v2, :cond_0

    .line 542
    if-eqz p2, :cond_5

    .line 543
    iget-boolean v2, p0, Lcom/twitter/android/cc;->y:Z

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 545
    const v2, 0x7f130302

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 546
    iget-object v3, p0, Lcom/twitter/android/cc;->h:Landroid/content/Context;

    const v4, 0x7f020135

    .line 547
    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 548
    iget-object v4, p0, Lcom/twitter/android/cc;->h:Landroid/content/Context;

    const v5, 0x7f120088

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v3, v4}, Lbkd;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 549
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 552
    iget v3, p0, Lcom/twitter/android/cc;->I:I

    iget v4, p0, Lcom/twitter/android/cc;->H:I

    iget v5, p0, Lcom/twitter/android/cc;->H:I

    iget v6, p0, Lcom/twitter/android/cc;->H:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 555
    :cond_4
    iget-object v2, p0, Lcom/twitter/android/cc;->F:Lcom/twitter/android/wc;

    .line 556
    invoke-virtual {p0}, Lcom/twitter/android/cc;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/cc;->G:Laev;

    .line 555
    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/twitter/android/wc;->a(Landroid/view/View;ZLandroid/content/Context;Laev;)V

    goto :goto_0

    .line 558
    :cond_5
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/cc;Z)Z
    .locals 0

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/twitter/android/cc;->g:Z

    return p1
.end method

.method private b(Lcom/twitter/model/dms/b;)Z
    .locals 4

    .prologue
    .line 641
    invoke-virtual {p1}, Lcom/twitter/model/dms/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/cc;->m:Ljava/util/Set;

    iget-wide v2, p1, Lcom/twitter/model/dms/b;->d:J

    .line 642
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 641
    :goto_0
    return v0

    .line 642
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lcom/twitter/model/dms/l;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 853
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->p()Lcom/twitter/model/dms/i;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/ap;

    move-object v2, v0

    .line 855
    :goto_0
    if-nez v2, :cond_1

    .line 856
    const/4 v0, 0x0

    .line 861
    :goto_1
    return v0

    :cond_0
    move-object v2, v1

    .line 854
    goto :goto_0

    .line 859
    :cond_1
    invoke-virtual {v2}, Lcom/twitter/model/dms/ap;->j()Lclw;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 860
    invoke-virtual {v2}, Lcom/twitter/model/dms/ap;->j()Lclw;

    move-result-object v0

    invoke-virtual {v0}, Lclw;->N()Lclm;

    move-result-object v0

    .line 861
    :goto_2
    invoke-static {}, Lcom/twitter/library/card/bc;->b()Lcom/twitter/library/card/bc;

    move-result-object v1

    invoke-virtual {v2}, Lcom/twitter/model/dms/ap;->k()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->e:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    invoke-virtual {v1, v2, v3, v0}, Lcom/twitter/library/card/bc;->a(Ljava/lang/String;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lclm;)Z

    move-result v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 860
    goto :goto_2
.end method


# virtual methods
.method K_()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/cc;->Q:Z

    .line 254
    return-void
.end method

.method protected a(Landroid/database/Cursor;)I
    .locals 2

    .prologue
    .line 606
    new-instance v1, Lbnt;

    invoke-static {p1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-direct {v1, v0}, Lbnt;-><init>(Landroid/database/Cursor;)V

    iget-object v0, v1, Lbnt;->a:Lcom/twitter/model/dms/b;

    .line 607
    invoke-virtual {p0, v0}, Lcom/twitter/android/cc;->a(Lcom/twitter/model/dms/b;)I

    move-result v0

    return v0
.end method

.method a(Lcom/twitter/model/dms/b;)I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 611
    invoke-virtual {p1}, Lcom/twitter/model/dms/b;->i()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 627
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/twitter/android/cc;->b(Lcom/twitter/model/dms/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    :goto_0
    :pswitch_1
    return v0

    .line 613
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 624
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 630
    :cond_0
    iget-wide v0, p0, Lcom/twitter/android/cc;->q:J

    invoke-virtual {p1, v0, v1}, Lcom/twitter/model/dms/b;->b(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    const/4 v0, 0x1

    goto :goto_0

    .line 633
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 611
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 102
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/cc;->a(Landroid/database/Cursor;)I

    move-result v0

    return v0
.end method

.method protected a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 322
    new-instance v0, Lbnt;

    invoke-direct {v0, p2}, Lbnt;-><init>(Landroid/database/Cursor;)V

    .line 323
    iget-object v0, v0, Lbnt;->a:Lcom/twitter/model/dms/b;

    .line 324
    const v1, 0x7f0400c6

    const/4 v2, 0x0

    invoke-direct {p0, v1, p3, v2}, Lcom/twitter/android/cc;->a(ILandroid/view/ViewGroup;Z)Landroid/view/ViewGroup;

    move-result-object v2

    .line 327
    invoke-virtual {p0, v0}, Lcom/twitter/android/cc;->a(Lcom/twitter/model/dms/b;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 361
    const/4 v0, 0x0

    .line 366
    :goto_0
    return-object v0

    .line 329
    :pswitch_0
    new-instance v0, Lza;

    const v1, 0x7f0400c9

    .line 330
    invoke-direct {p0, v1, v2, v3}, Lcom/twitter/android/cc;->a(ILandroid/view/ViewGroup;Z)Landroid/view/ViewGroup;

    move-result-object v1

    iget-boolean v3, p0, Lcom/twitter/android/cc;->z:Z

    invoke-direct {v0, v1, v3}, Lza;-><init>(Landroid/view/View;Z)V

    .line 365
    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    move-object v0, v2

    .line 366
    goto :goto_0

    .line 334
    :pswitch_1
    const v0, 0x7f0400ca

    invoke-direct {p0, v0, v2, v3}, Lcom/twitter/android/cc;->a(ILandroid/view/ViewGroup;Z)Landroid/view/ViewGroup;

    move-result-object v3

    .line 336
    iget-boolean v0, p0, Lcom/twitter/android/cc;->L:Z

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;

    iget-boolean v1, p0, Lcom/twitter/android/cc;->s:Z

    invoke-direct {v0, p1, v1, p0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;-><init>(Landroid/content/Context;ZLcom/twitter/android/dm/widget/r;)V

    move-object v1, v0

    .line 341
    :goto_2
    const v0, 0x7f1302f1

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 342
    new-instance v0, Lzg;

    invoke-direct {v0, v3, v1}, Lzg;-><init>(Landroid/view/View;Lcom/twitter/android/dm/widget/SentMessageBylineView;)V

    goto :goto_1

    .line 339
    :cond_0
    new-instance v0, Lcom/twitter/android/dm/widget/SentMessageBylineView;

    invoke-direct {v0, p1, p0}, Lcom/twitter/android/dm/widget/SentMessageBylineView;-><init>(Landroid/content/Context;Lcom/twitter/android/dm/widget/j;)V

    move-object v1, v0

    goto :goto_2

    .line 346
    :pswitch_2
    new-instance v0, Lxu;

    const v1, 0x7f0400b2

    .line 347
    invoke-direct {p0, v1, v2, v3}, Lcom/twitter/android/cc;->a(ILandroid/view/ViewGroup;Z)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {v0, v1}, Lxu;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 351
    :pswitch_3
    new-instance v0, Lxy;

    const v1, 0x7f0400bc

    .line 352
    invoke-direct {p0, v1, v2, v3}, Lcom/twitter/android/cc;->a(ILandroid/view/ViewGroup;Z)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {v0, v1}, Lxy;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 356
    :pswitch_4
    new-instance v0, Lxn;

    const v1, 0x7f0400b8

    .line 357
    invoke-direct {p0, v1, v2, v3}, Lcom/twitter/android/cc;->a(ILandroid/view/ViewGroup;Z)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {v0, v1}, Lxn;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 102
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/cc;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lbnt;)Landroid/view/View;
    .locals 6

    .prologue
    .line 726
    iget-boolean v0, p0, Lcom/twitter/android/cc;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/cc;->D:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/twitter/android/cc;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/cc;->D:Ljava/util/Map;

    iget-object v3, p0, Lcom/twitter/android/cc;->B:Lws;

    iget-boolean v4, p0, Lcom/twitter/android/cc;->t:Z

    iget-boolean v5, p0, Lcom/twitter/android/cc;->s:Z

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lwt;->a(Landroid/content/Context;Lbnt;Ljava/util/Map;Lws;ZZ)Landroid/view/View;

    move-result-object v0

    .line 731
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 4

    .prologue
    .line 275
    iput p1, p0, Lcom/twitter/android/cc;->N:I

    .line 276
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/cc;->q:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "messages:thread::read_receipts:expand"

    aput-object v3, v1, v2

    .line 277
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 276
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 278
    return-void
.end method

.method public a(J)V
    .locals 2

    .prologue
    .line 258
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/android/cc;->P:Ljava/lang/ref/WeakReference;

    .line 259
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twitter/android/cc;->M:J

    .line 260
    const/4 v0, 0x1

    iput v0, p0, Lcom/twitter/android/cc;->N:I

    .line 261
    return-void
.end method

.method public a(JLcom/twitter/android/dm/widget/SentMessageBylineView;)V
    .locals 5

    .prologue
    .line 266
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/android/cc;->P:Ljava/lang/ref/WeakReference;

    .line 267
    iput-wide p1, p0, Lcom/twitter/android/cc;->M:J

    .line 268
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/cc;->q:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "messages:thread::read_receipts:impression"

    aput-object v3, v1, v2

    .line 269
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 268
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 270
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 841
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/cc;->L:Z

    if-eqz v0, :cond_0

    .line 842
    const-string/jumbo v0, "state_state_shown_message_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/cc;->M:J

    .line 843
    iget-object v1, p0, Lcom/twitter/android/cc;->O:Ljava/util/Set;

    const-string/jumbo v0, "state_draft_message_request_ids"

    .line 844
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 846
    iget-boolean v0, p0, Lcom/twitter/android/cc;->K:Z

    if-eqz v0, :cond_0

    .line 847
    const-string/jumbo v0, "state_revealed_seen_by_pages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/cc;->N:I

    .line 850
    :cond_0
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8

    .prologue
    .line 377
    new-instance v1, Lbnt;

    invoke-direct {v1, p3}, Lbnt;-><init>(Landroid/database/Cursor;)V

    .line 379
    iget-object v2, v1, Lbnt;->a:Lcom/twitter/model/dms/b;

    .line 380
    invoke-direct {p0, v2}, Lcom/twitter/android/cc;->b(Lcom/twitter/model/dms/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/twitter/android/cc;->n:Ljava/util/Set;

    iget-wide v4, v2, Lcom/twitter/model/dms/b;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v4, p0, Lcom/twitter/android/cc;->q:J

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "messages:thread:rtf_message::impression"

    aput-object v5, v3, v4

    .line 383
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v4, v2, Lcom/twitter/model/dms/b;->d:J

    iget-wide v6, v2, Lcom/twitter/model/dms/b;->f:J

    .line 384
    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(JJ)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 382
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 385
    iget-object v0, p0, Lcom/twitter/android/cc;->n:Ljava/util/Set;

    iget-wide v4, v2, Lcom/twitter/model/dms/b;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxa;

    .line 389
    invoke-direct {p0, v2, v0}, Lcom/twitter/android/cc;->a(Lcom/twitter/model/dms/b;Lxa;)Lwz;

    move-result-object v2

    .line 391
    if-eqz v2, :cond_1

    .line 392
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lbnt;

    invoke-direct {v0, p3}, Lbnt;-><init>(Landroid/database/Cursor;)V

    .line 393
    :goto_0
    iget v3, v1, Lbnt;->g:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 396
    invoke-virtual {p0}, Lcom/twitter/android/cc;->j()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/cc;->l:Lcom/twitter/android/dl;

    .line 397
    invoke-virtual {v2, v3}, Lwz;->a(Lcom/twitter/android/dl;)Lwz;

    move-result-object v2

    .line 398
    invoke-virtual {v2, v1}, Lwz;->a(Lbnt;)Lwz;

    move-result-object v1

    .line 399
    invoke-virtual {v1, v0}, Lwz;->b(Lbnt;)Lwz;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Lwz;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwy;

    .line 401
    invoke-virtual {v0}, Lwy;->a()V

    .line 404
    :cond_1
    iget-boolean v0, p0, Lcom/twitter/android/cc;->E:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/cc;->F:Lcom/twitter/android/wc;

    if-eqz v0, :cond_2

    .line 405
    invoke-interface {p3}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/cc;->a(Landroid/view/View;Z)V

    .line 407
    :cond_2
    return-void

    .line 392
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic a(Landroid/view/View;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 102
    check-cast p3, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/cc;->a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    return-void
.end method

.method public a(Lclw;)V
    .locals 0

    .prologue
    .line 659
    return-void
.end method

.method public a(Lcom/twitter/android/dm/widget/SentMessageBylineView;)V
    .locals 4

    .prologue
    .line 288
    iget-object v0, p0, Lcom/twitter/android/cc;->P:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/widget/SentMessageBylineView;

    .line 289
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 290
    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->g()V

    .line 297
    :cond_0
    :goto_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/cc;->q:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "messages:thread::message:click"

    aput-object v3, v1, v2

    .line 298
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 297
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 299
    return-void

    .line 294
    :cond_1
    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->getMessageId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->a(J)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/android/nr;)V
    .locals 0

    .prologue
    .line 797
    iput-object p1, p0, Lcom/twitter/android/cc;->R:Lcom/twitter/android/nr;

    .line 798
    return-void
.end method

.method public a(Lcom/twitter/android/wc;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/twitter/android/cc;->F:Lcom/twitter/android/wc;

    .line 250
    return-void
.end method

.method public a(Lcom/twitter/model/core/MediaEntity;)V
    .locals 0

    .prologue
    .line 663
    return-void
.end method

.method public a(Lcom/twitter/model/core/av;)V
    .locals 4

    .prologue
    .line 584
    iget-object v0, p0, Lcom/twitter/android/cc;->h:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/cc;->h:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "screen_name"

    iget-object v3, p1, Lcom/twitter/model/core/av;->i:Ljava/lang/String;

    .line 585
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 584
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 586
    return-void
.end method

.method public a(Lcom/twitter/model/core/b;)V
    .locals 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/twitter/android/cc;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/cc;->h:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/twitter/android/fh;->a(Landroid/content/Context;Lcom/twitter/model/core/b;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 580
    return-void
.end method

.method public a(Lcom/twitter/model/core/cx;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 595
    iget-object v1, p0, Lcom/twitter/android/cc;->h:Landroid/content/Context;

    iget-wide v4, p0, Lcom/twitter/android/cc;->q:J

    const-string/jumbo v6, "messages:thread:::open_link"

    iget-object v8, p0, Lcom/twitter/android/cc;->j:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-object v3, p1

    move-object v7, v2

    move-object v9, v2

    invoke-static/range {v1 .. v9}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Lcom/twitter/library/client/BrowserDataSource;Lcom/twitter/model/core/cx;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method public a(Lcom/twitter/model/core/q;)V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/twitter/android/cc;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/cc;->h:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/twitter/android/fh;->a(Landroid/content/Context;Lcom/twitter/model/core/q;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 575
    return-void
.end method

.method public a(Lcom/twitter/model/dms/ao;)V
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/twitter/android/cc;->K:Z

    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    .line 244
    iput-object p1, p0, Lcom/twitter/android/cc;->J:Lcom/twitter/model/dms/ao;

    .line 245
    invoke-virtual {p0}, Lcom/twitter/android/cc;->notifyDataSetChanged()V

    .line 246
    return-void
.end method

.method public a(Lcom/twitter/model/dms/l;)V
    .locals 7

    .prologue
    .line 694
    iget-object v0, p0, Lcom/twitter/android/cc;->v:Ljava/util/Set;

    iget-wide v2, p1, Lcom/twitter/model/dms/l;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    invoke-virtual {p1}, Lcom/twitter/model/dms/l;->p()Lcom/twitter/model/dms/i;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/cf;

    .line 696
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/cf;

    iget-object v1, v1, Lcom/twitter/model/dms/cf;->e:Lcom/twitter/model/core/ay;

    iget-wide v2, v1, Lcom/twitter/model/core/ay;->e:J

    .line 697
    iget-object v1, v0, Lcom/twitter/model/dms/cf;->e:Lcom/twitter/model/core/ay;

    iget-object v1, v1, Lcom/twitter/model/core/ay;->m:Lcss;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    move-object v1, v0

    .line 699
    :goto_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v4, p0, Lcom/twitter/android/cc;->q:J

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "messages:thread::shared_tweet_dm:impression"

    aput-object v6, v4, v5

    .line 700
    invoke-virtual {v0, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v4, p1, Lcom/twitter/model/dms/l;->e:Ljava/lang/String;

    .line 701
    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;JLjava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 699
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 702
    iget-object v0, p0, Lcom/twitter/android/cc;->v:Ljava/util/Set;

    iget-wide v2, p1, Lcom/twitter/model/dms/l;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 704
    :cond_0
    return-void

    .line 697
    :cond_1
    iget-object v0, v0, Lcom/twitter/model/dms/cf;->e:Lcom/twitter/model/core/ay;

    iget-object v0, v0, Lcom/twitter/model/core/ay;->m:Lcss;

    iget-object v0, v0, Lcss;->c:Ljava/lang/String;

    move-object v1, v0

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/geo/TwitterPlace;)V
    .locals 0

    .prologue
    .line 590
    return-void
.end method

.method public a(Ljava/lang/Long;Lcom/twitter/library/widget/UserView;)V
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/twitter/android/cc;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/twitter/android/cc;->u:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/twitter/util/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iput-object p1, p0, Lcom/twitter/android/cc;->u:Ljava/lang/String;

    .line 238
    invoke-virtual {p0}, Lcom/twitter/android/cc;->notifyDataSetChanged()V

    .line 240
    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 777
    iget-object v0, p0, Lcom/twitter/android/cc;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/cc;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 778
    iget-boolean v0, p0, Lcom/twitter/android/cc;->g:Z

    if-nez v0, :cond_0

    .line 779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/cc;->g:Z

    .line 780
    new-instance v0, Lcom/twitter/android/cf;

    iget-object v3, p0, Lcom/twitter/android/cc;->h:Landroid/content/Context;

    iget-wide v4, p0, Lcom/twitter/android/cc;->q:J

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/cf;-><init>(Lcom/twitter/android/cc;Ljava/util/List;Landroid/content/Context;J)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/android/cf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 783
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/cc;->c()V

    goto :goto_0
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lclj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 654
    iput-object p1, p0, Lcom/twitter/android/cc;->D:Ljava/util/Map;

    .line 655
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/twitter/android/cc;->s:Z

    if-eq v0, p1, :cond_0

    .line 223
    iput-boolean p1, p0, Lcom/twitter/android/cc;->s:Z

    .line 224
    invoke-virtual {p0}, Lcom/twitter/android/cc;->notifyDataSetChanged()V

    .line 226
    :cond_0
    return-void
.end method

.method public b(Lbnt;)Landroid/view/View;
    .locals 3

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/twitter/android/cc;->A:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/cc;->z:Z

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/twitter/android/cc;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/cc;->C:Lcom/twitter/library/card/q;

    iget-object v2, p0, Lcom/twitter/android/cc;->j:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-static {v0, p1, v1, v2}, Lwt;->a(Landroid/content/Context;Lbnt;Lcom/twitter/library/card/q;Lcom/twitter/library/scribe/TwitterScribeAssociation;)Landroid/view/View;

    move-result-object v0

    .line 741
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/twitter/android/cc;->notifyDataSetChanged()V

    .line 304
    return-void
.end method

.method public b(J)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 565
    iget-object v1, p0, Lcom/twitter/android/cc;->h:Landroid/content/Context;

    move-wide v2, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-static/range {v1 .. v7}, Lcom/twitter/android/ProfileActivity;->a(Landroid/content/Context;JLjava/lang/String;Lcss;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/model/timeline/al;)V

    .line 566
    return-void
.end method

.method public b(Lcom/twitter/model/dms/l;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 709
    iget-object v0, p0, Lcom/twitter/android/cc;->x:Ljava/util/Set;

    iget-wide v2, p1, Lcom/twitter/model/dms/l;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/twitter/model/dms/bd;

    if-nez v0, :cond_0

    .line 710
    invoke-virtual {p1}, Lcom/twitter/model/dms/l;->t()I

    move-result v0

    if-ne v0, v5, :cond_1

    const-string/jumbo v0, "large_emoji_message"

    .line 711
    :goto_0
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/cc;->q:J

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "messages"

    aput-object v4, v2, v3

    const-string/jumbo v3, "thread"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v0, 0x4

    const-string/jumbo v3, "impression"

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 713
    iget-object v0, p0, Lcom/twitter/android/cc;->x:Ljava/util/Set;

    iget-wide v2, p1, Lcom/twitter/model/dms/l;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 715
    :cond_0
    return-void

    .line 710
    :cond_1
    const-string/jumbo v0, "medium_emoji_message"

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/twitter/android/cc;->O:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 283
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/twitter/android/cc;->t:Z

    if-eq v0, p1, :cond_0

    .line 230
    iput-boolean p1, p0, Lcom/twitter/android/cc;->t:Z

    .line 231
    invoke-virtual {p0}, Lcom/twitter/android/cc;->notifyDataSetChanged()V

    .line 233
    :cond_0
    return-void
.end method

.method public b(Lcom/twitter/model/core/cx;)Z
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x1

    return v0
.end method

.method c()V
    .locals 4

    .prologue
    .line 670
    iget-object v0, p0, Lcom/twitter/android/cc;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 671
    iget-object v1, p0, Lcom/twitter/android/cc;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/TwitterUser;

    .line 672
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/UserView;

    invoke-virtual {v0}, Lcom/twitter/library/widget/UserView;->getImageView()Lcom/twitter/library/media/widget/UserImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->a(Lcom/twitter/model/core/TwitterUser;)Z

    goto :goto_0

    .line 674
    :cond_0
    return-void
.end method

.method public c(J)V
    .locals 0

    .prologue
    .line 667
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Lcom/twitter/android/cc;->w:Ljava/lang/String;

    .line 678
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 751
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/cc;->w:Ljava/lang/String;

    .line 752
    return-void
.end method

.method public d(J)V
    .locals 5

    .prologue
    .line 790
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/cc;->q:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "messages:thread:rtf_message::open"

    aput-object v3, v1, v2

    .line 791
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 790
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 792
    iget-object v0, p0, Lcom/twitter/android/cc;->m:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 793
    invoke-virtual {p0}, Lcom/twitter/android/cc;->notifyDataSetChanged()V

    .line 794
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/twitter/android/cc;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 683
    invoke-virtual {p0}, Lcom/twitter/android/cc;->notifyDataSetChanged()V

    .line 684
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/twitter/android/cc;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 767
    return-void
.end method

.method public e(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/twitter/android/cc;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 832
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 833
    const-string/jumbo v1, "state_state_shown_message_id"

    iget-wide v2, p0, Lcom/twitter/android/cc;->M:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 834
    const-string/jumbo v1, "state_revealed_seen_by_pages"

    iget v2, p0, Lcom/twitter/android/cc;->N:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 835
    const-string/jumbo v1, "state_draft_message_request_ids"

    iget-object v2, p0, Lcom/twitter/android/cc;->O:Ljava/util/Set;

    .line 836
    invoke-static {v2}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/Set;)Ljava/io/Serializable;

    move-result-object v2

    .line 835
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 837
    return-object v0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 746
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/cc;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/twitter/android/cc;->O:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x5

    return v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/twitter/android/cc;->O:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 762
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/twitter/android/cc;->Q:Z

    if-eqz v0, :cond_0

    .line 314
    invoke-super {p0}, Lbkj;->notifyDataSetChanged()V

    .line 316
    :cond_0
    return-void
.end method
