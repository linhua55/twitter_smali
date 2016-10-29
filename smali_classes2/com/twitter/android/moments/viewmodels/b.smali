.class public Lcom/twitter/android/moments/viewmodels/b;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public a:Lcom/twitter/model/moments/af;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/android/moments/viewmodels/j;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/twitter/model/moments/viewmodels/MomentPage;

.field private e:Lcom/twitter/model/moments/viewmodels/MomentPage;

.field private f:Lcom/twitter/model/moments/viewmodels/a;


# direct methods
.method public constructor <init>(Lcom/twitter/model/moments/viewmodels/a;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/twitter/model/moments/af;

    invoke-direct {v0}, Lcom/twitter/model/moments/af;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/moments/viewmodels/b;->a:Lcom/twitter/model/moments/af;

    .line 37
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/viewmodels/b;->b:Ljava/util/List;

    .line 38
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/viewmodels/b;->c:Ljava/util/List;

    .line 45
    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/viewmodels/b;->a(Lcom/twitter/model/moments/viewmodels/a;)V

    .line 46
    return-void
.end method

.method private a(Lcom/twitter/model/moments/maker/MomentEditOperation;Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/android/moments/viewmodels/j;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/twitter/model/moments/viewmodels/h;

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Lcom/twitter/android/moments/viewmodels/g;

    check-cast p2, Lcom/twitter/model/moments/viewmodels/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/android/moments/viewmodels/g;-><init>(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/maker/MomentEditOperation;Lcom/twitter/model/moments/viewmodels/h;)V

    .line 124
    :goto_0
    return-object v0

    .line 121
    :cond_0
    iget-object v0, p1, Lcom/twitter/model/moments/maker/MomentEditOperation;->d:Lcom/twitter/model/moments/maker/n;

    if-nez v0, :cond_1

    .line 122
    new-instance v0, Lcom/twitter/android/moments/viewmodels/g;

    invoke-direct {v0, p0, p1, v1}, Lcom/twitter/android/moments/viewmodels/g;-><init>(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/maker/MomentEditOperation;Lcom/twitter/model/moments/viewmodels/h;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 124
    goto :goto_0
.end method

.method private a(Lcom/twitter/model/moments/maker/a;Lcom/twitter/model/moments/viewmodels/m;)Lcom/twitter/android/moments/viewmodels/j;
    .locals 1

    .prologue
    .line 89
    if-eqz p2, :cond_0

    .line 90
    new-instance v0, Lcom/twitter/android/moments/viewmodels/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/android/moments/viewmodels/d;-><init>(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/maker/a;Lcom/twitter/model/moments/viewmodels/m;)V

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/moments/viewmodels/b;)Lcom/twitter/model/moments/viewmodels/MomentPage;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/b;->d:Lcom/twitter/model/moments/viewmodels/MomentPage;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/model/moments/viewmodels/MomentPage;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/twitter/android/moments/viewmodels/b;->d:Lcom/twitter/model/moments/viewmodels/MomentPage;

    return-object p1
.end method

.method private a(JLcom/twitter/model/moments/MomentPageDisplayMode;)Ljava/lang/Integer;
    .locals 5

    .prologue
    .line 261
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/m;

    .line 263
    invoke-static {v0}, Lcom/twitter/android/moments/viewmodels/ah;->a(Lcom/twitter/model/moments/viewmodels/m;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/m;->b()Lcom/twitter/model/moments/MomentPageDisplayMode;

    move-result-object v0

    if-ne v0, p3, :cond_0

    .line 265
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 268
    :goto_1
    return-object v0

    .line 261
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 268
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/twitter/android/moments/viewmodels/b;JLcom/twitter/model/moments/MomentPageDisplayMode;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/moments/viewmodels/b;->a(JLcom/twitter/model/moments/MomentPageDisplayMode;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/maker/aj;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/twitter/android/moments/viewmodels/b;->a(Lcom/twitter/model/moments/maker/aj;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/twitter/model/moments/maker/aj;)Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 291
    iget v0, p1, Lcom/twitter/model/moments/maker/aj;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    .line 294
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 295
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/m;

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/m;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    .line 296
    iget-wide v2, p1, Lcom/twitter/model/moments/maker/aj;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/twitter/android/moments/viewmodels/b;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    iget v0, p1, Lcom/twitter/model/moments/maker/aj;->c:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 298
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 300
    :cond_1
    add-int/lit8 v0, v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 294
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 303
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/List;Lcom/twitter/model/moments/ak;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/twitter/android/moments/viewmodels/b;->b(Ljava/util/List;Lcom/twitter/model/moments/ak;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/twitter/model/moments/viewmodels/MomentPage;Ljava/lang/Long;)Z
    .locals 2

    .prologue
    .line 285
    instance-of v0, p0, Lcom/twitter/model/moments/viewmodels/y;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/twitter/model/moments/viewmodels/y;

    .line 286
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/y;->s()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 285
    :goto_0
    return v0

    .line 286
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/moments/viewmodels/b;)Lcom/twitter/model/moments/viewmodels/MomentPage;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/b;->e:Lcom/twitter/model/moments/viewmodels/MomentPage;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/model/moments/viewmodels/MomentPage;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/twitter/android/moments/viewmodels/b;->e:Lcom/twitter/model/moments/viewmodels/MomentPage;

    return-object p1
.end method

.method private static b(Ljava/util/List;Lcom/twitter/model/moments/ak;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ">;",
            "Lcom/twitter/model/moments/ak;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 274
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 275
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 276
    iget-object v2, p1, Lcom/twitter/model/moments/ak;->e:Ljava/lang/Long;

    invoke-static {v0, v2}, Lcom/twitter/android/moments/viewmodels/b;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;Ljava/lang/Long;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    invoke-static {v0}, Lcom/twitter/model/moments/viewmodels/o;->b(Lcom/twitter/model/moments/viewmodels/MomentPage;)Ljava/lang/Long;

    move-result-object v0

    iget-object v2, p1, Lcom/twitter/model/moments/ak;->f:Ljava/lang/Long;

    invoke-static {v0, v2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 281
    :goto_1
    return-object v0

    .line 274
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 281
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/maker/w;Lcom/twitter/model/moments/viewmodels/m;)Lcom/twitter/android/moments/viewmodels/b;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 64
    .line 65
    instance-of v1, p1, Lcom/twitter/model/moments/maker/MomentEditOperation;

    if-eqz v1, :cond_3

    .line 66
    check-cast p1, Lcom/twitter/model/moments/maker/MomentEditOperation;

    .line 67
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/twitter/model/moments/viewmodels/m;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    .line 68
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/twitter/android/moments/viewmodels/b;->a(Lcom/twitter/model/moments/maker/MomentEditOperation;Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/android/moments/viewmodels/j;

    move-result-object v0

    .line 80
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 81
    iget-object v1, p0, Lcom/twitter/android/moments/viewmodels/b;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_2
    return-object p0

    .line 69
    :cond_3
    instance-of v1, p1, Lcom/twitter/model/moments/maker/a;

    if-eqz v1, :cond_4

    .line 70
    check-cast p1, Lcom/twitter/model/moments/maker/a;

    invoke-direct {p0, p1, p2}, Lcom/twitter/android/moments/viewmodels/b;->a(Lcom/twitter/model/moments/maker/a;Lcom/twitter/model/moments/viewmodels/m;)Lcom/twitter/android/moments/viewmodels/j;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_4
    instance-of v1, p1, Lcom/twitter/model/moments/maker/s;

    if-eqz v1, :cond_5

    .line 72
    new-instance v0, Lcom/twitter/android/moments/viewmodels/i;

    check-cast p1, Lcom/twitter/model/moments/maker/s;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/moments/viewmodels/i;-><init>(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/maker/s;)V

    goto :goto_0

    .line 73
    :cond_5
    instance-of v1, p1, Lcom/twitter/model/moments/maker/h;

    if-eqz v1, :cond_6

    .line 74
    new-instance v0, Lcom/twitter/android/moments/viewmodels/e;

    check-cast p1, Lcom/twitter/model/moments/maker/h;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/moments/viewmodels/e;-><init>(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/maker/h;)V

    goto :goto_0

    .line 75
    :cond_6
    instance-of v1, p1, Lcom/twitter/model/moments/maker/q;

    if-eqz v1, :cond_7

    .line 76
    new-instance v0, Lcom/twitter/android/moments/viewmodels/h;

    check-cast p1, Lcom/twitter/model/moments/maker/q;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/moments/viewmodels/h;-><init>(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/maker/q;)V

    goto :goto_0

    .line 77
    :cond_7
    instance-of v1, p1, Lcom/twitter/model/moments/maker/al;

    if-eqz v1, :cond_1

    .line 78
    new-instance v0, Lcom/twitter/android/moments/viewmodels/f;

    check-cast p1, Lcom/twitter/model/moments/maker/al;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/moments/viewmodels/f;-><init>(Lcom/twitter/android/moments/viewmodels/b;Lcom/twitter/model/moments/maker/al;)V

    goto :goto_0
.end method

.method public a()Lcom/twitter/model/moments/viewmodels/a;
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/viewmodels/j;

    .line 309
    invoke-virtual {v0}, Lcom/twitter/android/moments/viewmodels/j;->a()V

    goto :goto_0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/b;->b:Ljava/util/List;

    invoke-static {v0}, Lczz;->a(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 312
    new-instance v2, Lcom/twitter/model/moments/viewmodels/c;

    invoke-direct {v2}, Lcom/twitter/model/moments/viewmodels/c;-><init>()V

    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/b;->a:Lcom/twitter/model/moments/af;

    .line 313
    invoke-virtual {v0}, Lcom/twitter/model/moments/af;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ad;

    invoke-virtual {v2, v0}, Lcom/twitter/model/moments/viewmodels/c;->a(Lcom/twitter/model/moments/ad;)Lcom/twitter/model/moments/viewmodels/c;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/moments/viewmodels/b;->d:Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 314
    invoke-virtual {v0, v2}, Lcom/twitter/model/moments/viewmodels/c;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/model/moments/viewmodels/c;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/moments/viewmodels/b;->e:Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 315
    invoke-virtual {v0, v2}, Lcom/twitter/model/moments/viewmodels/c;->b(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/model/moments/viewmodels/c;

    move-result-object v0

    .line 316
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/viewmodels/c;->a(Ljava/util/List;)Lcom/twitter/model/moments/viewmodels/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/viewmodels/b;->f:Lcom/twitter/model/moments/viewmodels/a;

    .line 317
    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/a;->e()Lcrc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/viewmodels/c;->a(Lcrc;)Lcom/twitter/model/moments/viewmodels/c;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/c;->a()Lcom/twitter/model/moments/viewmodels/a;

    move-result-object v0

    .line 312
    return-object v0
.end method

.method public a(Lcom/twitter/model/moments/viewmodels/a;)V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/a;->a()Lcom/twitter/model/moments/ad;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/model/moments/af;->a(Lcom/twitter/model/moments/ad;)Lcom/twitter/model/moments/af;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/viewmodels/b;->a:Lcom/twitter/model/moments/af;

    .line 50
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/b;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/a;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 52
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/a;->c()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/viewmodels/b;->d:Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 53
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/a;->d()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/viewmodels/b;->e:Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 54
    iput-object p1, p0, Lcom/twitter/android/moments/viewmodels/b;->f:Lcom/twitter/model/moments/viewmodels/a;

    .line 55
    return-void
.end method

.method public b()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/twitter/model/moments/maker/w;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/b;->c:Ljava/util/List;

    new-instance v1, Lcom/twitter/android/moments/viewmodels/c;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/viewmodels/c;-><init>(Lcom/twitter/android/moments/viewmodels/b;)V

    invoke-static {v0, v1}, Lczz;->a(Ljava/lang/Iterable;Lczn;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
