.class public Lcom/twitter/android/SearchPhotosFragment;
.super Lcom/twitter/android/SearchFragment;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/SearchFragment",
        "<",
        "Lcom/twitter/android/lw;",
        "Lcom/twitter/android/lu;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private ac:Z

.field private final ad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;"
        }
    .end annotation
.end field

.field private final ae:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/twitter/android/SearchFragment;-><init>()V

    .line 47
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SearchPhotosFragment;->ad:Ljava/util/List;

    .line 48
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SearchPhotosFragment;->ae:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/SearchPhotosFragment;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/twitter/android/ot;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/ot;-><init>(Lcom/twitter/android/SearchPhotosFragment;Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/SearchPhotosFragment;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/SearchPhotosFragment;->ae:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/SearchPhotosFragment;)Lcom/twitter/android/client/c;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->aY()Lcom/twitter/android/client/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/SearchPhotosFragment;)Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/android/SearchPhotosFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/SearchPhotosFragment;->ad:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected U()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    const-string/jumbo v0, "photo_grid"

    return-object v0
.end method

.method protected V_()V
    .locals 2

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/twitter/android/SearchPhotosFragment;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":photo_grid:::impression"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchPhotosFragment;->a(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method protected W()V
    .locals 5

    .prologue
    .line 275
    iget-object v0, p0, Lcom/twitter/android/SearchPhotosFragment;->ad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/twitter/android/SearchPhotosFragment;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":photo_grid:stream::results"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 279
    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 280
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/SearchPhotosFragment;->ad:Ljava/util/List;

    .line 281
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/util/List;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/SearchPhotosFragment;->u:Ljava/lang/String;

    const/4 v2, 0x3

    .line 282
    invoke-static {v2}, Lcom/twitter/android/SearchPhotosFragment;->c(I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/twitter/android/SearchPhotosFragment;->d:Z

    iget-boolean v4, p0, Lcom/twitter/android/SearchPhotosFragment;->c:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 278
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 283
    iget-object v0, p0, Lcom/twitter/android/SearchPhotosFragment;->ad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 285
    :cond_0
    return-void
.end method

.method protected X()Lcom/twitter/android/lu;
    .locals 8

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 72
    new-instance v0, Lcom/twitter/android/lu;

    .line 73
    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcha;->d:I

    const v4, 0x7fffffff

    .line 75
    invoke-direct {p0, v1}, Lcom/twitter/android/SearchPhotosFragment;->b(Landroid/content/Context;)Landroid/view/View$OnClickListener;

    move-result-object v5

    new-instance v6, Lcom/twitter/android/ou;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/twitter/android/ou;-><init>(Lcom/twitter/android/SearchPhotosFragment;Lcom/twitter/android/ot;)V

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/lu;-><init>(Landroid/content/Context;FIILandroid/view/View$OnClickListener;Lcom/twitter/android/kn;Z)V

    .line 72
    return-object v0
.end method

.method protected Y_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string/jumbo v0, "statuses_flags&1537 !=0 AND search_id=?"

    return-object v0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 13

    .prologue
    const/4 v10, 0x1

    .line 136
    new-instance v1, Lcom/twitter/library/api/search/d;

    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-wide v4, p0, Lcom/twitter/android/SearchPhotosFragment;->s:J

    iget-object v6, p0, Lcom/twitter/android/SearchPhotosFragment;->u:Ljava/lang/String;

    .line 137
    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->Q()I

    move-result v7

    iget-object v8, p0, Lcom/twitter/android/SearchPhotosFragment;->v:Ljava/lang/String;

    iget-object v9, p0, Lcom/twitter/android/SearchPhotosFragment;->t:Ljava/lang/String;

    iget-object v11, p0, Lcom/twitter/android/SearchPhotosFragment;->A:Ljava/lang/String;

    const/4 v12, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v12}, Lcom/twitter/library/api/search/d;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 139
    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->o()I

    move-result v0

    iget-boolean v2, p0, Lcom/twitter/android/SearchPhotosFragment;->d:Z

    iget-boolean v3, p0, Lcom/twitter/android/SearchPhotosFragment;->e:Z

    iget-boolean v4, p0, Lcom/twitter/android/SearchPhotosFragment;->f:Z

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/twitter/library/api/search/d;->a(IZZZ)Lcom/twitter/library/api/search/d;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/twitter/android/SearchPhotosFragment;->D:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/twitter/android/SearchPhotosFragment;->D:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/api/search/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/api/search/d;

    .line 143
    :cond_0
    const-string/jumbo v1, "Not triggered by a user action."

    invoke-virtual {v0, v1}, Lcom/twitter/library/api/search/d;->k(Ljava/lang/String;)Lcom/twitter/library/service/x;

    .line 144
    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchPhotosFragment;->a(Lcom/twitter/library/api/search/d;)V

    .line 145
    iget-boolean v1, p0, Lcom/twitter/android/SearchPhotosFragment;->c:Z

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/twitter/android/SearchPhotosFragment;->G:Lccf;

    invoke-virtual {v1}, Lccf;->a()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/api/search/d;->a(Landroid/location/Location;)Lcom/twitter/library/api/search/d;

    .line 148
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v10, v1}, Lcom/twitter/android/SearchPhotosFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 149
    return-void
.end method

.method protected a(Lcmf;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Lcom/twitter/android/lw;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 153
    iget v1, p0, Lcom/twitter/android/SearchPhotosFragment;->l:I

    .line 154
    iget-boolean v0, p0, Lcom/twitter/android/SearchPhotosFragment;->ac:Z

    if-eqz v0, :cond_1

    .line 155
    if-ne v1, v4, :cond_0

    .line 156
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    const/4 v2, 0x6

    .line 157
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-wide v2, p0, Lcom/twitter/android/SearchPhotosFragment;->aa:J

    .line 158
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(J)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v2, p0, Lcom/twitter/android/SearchPhotosFragment;->B:Ljava/lang/String;

    .line 159
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v2, "photo_grid"

    .line 160
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->c(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 156
    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchPhotosFragment;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->u()V

    .line 165
    :cond_1
    invoke-super {p0, p1}, Lcom/twitter/android/SearchFragment;->a(Lcmf;)V

    .line 167
    iget-boolean v0, p0, Lcom/twitter/android/SearchPhotosFragment;->ac:Z

    if-eqz v0, :cond_3

    .line 168
    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    .line 169
    iput v4, p0, Lcom/twitter/android/SearchPhotosFragment;->l:I

    .line 177
    :cond_2
    :goto_0
    return-void

    .line 172
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/lu;

    invoke-virtual {v0}, Lcom/twitter/android/lu;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    invoke-virtual {p0, v4}, Lcom/twitter/android/SearchPhotosFragment;->a(I)Z

    .line 175
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/SearchPhotosFragment;->ac:Z

    goto :goto_0
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 228
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/SearchFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 229
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 230
    check-cast p1, Lcom/twitter/library/api/search/d;

    .line 231
    invoke-virtual {p1}, Lcom/twitter/library/api/search/d;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 232
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/SearchPhotosFragment;->a_:Landroid/content/Context;

    const v1, 0x7f0a0750

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 247
    :cond_1
    :goto_0
    return-void

    .line 234
    :cond_2
    invoke-virtual {p1}, Lcom/twitter/library/api/search/d;->h()I

    move-result v0

    if-nez v0, :cond_4

    .line 235
    if-ne p3, v5, :cond_3

    .line 236
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v4, [Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/twitter/android/SearchPhotosFragment;->B:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":photo_grid:stream::no_results"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 237
    invoke-static {v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/SearchPhotosFragment;->u:Ljava/lang/String;

    .line 238
    invoke-static {v5}, Lcom/twitter/android/SearchPhotosFragment;->c(I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/twitter/android/SearchPhotosFragment;->d:Z

    iget-boolean v4, p0, Lcom/twitter/android/SearchPhotosFragment;->c:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 236
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 240
    :cond_3
    if-ne p3, v4, :cond_1

    .line 241
    iput-boolean v4, p0, Lcom/twitter/android/SearchPhotosFragment;->h:Z

    goto :goto_0

    .line 243
    :cond_4
    iget-boolean v0, p0, Lcom/twitter/android/SearchPhotosFragment;->j:Z

    if-eqz v0, :cond_1

    if-ne p3, v5, :cond_1

    .line 244
    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->v()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 259
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v1, p0, Lcom/twitter/android/SearchPhotosFragment;->a:Ljava/lang/String;

    .line 260
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->i(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 261
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/SearchPhotosFragment;->u:Ljava/lang/String;

    const/4 v2, 0x3

    .line 262
    invoke-static {v2}, Lcom/twitter/android/SearchPhotosFragment;->c(I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/twitter/android/SearchPhotosFragment;->d:Z

    iget-boolean v4, p0, Lcom/twitter/android/SearchPhotosFragment;->c:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 263
    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 259
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 264
    return-void
.end method

.method protected a(I)Z
    .locals 13

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/twitter/android/SearchPhotosFragment;->a_(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x0

    .line 223
    :goto_0
    return v0

    .line 186
    :cond_0
    iput p1, p0, Lcom/twitter/android/SearchPhotosFragment;->l:I

    .line 189
    packed-switch p1, :pswitch_data_0

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid fetch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :pswitch_0
    const/4 v10, 0x0

    .line 207
    :goto_1
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/SearchPhotosFragment;->aa:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/SearchPhotosFragment;->B:Ljava/lang/String;

    const-string/jumbo v4, "photo_grid"

    .line 208
    invoke-static {v3, v4, p1}, Lcom/twitter/android/SearchPhotosFragment;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/SearchPhotosFragment;->u:Ljava/lang/String;

    const/4 v2, 0x3

    .line 209
    invoke-static {v2}, Lcom/twitter/android/SearchPhotosFragment;->c(I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/twitter/android/SearchPhotosFragment;->d:Z

    iget-boolean v4, p0, Lcom/twitter/android/SearchPhotosFragment;->c:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 211
    new-instance v1, Lcom/twitter/library/api/search/d;

    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-wide v4, p0, Lcom/twitter/android/SearchPhotosFragment;->s:J

    iget-object v6, p0, Lcom/twitter/android/SearchPhotosFragment;->u:Ljava/lang/String;

    .line 212
    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->Q()I

    move-result v7

    iget-object v8, p0, Lcom/twitter/android/SearchPhotosFragment;->v:Ljava/lang/String;

    iget-object v9, p0, Lcom/twitter/android/SearchPhotosFragment;->t:Ljava/lang/String;

    iget-object v11, p0, Lcom/twitter/android/SearchPhotosFragment;->A:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/twitter/library/api/search/d;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 213
    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->o()I

    move-result v2

    iget-boolean v3, p0, Lcom/twitter/android/SearchPhotosFragment;->d:Z

    iget-boolean v4, p0, Lcom/twitter/android/SearchPhotosFragment;->e:Z

    iget-boolean v5, p0, Lcom/twitter/android/SearchPhotosFragment;->f:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/twitter/library/api/search/d;->a(IZZZ)Lcom/twitter/library/api/search/d;

    move-result-object v1

    .line 214
    invoke-virtual {p0, v1}, Lcom/twitter/android/SearchPhotosFragment;->a(Lcom/twitter/library/api/search/d;)V

    .line 215
    iget-object v2, p0, Lcom/twitter/android/SearchPhotosFragment;->D:Ljava/lang/String;

    invoke-static {v2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    iget-object v2, p0, Lcom/twitter/android/SearchPhotosFragment;->D:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/api/search/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/api/search/d;

    .line 218
    :cond_1
    const-string/jumbo v2, "scribe_log"

    invoke-virtual {v1, v2, v0}, Lcom/twitter/library/api/search/d;->a(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/twitter/library/service/x;

    .line 219
    iget-boolean v0, p0, Lcom/twitter/android/SearchPhotosFragment;->c:Z

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/twitter/android/SearchPhotosFragment;->G:Lccf;

    invoke-virtual {v0}, Lccf;->a()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/library/api/search/d;->a(Landroid/location/Location;)Lcom/twitter/library/api/search/d;

    .line 222
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0, p1}, Lcom/twitter/android/SearchPhotosFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 223
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 195
    :pswitch_1
    const/4 v10, 0x1

    .line 196
    goto/16 :goto_1

    .line 199
    :pswitch_2
    const/4 v10, 0x2

    .line 200
    goto/16 :goto_1

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected ag_()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/twitter/android/SearchFragment;->ag_()V

    .line 53
    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->aD()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/lu;

    invoke-virtual {v0}, Lcom/twitter/android/lu;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchPhotosFragment;->a(I)Z

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/SearchPhotosFragment;->ac:Z

    .line 57
    :cond_1
    return-void
.end method

.method protected b(J)I
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/lu;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/lu;->a(J)I

    move-result v0

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x3

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/twitter/android/SearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->t()Lcom/twitter/android/or;

    move-result-object v0

    const-string/jumbo v1, "scribe_context"

    invoke-virtual {v0, v1}, Lcom/twitter/android/or;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SearchPhotosFragment;->a:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->X()Lcom/twitter/android/lu;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchPhotosFragment;->a(Lcom/twitter/android/client/v;)Lcom/twitter/app/common/list/TwitterListFragment;

    .line 67
    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/app/common/list/aa;->a(Lcvt;)V

    .line 68
    return-void
.end method

.method protected v_()Landroid/support/v4/content/Loader;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Lcom/twitter/android/bt;

    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/provider/df;->a:Landroid/net/Uri;

    .line 115
    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcha;->a:[Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Lcom/twitter/android/SearchPhotosFragment;->Y_()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v8, p0, Lcom/twitter/android/SearchPhotosFragment;->s:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string/jumbo v6, "type_id ASC, _id ASC"

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-object v0
.end method

.method protected x()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method
